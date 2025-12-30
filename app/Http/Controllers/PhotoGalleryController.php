<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PhotoGalleryController extends Controller
{
    public function index()
    {
        $galleries = \App\Models\PhotoGallery::where('is_active', true)
            ->whereNotNull('published_at')
            ->orderBy('published_at', 'desc')
            ->paginate(12);

        return view('gallery.index', compact('galleries'));
    }

    public function show($slug)
    {
        $gallery = \App\Models\PhotoGallery::where('slug', $slug)
            ->where('is_active', true)
            ->firstOrFail();

        return view('gallery.show', compact('gallery'));
    }
}
