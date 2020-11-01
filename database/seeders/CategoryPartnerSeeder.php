<?php

namespace Database\Seeders;

use App\Models\Category_partner;
use Illuminate\Database\Seeder;

class CategoryPartnerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $ctr = new Category_partner();
            $ctr->name = 'Category Partner '.$i;
            $ctr->save();
        }
    }
}
