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
        Schema::create('progress_kelas', function (Blueprint $table) {
            $table->string('progressID', 10)->primary();
            $table->string('userID', 10);
            $table->string('kelasID', 10);
            $table->string('kriteria', 10);
            $table->integer('nilai');
            $table->timestamps();

            $table->foreign('userID')->references('userID')->on('users');
            $table->foreign('kelasID')->references('kelasID')->on('kelas');
            $table->foreign('kriteria')->references('kriteriaID')->on('kriteria_laporan_kelas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('progress_kelas');
    }
};
