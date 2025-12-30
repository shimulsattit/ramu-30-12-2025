<?php

namespace App\Http\Controllers;

use App\Models\Notice;
use Illuminate\Http\Request;

class NoticeController extends Controller
{
    public function index()
    {
        $notices = Notice::whereDate('published_at', '<=', now())
            ->orderBy('published_at', 'desc')
            ->paginate(10);

        return view('notices.index', compact('notices'));
    }
}
