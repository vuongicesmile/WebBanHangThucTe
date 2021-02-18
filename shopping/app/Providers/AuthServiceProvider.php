<?php

namespace App\Providers;


use App\Product;
use App\Services\PermissionGateAndPolicyCheckAccess;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        //Define Permissions
        $permissionGateAndPolicy = new PermissionGateAndPolicyCheckAccess();
        $permissionGateAndPolicy->setGateAndPolicyAcess();
    }


}

