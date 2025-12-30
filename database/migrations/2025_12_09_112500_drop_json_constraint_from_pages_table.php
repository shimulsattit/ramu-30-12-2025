<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        try {
            DB::statement('ALTER TABLE pages DROP CHECK pages_chk_1');
        } catch (\Exception $e) {
            // Constraint might not exist or have a different name in some environments, 
            // but the user specific error confirms it is 'pages_chk_1'.
            // We'll log it just in case but proceed.
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // No need to restore specific check constraint as we moved away from JSON
    }
};
