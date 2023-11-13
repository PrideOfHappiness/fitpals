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
        Schema::create('pembayaran', function (Blueprint $table) {
            $table->string('pembayaranID', 10)->primary();
            $table->string('userID', 10);
            $table->string('salesID', 10);
            $table->string('referral_code', 30);
            $table->integer('jumlah_bayar');
            $table->dateTime('tanggal_bayar');
            $table->timestamps();

            $table->foreign('userID')->references('userID')->on('users');
            $table->foreign('salesID')->references('userID')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembayaran');
    }
};
