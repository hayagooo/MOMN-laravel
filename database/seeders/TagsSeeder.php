<?php

namespace Database\Seeders;

use App\Models\Tag_blog;
use Illuminate\Database\Seeder;

class TagsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $tag = new Tag_blog();
            $tag->name = 'Tags '.$i;
            $tag->save();
        }
    }
}
