<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Helpers\GoogleDriveHelper;

class WelcomeSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'content',
        'image_url',
        'button_text',
        'button_url',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
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
     * Scope for active sections
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }
}
