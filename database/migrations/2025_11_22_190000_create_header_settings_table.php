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
        Schema::create('header_settings', function (Blueprint $table) {
            $table->id();
            
            // Top Bar
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('facebook_url')->nullable();
            $table->string('youtube_url')->nullable();
            $table->boolean('show_login_link')->default(true);
            
            // Main Header
            $table->text('logo_url')->nullable(); // Google Drive URL
            $table->string('site_name')->default('BARISHAL CANTONMENT PUBLIC SCHOOL & COLLEGE');
            $table->string('site_name_bangla')->default('বরিশাল ক্যান্টনমেন্ট পাবলিক স্কুল ও কলেজ');
            $table->string('eiin')->default('Barishal Cantonment, EIIN:136998');
            
            // Action Buttons
            $table->string('erecruitment_url')->nullable();
            $table->string('online_admission_url')->nullable();
            $table->string('online_fee_url')->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('header_settings');
    }
};
