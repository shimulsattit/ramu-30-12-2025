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
        Schema::table('theme_settings', function (Blueprint $table) {
            $table->string('news_events_title', 100)->default('NEWS AND EVENTS')->after('sidebar_title');
            $table->string('achievements_title', 100)->default('ACHIEVEMENTS')->after('news_events_title');
            $table->string('all_notices_title', 100)->default('ALL PUBLISHED NOTICE')->after('achievements_title');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('theme_settings', function (Blueprint $table) {
            $table->dropColumn(['news_events_title', 'achievements_title', 'all_notices_title']);
        });
    }
};
