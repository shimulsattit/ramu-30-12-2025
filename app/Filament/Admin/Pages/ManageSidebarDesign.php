<?php

namespace App\Filament\Admin\Pages;

use App\Models\Setting;
use Filament\Forms\Components\ColorPicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Cache;
use App\Models\ThemeSetting;

class ManageSidebarDesign extends Page implements HasForms
{
    use InteractsWithForms;

    protected static ?string $navigationIcon = 'heroicon-o-paint-brush';

    protected static ?string $navigationGroup = 'Site Management';

    protected static ?int $navigationSort = 7;
    protected static ?string $navigationLabel = 'Sidebar Design';
    protected static ?string $title = 'Sidebar Design Settings';
    protected static string $view = 'filament.admin.pages.manage-sidebar-design';


    // Hide from navigation - only accessible to super admin
    public static function shouldRegisterNavigation(): bool
    {
        return auth()->user()?->isSuperAdmin() ?? false;
    }

    public static function canAccess(): bool
    {
        return auth()->user()?->isSuperAdmin() ?? false;
    }


    public ?array $data = [];

    public function mount(): void
    {
        // Load existing settings or defaults
        $settings = Setting::all()->pluck('value', 'key');

        $this->form->fill([
            'sidebar_header_bg' => $settings['sidebar_header_bg'] ?? '#0f3d3e',
            'sidebar_body_bg' => $settings['sidebar_body_bg'] ?? '#1a4d2e',
            'sidebar_title_color' => $settings['sidebar_title_color'] ?? '#ffc107',
            'sidebar_text_color' => $settings['sidebar_text_color'] ?? '#ffffff',

            'sidebar_border_radius' => $settings['sidebar_border_radius'] ?? '10px',
            'sidebar_border_width' => $settings['sidebar_border_width'] ?? '3px',
            'sidebar_border_color' => $settings['sidebar_border_color'] ?? '#ffffff',

            'sidebar_image_width' => $settings['sidebar_image_width'] ?? '100%',
            'sidebar_image_height' => $settings['sidebar_image_height'] ?? 'auto',
            'sidebar_aspect_ratio' => $settings['sidebar_aspect_ratio'] ?? '3/4', // Default to Portrait
            'sidebar_image_position' => $settings['sidebar_image_position'] ?? 'top center',
            'sidebar_image_fit' => $settings['sidebar_image_fit'] ?? 'cover',

            'sidebar_title_font_size' => $settings['sidebar_title_font_size'] ?? '1.1rem',
            'sidebar_desig_font_size' => $settings['sidebar_desig_font_size'] ?? '0.875rem',
            'sidebar_card_padding' => $settings['sidebar_card_padding'] ?? '1rem',

            'sidebar_btn_bg' => $settings['sidebar_btn_bg'] ?? '#28a745',
            'sidebar_btn_text_color' => $settings['sidebar_btn_text_color'] ?? '#ffffff',

            // Side Menu Settings
            'info_header_bg' => $settings['info_header_bg'] ?? '#0f3d3e',
            'info_body_bg' => $settings['info_body_bg'] ?? '#1a4d2e',
            'info_text_color' => $settings['info_text_color'] ?? '#ffc107',
            'info_icon_color' => $settings['info_icon_color'] ?? '#ffc107',
            'info_border_color' => $settings['info_border_color'] ?? 'rgba(255, 193, 7, 0.3)',

            // Notice Board Settings
            'notice_header_bg' => $settings['notice_header_bg'] ?? '#0f3d3e',
            'notice_body_bg' => $settings['notice_body_bg'] ?? '#f0f8f0',
            'notice_title_color' => $settings['notice_title_color'] ?? '#0066cc',
            'notice_date_color' => $settings['notice_date_color'] ?? '#dc3545',

            // Message Card Design (from ThemeSetting)
            'message_card_design' => ThemeSetting::first()->message_card_design ?? 'solid',
            'message_card_bg_image' => ThemeSetting::first()->message_card_bg_image ?? null,
        ]);
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Colors & Background')
                    ->schema([
                        ColorPicker::make('sidebar_header_bg')->label('Header Background')->live(),
                        ColorPicker::make('sidebar_body_bg')->label('Body Background')->live(),
                        ColorPicker::make('sidebar_title_color')->label('Title Color (Name)')->live(),
                        ColorPicker::make('sidebar_text_color')->label('Text Color (Designation)')->live(),
                        ColorPicker::make('sidebar_btn_bg')->label('Button Background')->live(),
                        ColorPicker::make('sidebar_btn_text_color')->label('Button Text Color')->live(),
                    ])->columns(2),

                Section::make('Image Settings')
                    ->schema([
                        \Filament\Forms\Components\Select::make('sidebar_aspect_ratio')
                            ->label('Aspect Ratio')
                            ->options([
                                '1/1' => 'Square (1:1)',
                                '3/4' => 'Portrait (3:4) - Recommended',
                                '4/3' => 'Landscape (4:3)',
                                '16/9' => 'Wide (16:9)',
                                'auto' => 'Original (Auto Height)',
                                'custom' => 'Custom Height',
                            ])
                            ->default('3/4')
                            ->live(),
                        TextInput::make('sidebar_image_width')
                            ->label('Width')
                            ->placeholder('100% or 150px')
                            ->default('100%')
                            ->live(),
                        TextInput::make('sidebar_image_height')
                            ->label('Custom Height')
                            ->placeholder('e.g. 200px')
                            ->visible(fn(\Filament\Forms\Get $get) => $get('sidebar_aspect_ratio') === 'custom')
                            ->live(),
                        \Filament\Forms\Components\Select::make('sidebar_image_position')
                            ->label('Image Position')
                            ->options([
                                'center center' => 'Center',
                                'top center' => 'Top Center',
                                'bottom center' => 'Bottom Center',
                                'top left' => 'Top Left',
                                'top right' => 'Top Right',
                                'bottom left' => 'Bottom Left',
                                'bottom right' => 'Bottom Right',
                            ])
                            ->default('top center')
                            ->live(),
                        \Filament\Forms\Components\Select::make('sidebar_image_fit')
                            ->label('Object Fit')
                            ->options([
                                'cover' => 'Cover (Crop to fill)',
                                'contain' => 'Contain (Show full image)',
                                'fill' => 'Fill (Stretch)',
                            ])
                            ->default('cover')
                            ->live(),
                        TextInput::make('sidebar_border_radius')->label('Border Radius')->placeholder('10px')->live(),
                        TextInput::make('sidebar_border_width')->label('Border Width')->placeholder('3px')->live(),
                        ColorPicker::make('sidebar_border_color')->label('Border Color')->live(),
                    ])->columns(3),

                Section::make('Typography & Layout')
                    ->schema([
                        TextInput::make('sidebar_title_font_size')->label('Name Font Size')->placeholder('1.1rem')->live(),
                        TextInput::make('sidebar_desig_font_size')->label('Designation Font Size')->placeholder('0.875rem')->live(),
                        TextInput::make('sidebar_card_padding')->label('Card Padding')->placeholder('1rem')->live(),
                    ])->columns(3),

                Section::make('Side Menu Style')
                    ->schema([
                        ColorPicker::make('info_header_bg')->label('Header Background')->live(),
                        ColorPicker::make('info_body_bg')->label('Body Background')->live(),
                        ColorPicker::make('info_text_color')->label('Text Color')->live(),
                        ColorPicker::make('info_icon_color')->label('Icon Color')->live(),
                        ColorPicker::make('info_border_color')->label('Separator Color')->live(),
                    ])->columns(3),

                Section::make('💳 Message Card Design (All Templates)')
                    ->description('Choose design style for message cards across all homepage templates')
                    ->schema([
                        \Filament\Forms\Components\Select::make('message_card_design')
                            ->label('Card Design Style')
                            ->options([
                                'solid' => '🎨 Solid Color (Default)',
                                'image' => '🖼️ Background Image with Overlay',
                                'modern' => '✨ Modern Card with Border',
                            ])
                            ->default('solid')
                            ->required()
                            ->live()
                            ->helperText('Select a design style for message cards. Changes apply to all homepage templates.'),
                        \Filament\Forms\Components\FileUpload::make('message_card_bg_image')
                            ->label('Background Image')
                            ->image()
                            ->directory('message-cards')
                            ->visibility('public')
                            ->helperText('Upload a background image for the "Background Image" design style')
                            ->visible(fn(\Filament\Forms\Get $get) => $get('message_card_design') === 'image')
                            ->columnSpanFull(),
                    ])->columns(2),

                Section::make('Notice Board Style')
                    ->schema([
                        ColorPicker::make('notice_header_bg')->label('Header Background')->live(),
                        ColorPicker::make('notice_body_bg')->label('Body Background')->live(),
                        ColorPicker::make('notice_title_color')->label('Title Color')->live(),
                        ColorPicker::make('notice_date_color')->label('Date Color')->live(),
                    ])->columns(2),
            ])
            ->statePath('data');
    }

    public function save(): void
    {
        $data = $this->form->getState();

        // Save sidebar settings to Setting model
        foreach ($data as $key => $value) {
            Setting::updateOrCreate(['key' => $key], ['value' => $value]);
        }

        // Clear cache
        Cache::forget('settings');

        Notification::make()
            ->title('Settings saved successfully')
            ->success()
            ->send();
    }
}
