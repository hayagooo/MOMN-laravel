<?php

namespace Database\Seeders;

use App\Models\Blog;
use Illuminate\Database\Seeder;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=2; $i<=3; $i++) {
            $blog = new Blog();
            $blog->title = 'Blog title '.$i;
            $blog->banner = 'Blog_banner_'.$i.'.png';
            $blog->description = 'Blog description '.$i;
            $blog->id_category = $i;
            $blog->save();
        }
    }
}
