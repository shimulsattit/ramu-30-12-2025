<?php

namespace App\Filament\Admin\Resources\PhotoGalleryResource\Pages;

use App\Filament\Admin\Resources\PhotoGalleryResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhotoGallery extends EditRecord
{
    protected static string $resource = PhotoGalleryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function mutateFormDataBeforeSave(array $data): array
    {
        unset($data['bulk_uploader']);
        return $data;
    }
}
