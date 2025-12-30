<?php

namespace App\Filament\Admin\Resources\ImportantLinkResource\Pages;

use App\Filament\Admin\Resources\ImportantLinkResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListImportantLinks extends ListRecords
{
    protected static string $resource = ImportantLinkResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
