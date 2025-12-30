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
            $table->string('card_header_color')->default('#134B50')->after('message_card_bg_image');
            $table->string('card_button_bg_color')->default('#134B50')->after('card_header_color');
            $table->string('card_button_text_color')->default('#ffffff')->after('card_button_bg_color');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('theme_settings', function (Blueprint $table) {
            $table->dropColumn(['card_header_color', 'card_button_bg_color', 'card_button_text_color']);
        });
    }
};
