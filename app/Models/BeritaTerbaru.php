<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BeritaTerbaru extends Model
{
    use HasFactory;

    protected $table= 'beritaterbaru'; //nama tabel dalam database

    protected $fillable = ['judul', 'gambar', 'konten', 'views']; //pengaturan kolom yang bisa diisi
}
