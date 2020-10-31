<?php

namespace Database\Seeders;

use App\Models\Category_game;
use Illuminate\Database\Seeder;

class CategoryGameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $category = new Category_game();
            $category->name = 'Category Game '.$i;
            $category->save();
        }
    }
}
