<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\NewsEventController;
use App\Http\Controllers\AchievementController;

Route::get('/', [HomeController::class, 'index'])->name('home');

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

// All authentication handled by Filament

// Fix Menu Route (Temporary) - Added to help user sync menu
Route::get('/fix-menu-data', function () {
    try {
        // 1. Run Seeder
        \Illuminate\Support\Facades\Artisan::call('db:seed', ['--class' => 'MenuSeeder', '--force' => true]);
        $seederOutput = \Illuminate\Support\Facades\Artisan::output();

        // 2. Clear Cache
        \Illuminate\Support\Facades\Artisan::call('optimize:clear');
        $cacheOutput = \Illuminate\Support\Facades\Artisan::output();

        // 3. Debug Data
        $menuCount = \App\Models\Menu::count();
        $rootMenus = \App\Models\Menu::where(function ($q) {
            $q->whereNull('parent_id')->orWhere('parent_id', 0)->orWhere('parent_id', '');
        })->where('is_active', true)->get();

        $debugInfo = "Total Menus in DB: " . $menuCount . "\n";
        $debugInfo .= "Root Menus Found: " . $rootMenus->count() . "\n";
        $debugInfo .= "Sample Root Menus: " . $rootMenus->pluck('title')->implode(', ');

        return "<h1>Menu Debug & Fix</h1>
                <p>Status: <strong>Ran Seeder & Cleared Cache</strong></p>
                <h3>Debug Info:</h3>
                <pre style='background:#eee;padding:10px;'>$debugInfo</pre>
                <h3>Console Output:</h3>
                <pre style='background:#ddd;padding:10px;'>Seeder:\n$seederOutput\nCache:\n$cacheOutput</pre>
                <p><a href='/'>Go to Home Page</a></p>";
    } catch (\Exception $e) {
        return "<h1>Error</h1><pre>" . $e->getMessage() . "</pre>";
    }
});

// Dynamic page route (must be last to avoid conflicts)
Route::get('/{slug}', [PageController::class, 'show'])->where('slug', '[a-z0-9-]+')->name('page.show');
