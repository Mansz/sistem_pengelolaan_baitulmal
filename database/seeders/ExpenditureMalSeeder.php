<?php

namespace Database\Seeders;

use App\Models\ExpenditureMal;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ExpenditureMalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ExpenditureMal::create([
            'priode' => '2021-01-02',
            'amount' => 100000,
            'description' => 'test',
        ]);
    }
}