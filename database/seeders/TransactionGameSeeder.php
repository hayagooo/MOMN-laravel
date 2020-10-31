<?php

namespace Database\Seeders;

use App\Models\Transaction_game;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class TransactionGameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $faker = Faker::create('id_ID');

        for($i=1; $i<=5; $i++) {
            $tf = new Transaction_game();
            $tf->id_account = Str::random(10);
            $tf->name_account = $faker->name;
            $tf->id_game = $i;
            $tf->id_price = $i;
            $tf->phone = $faker->e164PhoneNumber;
            $tf->token_tf = Str::random(5);
            $tf->save();
        }
    }
}
