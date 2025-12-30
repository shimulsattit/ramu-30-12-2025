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
            $table->boolean('show_notice_ticker')->default(true)->after('action_buttons');
            $table->integer('notice_ticker_limit')->default(10)->after('show_notice_ticker');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('header_settings', function (Blueprint $table) {
            $table->dropColumn(['show_notice_ticker', 'notice_ticker_limit']);
        });
    }
};
