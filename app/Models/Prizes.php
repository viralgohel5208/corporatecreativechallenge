<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prizes extends Model
{
    use HasFactory;

    public $fillable = ["name","first","second","third" ];
    
}
