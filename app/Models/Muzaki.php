<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Muzaki extends Model
{
    use HasFactory;

    protected $table = 'muzaki';

    protected $fillable = [
        'name',
        'address',
        'type',
        'rt',
        'rw',
        'amount',
        'date',
    ];
}