<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BeritaTerbaru;

class BeritaTerbaruController extends Controller
{
    public function index()
    {
        $beritaTerbaru = BeritaTerbaru::all();
        return view('beritaterbaru', compact('beritaTerbaru'));
    }

     // Menampilkan form untuk menambah berita populer baru
     public function create()
     {
         return view('buatberitaterbaru');
     }
 
     public function edit($id)
     {
         $beritaTerbaru = BeritaTerbaru::findOrFail($id);
         return view('editberitaterbaru', compact('beritaTerbaru'));
     }
 
      // Fungsi untuk menyimpan perubahan
      public function update(Request $request, $id)
      {
          $request->validate([
              'judul' => 'required|string|max:255',
              'konten' => 'required|string',
              'gambar' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
          ]);
  
          $beritaTerbaru = BeritaTerbaru::findOrFail($id);
          $beritaTerbaru->judul = $request->judul;
          $beritaTerbaru->konten = $request->konten;
  
          if ($request->hasFile('gambar')) {
              $file = $request->file('gambar');
              $path = $file->store('public/images');
              $beritaTerbaru->gambar = $path;
          }
  
          $beritaTerbaru->save();
  
          return redirect()->route('beritaterbaru')->with('success', 'Berita terbaru berhasil diperbarui');
      }
 
      public function destroy($id)
     {
         $beritaTerbaru = BeritaTerbaru::findOrFail($id);
         
         // Jika ada gambar, hapus dari storage
         if ($beritaTerbaru->gambar) {
             \Storage::delete($beritaTerbaru->gambar);
         }
 
         $beritaTerbaru->delete();
 
         return redirect()->route('beritaterbaru')->with('success', 'Berita terbaru berhasil dihapus');
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
     $beritaTerbaru = new BeritaTerbaru();
     $beritaTerbaru->judul = $request->judul;
     $beritaTerbaru->konten = $request->konten;
 
     // Proses upload gambar
     if ($request->hasFile('gambar')) {
         $file = $request->file('gambar');
         $path = $file->store('public/images'); // Menyimpan gambar ke storage
         $beritaTerbaru->gambar = $path;
     }
 
     // Simpan data ke database
     $beritaTerbaru->save();
 
     // Redirect ke route daftar berita populer dengan pesan sukses
     return redirect()->route('beritaterbaru')->with('success', 'Berita berbaru berhasil ditambahkan');
     }

     public function showBerita($id)
     {
         $beritaTerbaru = BeritaTerbaru::findOrFail($id);
         return view('bacaberitaterbaru', compact('beritaTerbaru'));
     }
}
