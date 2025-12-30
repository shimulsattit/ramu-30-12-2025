<?php

namespace App\Filament\Admin\Resources\NoticeResource\Pages;

use App\Filament\Admin\Resources\NoticeResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Models\HeaderSetting;
use Filament\Forms;

class ListNotices extends ListRecords
{
    protected static string $resource = NoticeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('tickerSettings')
                ->label('Ticker Settings')
                ->icon('heroicon-o-cog-6-tooth')
                ->color('info')
                ->form([
                    Forms\Components\Toggle::make('show_notice_ticker')
                        ->label('Show Notice Ticker')
                        ->default(true),
                    Forms\Components\TextInput::make('notice_ticker_limit')
                        ->label('Notice Limit')
                        ->numeric()
                        ->default(10)
                        ->required(),
                ])
                ->mountUsing(fn(Forms\ComponentContainer $form) => $form->fill([
                    'show_notice_ticker' => HeaderSetting::first()->show_notice_ticker ?? true,
                    'notice_ticker_limit' => HeaderSetting::first()->notice_ticker_limit ?? 10,
                ]))
                ->action(function (array $data): void {
                    HeaderSetting::updateOrCreate([], $data);
                })
        ];
    }
}
