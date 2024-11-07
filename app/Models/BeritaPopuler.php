<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BeritaPopuler extends Model
{
    use HasFactory;

    protected $table= 'beritapopuler'; //nama tabel dalam database

    protected $fillable = ['judul', 'gambar', 'konten', 'views']; //pengaturan kolom yang bisa diisi
    
}
