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
                break;
            case 'App\Models\Notice':
                Cache::forget('homepage.notices');
                break;
            case 'App\Models\Message':
                Cache::forget('homepage.messages');
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
        }
    }
}
