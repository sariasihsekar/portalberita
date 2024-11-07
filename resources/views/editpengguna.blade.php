<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Edit Pengguna</title>
    <style>
        .container{
            margin:40px;
            position: grid;
            background-color:white;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            border-radius:8px;
            display:block;
            padding:10px;
            align:center;
        }
        h2{
            margin-bottom:20px;
        }
        .container input[type="text"],
        .container input[type="email"]{
            width: 100%;
            padding: 10px;
            margin: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
            max-width:50%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Pengguna</h2>

        <form action="{{ route('updatepengguna', $user->id) }}" method="POST">
            @csrf
            @method('PUT')
            <label for="name">Nama:</label><br>
            <input type="text" id="name" name="name" value="{{ $user->name }}"  required><br><br>

            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" value="{{ $user->email }}" required><br><br>

            <input type="submit" class="btn btn-success" value="Update">
        </form>
    </div>
</body>
</html>
