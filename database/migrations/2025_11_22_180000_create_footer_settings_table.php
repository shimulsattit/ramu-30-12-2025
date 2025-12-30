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
        Schema::create('footer_settings', function (Blueprint $table) {
            $table->id();
            // Logo & School Info
            $table->text('logo_url')->nullable();
            $table->string('school_name')->default('Barishal Cantonment Public School & College');
            
            // Contact Information
            $table->string('contact_title')->default('CONTACT');
            $table->text('contact_phones')->nullable(); // JSON array
            $table->string('contact_email')->nullable();
            
            // Featured Links
            $table->string('featured_links_title')->default('FEATURED LINKS');
            $table->text('featured_links')->nullable(); // JSON array of {title, url}
            
            // Facebook Page
            $table->string('facebook_title')->default('OUR FACEBOOK PAGE');
            $table->text('facebook_embed_url')->nullable();
            
            // Social Media
            $table->string('facebook_url')->nullable();
            $table->string('twitter_url')->nullable();
            
            // Copyright
            $table->string('copyright_text')->default('Copyright ©2024 BCPSC | Developed By Trust Innovation Ltd.');
            $table->string('privacy_policy_url')->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('footer_settings');
    }
};
