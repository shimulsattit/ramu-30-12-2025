<?php

namespace App\Http\Controllers;

use App\Models\Achievement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class AchievementController extends Controller
{
    /**
     * Display a listing of achievements (archive page)
     */
    public function index()
    {
        $achievements = Achievement::active()
            ->orderBy('published_at', 'desc')
            ->select('id', 'title', 'slug', 'excerpt', 'image_url', 'author', 'published_at')
            ->paginate(10);

        return view('achievements-index', compact('achievements'));
    }

    /**
     * Display the specified achievement
     */
    public function show($slug)
    {
        // Cache individual achievement for 1 hour
        $achievement = Cache::remember("achievement.{$slug}", 3600, function () use ($slug) {
            return Achievement::where('slug', $slug)
                ->where('is_active', true)
                ->firstOrFail();
        });

        return view('achievement-detail', compact('achievement'));
    }
}
