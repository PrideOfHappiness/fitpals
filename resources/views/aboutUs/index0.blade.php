<!DOCTYPE html>
<html lang="en">
<head>
    @include('template/header')
    <title>Data Company Information</title>
    <style>
        body {
            font-family: sans-serif;
            font-size: 16px;
        }

        .container-information {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 20px;
            text-align: center;
            width: 960px;
            margin: 0 auto;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 10px;
        }

        img{
            max-width: 40px;
            max-height: 40px;
        }
    </style>
</head>
<body>
    @include('template/navbar')
    @include('template/sidebarAdmin')

    <div class="container">
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif 
        @if ($message = Session::get('error'))
            <div class="alert alert-danger">
                <p>{{ $message }}</p>
            </div>
        @endif 
        <div class="mt-4"> 
            <section class="content"> 
                <h1>Data Kelas</h1>
                <br>
                <div class = "pull-right mb-2" class = "wrapper">
                    <a class="btn btn-success" href="{{ route('aboutUs.create') }}"> 
                        <i class="fa-solid fa-plus"></i>
                            Tambah Data Company Information
                    </a>
                </div>
                <br>
                <h1>Company Information</h1>
                <br>
                <main class = "container-information">
                    <p>Hmm <img src="https://banner2.cleanpng.com/20180606/joe/kisspng-the-emoji-movie-discord-sticker-emoticon-emoji-question-5b17be91b438f1.7283439615282827697382.jpg">
                        , sepertinya data company information belum tersedia sama sekali.</p>
                    <p>Apakah anda ingin menambahkan data company information untuk lokasi anda?</p>
                </main>
            </section>
        </div>
    </div>
@include('template/footer')
</body>
</html>