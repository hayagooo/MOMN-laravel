<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction_game extends Model
{
    use HasFactory;

    public $table = 'transaction_game';

    protected $fillable = ['id_account', 'name_account', 'phone', 'email', 'token_tf', 'id_game', 'id_price'];

    public function Game()
    {
        return $this->belongsTo(Game::class, 'id_game');
    }

    public function Price()
    {
        return $this->belongsTo(Pricing_game::class, 'id_price');
    }
}
