<?php

namespace App\Filament\Admin\Resources\VideoGalleryResource\Pages;

use App\Filament\Admin\Resources\VideoGalleryResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListVideoGalleries extends ListRecords
{
    protected static string $resource = VideoGalleryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
