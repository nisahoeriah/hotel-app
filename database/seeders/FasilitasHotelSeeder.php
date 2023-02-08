<?php

namespace Database\Seeders;

use App\Models\FasilitasHotel;
use Illuminate\Database\Seeder;

class FasilitasHotelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Kolam Renang',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Restoran',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Parkir Luas',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Sarapan Pagi Gratis',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.',
        ]);
    }
}
