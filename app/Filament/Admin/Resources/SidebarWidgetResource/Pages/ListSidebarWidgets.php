<?php

namespace App\Filament\Admin\Resources\SidebarWidgetResource\Pages;

use App\Filament\Admin\Resources\SidebarWidgetResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSidebarWidgets extends ListRecords
{
    protected static string $resource = SidebarWidgetResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
