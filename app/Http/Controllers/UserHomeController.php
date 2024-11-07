<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BeritaUtama;
use App\Models\BeritaPopuler;
use App\Models\BeritaTerbaru;
use Illuminate\Support\Facades\Auth;

class UserHomeController extends Controller
{
   public function index()
   {
      $beritaUtama = BeritaUtama::first(); // Mengambil berita utama dari database
      $beritaPopuler = BeritaPopuler::orderBy('id', 'asc')->get();
      $beritaTerbaru = BeritaTerbaru::orderBy('id', 'asc')->get();
      
      return view('userhome', compact('beritaUtama', 'beritaPopuler', 'beritaTerbaru'));
   }

   public function edit()
    {
        $user1 = Auth::user(); // Mengambil data user yang sedang login
        return view('pengaturanuser', compact('user1'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . Auth::id(),
        ]);

        $user1 = Auth::user();
        $user1->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);

        return redirect('userhome')->with('success', 'Pengaturan berhasil diperbarui!');
    }
}
