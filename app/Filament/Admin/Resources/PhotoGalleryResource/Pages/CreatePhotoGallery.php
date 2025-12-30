<?php

namespace App\Filament\Admin\Resources\PhotoGalleryResource\Pages;

use App\Filament\Admin\Resources\PhotoGalleryResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreatePhotoGallery extends CreateRecord
{
    protected static string $resource = PhotoGalleryResource::class;

    protected static bool $shouldRegisterNavigation = true;

    protected static ?string $navigationGroup = 'Photo Gallery';

    protected static ?string $navigationLabel = 'Add Gallery';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        unset($data['bulk_uploader']);
        return $data;
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
