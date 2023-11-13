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
        Schema::create('foto_progress', function (Blueprint $table) {
            $table->id('fotoID');
            $table->string('progressID');
            $table->string('namaFile');
            $table->timestamps();

            $table->foreign('progressID')->references('progressID')->on('progress_kelas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('foto_progress');
    }
};
