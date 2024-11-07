<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('beritautama', function (Blueprint $table) {
            $table->id(); //kolom id sebagai primary key
            $table->string('foto'); //kolom untuk menyimpan foto
            $table->string('judul'); //kolom untuk menyimpan judul berita
            $table->text('penjelasan'); //kolom menyimpan penjelasan berita
            $table->timestamps(); //kolom untuk waktu pembentukan dan update sesuai id
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('beritautama');
    }
};
