<?php

namespace App\Filament\Admin\Resources\MenuCardResource\Pages;

use App\Filament\Admin\Resources\MenuCardResource;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Pages\ListRecords;

class ListMenuCards extends ListRecords
{
    protected static string $resource = MenuCardResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('templateSettings')
                ->label('Template Settings')
                ->icon('heroicon-o-cog-6-tooth')
                ->color('gray')
                ->form([
                    Forms\Components\Select::make('template')
                        ->label('Card Template')
                        ->options([
                            'template_1' => 'Template 1: Icon Left (Default)',
                            'template_2' => 'Template 2: Compact (Icon Top)',
                            'template_3' => 'Template 3: Minimal (Text Only)',
                        ])
                        ->default(fn() => \App\Models\Setting::get('menu_card_template', 'template_1'))
                        ->required()
                        ->helperText('This template will apply to all menu cards on the homepage'),
                ])
                ->action(function (array $data) {
                    \App\Models\Setting::updateOrCreate(
                        ['key' => 'menu_card_template'],
                        ['value' => $data['template']]
                    );

                    \Filament\Notifications\Notification::make()
                        ->success()
                        ->title('Template Updated')
                        ->body('Menu card template has been saved successfully.')
                        ->send();
                }),
        ];
    }
}
