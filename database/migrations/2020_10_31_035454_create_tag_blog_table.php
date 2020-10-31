<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagBlogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tag_blog', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('id_tag')->unsigned();
            $table->foreign('id_tag')->references('id')->on('tag')->onDelete('cascade');
            $table->bigInteger('id_blog')->unsigned();
            $table->foreign('id_blog')->references('id')->on('blog')->onDelete('cascade');
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
        Schema::dropIfExists('tag_blog');
    }
}
