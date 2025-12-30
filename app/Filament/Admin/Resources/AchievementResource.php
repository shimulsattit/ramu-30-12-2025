<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\AchievementResource\Pages;
use App\Models\Achievement;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Support\Str;

class AchievementResource extends Resource
{
    protected static ?string $model = Achievement::class;

    protected static ?string $navigationIcon = 'heroicon-o-trophy';

    protected static ?string $navigationGroup = 'Content Management';

    protected static ?int $navigationSort = 3;

    protected static ?string $navigationLabel = 'Achievements';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Content')
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->label('Title')
                            ->required()
                            ->live(onBlur: true)
                            ->afterStateUpdated(fn($state, Forms\Set $set) => $set('slug', Str::slug($state)))
                            ->maxLength(255),
                        Forms\Components\TextInput::make('slug')
                            ->label('URL Slug')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->helperText('Auto-generated from title')
                            ->maxLength(255),
                        Forms\Components\Textarea::make('excerpt')
                            ->label('Short Description')
                            ->rows(3)
                            ->helperText('Brief summary shown on the card'),
                        Forms\Components\RichEditor::make('content')
                            ->label('Full Content')
                            ->required()
                            ->toolbarButtons([
                                'attachFiles',
                                'blockquote',
                                'bold',
                                'bulletList',
                                'codeBlock',
                                'h2',
                                'h3',
                                'italic',
                                'link',
                                'orderedList',
                                'redo',
                                'strike',
                                'underline',
                                'undo',
                            ]),

                        Forms\Components\Textarea::make('google_drive_folder_link')
                            ->label('Google Drive Folder Link (Bulk Images)')
                            ->rows(2)
                            ->placeholder('https://drive.google.com/drive/folders/xxxxx')
                            ->helperText('Paste Google Drive folder share link to display all images from the folder above the content'),
                    ]),

                Forms\Components\Section::make('Image')
                    ->schema([
                        Forms\Components\Textarea::make('image_url')
                            ->label('Featured Image URL (Google Drive)')
                            ->rows(2)
                            ->helperText('Paste Google Drive share link'),

                        Forms\Components\Textarea::make('bulk_google_drive_urls')
                            ->label('Bulk Upload - Google Drive URLs (Optional)')
                            ->rows(5)
                            ->placeholder("Paste multiple Google Drive share links here (one per line)\nExample:\nhttps://drive.google.com/file/d/xxx/view\nhttps://drive.google.com/file/d/yyy/view")
                            ->helperText('Paste multiple Google Drive image links, one per line. These will be saved as separate achievements with the same title.')
                            ->dehydrated(false),
                    ]),

                Forms\Components\Section::make('Publishing')
                    ->schema([
                        Forms\Components\TextInput::make('author')
                            ->label('Author')
                            ->default('barisal-admin')
                            ->required(),
                        Forms\Components\DateTimePicker::make('published_at')
                            ->label('Publish Date')
                            ->default(now())
                            ->required(),
                        Forms\Components\Toggle::make('is_active')
                            ->label('Active')
                            ->default(true),
                    ])->columns(3),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('image')
                    ->label('Image')
                    ->circular()
                    ->defaultImageUrl(url('/images/placeholder.png')),
                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->sortable()
                    ->limit(40),
                Tables\Columns\TextColumn::make('author')
                    ->searchable(),
                Tables\Columns\TextColumn::make('published_at')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\IconColumn::make('is_active')
                    ->boolean()
                    ->label('Active'),
            ])
            ->defaultSort('published_at', 'desc')
            ->filters([
                Tables\Filters\TernaryFilter::make('is_active')
                    ->label('Active')
                    ->placeholder('All')
                    ->trueLabel('Active only')
                    ->falseLabel('Inactive only'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\Action::make('view')
                    ->label('View')
                    ->icon('heroicon-o-eye')
                    ->url(fn($record) => route('achievement.show', $record->slug))
                    ->openUrlInNewTab()
                    ->visible(fn($record) => $record->is_active),
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
            'index' => Pages\ListAchievements::route('/'),
            'create' => Pages\CreateAchievement::route('/create'),
            'edit' => Pages\EditAchievement::route('/{record}/edit'),
        ];
    }
}
