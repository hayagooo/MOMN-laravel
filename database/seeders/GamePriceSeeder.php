<?php

namespace Database\Seeders;

use App\Models\Pricing_game;
use Illuminate\Database\Seeder;

class GamePriceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $price = new Pricing_game();
            $price->price = $i.'0000';
            $price->point = $i.'000';
            $price->banner = 'price_banner_'.$i.'.jpg';
            $price->id_game = $i;
            $price->save();
        }
    }
}
