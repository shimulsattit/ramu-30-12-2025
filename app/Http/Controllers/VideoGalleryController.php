<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VideoGalleryController extends Controller
{
    public function index()
    {
        // Get all galleries with their videos
        $galleries = \App\Models\VideoGallery::orderBy('created_at', 'desc')->get();

        return view('video-gallery.index', compact('galleries'));
    }

    public function show($slug)
    {
        $gallery = \App\Models\VideoGallery::where('slug', $slug)->firstOrFail();

        return view('video-gallery.show', compact('gallery'));
    }
}
