<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BeritaPopuler;

class BeritaPopulerController extends Controller
{
    public function index()
    {
        $beritaPopuler = BeritaPopuler::all();
        return view('beritapopuler', compact('beritaPopuler'));
    }

    // Menampilkan form untuk menambah berita populer baru
    public function create()
    {
        return view('buatberitapopuler');
    }

    public function edit($id)
    {
        $beritaPopuler = BeritaPopuler::findOrFail($id);
        return view('editberitapopuler', compact('beritaPopuler'));
    }

     // Fungsi untuk menyimpan perubahan
     public function update(Request $request, $id)
     {
         $request->validate([
             'judul' => 'required|string|max:255',
             'konten' => 'required|string',
             'gambar' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
         ]);
 
         $beritaPopuler = BeritaPopuler::findOrFail($id);
         $beritaPopuler->judul = $request->judul;
         $beritaPopuler->konten = $request->konten;
 
         if ($request->hasFile('gambar')) {
             $file = $request->file('gambar');
             $path = $file->store('public/images');
             $beritaPopuler->gambar = $path;
         }
 
         $beritaPopuler->save();
 
         return redirect()->route('beritapopuler')->with('success', 'Berita populer berhasil diperbarui');
     }

     public function destroy($id)
    {
        $beritaPopuler = BeritaPopuler::findOrFail($id);
        
        // Jika ada gambar, hapus dari storage
        if ($beritaPopuler->gambar) {
            \Storage::delete($beritaPopuler->gambar);
        }

        $beritaPopuler->delete();

        return redirect()->route('beritapopuler')->with('success', 'Berita populer berhasil dihapus');
    }

    public function store(Request $request)
    {
    // Validasi data yang diterima
    $request->validate([
        'judul' => 'required|string|max:255',
        'konten' => 'required|string',
        'gambar' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
    ]);

    // Buat instance baru dari model BeritaPopuler
    $beritaPopuler = new BeritaPopuler();
    $beritaPopuler->judul = $request->judul;
    $beritaPopuler->konten = $request->konten;

    // Proses upload gambar
    if ($request->hasFile('gambar')) {
        $file = $request->file('gambar');
        $path = $file->store('public/images'); // Menyimpan gambar ke storage
        $beritaPopuler->gambar = $path;
    }

    // Simpan data ke database
    $beritaPopuler->save();

    // Redirect ke route daftar berita populer dengan pesan sukses
    return redirect()->route('beritapopuler')->with('success', 'Berita populer berhasil ditambahkan');
    }

    public function show()
    {
        // Mengambil data dari tabel beritapopuler, diurutkan berdasarkan id
        $beritaPopuler = BeritaPopuler::orderBy('id', 'asc')->get();

        // Mengirim data ke view
        return view('welcome', compact('beritaPopuler'));
    }

    public function showBerita($id)
    {
        $beritaPopuler = BeritaPopuler::findOrFail($id);
        return view('bacaberitapopuler', compact('beritaPopuler'));
    }
}
