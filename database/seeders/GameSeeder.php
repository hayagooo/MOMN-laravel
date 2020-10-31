<?php

namespace Database\Seeders;

use App\Models\Game;
use Illuminate\Database\Seeder;

class GameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=5; $i++) {
            $game = new Game();
            $game->name = 'Game '.$i;
            $game->logo = 'Logo_game_'.$i.'.png';
            $game->cover = 'Cover_game_'.$i.'.png';
            $game->id_category = $i;
            $game->save();
        }
    }
}
