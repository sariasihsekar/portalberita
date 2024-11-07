<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Register</title>
    <style>
        /* Mengatur tampilan halaman */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        /* Gaya untuk kotak login */
        .login-container {
            background-color: #fff;
            padding: 30px;
            width: 40%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }
        /* Gaya judul */
        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-container img{
            width: 50px;
            height: 50px;
            float:left;
        }
        /* Gaya untuk input dan tombol */
        .login-container input[type="email"],
        .login-container input[type="password"], 
        .login-container input[type="name"]{
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        /* Gaya tombol submit */
        .login-container button {
            width: 25%;
            padding: 10px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        /* Gaya tombol saat hover */
        .login-container button:hover {
            background-color: lightblue;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <img src="{{ asset('storage/images/logo2.png') }}">
        <h2>Selamat Datang di Winnicode News</h2>
        <form action="{{ route('register') }}" method="POST">
            @csrf
            <input type="name" name="name" id="name" placeholder="Nama" required value="{{ old('name')}}">
            @error('name')
            <p style="color: red;">{{ $message }}</p>
            @enderror
            <br>
            <input type="email" name="email" id="email" placeholder="Email" autocomplete="new-email" value="{{ old('email') }}" required>
            @error('email')
            <p style="color: red;">{{ $message }}</p>
            @enderror
            <br>
            <input type="password" name="password" id="password" placeholder="Password" autocomplete="new-password" required>
            @error('password')
            <p style="color: red;">{{ $message }}</p>
            @enderror
            <br>
            <input type="password" id="password_confirmation" name="password_confirmation" placeholder="confirm password" required><br><br>
            <button type="submit">Register</button><br><br>
            <a href="{{ route('login') }}">Sudah memiliki akun? Login disini!</a>
        </form>
    </div>
    @if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif

@if (session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif

</body>
</html>
