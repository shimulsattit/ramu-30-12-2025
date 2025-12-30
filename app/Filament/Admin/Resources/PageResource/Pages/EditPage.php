<?php

namespace App\Filament\Admin\Resources\PageResource\Pages;

use App\Filament\Admin\Resources\PageResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPage extends EditRecord
{
    protected static string $resource = PageResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('preview')
                ->label('Live Preview')
                ->icon('heroicon-o-eye')
                ->url(fn (): string => route('page.preview', ['page' => $this->record->id]))
                ->openUrlInNewTab()
                ->color('info'),
            Actions\DeleteAction::make(),
        ];
    }

    protected function mutateFormDataBeforeFill(array $data): array
    {
        // Load notice expiry data if this page is linked to a notice
        if ($this->record->notices()->exists()) {
            $notice = $this->record->notices()->first();
            $data['notice_expires_at'] = $notice->expires_at;
        }

        return $data;
    }
}
