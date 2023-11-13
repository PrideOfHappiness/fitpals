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
        Schema::create('about_us', function (Blueprint $table) {
            $table->string('aboutUsID', 10)->primary();
            $table->string('locationID', 10);
            $table->text('deskripsi');
            $table->string('foto_gym');
            $table->timestamps();

            $table->foreign('locationID')->references('locationID')->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_us');
    }
};
