<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class VideoGallery extends Model
{
    protected $guarded = [];

    protected $casts = [
        'videos' => 'array',
        'is_active' => 'boolean',
        'published_at' => 'date',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($gallery) {
            // Auto-generate title from first video or use timestamp
            if (empty($gallery->title)) {
                if (!empty($gallery->videos) && isset($gallery->videos[0]['title'])) {
                    $gallery->title = $gallery->videos[0]['title'];
                } else {
                    $gallery->title = 'Video List ' . now()->format('Y-m-d H:i:s');
                }
            }

            // Auto-generate slug
            if (empty($gallery->slug)) {
                $gallery->slug = Str::slug($gallery->title) . '-' . Str::random(6);
            }

            // Set created_by to current authenticated user
            if (auth()->check() && empty($gallery->created_by)) {
                $gallery->created_by = auth()->id();
            }
        });

        static::updating(function ($gallery) {
            // Update title from first video when videos are updated
            if (!empty($gallery->videos) && isset($gallery->videos[0]['title'])) {
                $gallery->title = $gallery->videos[0]['title'];
                // Update slug as well to match new title
                $baseSlug = Str::slug($gallery->title);
                // Keep the random suffix from original slug if it exists
                if (preg_match('/-([a-z0-9]{6})$/', $gallery->slug, $matches)) {
                    $gallery->slug = $baseSlug . '-' . $matches[1];
                } else {
                    $gallery->slug = $baseSlug . '-' . Str::random(6);
                }
            }
        });
    }

    // Relationship with User
    public function creator()
    {
        return $this->belongsTo(\App\Models\User::class, 'created_by');
    }
}
