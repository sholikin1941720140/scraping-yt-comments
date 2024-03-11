<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    use HasFactory;

    protected $table = 'comments';

    protected $fillable = [
        'video_id',
        'published_at',
        'author_display_name',
        'text_display',
        'like_count'
    ];

    public function video()
    {
        return $this->belongsTo(Videos::class, 'video_id', 'video_id');
    }
}
