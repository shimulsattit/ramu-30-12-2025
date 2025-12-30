<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Helpers\GoogleDriveHelper;

class Popup extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'content',
        'image_url',
        'button_text',
        'button_link',
        'button_bg_color',
        'button_text_color',
        'is_active',
        'display_on',
        'show_once_per_session',
        'auto_close_seconds',
        'priority',
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'show_once_per_session' => 'boolean',
    ];

    /**
     * Get the image URL attribute with Google Drive URL conversion
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
     * Get active popup for current page
     * 
     * @param string $page Page identifier (homepage, all_pages, etc.)
     * @return Popup|null
     */
    public static function getActivePopup($page = 'homepage')
    {
        return self::where('is_active', true)
            ->where(function ($query) use ($page) {
                $query->where('display_on', 'all_pages')
                    ->orWhere('display_on', $page);
            })
            ->orderBy('priority', 'desc')
            ->orderBy('created_at', 'desc')
            ->first();
    }
}
