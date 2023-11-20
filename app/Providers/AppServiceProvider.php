<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use App\Models\Settings;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*', function ($view) {
            $settingsData = Settings::getAll();

            $globalSettings = array();
            foreach ($settingsData as $key => $value) {
                 $globalSettings[$value->key] = $value->value;
            }
 

            $view->with(compact('globalSettings'));
        });
    }
}
