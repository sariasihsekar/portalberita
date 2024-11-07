<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Berita Terbaru</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container {
            margin: 40px;
            background-color: white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }
        h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Edit Berita Terbaru</h2>
        
        <form action="{{ route('updateberitaterbaru', $beritaTerbaru->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" id="judul" name="judul" value="{{ $beritaTerbaru->judul }}" required>
            </div>

            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" class="form-control" id="gambar" name="gambar" accept="image/*">
                <small class="form-text text-muted">Biarkan kosong jika tidak ingin mengganti gambar.</small>
            </div>
            
            <div class="mb-3">
                <label for="konten" class="form-label">Konten</label>
                <textarea class="form-control" id="konten" name="konten" rows="4" required>{{ $beritaTerbaru->konten}}</textarea>
            </div>
            
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ route('beritaterbaru') }}" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
</body>
</html>