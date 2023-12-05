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
        Schema::create('promo', function (Blueprint $table) {
            $table->string('promoID', 10)->primary();
            $table->string('userID_pembuat', 10);
            $table->string('userID_penerima', 10)->nullable();
            $table->string('kode_promo', 30);
            $table->string('nama_promo', 200);
            $table->text('deskripsi');
            $table->date('tanggal_mulai');
            $table->date('tanggal_akhir');
            $table->string('locationID', 10)->nullable();
            $table->timestamps();

            $table->foreign('userID_pembuat')->references('userID')->on('users');
            $table->foreign('userID_penerima')->references('userID')->on('users');
            $table->foreign('locationID')->references('locationID')->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('promo');
    }
};
