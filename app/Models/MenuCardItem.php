<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuCardItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'menu_card_id',
        'title',
        'url',
        'page_id',
        'order',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    /**
     * Relationship with menu card
     */
    public function menuCard()
    {
        return $this->belongsTo(MenuCard::class);
    }

    /**
     * Relationship with page
     */
    public function page()
    {
        return $this->belongsTo(Page::class);
    }

    /**
     * Get the URL for this item
     */
    public function getItemUrlAttribute()
    {
        if ($this->page_id && $this->page) {
            return '/' . $this->page->slug;
        }
        
        return $this->url ?? '#';
    }
}
