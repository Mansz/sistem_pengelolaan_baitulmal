<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExpenditureMal extends Model
{
    use HasFactory;

    protected $table = 'expenditure_mal';
    protected $fillable = [
        'priode',
        'amount',
        'description',
    ];
}