<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class PenggunaController extends Controller
{

    // Fungsi untuk menampilkan daftar pengguna
    public function index()
    {
        $users = User::all(); // Mengambil semua data pengguna
        return view('Pengguna', compact('users'));
    }

    // Fungsi untuk menampilkan form edit
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('editpengguna', compact('user'));
    }

    // Fungsi untuk mengupdate data pengguna
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
        ]);

        $user = User::findOrFail($id);
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);

        return redirect()->route('pengguna.index')->with('success', 'User berhasil diupdate.');
    }

    // Fungsi untuk menghapus pengguna
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('pengguna.index')->with('success', 'User berhasil dihapus.');
    }
}
