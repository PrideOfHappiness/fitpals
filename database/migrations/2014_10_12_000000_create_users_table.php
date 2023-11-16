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
        Schema::create('users', function (Blueprint $table) {
            $table->string('userID', 10)->primary();
            $table->string('nama', 100);
            $table->string('alamat');
            $table->string('no_telp', 15);
            $table->string('email')->unique();
            $table->enum('jenis_kelamin', ['L','P']);
            $table->enum('kategori', ['Member', 'Admin', 'Sales', 'Karyawan', 'Trainer']);
            $table->string('refferal_code')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
