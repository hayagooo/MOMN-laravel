<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pricing_game extends Model
{
    use HasFactory;

    public $table = 'pricing_game';

    protected $fillable = ['price', 'point', 'banner', 'id_game'];

    public function Game()
    {
        return $this->belongsTo(Game::class, 'id_game');
    }

    public function Transaction()
    {
        return $this->hasMany(Transaction_game::class, 'id');
    }
}
