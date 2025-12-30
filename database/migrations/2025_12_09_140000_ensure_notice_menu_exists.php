<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Menu;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Ensure "Notice" menu exists
        $menu = Menu::where('title', 'Notice')->first();
        if (!$menu) {
            Menu::create([
                'title' => 'Notice',
                'url' => '/notices',
                'page_id' => null,
                'parent_id' => null,
                'order' => 2, // Arbitrary order, can be adjusted by admin
                'is_active' => true,
            ]);
        } else {
            // Ensure it points to correct URL
            if ($menu->url !== '/notices' || $menu->page_id !== null) {
                $menu->update([
                    'url' => '/notices',
                    'page_id' => null,
                ]);
            }
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // We don't want to delete it automatically as it might have been valid content
    }
};
