<?php

namespace App\Filament\Admin\Resources\SidebarWidgetResource\Pages;

use App\Filament\Admin\Resources\SidebarWidgetResource;
use Filament\Resources\Pages\EditRecord;

class EditSidebarWidget extends EditRecord
{
    protected static string $resource = SidebarWidgetResource::class;

    protected function getHeaderActions(): array
    {
        return [
            \Filament\Actions\DeleteAction::make(),
        ];
    }
}
