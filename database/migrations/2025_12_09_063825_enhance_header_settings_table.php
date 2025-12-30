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
        Schema::table('header_settings', function (Blueprint $table) {
            // Replace single phone with multiple phones (JSON)
            $table->dropColumn('phone');
            $table->json('phones')->nullable()->after('email');

            // Add additional social media URLs
            $table->string('twitter_url')->nullable()->after('youtube_url');
            $table->string('instagram_url')->nullable()->after('twitter_url');
            $table->string('linkedin_url')->nullable()->after('instagram_url');

            // Drop existing action button columns
            $table->dropColumn(['erecruitment_url', 'online_admission_url', 'online_fee_url']);

            // Add dynamic action buttons (JSON)
            $table->json('action_buttons')->nullable()->after('eiin');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('header_settings', function (Blueprint $table) {
            // Restore single phone field
            $table->dropColumn('phones');
            $table->string('phone')->nullable()->after('email');

            // Remove additional social media URLs
            $table->dropColumn(['twitter_url', 'instagram_url', 'linkedin_url']);

            // Restore original action button columns
            $table->dropColumn('action_buttons');
            $table->string('erecruitment_url')->nullable();
            $table->string('online_admission_url')->nullable();
            $table->string('online_fee_url')->nullable();
        });
    }
};
