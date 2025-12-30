<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\WelcomeSectionResource\Pages;
use App\Models\WelcomeSection;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class WelcomeSectionResource extends Resource
{
    protected static ?string $model = WelcomeSection::class;

    protected static ?string $navigationIcon = 'heroicon-o-home';

    protected static ?string $navigationGroup = 'Site Management';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Welcome Section';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Content')
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->label('Section Title')
                            ->required()
                            ->default('Welcome To BCPSC')
                            ->maxLength(255),
                        Forms\Components\Textarea::make('content')
                            ->label('Welcome Text')
                            ->required()
                            ->rows(10)
                            ->helperText('Main content text for the welcome section'),
                    ]),

                Forms\Components\Section::make('Image')
                    ->schema([
                        Forms\Components\Textarea::make('image_url')
                            ->label('Image URL (Google Drive)')
                            ->rows(2)
                            ->helperText('Paste Google Drive share link for the welcome image'),
                    ]),

                Forms\Components\Section::make('Button Settings')
                    ->schema([
                        Forms\Components\TextInput::make('button_text')
                            ->label('Button Text')
                            ->maxLength(255)
                            ->placeholder('Details')
                            ->helperText('Text to display on the button (e.g., "Details")'),
                    ]),

                Forms\Components\Section::make('Status')
                    ->schema([
                        Forms\Components\Toggle::make('is_active')
                            ->label('Active')
                            ->default(true)
                            ->helperText('Show/hide this section on the homepage'),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('content')
                    ->limit(50)
                    ->searchable(),
                Tables\Columns\IconColumn::make('is_active')
                    ->boolean()
                    ->label('Active'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TernaryFilter::make('is_active')
                    ->label('Active')
                    ->placeholder('All sections')
                    ->trueLabel('Active only')
                    ->falseLabel('Inactive only'),
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
            'index' => Pages\ListWelcomeSections::route('/'),
            'create' => Pages\CreateWelcomeSection::route('/create'),
            'edit' => Pages\EditWelcomeSection::route('/{record}/edit'),
        ];
    }
}
