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
        Schema::create('member', function (Blueprint $table) {
            $table->string('memberID', 10)->primary();
            $table->string('userID', 10);
            $table->string('masa_langganan', 50);
            $table->dateTime('tanggal_awal_langganan');
            $table->dateTime('tanggal_akhir_langganan');
            $table->timestamps();

            $table->foreign('userID')->references('userID')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('member');
    }
};
