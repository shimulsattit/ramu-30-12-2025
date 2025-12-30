<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Helpers\GoogleDriveHelper;

class NewsEvent extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'excerpt',
        'content',
        'image_url',
        'additional_images',
        'author',
        'is_active',
        'published_at',
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'published_at' => 'datetime',
        'additional_images' => 'array',
    ];

    /**
     * Get the image URL with Google Drive conversion
     */
    public function getImageAttribute()
    {
        if (empty($this->image_url)) {
            return null;
        }

        if (GoogleDriveHelper::isGoogleDriveUrl($this->image_url)) {
            return GoogleDriveHelper::getDirectUrl($this->image_url);
        }

        return $this->image_url;
    }

    /**
     * Auto-generate slug from title
     */
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($newsEvent) {
            if (empty($newsEvent->slug)) {
                $newsEvent->slug = Str::slug($newsEvent->title);
            }
        });

        static::updating(function ($newsEvent) {
            if ($newsEvent->isDirty('title') && empty($newsEvent->slug)) {
                $newsEvent->slug = Str::slug($newsEvent->title);
            }
        });
    }

    /**
     * Scope for active news/events
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true)
            ->whereNotNull('published_at')
            ->where('published_at', '<=', now());
    }
}
