<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\PhotoGalleryResource\Pages;
use App\Filament\Admin\Resources\PhotoGalleryResource\RelationManagers;
use App\Models\PhotoGallery;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class PhotoGalleryResource extends Resource
{
    protected static ?string $model = PhotoGallery::class;

    protected static ?string $navigationIcon = 'heroicon-o-camera';

    protected static ?string $navigationGroup = 'Photo Gallery'; // User requested "Photo Gallerie" expandable

    protected static ?string $modelLabel = 'Album'; // "All Albulm"

    protected static ?string $navigationLabel = 'All Albums';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Album Details')
                    ->description('Create a photo album using Google Drive folder')
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->label('Album Title')
                            ->required()
                            ->maxLength(255)
                            ->live(onBlur: true)
                            ->afterStateUpdated(fn(string $operation, $state, Forms\Set $set) => $operation === 'create' ? $set('slug', Str::slug($state)) : null),

                        Forms\Components\TextInput::make('slug')
                            ->required()
                            ->maxLength(255)
                            ->unique(ignoreRecord: true),

                        Forms\Components\TextInput::make('google_drive_folder_link')
                            ->label('Google Drive Folder Link')
                            ->required()
                            ->url()
                            ->placeholder('https://drive.google.com/drive/folders/FOLDER_ID')
                            ->helperText('Paste the Google Drive folder sharing link. Make sure the folder is publicly accessible.')
                            ->columnSpanFull(),

                        Forms\Components\TextInput::make('thumbnail_image_id')
                            ->label('Thumbnail Image ID (Optional)')
                            ->placeholder('Enter Google Drive image file ID')
                            ->helperText('Open any image in the folder, copy the ID from URL (e.g., /d/IMAGE_ID/view). You can also paste the full link, it will be automatically converted to ID.')
                            ->dehydrateStateUsing(fn($state) => \App\Helpers\GoogleDriveHelper::extractFileId($state) ?? $state)
                            ->columnSpanFull(),

                        Forms\Components\FileUpload::make('manual_thumbnail')
                            ->label('OR Upload Thumbnail Manually')
                            ->image()
                            ->imageEditor()
                            ->directory('galleries/thumbnails')
                            ->helperText('Upload a thumbnail image if you prefer not to use Google Drive image ID.')
                            ->columnSpanFull(),

                        Forms\Components\DatePicker::make('published_at')
                            ->label('Published Date')
                            ->default(now()),

                        Forms\Components\Toggle::make('is_active')
                            ->label('Active')
                            ->default(true)
                            ->required(),
                    ])->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('thumbnail_url')
                    ->label('Thumbnail')
                    ->square()
                    ->defaultImageUrl('https://via.placeholder.com/150?text=No+Image'),

                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->sortable(),

                Tables\Columns\TextColumn::make('google_drive_folder_link')
                    ->label('Folder Link')
                    ->limit(30)
                    ->url(fn($record) => $record->google_drive_folder_link)
                    ->openUrlInNewTab(),

                Tables\Columns\TextColumn::make('published_at')
                    ->date()
                    ->sortable(),

                Tables\Columns\IconColumn::make('is_active')
                    ->boolean(),

                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
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
            'index' => Pages\ListPhotoGalleries::route('/'),
            'create' => Pages\CreatePhotoGallery::route('/create'),
            'edit' => Pages\EditPhotoGallery::route('/{record}/edit'),
        ];
    }
}
