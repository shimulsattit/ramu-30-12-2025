<?php

namespace App\Filament\Admin\Resources\LocationMapResource\Pages;

use App\Filament\Admin\Resources\LocationMapResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListLocationMaps extends ListRecords
{
    protected static string $resource = LocationMapResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
