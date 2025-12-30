<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('sliders', function (Blueprint $table) {
            // Drop the unnecessary 'image' column that's causing the error
            if (Schema::hasColumn('sliders', 'image')) {
                $table->dropColumn('image');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sliders', function (Blueprint $table) {
            // Restore the image column if migration is rolled back
            if (!Schema::hasColumn('sliders', 'image')) {
                $table->string('image')->nullable()->after('image_fit');
            }
        });
    }
};
