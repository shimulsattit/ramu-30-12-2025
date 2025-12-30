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
        // Add indexes to news_events table
        Schema::table('news_events', function (Blueprint $table) {
            $table->index(['is_active', 'published_at'], 'news_active_published_idx');
            $table->index('slug', 'news_slug_idx');
        });

        // Add indexes to achievements table
        Schema::table('achievements', function (Blueprint $table) {
            $table->index(['is_active', 'published_at'], 'achievements_active_published_idx');
            $table->index('slug', 'achievements_slug_idx');
        });

        // Add indexes to notices table
        Schema::table('notices', function (Blueprint $table) {
            $table->index('published_at', 'notices_published_idx');
            $table->index('page_id', 'notices_page_idx');
        });

        // Add indexes to pages table
        Schema::table('pages', function (Blueprint $table) {
            $table->index(['is_published', 'published_at'], 'pages_published_idx');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('news_events', function (Blueprint $table) {
            $table->dropIndex('news_active_published_idx');
            $table->dropIndex('news_slug_idx');
        });

        Schema::table('achievements', function (Blueprint $table) {
            $table->dropIndex('achievements_active_published_idx');
            $table->dropIndex('achievements_slug_idx');
        });

        Schema::table('notices', function (Blueprint $table) {
            $table->dropIndex('notices_published_idx');
            $table->dropIndex('notices_page_idx');
        });

        Schema::table('pages', function (Blueprint $table) {
            $table->dropIndex('pages_published_idx');
        });
    }
};
