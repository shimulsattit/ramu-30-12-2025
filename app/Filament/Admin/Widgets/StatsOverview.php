<?php

namespace App\Filament\Admin\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Notice;
use App\Models\Page;
use App\Models\Slider;
use App\Models\User;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Notices', \App\Models\Notice::count())
                ->description('All published notices')
                ->descriptionIcon('heroicon-m-megaphone')
                ->color('success'),
            Stat::make('Total Pages', \App\Models\Page::count())
                ->description('Dynamic pages')
                ->descriptionIcon('heroicon-m-document-text')
                ->color('primary'),
            Stat::make('Total Sliders', \App\Models\Slider::count())
                ->description('Homepage sliders')
                ->descriptionIcon('heroicon-m-photo')
                ->color('warning'),
            Stat::make('Total Users', \App\Models\User::count())
                ->description('Registered users')
                ->descriptionIcon('heroicon-m-users')
                ->color('danger'),
        ];
    }
}
