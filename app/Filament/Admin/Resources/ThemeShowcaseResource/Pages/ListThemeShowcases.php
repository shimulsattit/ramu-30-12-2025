<?php

namespace App\Filament\Admin\Resources\ThemeShowcaseResource\Pages;

use App\Filament\Admin\Resources\ThemeShowcaseResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListThemeShowcases extends ListRecords
{
    protected static string $resource = ThemeShowcaseResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
