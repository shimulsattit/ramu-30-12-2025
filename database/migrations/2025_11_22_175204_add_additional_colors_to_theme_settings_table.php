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
        Schema::table('theme_settings', function (Blueprint $table) {
            $table->string('topbar_bg_color')->default('#5a9a7a')->after('link_color');
            $table->string('header_bg_color')->default('#2d6a4f')->after('topbar_bg_color');
            $table->string('navbar_bg_color')->default('#1e5540')->after('header_bg_color');
            $table->string('navbar_hover_color')->default('rgba(255,255,255,0.15)')->after('navbar_bg_color');
            $table->string('footer_bg_color')->default('#2c3e50')->after('navbar_hover_color');
            $table->string('footer_bottom_bg_color')->default('#1a252f')->after('footer_bg_color');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('theme_settings', function (Blueprint $table) {
            $table->dropColumn([
                'topbar_bg_color',
                'header_bg_color',
                'navbar_bg_color',
                'navbar_hover_color',
                'footer_bg_color',
                'footer_bottom_bg_color',
            ]);
        });
    }
};
