<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class ThemeShowcase extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'theme_key', 'image', 'url', 'is_active', 'sort_order'];

    protected $casts = [
        'is_active' => 'boolean',
        'sort_order' => 'integer',
    ];

    public function getImageAttribute($value)
    {
        if (\App\Helpers\GoogleDriveHelper::isGoogleDriveUrl($value)) {
            return \App\Helpers\GoogleDriveHelper::getDirectUrl($value);
        }
        return $value;
    }
}
