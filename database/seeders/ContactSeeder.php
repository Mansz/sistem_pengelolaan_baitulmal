<?php

namespace Database\Seeders;

use App\Models\Contact;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Contact::create([
            'address' => 'Masjid Besar Miftahul Jannah, Kecamatan Klangenan, Kabupaten Cirebon, Jawa Barat, 45156',
            'phone' => '089522972970',
            'email' => 'rahman@mail.com',
        ]);
    }
}
