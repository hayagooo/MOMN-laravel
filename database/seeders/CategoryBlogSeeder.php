<?php

namespace Database\Seeders;

use App\Models\Category_blog;
use Illuminate\Database\Seeder;

class CategoryBlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $category = new Category_blog();
            $category->name = 'Category '.$i;
            $category->save();
        }
    }
}
