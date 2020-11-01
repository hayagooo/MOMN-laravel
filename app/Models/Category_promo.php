<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_promo extends Model
{
    use HasFactory;

    public $table = 'category_promo';

    protected $fillable = ['name'];

    public function Promo()
    {
        return $this->hasMany(Promo::class, 'id');
    }
}
