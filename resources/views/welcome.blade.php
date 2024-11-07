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

        /* Featured News Section */
        .featured-news {
            display: flex;
            justify-content: space-between;
            margin: 40px 20px;
        }

        .featured-article {
            flex: 2;
            background-color: white;
            padding: 20px;
            margin-right: 20px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .featured-article img {
            width: 100%;
            height: 400px;
            border-radius: 8px;
            margin-bottom: 30px;
        }

        .featured-article a {
            font-size: 1.8em;
            margin-top: 20px;
            text-decoration: none;
            color:black;
        }
        .featured-article a:hover{
            color:blue;
            text-decoration:underline;
        }

        .featured-article p {
            font-size: 1.1em;
            margin-top: 10px;
            line-height: 1.6;
        }

        /* Sidebar Popular News */
        .popular-news {
            flex: 1;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            /*display: flex; */
            flex-direction: column;
            gap: 20px; /* Jarak antar card */
            overflow-y: auto; /* tambahkan scrollbar vertikal */
            overflow-x: hidden;
            width :200px;
            height : 620px;
        }

        .popular-news h3 {
            font-size: 1.4em;
            margin-bottom: 20px;
        }

        .popular-news ul {
            list-style: none;
        }

        .popular-news ul li {
            margin-bottom: 15px;
        }

        .popular-news ul li a {
            text-decoration: none;
            color: #3498db;
            font-size: 1.1em;
        }

        /* Latest News Section */
        .latest-news {
           /* margin: 20px;
            background-color: white;
            padding: 20px;
            text-align:center;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px; */
            position: relative; 
            width:100%
            padding:20px;
            overflow:hidden;
            text-align:center;
        }
        .carousel-container{
            position: relative;
            display:flex;
            align-items:center;
            
            /*width :100%;
            overflow: hidden; */
        }
        .prev, .next{
           /* position: absolute;
            top:50%;
            transform: translateY(-50%);
            background-color: rgba(0,0,0, 0.5);
            color: #fff;
            border: none;
            font-size: 24px;
            cursor: pointer;
            padding: 10px;
            z-index: 10%;
            flex:1; */
            background-color: rgba(0,0,0, 0.5);
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .prev{
            left:0;
        
        }
        .next{
            right:0;
        }

        .latest-news h2 {
            font-size: 1.8em;
            margin-bottom: 20px;
            
        }

        .news-grid {
            /*display: flex;*/
            /*grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); */
           /* gap: 20px;
            min-width:200px;
            height: 300px;
            margin:0 10px;
            transition: transform 0.5s ease;*/
            flex: 0 0 auto;
            margin-top:20px;
            width: 200px;
            height: 450px;
            background: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 8px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 10px;
           
        }
        .news-grid-container{
            display:flex;
            gap:10px; 
           overflow-x:scroll;
            scroll-behavior:smooth;
            width:100%; 
            height: 500px;
            margin: 0 10px;
            background-color:white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .news-grid-container::webkit-scrollbar{
            display:none;
        }
        .news-grid article {
            background-color: #fff;
            padding: 15px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition : transform 0.3s ease;
            min-width: calc(100% / 6); /*mengatur agar satu halaman hanya berisi 6 artikel */
            flex:1;
        }

        .news-grid article:hover {
            transform: translateY(-5px);
        }

        .news-grid article img {
            width: 100%;
           /* height: 200px;*/
           height:150px;
           object-fit:cover;
           border-radius:4px;
           /* border-radius: 8px;
            object-fit: cover; */
        }

        .news-grid article h3 {
            font-size: 1.4em;
            margin-top: 10px;
        }

        .news-grid article p {
            font-size: 1em;
            margin-top: 10px;
            color: #666;
        }

        /* Footer Styling */
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }

        footer p {
            margin-bottom: 10px;
        }

        footer .social-media a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
        }
        .footer-atas{
            display:flex;
            gap:20px;
            padding: 20px;
        }
        .tentang-kami{
            width: 30%;
            margin: 5px;
            gap: 10px;
            color: white;
            flex:1;
        }
        .banner{
            width: 30%;
            margin: 2px;
            gap: 10px;
            color: white;
            flex:1;
        }
        .banner img{
            width: 150px;
            height: 70px;
        }
        .tautan{
            width: 30%;
            margin: 5px;
            gap: 10px;
            color: white;
            flex:1;
        }
        .tautan img{
            width: 20px;
            height:20px;
        }
        .garis-panjang {
            border: 0; /* Hilangkan border default */
            height: 30px; /* Ketebalan garis */
            background-color: white; /* Warna garis */
            width: 100%; /* Panjang garis, 100% lebar kontainer */
            margin: 20px 0; /* Jarak atas dan bawah */
        }


        /* Responsive Design */
        @media (max-width: 768px) {
            .featured-news {
                flex-direction: column;
            }

            .featured-article img {
                height: 300px;
            }
        }
        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
            margin-bottom: 5px;
        }
        .card-content {
            display: flex; /* Mengatur layout gambar dan teks secara horizontal */
            align-items: center; /* Vertikal align: menyamakan posisi judul dengan gambar */
            gap: 20px; /* Jarak antara gambar dan judul */
        }

        .card img {
            width: 40%;
            border-radius: 8px;
            
        }

        .card-title {
            font-size: 18px;
            font-weight: bold;
            margin: 15px 0 10px;
            color: #333;
        }

        .card-description {
            font-size: 16px;
            color: #777;
            line-height: 1.6;
        }

        .card-button {
            margin-top: 15px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        .card-button:hover {
            background-color: #45a049;
        }

        /*section ulasan */
        .ulasan{
            margin: 20px;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            display: flex;
            gap: 100px; /*jarak peta dengan form */
            margin-top:40px;

        }
        .peta{
            width:20%;
            flex:1;
            float: left;
            height: auto;
        }
        .form-ulasan{
            max-width:45%;
            flex:1;
            padding: 10px;
            background-color: white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            height : auto;
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
                <li><a href="#">Home</a></li>
                <li><a href="#berita-utama">Berita Utama</a></li>
                <li><a href="#berita-populer">Berita Populer</a></li>
                <li><a href="#berita-terbaru">Berita Terbaru</a></li>
                <li><a href="#ulasan">Ulasan</a></li>
                <li><a href="#footer">About</a></li>
            </ul>
        </nav>
        <div class="search-login">
            <a href="{{ route('login') }}">
            <button>Login</button>
            </a>
        </div>
    </header>

    <div class="pembuka" id="pembuka">
        <h5> Welcome Back Readers, Your Information is Our PRIORITY</h5>
    </div>

    <!-- Featured News Section -->
    <div class="featured-news" id="berita-utama">
        <div class="featured-article">
            <img src="{{ asset('Storage/' . $beritaUtama->foto) }}" alt="Featured News">
            <a href="{{ route('bacaberitautama', $beritaUtama->id)}}">{{ $beritaUtama->judul}}</a>
        </div>

        <aside class="popular-news" id="berita-populer">
            <h3>Berita Populer</h3>
            <ul>
            @foreach ($beritaPopuler as $berita)
            <div class="card">
                <div class="card-content">
                    <img src="{{ asset('storage/' . str_replace('public/', '', $berita->gambar)) }}" alt="Card Image {{$berita->id}}">
                        <div>
                        <a href="{{ route('bacaberitapopuler', $berita->id)}}" class="card-title" style="text-decoration:none;">{{ $berita->judul }}</a>
                        </div>
                </div>
            </div>
            @endforeach
            </ul>
        </aside>
    </div>

    <!-- Latest News Section -->
    <section class="latest-news" id="berita-terbaru">
        <h2>Berita Terbaru</h2>
        <div class="carausel-container">
       <!-- <button class="prev" onclick="slide(-1)">&#10094;</button> -->
            
            <div class="news-grid-container">
            @foreach ($beritaTerbaru as $berita)
            <div class="news-grid">
            <article>
                <img src="{{ asset('storage/' . str_replace('public/', '', $berita->gambar)) }}" alt="News Image 1 {{ $berita->id}}">
                <a href="{{ route('bacaberitaterbaru', $berita->id)}}" class="card-title" style="text-decoration:none;">{{ $berita->judul }}</a>
            </article>
        </div>
        @endforeach
        </div>
            
      <!-- <button class="next" onclick="slide(1)">&#10095;</button> -->
        </div>
    </section>

    <!--Section Ulasan -->
    <section class="ulasan" id="ulasan">
        <div class=" peta">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126461.77843025191!2d110.24518159808669!3d-7.902321980552601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a55fed76d37e9%3A0xe79720853fbaadd8!2sBantul%2C%20Kec.%20Bantul%2C%20Kabupaten%20Bantul%2C%20Daerah%20Istimewa%20Yogyakarta!5e0!3m2!1sid!2sid!4v1729924080974!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
         </div>
        <div class="form-ulasan" >
        <h2 align="center">Form Ulasan</h2>
        <form action="/ulasan/add" method="POST">
            @csrf
            <div class="mb-3 mt-3">
            <label for="nama">Nama:</label><br>
            <input type="text" id="nama" name="nama" required class="form-control"><br><br>
            </div>
            <div class="mb-3">
            <label for="email">Email:</label><br>
            <input type="email" class="form-control" id="email" name="email" required><br><br>
            </div>
            <div class="mb-3">
            <label for="ulasan">Ulasan:</label><br>
            <textarea id="ulasan"  class=" form-control" name="ulasan" rows="4" required></textarea><br><br>
            </div>
            <button type="submit" class="btn btn-primary">Kirim</button>
    </form>
        </div>
    </section>


    <!-- Footer -->
    <footer id="footer">
    <div class="footer-atas">
        <div class="tentang-kami">
            <h5>Tentang Kami</h5>
            <p>Email : winnicodegarudaofficial@gmail.com</p>
            <p>Alamat (Pusat): Bandung, Bandung</p>
            <p>Alamat (Cabang): Bantul, Yogyakarta</p>
            <p> Call Center : 6285159932501(24 Jam)</p>
        </div>

        <div class=" banner">
            <img src="{{ asset('storage/images/banner-logo.png') }}">
            <p> Jurnalistik Program winnicode adalah program pengembangan sumber 
                daya manusia yang ditujukan bagi pemuda pemudi yang berkarir di dunia report</p>
        </div>

        <div class="tautan">
            <h6> Tautan</h6>
            <img src="{{ asset('storage/images/globeputih.jpg') }}"><a href="https://winnicode.com/" style="text-decoration: none; color:white;"> Website</a><br>
            <img src="{{ asset('storage/images/igputih.jpg') }}"><a href="https://www.instagram.com/winnicodeofficial?igsh=MWs2c3N3ZnA3azd4bQ==" style="text-decoration: none; color:white;"> Instagram </a>
        </div>
    </div>
        <hr class="garis-panjang">
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

   /* let currentPage = 0;
    const itemsPerPage = 6;
    const newsGrid = document.querySelector('.news-grid');
    const articles = document.querySelectorAll('.news-grid article');
    const totalPages = Math.ceil(articles.length / itemsPerPage);

    function slide(direction) {
        currentPage += direction;
        
        if (currentPage < 0) {
            currentPage = 0;
        } else if (currentPage >= totalPages) {
            currentPage = totalPages - 1;
        }
        
        const offset = -currentPage * 100;
        newsGrid.style.transform = `translateX(${offset}%)`; 
    } */

    let currentIndex = 0;

function slide(direction) {
    const container = document.querySelector('.news-grid-container');
    const totalCards = document.querySelectorAll('.news-grid').length;
    const cardWidth = document.querySelector('.news-grid').clientWidth;
    
    currentIndex += direction;

    // Pastikan index tidak keluar dari batas
    if (currentIndex < 0) {
        currentIndex = 0;
    } else if (currentIndex >= totalCards - 1) {
        currentIndex = totalCards - 1;
    }

    // Geser posisi container
    const offset = -currentIndex * cardWidth; // Hitung offset berdasarkan index
    container.style.transform = `translateX(${offset}px)`;
}

    </script>
</body>
</html>
