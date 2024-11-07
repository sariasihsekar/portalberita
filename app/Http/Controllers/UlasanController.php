<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ulasan;

class UlasanController extends Controller
{
    public function index()
    {
        $ulasan = Ulasan::all();

        return view('ulasan', compact('ulasan'));
    }

    public function store(Request $request)
{
    

    // Validasi input
    $request->validate([
        'nama' => 'required|string|max:255',
        'email' => 'required|email',
        'ulasan' => 'required|string|max:1000',
    ]);

    // Simpan data ulasan
    Ulasan::create([
        'nama' => $request->nama,
        'email' => $request->email,
        'ulasan' => $request->ulasan,
    ]);

    // Redirect atau kembalikan respon sesuai kebutuhan
    return redirect()->back()->with('success', 'Ulasan berhasil disimpan!');
}

}
