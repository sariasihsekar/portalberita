<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Berita Utama</title>
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

    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Berita Utama</h2>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        <form action="{{ route('updateberita', $beritautama->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="foto" class="form-label">Foto</label>
                <input type="file" class="form-control" id="foto" name="foto" accept="image/*" required>
                @if($beritautama->foto)
                    <img src="{{ asset('storage/' . $beritautama->foto) }}" alt="Foto Berita" style="max-width: 100px; margin-top: 10px;">
                @endif
            </div>

            <div class="mb-3">
                <label for="judul" class="form-label">Judul</label>
                <input type="text" class="form-control" id="judul" name="judul" value="{{ $beritautama->judul ?? '' }}" required>
            </div>

            <div class="mb-3">
                <label for="penjelasan" class="form-label">Penjelasan</label>
                <textarea class="form-control" id="penjelasan" name="penjelasan" required>{{ $beritautama->penjelasan ?? '' }}</textarea>
            </div>

            <button type="submit" class="btn btn-primary">Simpan Berita</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
