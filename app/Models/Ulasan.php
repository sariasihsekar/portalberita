<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ulasan extends Model
{
    use HasFactory;

    //tentukan nama tabel yang digunakan sebagai model
    protected $table = 'ulasan';

    //kolom yang dapat diisi secara masal
    protected $fillable = ['nama', 'email', 'ulasan'];
}
