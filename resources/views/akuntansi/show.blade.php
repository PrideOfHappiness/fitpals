<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Tambah Data Kelas Umum</title>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarUsers')

    <div class="container"> 
        <div class="mt-4"> 
            <section class="content"> 
                    <input type="hidden" name="userID" value="{{ auth()->user()->userID }}"/>
                    <div class="mb-3">
                        <label for="deskripsi">Deskripsi</label>
                        <textarea name="deskripsi" class="form-control" id="deskripsi" rows="2" readonly>{{ $akun->deskripsi }}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="debet">Akun Debet</label>
                        <input type="text" class="form-control" id="debet" value="{{ $akun->getKodeAkunDebet->nama_akun}}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="name">Jumlah Debet</label>
                        <input type="number" class="form-control" name="jumlah_debet" id="jumlah_debet" value="{{ $akun->jumlah_debet }}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="debet">Akun Kredit</label>
                        <input type="text" class="form-control" id="debet" value="{{ $akun->getKodeAkunKredit->nama_akun}}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="name">Jumlah Kredit</label>
                        <input type="number" class="form-control" name="jumlah_kredit" id="jumlah_kredit" value="{{ $akun->jumlah_kredit }}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Unggah Data</button>
                </form>
            </section>
        </div>
    </div>
    @include('template/footer')
</body>
</html>