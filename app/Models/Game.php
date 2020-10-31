<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;

    public $table = 'game';

    protected $fillable = ['name', 'logo', 'cover', 'id_category'];

    public function Category()
    {
        return $this->belongsTo(Category_game::class, 'id_category', 'id');
    }

    public function Price()
    {
        return $this->hasMany(Pricing_game::class, 'id');
    }

    public function Transaction()
    {
        return $this->hasMany(Transaction_game::class, 'id');
    }
}
