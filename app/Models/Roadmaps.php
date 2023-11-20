<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roadmaps extends Model
{
    use HasFactory;
    public $fillable = ['date', 'details'];
}
