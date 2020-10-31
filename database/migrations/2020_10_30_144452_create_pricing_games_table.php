<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePricingGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pricing_game', function (Blueprint $table) {
            $table->id();
            $table->decimal('price', 12, 2);
            $table->decimal('point', 12, 2);
            $table->string('banner');
            $table->bigInteger('id_game')->unsigned();
            $table->foreign('id_game')->references('id')->on('game')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pricing_games');
    }
}
