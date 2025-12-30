<?php

namespace App\Console\Commands;

use App\Models\Notice;
use App\Models\Page;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

class CreatePagesForNotices extends Command
{
    /**
     * The name and signature of the console command.
     */
    protected $signature = 'notices:create-pages';

    /**
     * The console command description.
     */
    protected $description = 'Create pages for existing notices that don\'t have pages';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $notices = Notice::whereNull('page_id')->get();

        if ($notices->isEmpty()) {
            $this->info('All notices already have pages.');
            return 0;
        }

        $this->info("Found {$notices->count()} notices without pages.");

        $bar = $this->output->createProgressBar($notices->count());
        $bar->start();

        foreach ($notices as $notice) {
            // Create a page for this notice
            $page = Page::create([
                'title' => $notice->title,
                'slug' => Str::slug($notice->title) . '-notice-' . $notice->id,
                'content' => [
                    [
                        'type' => 'heading',
                        'data' => [
                            'level' => 'h2',
                            'content' => $notice->title,
                            'alignment' => 'center',
                        ],
                    ],
                    [
                        'type' => 'paragraph',
                        'data' => [
                            'content' => $notice->content ?? '<p>Notice content will be added here.</p>',
                        ],
                    ],
                ],
                'is_published' => true,
                'published_at' => $notice->published_at,
            ]);

            // Link the page to the notice
            $notice->page_id = $page->id;
            $notice->save();

            $bar->advance();
        }

        $bar->finish();
        $this->newLine();
        $this->info("Successfully created pages for {$notices->count()} notices.");

        return 0;
    }
}
