<?php

namespace App\Filament\Admin\Resources\MenuCardResource\Pages;

use App\Filament\Admin\Resources\MenuCardResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMenuCard extends EditRecord
{
    protected static string $resource = MenuCardResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
