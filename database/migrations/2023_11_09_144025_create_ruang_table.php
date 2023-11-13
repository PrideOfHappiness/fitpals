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
        Schema::create('ruang', function (Blueprint $table) {
            $table->string('ruangID', 10)->primary();
            $table->string('locationID', 10);
            $table->string('namaRuang', 100);
            $table->integer('kapasitas');
            $table->text('fasilitas');
            $table->timestamps();

            $table->foreign('locationID')->references('locationID')->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ruang');
    }
};
