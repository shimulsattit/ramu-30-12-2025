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
        Schema::table('popups', function (Blueprint $table) {
            $table->string('button_bg_color')->default('#006a4e')->after('button_link');
            $table->string('button_text_color')->default('#ffffff')->after('button_bg_color');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('popups', function (Blueprint $table) {
            $table->dropColumn(['button_bg_color', 'button_text_color']);
        });
    }
};
