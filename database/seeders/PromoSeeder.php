<?php

namespace Database\Seeders;

use App\Models\Promo;
use Illuminate\Database\Seeder;

class PromoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $promo = new Promo();
            $promo->title = "Title Promo $i";
            $promo->description = "Description Promo $i";
            $promo->id_category = $i;
            $promo->banner = "BannerPromo$i.png";
            $promo->save();
        }
    }
}
