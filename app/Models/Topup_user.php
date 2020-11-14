<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Topup_user extends Model
{
    use HasFactory;

    public $table = 'topup_users';

    protected $fillable = ['type', 'rekening', 'bank', 'nominal'];

    public function User()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getCreatedAtAttribute()
    {
        $date = Carbon::create($this->attributes['created_at'])->diffForHumans();
        $dateHours = date('h a', strtotime($this->attributes['created_at']));
        return [$date, $dateHours];
    }
}
