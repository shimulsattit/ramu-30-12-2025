<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\ThemeShowcaseResource\Pages;
use App\Models\ThemeShowcase;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class ThemeShowcaseResource extends Resource
{
    protected static ?string $model = ThemeShowcase::class;

    protected static ?string $navigationIcon = 'heroicon-o-presentation-chart-line';

    protected static ?string $navigationGroup = 'Site Management';

    protected static ?int $navigationSort = 10;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('image')
                    ->label('Thumbnail Image (Google Drive URL)')
                    ->required()
                    ->helperText('Paste a Google Drive sharing link.'),
                Forms\Components\TextInput::make('url')
                    ->label('Demo URL')
                    ->url()
                    ->helperText('Link to the live demo of the theme.'),
                Forms\Components\TextInput::make('sort_order')
                    ->numeric()
                    ->default(0),
                Forms\Components\TextInput::make('theme_key')
                    ->label('Template Key')
                    ->required()
                    ->unique(ignoreRecord: true)
                    ->helperText('Unique key for the system (e.g., template_1, template_custom)'),
                Forms\Components\Toggle::make('is_active')
                    ->label('Active')
                    ->default(true)
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->disk('google') // Assuming logic is handled by accessor, but standard ImageColumn might expect disk.
                    // Since we use accessor, we might need TextColumn or ViewColumn if ImageColumn fails with external URLs. 
                    // Actually, ImageColumn works with external URLs if state returns a URL.
                    ->defaultImageUrl(url('images/placeholder.png')),
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('url')
                    ->icon('heroicon-m-link')
                    ->openUrlInNewTab(),
                Tables\Columns\ToggleColumn::make('is_active'),
                Tables\Columns\TextColumn::make('sort_order')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListThemeShowcases::route('/'),
            'create' => Pages\CreateThemeShowcase::route('/create'),
            'edit' => Pages\EditThemeShowcase::route('/{record}/edit'),
        ];
    }
}
