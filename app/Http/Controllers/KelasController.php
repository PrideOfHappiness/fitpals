<?php

namespace App\Http\Controllers;

use App\Models\Location;
use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\User;
use App\Models\Trainer;
use App\Models\Ruang;
use Carbon\Carbon;
use App\Models\CodeQR;
use Str;
use Barryvdh\DomPDF\Facade\Pdf as PDF;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Response;

class KelasController extends Controller
{
    public function index(){
        $kelas = Kelas::selectRaw("kelas.*, trainer.jenis as trainers, users.nama as namaTrainer")
            ->join('trainer', 'kelas.trainerID', '=', 'trainer.trainerID')
            ->join('users', 'trainer.userID', '=', 'users.userID')
            ->paginate(10);
        return view('kelas.index', compact('kelas'));
    }

    public function create(Request $request){
        $location = Location::all();
        $trainer = Trainer::selectRaw("trainer.trainerID as trainerID, concat(users.nama, ' - ', trainer.jenis) as namaTrainer")
            ->join('users', 'trainer.userID', '=', 'users.userID')->orderBy('trainer.trainerID', 'asc')->get();
        $user = User::where('kategori', 'Admin')->get();
        return view('kelas.create', compact('trainer','location','user'));
    }

    public function pilihRuang($kelasID){
        $kelas = Kelas::find($kelasID);
        $ruang = Ruang::where('locationID', $kelas->locationID)->get();
        return view('kelas.pilihKelas', compact('kelas', 'ruang'));
    }

    public function setPilihRuang(Request $request, $kelasID){
        $kelas = Kelas::find($kelasID);
        
        $this->validate($request, [
            'ruang' => 'required',
        ]);

        if($kelas->status == 'Menunggu pemilihan ruang dan verifikasi'){
            $kelas->ruangID = $request->ruang;
            $kelas->status = 'Menunggu Verifikasi Admin';
            $kelas->save();
        }elseif($kelas->status == 'Menunggu pemilihan ruang dan validasi perubahan' && $kelas->id_otorisasi == ""){
            $kelas->ruangID = $request->ruang;
            $kelas->status = 'Ubah Data - Menunggu Verifikasi Admin';
            $kelas->save();
        }elseif($kelas->status == 'Menunggu pemilihan ruangan, sudah divalidasi admin'){
            $kelas->ruangID = $request->ruang;
            $kelas->status = 'Penggantian Data - Sudah Diverifikasi Admin';
            $kelas->save();
        }
        

        return redirect()->route('kelas.index')->with('success','Data ruangan kelas ' . $kelas->nama_kelas .' berhasil ditambahkan!');
    }

    public function store(Request $request){
        $this->validate($request, [
            'userID' => 'required',
            'lokasi' => 'required',
            'name' => 'required',
            'trainer'=> 'required',
            'dataAwal' => 'required',
            'mulai' => 'required',
            'selesai' => 'required',
            'kuota' => 'required',
            'jenis' => 'required',
        ]);

        $userID = $request->userID;
        $lokasi = $request->lokasi;
        $namaKelas = $request->name;
        $trainer1 = $request->trainer;
        $trainer2 = $request->trainer2;
        $trainer3 = $request->trainer3;
        $dataAwal = $request->dataAwal;
        $mulai = $request->mulai;
        $akhir = $request->selesai;
        $kuota = $request->kuota;
        $jenis = $request->jenis;

        $pertama = 'KL';
        $acak = rand(0,99);
        if($acak >= 0 && $acak < 10){
            $angka = '0'.$acak;
        }else{
            $angka = $acak;
        }
        $pertamaKelas = substr($namaKelas, 0, 1);

        $cekNomorKelas = Kelas::count();
        if($cekNomorKelas == 0){
            $urut = '00001';
        }elseif($cekNomorKelas > 0 && $cekNomorKelas < 10){
            $urut = '0000'. $cekNomorKelas;
        }elseif($cekNomorKelas > 10 && $cekNomorKelas < 100){
            $urut = '000'. $cekNomorKelas;
        }elseif($cekNomorKelas > 100 && $cekNomorKelas < 1000){
            $urut = '00'. $cekNomorKelas;
        }elseif($cekNomorKelas > 1000 && $cekNomorKelas < 10000){
            $urut = '0'. $cekNomorKelas;
        }elseif($cekNomorKelas > 10000 && $cekNomorKelas < 100000){
            $urut = $cekNomorKelas;
        }else{
            $urut = rand(1000,9999);
            $tambah = rand(0,25);
            $karakter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 
            'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'][$tambah];
            $kode = $pertama.$angka.$pertamaKelas.$urut.$karakter;
        }

        $kode = $pertama.$angka.$pertamaKelas.$urut;
        $kelas = Kelas::create([
            'kelasID' => $kode,
            'locationID' => $lokasi,
            'trainerID' => $trainer1,
            'trainerID2' => $trainer2,
            'trainerID3' => $trainer3,
            'id_pembuat' => $userID,
            'nama_kelas' => $namaKelas,
            'hari_pelaksanaan' => $dataAwal,
            'jam_awal' => $mulai,
            'jam_akhir' => $akhir,
            'jenis_kelas' => $jenis,
            'kuota_peserta' => $kuota,
            'status' => 'Menunggu pemilihan ruang dan verifikasi',
        ]);
        return redirect()->route('kelas.index')->with('success','Data kelas ' . $namaKelas .' berhasil ditambahkan. Silahkan memilih ruangan yang diinginkan.');
    }

    public function show($kelasID){
        $kelas = Kelas::find($kelasID);
        $mulai = Carbon::createFromFormat('H:i:s', $kelas->jam_awal);
        $akhir = Carbon::createFromFormat('H:i:s', $kelas->jam_akhir);
        $selisihJam = $akhir->diff($mulai);
        $selisihJam->jam = $selisihJam->h;
        $selisihJam->menit = $selisihJam->i;
        $hari1 = Carbon::createFromFormat('Y-m-d', $kelas->hari_pelaksanaan);
        $hari2 = $hari1->isoFormat('dddd, DD MMMM YYYY');
        return view('kelas.show', compact('kelas', 'selisihJam', 'hari2'));
    }

    public function edit($kelasID){
        $kelas = Kelas::find($kelasID);
        $hari1 = Carbon::createFromFormat('Y-m-d', $kelas->hari_pelaksanaan);
        $trainer = Trainer::selectRaw("trainer.trainerID as trainerID, concat(users.nama, ' - ', trainer.jenis) as namaTrainer")
        ->join('users', 'trainer.userID', '=', 'users.userID')->orderBy('trainer.trainerID', 'asc')->get();
        $hari2 = $hari1->isoFormat('dddd, DD MMMM YYYY');
        return view('kelas.edit', compact('kelas', 'hari2', 'trainer'));
    }

    public function update(Request $request, $kelasID){
        $kelas = Kelas::find($kelasID);

        $this->validate($request, [
            'lokasi' => 'required',
            'name' => 'required',
            'trainer'=> 'required',
            'dataAwal' => 'required',
            'mulai' => 'required',
            'selesai' => 'required',
            'kuota' => 'required',
            'jenis' => 'required',
        ]);

        $lokasi = $request->lokasi;
        $namaKelas = $request->name;
        $trainer1 = $request->trainer;
        $trainer2 = $request->trainer2;
        $trainer3 = $request->trainer3;
        $dataAwal = $request->dataAwal;
        $mulai = $request->mulai;
        $akhir = $request->selesai;
        $kuota = $request->kuota;
        $jenis = $request->jenis;
        if($kelas->id_otorisasi = ""){
            $status = "Menunggu pemilihan ruang dan validasi perubahan";
        }else{
            $status = "Menunggu pemilihan ruangan, sudah divalidasi admin";
        }

        $kelas->update([
            'nama_kelas' => $namaKelas,
            'locationID' => $lokasi,
            'trainerID' => $trainer1,
            'trainerID2' => $trainer2,
            'trainerID3' => $trainer3,
            'hari_pelaksanaan' => $dataAwal,
            'jam_awal' => $mulai,
            'jam_akhir' => $akhir,
            'jenis_kelas' => $jenis,
            'kuota_peserta' => $kuota,
            'status' => $status,
        ]);

        return redirect()->route('kelas.index')->with('success','Data kelas ' . $namaKelas .' berhasil diubah. Silahkan memilih ruangan pengganti yang diinginkan.');
    }

    public function destroy(Request $request, $kelasID){
        $kelas = Kelas::find($kelasID);
        $kelas->delete();

        return redirect()->route('kelas.index')
            ->with('success', 'Data Kelas berhasil dihapus!');
    }

    public function verifikasi(){
        $dataKelas = Kelas::where('status', 'Menunggu Verifikasi Admin')->orWhere('status', 'Ubah Data - Menunggu Verifikasi Admin')->paginate(10);
        return view('kelas.verifikasi', compact('dataKelas'));
    }

    public function verifikasiKelas(Request $request, $kelasID){
        $kelas = Kelas::find($kelasID);
        $tombol = $request->input('verifikasiKelas');

        if($tombol == 'setuju'){
            $status = 'Sudah Diverifikasi Admin';
            $kelas->update([
            'status' => $status,
            ]);
        }else{
            $status = 'Ditolak Admin';
            $kelas->update([
                'status' => $status,
            ]);
        }

        return redirect()->route('getVerifikasiKelas')
            ->with('info', 'Data Kelas ' . $status . ' !');
    }

    public function getQRCodeAbsen($kelasID){
        $kelas = Kelas::find($kelasID);
        $kode = strtoupper(Str::random(20));
        $QRCode  = QrCode::generate($kode);

        $data = CodeQR::create([
            'QRCode_code' => $kode,
            'kelasID' => $kelas->kelasID,
            'status' => 'Baru',
            'data' => $kode,
            'datetime_used' => Carbon::now(),
        ]);
        return view('kelas.absensi', compact('QRCode', 'data'));
    }
    public function downloadAbsen($kode){
        set_time_limit(300);
        $qrCode = QrCode::size(300)->generate($kode);
        $path = storage_path('app/public/qrcodes/') . $kode . '.png';
        file_put_contents($path, $qrCode);

        // Memberikan file untuk diunduh
        return Response::download($path, 'qrcode.png');

    }
}
