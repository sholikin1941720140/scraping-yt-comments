<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Videos extends Model
{
    use HasFactory;

    protected $table = 'videos';

    protected $fillable = [
        'video_id',
        'author_name'
    ];

    public function comments()
    {
        return $this->hasMany(Comments::class, 'video_id', 'video_id');
    }
}
