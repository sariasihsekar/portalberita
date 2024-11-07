<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Pengguna</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container{
            margin:40px;
            position: grid;
            background-color:white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius:8px;
            display:block;
            padding:10px;
        }
        h3{
            margin-bottom:20px;
           text-align: center;
        }
        p{
            text-align:justify;
            margin-top: 20px;
        }
        img{
            margin:auto;
            width: 500px;
            height:auto;
            display: block;
        }


    </style>
</head>
<body>
<div class="container">

       <!-- resources/views/berita/show.blade.php -->
        <h3>{{ $beritaPopuler->judul }}</h3>
        <img src="{{ asset('storage/' . str_replace('public/', '', $beritaPopuler->gambar)) }}" alt="{{ $beritaPopuler->judul }}">
        <p>{{ $beritaPopuler->konten }}</p>
 

</div>
</body>