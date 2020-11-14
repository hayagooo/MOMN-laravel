<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    public $table = 'payments';

    protected $fillable = ['saldo', 'app', 'type', 'bank', 'nomor_hp', 'rekening', 'nomor_hp', 'user_id', 'receiver_id'];

    public function User()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getCreatedAtAttribute()
    {
        $date = Carbon::create($this->attributes['created_at'])->diffForHumans();
        return $date;
    }
}
