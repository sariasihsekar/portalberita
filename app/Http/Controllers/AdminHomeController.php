<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BeritaUtama;
use App\Models\BeritaPopuler;
use App\Models\BeritaTerbaru;
use App\Models\Ulasan;
use Illuminate\Support\Facades\Auth;

class AdminHomeController extends Controller
{
    public function index(){
        $jumlahUser = User::count();
        $jumlahBeritaUtama = BeritaUtama::count();
        $jumlahBeritaPopuler = BeritaPopuler::count();
        $jumlahBeritaTerbaru = BeritaTerbaru::count();
        $jumlahUlasan = Ulasan::count();
        return view('/adminhome', compact('jumlahUser', 'jumlahBeritaUtama', 'jumlahBeritaPopuler', 'jumlahBeritaTerbaru', 'jumlahUlasan'));
    }

    public function edit()
    {
        $admin = Auth::user(); // Mengambil data admin yang sedang login
        return view('pengaturanadmin', compact('admin'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . Auth::id(),
        ]);

        $admin = Auth::user();
        $admin->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);

        return redirect('adminhome')->with('success', 'Pengaturan berhasil diperbarui!');
    }
}
