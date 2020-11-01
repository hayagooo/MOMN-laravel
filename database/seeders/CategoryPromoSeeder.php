<?php

namespace Database\Seeders;

use App\Models\Category_promo;
use Illuminate\Database\Seeder;

class CategoryPromoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $ctr = new Category_promo();
            $ctr->name = "Category Promo $i";
            $ctr->save();
        }
    }
}
