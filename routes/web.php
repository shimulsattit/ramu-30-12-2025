<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\NewsEventController;
use App\Http\Controllers\AchievementController;

Route::get('/', [HomeController::class, 'index']);

// News and Events routes
Route::get('/news', [NewsEventController::class, 'index'])->name('news.index');
Route::get('/news/{slug}', [NewsEventController::class, 'show'])->name('news.show');

Route::get('/achievements', [AchievementController::class, 'index'])->name('achievements.index');
Route::get('/achievement/{slug}', [AchievementController::class, 'show'])->name('achievement.show');

// Message route
Route::get('/message/{slug}', [App\Http\Controllers\MessageController::class, 'show'])->name('message.show');

// Welcome section full view
Route::get('/welcome', [HomeController::class, 'showWelcome'])->name('welcome.show');

// Notices route
Route::get('/notices', [App\Http\Controllers\NoticeController::class, 'index'])->name('notices.index');
Route::get('/gallery', [App\Http\Controllers\PhotoGalleryController::class, 'index'])->name('gallery.index');
Route::get('/gallery/{slug}', [App\Http\Controllers\PhotoGalleryController::class, 'show'])->name('gallery.show');

// Video Gallery routes
Route::get('/video-gallery', [App\Http\Controllers\VideoGalleryController::class, 'index'])->name('video-gallery.index');
Route::get('/video-gallery/{slug}', [App\Http\Controllers\VideoGalleryController::class, 'show'])->name('video-gallery.show');

// Preview route for admin (must be before dynamic page route)
Route::get('/page/preview/{page}', [PageController::class, 'preview'])->name('page.preview');

// Filament Admin Panel
// Access at: http://localhost/barishal/public/admin
// All authentication handled by Filament

// Dynamic page route (must be last to avoid conflicts)
Route::get('/{slug}', [PageController::class, 'show'])->where('slug', '[a-z0-9-]+')->name('page.show');
