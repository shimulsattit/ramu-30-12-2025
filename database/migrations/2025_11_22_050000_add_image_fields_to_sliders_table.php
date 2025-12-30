<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Ensure the sliders table exists before altering
        if (Schema::hasTable('sliders')) {
            Schema::table('sliders', function (Blueprint $table) {
                // Add image_url column if it does not exist
                if (!Schema::hasColumn('sliders', 'image_url')) {
                    $table->text('image_url')->nullable()->after('title');
                }
                // Add link column if it does not exist (some older installs may miss it)
                if (!Schema::hasColumn('sliders', 'link')) {
                    $table->string('link')->nullable()->after('image_url');
                }
                // Add image_position column if it does not exist
                if (!Schema::hasColumn('sliders', 'image_position')) {
                    $table->string('image_position')->default('center')->after('link');
                }
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::hasTable('sliders')) {
            Schema::table('sliders', function (Blueprint $table) {
                $table->dropColumn(['image_url', 'link', 'image_position']);
            });
        }
    }
};
