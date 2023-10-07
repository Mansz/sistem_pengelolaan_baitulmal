<?php

namespace Database\Seeders;

use App\Models\Reception;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ReceptionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Reception::create([
            'rw' => '01',
            'priode' => '2021-01-01',
            'amount' => '1200',
            'number_people' => '12'
        ]);
    }
}