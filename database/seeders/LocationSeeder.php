<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Location;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $location = [
            [
                'locationID' => 'LOA001Y360',
                'namaLokasi' => 'Test Location 1',
                'alamat' => 'Jl. Letjen Sutoyo 83 Mojosongo, Jebres, Kota Surakarta, Jawa Tengah 57127',
                'no_telp' => '085700088831',
            ],
        ];

        foreach($location as $value){
            Location::create($value);
        }
    }
}
