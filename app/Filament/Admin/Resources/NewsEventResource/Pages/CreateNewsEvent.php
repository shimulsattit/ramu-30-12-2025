<?php

namespace App\Filament\Admin\Resources\NewsEventResource\Pages;

use App\Filament\Admin\Resources\NewsEventResource;
use Filament\Resources\Pages\CreateRecord;

class CreateNewsEvent extends CreateRecord
{
    protected static string $resource = NewsEventResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // Handle bulk Google Drive URLs
        if (!empty($data['bulk_google_drive_urls'])) {
            $urls = array_filter(array_map('trim', explode("\n", $data['bulk_google_drive_urls'])));

            if (count($urls) > 0) {
                // Store all URLs in additional_images
                $data['additional_images'] = $urls;

                // Use first URL as featured image if no image_url is set
                if (empty($data['image_url'])) {
                    $data['image_url'] = $urls[0];
                }

                // Show success notification
                \Filament\Notifications\Notification::make()
                    ->title('Bulk Upload Successful')
                    ->body('Added ' . count($urls) . ' images to the gallery.')
                    ->success()
                    ->send();
            }
        }

        return $data;
    }
}
