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
        // Update messages table
        if (Schema::hasTable('messages')) {
            Schema::table('messages', function (Blueprint $table) {
                if (!Schema::hasColumn('messages', 'image_url')) {
                    $table->text('image_url')->nullable()->after('designation');
                }
                if (!Schema::hasColumn('messages', 'type')) {
                    $table->string('type')->default('Principal')->after('id'); // Chief Patron, Chairman, Principal
                }
                if (!Schema::hasColumn('messages', 'link')) {
                    $table->string('link')->nullable()->after('message');
                }
                if (!Schema::hasColumn('messages', 'is_active')) {
                    $table->boolean('is_active')->default(true)->after('order');
                }
            });
        }

        // Create sidebar_widgets table
        if (!Schema::hasTable('sidebar_widgets')) {
            Schema::create('sidebar_widgets', function (Blueprint $table) {
                $table->id();
                $table->string('title');
                $table->string('type')->default('image_link'); // image_link, video, text
                $table->text('content')->nullable(); // For video URL or text content
                $table->text('image_url')->nullable(); // For image widgets
                $table->string('link')->nullable(); // For image click link
                $table->integer('order')->default(0);
                $table->boolean('is_active')->default(true);
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (Schema::hasTable('messages')) {
            Schema::table('messages', function (Blueprint $table) {
                $table->dropColumn(['image_url', 'type', 'link', 'is_active']);
            });
        }
        Schema::dropIfExists('sidebar_widgets');
    }
};
