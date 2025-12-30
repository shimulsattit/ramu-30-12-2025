<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Helpers\GoogleDriveHelper;

class FooterSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'logo_url',
        'school_name',
        'contact_title',
        'contact_phones',
        'contact_email',
        'contact_address',
        'featured_links_title',
        'featured_links',
        'facebook_title',
        'facebook_embed_url',
        'facebook_url',
        'twitter_url',
        'copyright_text',
        'privacy_policy_url',
    ];

    protected $casts = [
        'contact_phones' => 'array',
        'featured_links' => 'array',
    ];

    /**
     * Get the logo URL with Google Drive conversion
     */
    public function getLogoAttribute()
    {
        if (empty($this->logo_url)) {
            return null;
        }

        if (GoogleDriveHelper::isGoogleDriveUrl($this->logo_url)) {
            return GoogleDriveHelper::getDirectUrl($this->logo_url);
        }

        return $this->logo_url;
    }
}
