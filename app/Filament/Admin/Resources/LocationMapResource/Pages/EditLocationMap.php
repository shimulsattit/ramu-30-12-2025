<?php

namespace App\Filament\Admin\Resources\LocationMapResource\Pages;

use App\Filament\Admin\Resources\LocationMapResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLocationMap extends EditRecord
{
    protected static string $resource = LocationMapResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
