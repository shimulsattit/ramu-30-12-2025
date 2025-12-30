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
        Schema::create('location_maps', function (Blueprint $table) {
            $table->id();
            $table->string('title')->default('Location (Google Map)');
            $table->text('embed_url'); // Google Maps embed URL
            $table->integer('height')->default(400); // Map height in pixels
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('location_maps');
    }
};
