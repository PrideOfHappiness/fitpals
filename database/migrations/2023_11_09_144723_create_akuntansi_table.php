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
        Schema::create('akuntansi', function (Blueprint $table) {
            $table->string('akunID', 20)->primary();
            $table->string('kodeID_debet', 4);
            $table->string('kodeID_kredit', 4);
            $table->string('deskripsi');
            $table->integer('jumlah_debet');
            $table->integer('jumlah_kredit');
            $table->string('user_input', 10);
            $table->string('user_ubah', 10);
            $table->timestamps();

            $table->foreign('kodeID_debet')->references('kode_akun')->on('kode_akun');
            $table->foreign('kodeID_kredit')->references('kode_akun')->on('kode_akun');
            $table->foreign('user_input')->references('userID')->on('users');
            $table->foreign('user_ubah')->references('userID')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('akuntansi');
    }
};
