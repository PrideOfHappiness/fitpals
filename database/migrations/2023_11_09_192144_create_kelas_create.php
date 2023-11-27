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
        Schema::create('kelas', function (Blueprint $table) {
            $table->string('kelasID', 10)->primary();
            $table->string('trainerID', 10);
            $table->string('trainerID2', 10)->nullable();
            $table->string('trainerID3', 10)->nullable();
            $table->string('ruangID', 10)->nullable();
            $table->string('locationID', 10);
            $table->string('id_pembuat', 10);
            $table->string('id_otorisasi', 10)->nullable();
            $table->string('nama_kelas', 100);
            $table->date('hari_pelaksanaan');
            $table->time('jam_awal');
            $table->time('jam_akhir');
            $table->enum('jenis_kelas', ['Umum', 'Privat']);
            $table->integer('kuota_peserta');
            $table->string('status');
            $table->timestamps();

            $table->foreign('trainerID')->references('trainerID')->on('trainer');
            $table->foreign('trainerID2')->references('trainerID')->on('trainer');
            $table->foreign('trainerID3')->references('trainerID')->on('trainer');
            $table->foreign('ruangID')->references('ruangID')->on('ruang');
            $table->foreign('id_pembuat')->references('userID')->on('users');
            $table->foreign('id_otorisasi')->references('userID')->on('users');
            $table->foreign('locationID')->references('locationID')->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kelas');
    }
};
