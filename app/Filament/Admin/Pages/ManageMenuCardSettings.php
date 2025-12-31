<?php

namespace App\Filament\Admin\Pages;

use App\Models\Setting;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Pages\Page;
use Filament\Actions\Action;
use Filament\Notifications\Notification;

class ManageMenuCardSettings extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-cog-6-tooth';

    protected static string $view = 'filament.admin.pages.manage-menu-card-settings';

    protected static ?string $navigationGroup = 'Content Management';

    protected static ?string $navigationLabel = 'Menu Card Settings';

    protected static ?int $navigationSort = 7;


    // Hide from navigation - accessible via Menu Cards page button, super admin only
    public static function shouldRegisterNavigation(): bool
    {
        return false;
    }

    public static function canAccess(): bool
    {
        return auth()->user()?->isSuperAdmin() ?? false;
    }


    public ?array $data = [];

    public function mount(): void
    {
        $this->form->fill([
            'template' => Setting::get('menu_card_template', 'template_1'),
            'is_active' => (bool) Setting::get('menu_cards_active', true),
        ]);
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Menu Card Settings')
                    ->description('Manage display settings for menu cards on the homepage')
                    ->schema([
                        Forms\Components\Toggle::make('is_active')
                            ->label('Enable Menu Cards Section')
                            ->default(true)
                            ->helperText('Toggle to show or hide the menu cards section on the homepage'),

                        Forms\Components\Select::make('template')
                            ->label('Card Template')
                            ->options([
                                'template_1' => 'Template 1: Icon Left (Default)',
                                'template_2' => 'Template 2: Compact (Icon Top)',
                                'template_3' => 'Template 3: Minimal (Text Only)',
                            ])
                            ->default('template_1')
                            ->required()
                            ->visible(fn(Forms\Get $get) => $get('is_active'))
                            ->helperText('This template will apply to all menu cards'),
                    ]),
            ])
            ->statePath('data');
    }

    protected function getFormActions(): array
    {
        return [
            Action::make('save')
                ->label('Save Settings')
                ->submit('save'),
        ];
    }

    public function save(): void
    {
        $data = $this->form->getState();

        Setting::updateOrCreate(
            ['key' => 'menu_card_template'],
            ['value' => $data['template']]
        );

        Setting::updateOrCreate(
            ['key' => 'menu_cards_active'],
            ['value' => $data['is_active']]
        );

        Notification::make()
            ->success()
            ->title('Settings saved')
            ->body('Menu card template has been updated successfully.')
            ->send();
    }
}
