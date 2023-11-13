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
        Schema::create('latihan_spesialisasi', function (Blueprint $table) {
            $table->string('spesialisasiID', 10)->primary();
            $table->string('trainerID',10);
            $table->string('latihanID',10);
            $table->timestamps();

            $table->foreign('trainerID')->references('trainerID')->on('trainer');
            $table->foreign('latihanID')->references('latihanID')->on('latihan');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('latihan_spesialisasi');
    }
};
