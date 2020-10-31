<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_blog extends Model
{
    use HasFactory;

    public $table = 'category_blog';

    protected $fillable = ['name'];
}
