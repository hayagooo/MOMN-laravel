<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_partner extends Model
{
    use HasFactory;

    public $table = 'category_partner';

    protected $fillable = ['name'];

    public function Partner()
    {
        return $this->hasMany(Partner::class, 'id');
    }
}
