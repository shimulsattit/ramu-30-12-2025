<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\VideoGalleryResource\Pages;
use App\Models\VideoGallery;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Support\Str;

class VideoGalleryResource extends Resource
{
    protected static ?string $model = VideoGallery::class;

    protected static ?string $navigationIcon = 'heroicon-o-video-camera';

    protected static ?string $navigationGroup = 'Video Gallery';

    protected static ?string $modelLabel = 'Video List';

    protected static ?string $navigationLabel = 'Video List';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('YouTube Videos')
                    ->description('Add YouTube video links with titles and descriptions')
                    ->schema([
                        Forms\Components\Repeater::make('videos')
                            ->schema([
                                Forms\Components\TextInput::make('title')
                                    ->label('Video Title')
                                    ->required()
                                    ->placeholder('Enter video title')
                                    ->columnSpanFull(),

                                Forms\Components\TextInput::make('youtube_url')
                                    ->label('YouTube URL')
                                    ->required()
                                    ->url()
                                    ->placeholder('https://www.youtube.com/watch?v=...')
                                    ->helperText('Paste the full YouTube video URL')
                                    ->columnSpanFull(),

                                Forms\Components\Textarea::make('info')
                                    ->label('Video Info/Description')
                                    ->rows(3)
                                    ->placeholder('Enter video description or additional information')
                                    ->columnSpanFull(),
                            ])
                            ->columns(1)
                            ->defaultItems(1)
                            ->addActionLabel('Add Video')
                            ->reorderable()
                            ->collapsible()
                            ->itemLabel(fn(array $state): ?string => $state['title'] ?? 'New Video')
                            ->columnSpanFull(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('preview')
                    ->label('Preview')
                    ->getStateUsing(function ($record) {
                        // Get first video's YouTube thumbnail
                        if (!empty($record->videos) && isset($record->videos[0]['youtube_url'])) {
                            $url = $record->videos[0]['youtube_url'];
                            if (preg_match('/(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)([^&\?\/]+)/', $url, $matches)) {
                                return 'https://img.youtube.com/vi/' . $matches[1] . '/hqdefault.jpg';
                            }
                        }
                        return null;
                    })
                    ->square()
                    ->defaultImageUrl('https://via.placeholder.com/150?text=No+Video'),

                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->sortable()
                    ->limit(30),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Created At')
                    ->dateTime('M d, Y h:i A')
                    ->sortable(),

                Tables\Columns\TextColumn::make('creator.name')
                    ->label('Created By')
                    ->default('Unknown')
                    ->searchable(),
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
            ])
            ->defaultSort('created_at', 'desc');
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
            'index' => Pages\ListVideoGalleries::route('/'),
            'create' => Pages\CreateVideoGallery::route('/create'),
            'edit' => Pages\EditVideoGallery::route('/{record}/edit'),
        ];
    }
}
