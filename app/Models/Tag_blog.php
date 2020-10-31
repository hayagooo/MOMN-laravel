<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag_blog extends Model
{
    use HasFactory;

    public $table = 'tag';

    protected $fillable = ['name'];

    public function Blog()
    {
        return $this->belongsToMany(Blog::class, 'tag_blog', 'id_tag', 'id_blog');
    }
}
