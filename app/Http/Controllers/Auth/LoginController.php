<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm(){
        return view('login');
    }

    public function login(Request $request)
{
    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
    ]);

    if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
        // Autentikasi berhasil, redirect ke halaman yang diinginkan
        //return redirect()->intended('adminhome'); // Gantilah 'home' dengan rute yang sesuai

        $user = Auth::user();

        // Periksa tipe userType dan arahkan ke halaman yang sesuai
        if ($user->userType === 'admin') {
            return redirect()->intended('adminhome');
        } elseif ($user->userType === 'user') {
            return redirect()->intended('userhome');
        }
    }

    // Jika login gagal
    return back()->withErrors([
        'email' => 'Email atau password salah.',
    ]);
}
}
