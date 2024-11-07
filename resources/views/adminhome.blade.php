<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>News Portal Dashboard</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f2f5;
            color: #333;
        }
                /* Header Styling */
                header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background-color: white;
            color: white;
            position:sticky;
            top:0;
            z-index: 100;
        }
        .pembuka {
            margin-top: 10px;
            text-align: center;
            font-size: 24px;
            opacity: 0;
            transition: opacity 2s ease-in-out;
            font-family: 'Poppins', sans-serif; /* Mengganti font */
            font-weight: 700; /* Menebalkan font */
        }
        .pembuka.sticky {
            position: sticky;
            top:50px; /*sesuaikan dengan tinggi navbar */
            z-index: 99;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 30px;
            
        }

        nav ul li a {
            text-decoration: none;
            color: black;
            font-size: 1em;
        }

        .search-login {
            display: flex;
            gap: 10px;
        }

        .search-login button {
            padding: 8px 16px;
            background-color: blue;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 4px;
        }
    /*data user */
        .data{
            margin:40px;
            position: grid;
            background-color:white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius:8px;
            display:flex;
            padding:10px;
        }
        .beritapopuler{
            flex: 1;
            background-color: white;
            padding: 20px;
            margin:10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
           flex-direction: column; 
            gap: 20px; /* Jarak antar card */
            overflow-y: hidden; /* tambahkan scrollbar vertikal */
            overflow-x: hidden;
            width :25%;
            height :auto;
            display: inline-block;
            align: center;
            color:inherit; /* warna text tetap */
            text-decoration: none; /*menghilangkan garis bawah */
        }
        .beritapopuler:hover{
            background-color:#2c3e50;
            color:white;
        }
        .beritapopuler img{
            width:70px;
            height:70px;
            max-width:35%;
            flex:1;
            float:right;
            position:relative;
        }
        .nomor{
            font-size:2.5rem;
            max-width:35%;
            flex:1;
            position:static;
            padding:5px;
        }
        .nama{
            font-size:1rem;
            max-width:45%;
            flex:1;
            position:relative;
        }
        .nomor, .nama{
            display: inline-block;
        }

        /*footer */
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 209px;
            height:auto;
            position:static;
        }

        footer p {
            margin-bottom: 10px;
        }


    </style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- Header -->
    <header>
        
        <div class="logo" ><img src="{{ asset('storage/images/logo.png') }}" alt="Gambar" width="200px"> </div>
         <nav>
             <ul>
                 <li><a href="{{route('adminhome')}}">Home</a></li>
                 <li><a href="{{route('pengguna.index')}}">Pengguna</a></li>
                 <li><a href="{{route('beritautama')}}">Berita Utama</a></li>
                 <li><a href="{{ route('beritapopuler')}}">Berita Populer</a></li>
                 <li><a href="{{ route('beritaterbaru')}}">Berita Terbaru</a></li>
                 <li><a href="{{ route('ulasan')}}">Ulasan</a></li>
                 <li><a href="{{ route('pengaturanadmin')}}">Pengaturan</a></li>
             </ul>
         </nav>
         <div class="search-login">
             <a href="{{ route('login') }}">
             <button onclick="return confirm('Apakah Anda yakin ingin Logout?')">Logout</button>
             </a>
         </div>
     </header>
 
     <div class="pembuka" id="pembuka">
         <h5> Welcome Back Admin, Have a nice day!</h5>
     </div>

    <!-- data user -->
     
    <section class="data">
        <a href="{{route('pengguna.index')}}" class="beritapopuler">
            <div class="nomor">{{$jumlahUser}}</div>
            <img src="{{ asset('storage/images/news1.png') }}"><br><br>
            <div class="nama">Pengguna</div>
        </a>

        <a href="{{route('beritautama')}}" class="beritapopuler">
            <div class="nomor">{{$jumlahBeritaUtama}}</div>
            <img src="{{ asset('storage/images/news1.png') }}"><br><br>
            <div class="nama">Berita Utama</div>
        </a>

        <a href="{{ route('beritapopuler')}}" class="beritapopuler">
            <div class="nomor">{{$jumlahBeritaPopuler}}</div>
            <img src="{{ asset('storage/images/news1.png') }}"><br><br>
            <div class="nama">Berita Populer</div>
        </a>

        <a href="{{ route('beritaterbaru')}}" class="beritapopuler">
            <div class="nomor">{{$jumlahBeritaTerbaru}}</div>
            <img src="{{ asset('storage/images/news1.png') }}"><br><br>
            <div class="nama">Berita Terbaru</div>
        </a>
        <br>
        <a href="{{ route('ulasan')}}" class="beritapopuler">
            <div class="nomor">{{$jumlahUlasan}}</div>
            <img src="{{ asset('storage/images/news1.png') }}"><br><br>
            <div class="nama">Ulasan</div>
        </a>


    </section>

    <!--footer -->
    <footer id="footer">
    <p>&copy; Copyright @2024 | PT. WINNICODE GARUDA TEKNOLOGI</p>
    </footer>


     <script>
        window.onload = function () {
            const greeting = document.getElementById("pembuka");

            // Function untuk membuat tulisan fade in dan fade out
            function fadeInOut() {
                greeting.style.opacity = 1; // Munculkan (fade in)
                setTimeout(function () {
                    greeting.style.opacity = 0; // Hilangkan (fade out) setelah beberapa detik
                }, 4000); // Tampilkan selama 4 detik
            }

            // Panggil fungsi fade in-out setelah halaman selesai dimuat
            fadeInOut();

            // Ulangi efek setiap 10 detik
            setInterval(fadeInOut, 10000);
        };
    </script>

</body>