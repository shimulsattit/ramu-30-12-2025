<?php

namespace App\Http\Controllers;

use App\Models\NewsEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class NewsEventController extends Controller
{
    public function index()
    {
        $newsEvents = NewsEvent::active()
            ->orderBy('published_at', 'desc')
            ->select('id', 'title', 'slug', 'excerpt', 'image_url', 'author', 'published_at')
            ->paginate(10);

        return view('news-index', compact('newsEvents'));
    }

    public function show($slug)
    {
        // Cache individual news event for 1 hour
        $newsEvent = Cache::remember("news.{$slug}", 3600, function () use ($slug) {
            return NewsEvent::where('slug', $slug)
                ->where('is_active', true)
                ->firstOrFail();
        });

        return view('news-detail', compact('newsEvent'));
    }
}
