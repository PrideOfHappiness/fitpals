<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\KodeAkun;

class KodeAkunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $kodeAkun = [
            [
                'kode_akun' => '111',
                'nama_akun' => 'Kas',
            ],
            [
                'kode_akun' => '112',
                'nama_akun' => 'Wesel Tagih',
            ],
            [
                'kode_akun' => '113',
                'nama_akun' => 'Piutang Usaha',
            ],
            [
                'kode_akun' => '114',
                'nama_akun' => 'Perlengkapan',
            ],
            [
                'kode_akun' => '115',
                'nama_akun' => 'Iklan Dibayar Di Muka',
            ],
            [
                'kode_akun' => '116',
                'nama_akun' => 'Sewa Bayar Di Muka',
            ],
            [
                'kode_akun' => '117',
                'nama_akun' => 'Asuransi Bayar Di Muka',
            ],
            [
                'kode_akun' => '121',
                'nama_akun' => 'Tanah',
            ],
            [
                'kode_akun' => '122',
                'nama_akun' => 'Bangunan',
            ],
            [
                'kode_akun' => '123',
                'nama_akun' => 'Akumulasi Penyusutan Bangunan',
            ],
            [
                'kode_akun' => '124',
                'nama_akun' => 'Peralatan',
            ],
            [
                'kode_akun' => '125',
                'nama_akun' => 'Akumulasi Penyusutan Peralatan',
            ],
            [
                'kode_akun' => '130',
                'nama_akun' => 'Investasi Jangka Panjang',
            ],
            [
                'kode_akun' => '141',
                'nama_akun' => 'Hak Cipta',
            ],
            [
                'kode_akun' => '142',
                'nama_akun' => 'Hak Merek',
            ],
            [
                'kode_akun' => '211',
                'nama_akun' => 'Hutang Usaha',
            ],
            [
                'kode_akun' => '212',
                'nama_akun' => 'Hutang Gaji',
            ],
            [
                'kode_akun' => '213',
                'nama_akun' => 'Hutang Bank',
            ],
            [
                'kode_akun' => '214',
                'nama_akun' => 'Hutang Pajak',
            ],
            [
                'kode_akun' => '215',
                'nama_akun' => 'Hutang Wesel Tagih',
            ],
            [
                'kode_akun' => '216',
                'nama_akun' => 'Hutang Biaya',
            ],
            [
                'kode_akun' => '221',
                'nama_akun' => 'Hutang Hipotek',
            ],
            [
                'kode_akun' => '301',
                'nama_akun' => 'Modal',
            ],
            [
                'kode_akun' => '302',
                'nama_akun' => 'Prive',
            ],
            [
                'kode_akun' => '411',
                'nama_akun' => 'Pendapatan Usaha',
            ],
            [
                'kode_akun' => '412',
                'nama_akun' => 'Pendapatan Jasa',
            ],
            [
                'kode_akun' => '413',
                'nama_akun' => 'Pendapatan Bunga',
            ],
            [
                'kode_akun' => '414',
                'nama_akun' => 'Pendapatan lain-lain',
            ],
            [
                'kode_akun' => '511',
                'nama_akun' => 'Beban gaji',
            ],
            [
                'kode_akun' => '512',
                'nama_akun' => 'Beban tagihan air',
            ],
            [
                'kode_akun' => '513',
                'nama_akun' => 'Beban tagihan listrik',
            ],
            [
                'kode_akun' => '514',
                'nama_akun' => 'Beban pajak pertambahan nilai',
            ],
            [
                'kode_akun' => '515',
                'nama_akun' => 'Beban pajak bumi dan bangunan',
            ],
            [
                'kode_akun' => '516',
                'nama_akun' => 'Beban pajak penghasilan',
            ],
            [
                'kode_akun' => '517',
                'nama_akun' => 'Beban pemeliharaan bangunan',
            ],
            [
                'kode_akun' => '518',
                'nama_akun' => 'Beban pemeliharaan peralatan',
            ],
            [
                'kode_akun' => '519',
                'nama_akun' => 'Beban penyusutan bangunan',
            ],
            [
                'kode_akun' => '520',
                'nama_akun' => 'Beban penyusutan peralatan',
            ],
            [
                'kode_akun' => '521',
                'nama_akun' => 'Beban sewa bangunan',
            ],
            [
                'kode_akun' => '522',
                'nama_akun' => 'Beban asuransi',
            ],
            [
                'kode_akun' => '523',
                'nama_akun' => 'Beban iklan',
            ],
            [
                'kode_akun' => '524',
                'nama_akun' => 'Beban bunga',
            ],
            [
                'kode_akun' => '525',
                'nama_akun' => 'Beban tagihan telepon dan internet',
            ],
            [
                'kode_akun' => '526',
                'nama_akun' => 'Beban lain-lain',
            ],
        ];

        foreach($kodeAkun as $key=>$data){
            KodeAkun::create($data);
        }
    }
}
