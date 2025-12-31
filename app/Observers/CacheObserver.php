<?php

namespace App\Observers;

use Illuminate\Support\Facades\Cache;

class CacheObserver
{
    /**
     * Clear homepage cache when models are updated
     */
    public function saved($model)
    {
        $this->clearCache($model);
    }

    public function deleted($model)
    {
        $this->clearCache($model);
    }

    protected function clearCache($model)
    {
        $modelClass = get_class($model);

        // Clear specific caches based on model type
        switch ($modelClass) {
            case 'App\Models\Slider':
                Cache::forget('homepage.sliders');
                Cache::forget('global.sliders');
                break;
            case 'App\Models\Notice':
                Cache::forget('homepage.notices');
                Cache::forget('global.notices');
                break;
            case 'App\Models\Message':
                Cache::forget('homepage.messages');
                Cache::forget('global.messages');
                break;
            case 'App\Models\NewsEvent':
                Cache::forget('homepage.news_events');
                if (isset($model->slug)) {
                    Cache::forget("news.{$model->slug}");
                }
                break;
            case 'App\Models\Achievement':
                Cache::forget('homepage.achievements');
                if (isset($model->slug)) {
                    Cache::forget("achievement.{$model->slug}");
                }
                break;
            case 'App\Models\WelcomeSection':
                Cache::forget('global.welcome_section');
                break;
            case 'App\Models\MenuCard':
                Cache::forget('global.menu_cards');
                break;
            case 'App\Models\Menu':
                Cache::forget('global.menus');
                break;
            case 'App\Models\SidebarWidget':
                Cache::forget('global.sidebar_widgets');
                break;
            case 'App\Models\ImportantLink':
                Cache::forget('global.important_links');
                break;
            case 'App\Models\LocationMap':
                Cache::forget('global.location_map');
                break;
            case 'App\Models\Setting':
                Cache::forget('global.settings');
                break;
            case 'App\Models\ThemeSetting':
                Cache::forget('global.theme_settings');
                Cache::forget('global.settings'); // Since we merge theme settings into settings
                break;
            case 'App\Models\HeaderSetting':
                Cache::forget('global.header_settings');
                break;
            case 'App\Models\FooterSetting':
                Cache::forget('global.footer_settings');
                break;
        }
    }
}
