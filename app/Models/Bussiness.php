<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bussiness extends Model
{
    use HasFactory;

    public $table = 'bussiness';

    protected $fillable = ['name', 'icon', 'category', 'kode_qr', 'saldo', 'privacy', 'owner_id'];

    public function User()
    {
        return $this->belongsTo(User::class, 'owner_id');
    }
}
