<?php

namespace App\Providers;

use App\Repositories\AutoMessageSetting\AutoMessageSettingRepository;
use App\Repositories\AutoMessageSetting\AutoMessageSettingRepositoryInterface;
use App\Repositories\Messenger\MessengerRepository;
use App\Repositories\Messenger\MessengerRepositoryInterface;
use App\Repositories\Sms\SmsRepository;
use App\Repositories\Sms\SmsRepositoryInterface;
use App\Repositories\Store\StoreRepository;
use App\Repositories\Store\StoreRepositoryInterface;
use App\Repositories\Zalo\ZaloRepository;
use App\Repositories\Zalo\ZaloRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    protected static $repositories = [

    ];
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        foreach (static::$repositories as $repository) {
            $this->app->bind($repository[0], $repository[1]);
        }
    }
}
