<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Promo extends Model
{
    use HasFactory;

    public $table = 'promo';

    protected $fillable = ['title', 'banner', 'description', 'id_category', 'ex_date'];

    public function Category()
    {
        return $this->belongsTo(Category_promo::class, 'id_category');
    }

    public function getCreatedAtAttribute()
    {
        $date = Carbon::create($this->attributes['created_at'])->isoFormat('dddd, D MMMM Y');
        return $date;
    }

    public function getExDateAttribute()
    {
        $date = Carbon::create($this->attributes['ex_date'])->isoFormat('dddd, D MMMM Y');
        return $date;
    }
}
