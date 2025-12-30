<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Helpers\GoogleDriveHelper;

class Achievement extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'excerpt',
        'content',
        'google_drive_folder_link',
        'image_url',
        'additional_images',
        'author',
        'is_active',
        'published_at',
        'order',
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

        static::creating(function ($achievement) {
            if (empty($achievement->slug)) {
                $achievement->slug = Str::slug($achievement->title);
            }
        });

        static::updating(function ($achievement) {
            if ($achievement->isDirty('title') && empty($achievement->slug)) {
                $achievement->slug = Str::slug($achievement->title);
            }
        });
    }

    /**
     * Scope for active achievements
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true)
            ->whereNotNull('published_at')
            ->where('published_at', '<=', now());
    }
}
