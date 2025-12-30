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
        Schema::create('menu_cards', function (Blueprint $table) {
            $table->id();
            $table->string('title'); // e.g., "About", "Academic Info"
            $table->text('icon_url')->nullable(); // Google Drive URL for icon
            $table->string('bg_color')->default('#0a4d3c'); // Card background color
            $table->integer('order')->default(0);
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });

        Schema::create('menu_card_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('menu_card_id')->constrained()->onDelete('cascade');
            $table->string('title'); // e.g., "About Institute", "Syllabus"
            $table->string('url')->nullable();
            $table->foreignId('page_id')->nullable()->constrained('pages')->onDelete('set null');
            $table->integer('order')->default(0);
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('menu_card_items');
        Schema::dropIfExists('menu_cards');
    }
};
