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
        h2{
            margin-bottom:20px;
        }
        .full-content {
            display: none; /* Hide full content by default */
        }

    </style>
</head>
<body>

    
    <div class="container">
    <h2>Daftar Berita Utama</h2>

    @if(session('success'))
        <p style="color: green;">{{ session('success') }}</p>
    @endif

    <a href="{{ route('adminhome') }}" class="btn btn-secondary btn-sm mb-3">Kembali ke Halaman Admin</a>
    <div class="table-responsive">
    <table border="1" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Judul</th>
                <th>Foto</th>
                <th>Penjelasan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($berita as $beritautama)
                <tr>
                    <td>{{ $beritautama->id }}</td>
                    <td>{{ $beritautama->judul }}</td>
                    <td>{{ $beritautama->foto }}</td>
                    <td >
                            <div>
                                <span class="short-content">{{ Str::limit($beritautama->penjelasan, 20) }}...</span>
                                <span class="full-content">{{ $beritautama->penjelasan }}</span>
                                <button class="btn btn-link p-0" onclick="toggleContent(this)">Lihat Selengkapnya</button>
                            </div>
                    </td>
                    <td>
                        <a href="{{ route('editberitautama', $beritautama->id) }}" class="btn btn-success btn-sm">Edit</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    </div>
    </div>

    <script>
        function toggleContent(button) {
            const parentDiv = button.parentElement; // Ambil elemen induk
            const fullContent = parentDiv.querySelector('.full-content');
            const shortContent = parentDiv.querySelector('.short-content');

            // Toggle tampilan konten
            if (fullContent.style.display === "none" || fullContent.style.display === "") {
                fullContent.style.display = "inline"; // Tampilkan konten penuh
                shortContent.style.display = "none"; // Sembunyikan konten pendek
                button.innerText = "Sembunyikan"; // Ubah teks tombol
            } else {
                fullContent.style.display = "none"; // Sembunyikan konten penuh
                shortContent.style.display = "inline"; // Tampilkan konten pendek
                button.innerText = "Lihat Selengkapnya"; // Ubah teks tombol
            }
        }
    </script>
</body>
</html>
