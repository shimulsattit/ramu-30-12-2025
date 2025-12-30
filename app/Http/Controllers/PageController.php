<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function show($slug)
    {
        $page = Page::where('slug', $slug)
            ->published()
            ->firstOrFail();

        return view('page', compact('page'));
    }

    /**
     * Preview page (for admin, bypasses published check)
     */
    public function preview($id)
    {
        $page = Page::findOrFail($id);
        
        return view('page', compact('page'));
    }
}
