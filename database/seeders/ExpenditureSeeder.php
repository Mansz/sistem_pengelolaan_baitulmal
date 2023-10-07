<?php

namespace Database\Seeders;

use App\Models\Expenditure;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ExpenditureSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Expenditure::create([
            'date' => '2021-01-01',
            'description' => 'Gastos de envío',
            'amount' => 5.0,
        ]);
    }
}