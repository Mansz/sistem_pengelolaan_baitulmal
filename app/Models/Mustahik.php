<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mustahik extends Model
{
    use HasFactory;

    protected $table = 'mustahik';

    protected $fillable = [
        'name',
        'address',
        'rt',
        'rw',
        'type',
        'photo',
        'amount',
        'date',
    ];
}