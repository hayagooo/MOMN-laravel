<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    public $table = 'blog';

    protected $fillable = ['title', 'banner', 'description', 'id_category', 'viewer'];

    public function Category()
    {
        return $this->belongsTo(Category_blog::class, 'id_category');
    }

    public function Tags()
    {
        return $this->belongsToMany(Tag_blog::class, 'tag_blog', 'id_blog', 'id_tag');
    }

    public function getCreatedAtAttribute() {
        $date = Carbon::create($this->attributes['created_at'])->isoFormat('dddd, D MMMM Y');
        return $date;
    }
}
