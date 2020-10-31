<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_game extends Model
{
    use HasFactory;

    public $table = 'category_game';

    protected $fillable = ['name'];

    public function Game()
    {
        return $this->hasMany(Game::class);
    }
}
