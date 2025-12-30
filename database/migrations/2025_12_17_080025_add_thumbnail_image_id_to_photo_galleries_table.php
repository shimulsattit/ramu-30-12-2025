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
        Schema::table('photo_galleries', function (Blueprint $table) {
            $table->string('thumbnail_image_id')->nullable()->after('google_drive_folder_link');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('photo_galleries', function (Blueprint $table) {
            $table->dropColumn('thumbnail_image_id');
        });
    }
};
