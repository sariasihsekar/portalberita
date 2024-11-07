<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BeritaUtama extends Model
{
    use HasFactory;

    // Nama tabel yang terkait dengan model ini
    protected $table = 'beritautama';

    // Kolom yang dapat diisi secara massal
    protected $fillable = ['foto', 'judul', 'penjelasan'];
}
