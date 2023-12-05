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
        Schema::create('attendance', function (Blueprint $table) {
            $table->string('attendanceID', 10)->primary();
            $table->string('userID', 10);
            $table->string('kelasID', 10)->nullable();
            $table->dateTime('datetime_masuk');
            $table->dateTime('datetime_kelas_masuk')->nullable();
            $table->dateTime('datetime_keluar')->nullable();
            $table->dateTime('datetime_kelas_keluar')->nullable();
            $table->string('attendance_token',100);
            $table->timestamps();

            $table->foreign('userID')->references('userID')->on('users');
            $table->foreign('kelasID')->references('kelasID')->on('kelas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('attendance');
    }
};
