<?php

namespace Database\Seeders;

use App\Models\Muzaki;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MuzakiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Muzaki::create([
            'name' => 'Muzaki 1',
            'address' => 'Jl. Muzaki 1',
            'type' => 'zakat',
            'rt' => '001',
            'rw' => '001',
            'amount' => '100000',
            'date' => '2021-08-15',
        ]);
    }
}