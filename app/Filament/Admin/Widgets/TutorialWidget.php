<?php

namespace App\Filament\Admin\Widgets;

use Filament\Widgets\Widget;
use App\Models\Setting;

class TutorialWidget extends Widget
{
    protected static string $view = 'filament.admin.widgets.tutorial-widget';

    protected static ?int $sort = 10; // High sort order to appear at the bottom

    protected int|string|array $columnSpan = 8; // Span 8 out of 12 columns

    // Only show if setting exists
    public static function canView(): bool
    {
        return !empty(Setting::get('admin_tutorial_link'));
    }

    protected function getViewData(): array
    {
        $url = Setting::get('admin_tutorial_link');
        $embedUrl = $this->getEmbedUrl($url);

        return [
            'embedUrl' => $embedUrl,
        ];
    }

    private function getEmbedUrl($url)
    {
        if (empty($url))
            return null;

        // Handle standard youtube.com/watch?v=ID
        if (str_contains($url, 'watch?v=')) {
            $parts = explode('v=', $url);
            $id = explode('&', $parts[1])[0]; // Handle extra params like &t=...
            return "https://www.youtube.com/embed/{$id}";
        }

        // Handle youtu.be/ID
        if (str_contains($url, 'youtu.be/')) {
            $parts = explode('youtu.be/', $url);
            $id = explode('?', $parts[1])[0];
            return "https://www.youtube.com/embed/{$id}";
        }

        // Already embed URL?
        if (str_contains($url, '/embed/')) {
            return $url;
        }

        return $url; // Return original if unknown format, though might not work in iframe
    }
}
