<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BeritaUtama;
use App\Models\BeritaPopuler;
use App\Models\BeritaTerbaru;
use App\Models\User;
use Illuminate\Support\Facades\Storage;

class BeritaUtamaController extends Controller
{
   // Fungsi untuk menampilkan form tambah/edit berita
   public function index()
   {
       // Mengambil berita utama jika ada
       $berita = BeritaUtama::all(); // menampilkan semua berita utama

       return view('beritautama', compact('berita'));
   }

   //fungsi menampilkan halaman edit berita utama
   public function edit($id)
    {
        $beritautama = BeritaUtama::findOrFail($id); // Mengambil berita utama berdasarkan ID
        return view('editberitautama', compact('beritautama'));
    }

    /*public function show()
    {
        $beritaUtama = BeritaUtama::first(); // Mengambil berita utama dari database
        $beritaPopuler = BeritaPopuler::orderBy('id', 'asc')->get();
        $beritaTerbaru = BeritaTerbaru::orderBy('id', 'asc')->get();
        return view('welcome', compact('beritaUtama', 'beritaPopuler', 'beritaTerbaru')); // Mengirim data ke view
    } */

    public function showWelcome()
{
    $data = $this->getBeritaData();
    return view('welcome', $data);
}

public function showUserHome()
{
    $data = $this->getBeritaData();
    return view('userhome', $data);
}

private function getBeritaData()
{
    return [
        'beritaUtama' => BeritaUtama::first(),
        'beritaPopuler' => BeritaPopuler::orderBy('id', 'asc')->get(),
        'beritaTerbaru' => BeritaTerbaru::orderBy('id', 'asc')->get(),
    ];
}

   // Fungsi untuk menyimpan atau mengupdate berita
   public function update(Request $request, $id)
   {
        // Validasi data
       $request->validate([
        'foto' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', //validasi file gambar
        'judul' => 'required|string|max:255',
        'penjelasan' => 'required|string',
    ]);

    // Mengambil berita utama berdasarkan ID
    $berita = BeritaUtama::findOrFail($id);

    // Proses upload file jika ada
    if ($request->hasFile('foto')) {
        // Hapus foto lama jika ada
        if ($berita->foto) {
            Storage::disk('public')->delete($berita->foto);
        }
        // Simpan foto baru
        $path = $request->file('foto')->store('uploads', 'public');
        $berita->foto = $path;
    }

    // Update judul dan penjelasan
    $berita->judul = $request->judul;
    $berita->penjelasan = $request->penjelasan;
    $berita->save();

    // Redirect ke halaman utama berita dengan pesan sukses
    return redirect()->route('beritautama')->with('success', 'Berita berhasil diperbarui.');

    }

    public function showBerita($id)
    {
        $beritaUtama = BeritaUtama::findOrFail($id);
        return view('bacaberitautama', compact('beritaUtama'));
    }

}
