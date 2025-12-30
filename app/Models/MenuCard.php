<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Helpers\GoogleDriveHelper;

class MenuCard extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'icon_url',
        'bg_color',
        'template',
        'order',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    /**
     * Relationship with menu card items
     */
    public function items()
    {
        return $this->hasMany(MenuCardItem::class)->where('is_active', true)->orderBy('order');
    }

    /**
     * Get the icon URL with Google Drive conversion
     */
    public function getIconAttribute()
    {
        if (empty($this->icon_url)) {
            return null;
        }

        if (GoogleDriveHelper::isGoogleDriveUrl($this->icon_url)) {
            return GoogleDriveHelper::getDirectUrl($this->icon_url);
        }

        return $this->icon_url;
    }

    /**
     * Scope for active cards
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    /**
     * Scope for ordered cards
     */
    public function scopeOrdered($query)
    {
        return $query->orderBy('order');
    }
}
