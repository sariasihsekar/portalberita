<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\AdminHomeController;
use App\Http\Controllers\PenggunaController;
use App\Http\Controllers\BeritaUtamaController;
use App\Http\Controllers\BeritaPopulerController;
use App\Http\Controllers\BeritaTerbaruController;
use App\Http\Controllers\UlasanController;
use App\Http\controllers\UserHomeController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//halaman login
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login'])->name('login.submit');

//halaman register
Route::get('register',[RegisterController::class, 'showRegisterForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);

//halaman admin home
Route::get('/adminhome', [AdminHomeController::class, 'index'])->name('adminhome');
Route::get('/adminhome/pengaturan', [AdminHomeController::class, 'edit'])->name('pengaturanadmin');
Route::post('/adminhome/pengaturan', [AdminHomeController::class, 'update'])->name('updatepengaturanadmin');

//halaman admin bagian pengguna
Route::get('/pengguna', [PenggunaController::class, 'index'])->name('pengguna.index');
Route::get('/pengguna/{id}/edit', [PenggunaController::class, 'edit'])->name('editpengguna');
Route::put('/pengguna/{id}/update', [PenggunaController::class, 'update'])->name('updatepengguna');
Route::delete('/pengguna/{id}', [PenggunaController::class, 'destroy'])->name('pengguna.destroy');

//halaman admin bagian berita utama
Route::get('/berita', [BeritaUtamaController::class, 'index'])->name('beritautama');
Route::get('/berita/{id}/edit', [BeritaUtamaController::class, 'edit'])->name('editberitautama');
Route::put('/berita/{id}', [BeritaUtamaController::class, 'update'])->name('updateberita');
//Route::get('/', [BeritaUtamaController::class, 'show']);
Route::get('/', [BeritaUtamaController::class, 'showWelcome'])->name('welcome');
//Route::get('/userhome', [BeritaUtamaController::class, 'showUserHome'])->name('userhome');
Route::get('/berita-utama/{id}', [BeritaUtamaController::class, 'showBerita'])->name('bacaberitautama');

//halaman admin bagian berita populer
Route::get('/populer',[BeritaPopulerController::class, 'index'])->name('beritapopuler');
Route::get('/populer/{id}/edit', [BeritaPopulerController::class, 'edit'])->name('editberitapopuler');
Route::get('/populer/add',[BeritaPopulerController::class, 'create'])->name('buatberitapopuler');
Route::post('/populer/new', [BeritaPopulerController::class, 'store'])->name('storeberitapopuler');
Route::put('/populer/{id}/update',[BeritaPopulerController::class, 'update'])->name('updateberitapopuler');
Route::delete('/populer/{id}', [BeritaPopulerController::class, 'destroy'])->name('beritapopuler.destroy');
//Route::get('/populernews', [BeritaPopulerController::class, 'show']);
Route::get('/berita-populer/{id}', [BeritaPopulerController::class, 'showBerita'])->name('bacaberitapopuler');

//halaman admin bagian berita terbaru
Route::get('/terbaru', [BeritaTerbaruController::class, 'index'])->name('beritaterbaru');
Route::get('/terbaru/{id}/edit', [BeritaTerbaruController::class, 'edit'])->name('editberitaterbaru');
Route::get('/terbaru/add', [BeritaTerbaruController::class, 'create'])->name('buatberitaterbaru');
Route::post('/terbaru/new', [BeritaTerbaruController::class, 'store'])->name('storeberitaterbaru');
Route::put('/terbaru/{id}/update', [BeritaTerbaruController::class, 'update'])->name('updateberitaterbaru');
Route::delete('/terbaru/{id}', [BeritaTerbaruController::class, 'destroy'])->name('beritaterbaru.destroy');
Route::get('/berita-terbaru/{id}', [BeritaTerbaruController::class, 'showBerita'])->name('bacaberitaterbaru');

//halaman admin bagian ulasan
Route::get('/ulasan',[UlasanController::class, 'index'])->name('ulasan');
Route::post('/ulasan/add', [UlasanController::class, 'store']);

//halaman userhome
Route::get('/userhome', [UserHomeController::class, 'index'])->name('userhome');
Route::get('/userhome/pengaturan', [UserHomeController::class, 'edit'])->name('pengaturanuser');
Route::post('/userhome/pengaturan', [UserHomeController::class, 'update'])->name('updatepengaturanuser');
