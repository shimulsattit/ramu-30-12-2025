<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Page;

class Menu extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'url', 'parent_id', 'page_id', 'order', 'is_active', 'is_highlighted', 'highlight_color'];

    public function parent()
    {
        return $this->belongsTo(Menu::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Menu::class, 'parent_id')->where('is_active', true)->orderBy('order');
    }

    public function page()
    {
        return $this->belongsTo(Page::class);
    }

    /**
     * Get the URL for this menu item
     * If linked to a page, use page slug, otherwise use custom URL
     */
    public function getUrlAttribute($value)
    {
        if ($this->page_id && $this->page) {
            return '/' . $this->page->slug;
        }

        return $value;
    }

    /**
     * Bootstrap the model and its traits.
     */
    protected static function boot()
    {
        parent::boot();

        static::saved(function ($menu) {
            if ($menu->isDirty('page_id')) {
                // If page_id changed
                $oldPageId = $menu->getOriginal('page_id');
                if ($oldPageId) {
                    // Remove menu link from old page
                    $oldPage = Page::find($oldPageId);
                    if ($oldPage) {
                        $oldPage->menu_id = null;
                        $oldPage->saveQuietly(); // Prevent infinite loop
                    }
                }

                if ($menu->page_id) {
                    // Link new page to this menu
                    $page = Page::find($menu->page_id);
                    if ($page) {
                        $page->menu_id = $menu->id;
                        $page->saveQuietly(); // Prevent infinite loop
                    }
                }
            }
        });
    }
}
