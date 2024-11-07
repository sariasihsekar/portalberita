<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Ulasan Pengguna</title>
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
    <h2>Daftar Ulasan Pengguna</h2>

    <a href="{{ route('adminhome') }}" class="btn btn-secondary btn-sm mb-3">Kembali ke Halaman Admin</a>
    <div class="table-responsive">
    <table border="1" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Ulasan</th>
            </tr>
        </thead>
        <tbody>
            @foreach($ulasan as $ulas)
                <tr>
                    <td>{{ $ulas->id }}</td>
                    <td>{{ $ulas->nama }}</td>
                    <td>{{ $ulas->email }}</td>
                    <td >{{$ulas->ulasan}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    </div>
    </div>
</body>
</html>
