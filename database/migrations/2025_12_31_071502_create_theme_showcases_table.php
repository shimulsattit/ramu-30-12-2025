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
        if (!Schema::hasTable('theme_showcases')) {
            Schema::create('theme_showcases', function (Blueprint $table) {
                $table->id();
                $table->string('name');
                $table->text('image')->nullable(); // Google Drive URL
                $table->string('url')->nullable(); // Demo Link
                $table->boolean('is_active')->default(true);
                $table->integer('sort_order')->default(0);
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('theme_showcases');
    }
};
