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
        Schema::table('messages', function (Blueprint $table) {
            $table->string('slug')->nullable()->after('name');
        });

        // Generate slugs for existing messages
        $messages = \App\Models\Message::all();
        foreach ($messages as $message) {
            $slug = \Illuminate\Support\Str::slug($message->name);
            $message->slug = $slug;
            $message->save();
        }

        // Now make slug unique
        Schema::table('messages', function (Blueprint $table) {
            $table->unique('slug');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('messages', function (Blueprint $table) {
            $table->dropColumn('slug');
        });
    }
};
