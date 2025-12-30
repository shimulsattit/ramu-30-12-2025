<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;

class MessageController extends Controller
{
    /**
     * Display the specified message
     */
    public function show($slug)
    {
        $message = Message::where('slug', $slug)
            ->where('is_active', true)
            ->firstOrFail();

        return view('message-single', compact('message'));
    }
}
