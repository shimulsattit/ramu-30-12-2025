<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Helpers\GoogleDriveHelper;

class SidebarWidget extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'type', 'content', 'image_url', 'link', 'order', 'is_active'];

    protected $casts = [
        'is_active' => 'boolean',
        'order' => 'integer',
    ];

    /**
     * Get the image_url attribute with Google Drive URL conversion
     */
    public function getImageUrlAttribute($value)
    {
        if (GoogleDriveHelper::isGoogleDriveUrl($value)) {
            return GoogleDriveHelper::getDirectUrl($value);
        }
        return $value;
    }

    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order', 'asc');
    }

    public function getVideoEmbedUrlAttribute()
    {
        $url = $this->content;
        
        if (empty($url)) {
            return '';
        }

        // Check if it's already an embed URL
        if (str_contains($url, 'youtube.com/embed/')) {
            return $url;
        }

        // Extract Video ID
        $videoId = null;
        
        // Case 1: youtube.com/watch?v=ID
        if (preg_match('/[\\?\\&]v=([^\\?\\&]+)/', $url, $matches)) {
            $videoId = $matches[1];
        } 
        // Case 2: youtu.be/ID
        elseif (preg_match('/youtu\.be\/([a-zA-Z0-9_-]+)/', $url, $matches)) {
            $videoId = $matches[1];
        }

        if ($videoId) {
            return "https://www.youtube.com/embed/" . $videoId;
        }

        return $url; // Return original if parsing fails
    }
}
