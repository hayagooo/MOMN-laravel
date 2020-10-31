<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaction_games', function (Blueprint $table) {
            $table->id();
            $table->string('id_account');
            $table->string('name_account');
            $table->string('phone');
            $table->string('token_tf');
            $table->bigInteger('id_game')->unsigned();
            $table->foreign('id_game')->references('id')->on('game')->onDelete('cascade');
            $table->bigInteger('id_price')->unsigned();
            $table->foreign('id_price')->references('id')->on('pricing_game')->onDelete('cascade');
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
        Schema::dropIfExists('transaction_games');
    }
}
