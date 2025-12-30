<?php

namespace App\Console\Commands;

use App\Models\Notice;
use Illuminate\Console\Command;

class DeleteExpiredNotices extends Command
{
    /**
     * The name and signature of the console command.
     */
    protected $signature = 'notices:delete-expired';

    /**
     * The console command description.
     */
    protected $description = 'Delete expired notices and their associated pages';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $expiredNotices = Notice::whereNotNull('expires_at')
            ->where('expires_at', '<=', now())
            ->get();

        if ($expiredNotices->isEmpty()) {
            $this->info('No expired notices found.');
            return 0;
        }

        $count = $expiredNotices->count();
        $this->info("Found {$count} expired notices.");

        foreach ($expiredNotices as $notice) {
            // Delete associated page if exists
            if ($notice->page) {
                $notice->page->delete();
                $this->line("Deleted page: {$notice->page->title}");
            }

            // Delete notice
            $notice->delete();
            $this->line("Deleted notice: {$notice->title}");
        }

        $this->info("Successfully deleted {$count} expired notices.");

        return 0;
    }
}
