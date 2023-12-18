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
        Schema::create('trainer', function (Blueprint $table) {
            $table->string('trainerID', 10)->primary();
            $table->string('userID');
            $table->enum('jenis', ['Trainer', 'Personal Trainer']);
            $table->string('locationID');
            $table->timestamps();

            $table->foreign('userID')->references('userID')->on('users');
            $table->foreign('locationID')->references('locationID')->on('locations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('trainer');
    }
};
