<!DOCTYPE html>
<html> 
    <head> 
        @include('template/header')
        <title>Company Information {{ $aboutUs->getLocationIDAboutUs->namaLokasi}} </title>
        <style>
            
        </style>
    </head>
    <body>
        @include('template/navbar')
        @include('template/sidebarAdmin')

        
        @include('template/footer')
    </body>
</html>