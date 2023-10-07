<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Guidelines extends Model
{
    use HasFactory;

    protected $fillable = [
        'pdf'
    ];
}