<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Validator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Validator::extend('custom_password', function($attribute, $value, $parameters, $validator){
            $uppercase = preg_match('/[A-Z]/', $value);

            // Aturan untuk memeriksa minimal satu angka
            $number = preg_match('/[0-9]/', $value);

            // Aturan untuk memeriksa minimal satu karakter tambahan
            $specialChars = preg_match('/[^\w]/', $value);

            // Lakukan pengecekan semua aturan
            return $uppercase && $number && $specialChars;
        });

        setlocale(LC_TIME, 'id_ID');
    }
}
