<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
Use App\Models\Kamar;

class KamarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Kamar::factory(3)->create();
    }
}
