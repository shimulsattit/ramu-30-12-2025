<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LocationMap extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'embed_code',
        'address',
        'phone',
        'email',
        'is_active',
        'order',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    /**
     * Scope for active location
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }
}
