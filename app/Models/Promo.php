<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promo extends Model
{
    use HasFactory;

    public $table = 'promo';

    protected $fillable = ['title', 'banner', 'description', 'id_category'];

    public function Category()
    {
        return $this->belongsTo(Category_promo::class, 'id_category');
    }
}
