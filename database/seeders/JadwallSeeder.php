<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class JadwallSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('jadwall')->insert([
            'id' => '1',
            'kota_asal' => 'ketapang',
            'kota_tujuan' =>'pontianak',
            'hari' => '2023,8,7',
            'jam' => '08:00:00',
            'harga' =>'408000',
        ]);
    }
}
