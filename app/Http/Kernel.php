<?php

namespace sgd\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
        \sgd\Http\Middleware\TrimStrings::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            \sgd\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            // \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \sgd\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],

        'api' => [
            'throttle:60,1',
            'bindings',
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'auth' => \Illuminate\Auth\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \sgd\Http\Middleware\RedirectIfAuthenticated::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
		
		/*Middleware para administración de roles*/
		'admin' => \sgd\Http\Middleware\Admin::class,
		'oficinaPartes' => \sgd\Http\Middleware\OficinaPartes::class,
		'secretariaConvenios' => \sgd\Http\Middleware\SecretariaConvenios::class,
		'proveedor' => \sgd\Http\Middleware\Proveedor::class,
		'convenios' => \sgd\Http\Middleware\Convenios::class,
		'referenteTecnico' => \sgd\Http\Middleware\ReferenteTecnico::class,
		'jefeRt' => \sgd\Http\Middleware\JefeRT::class,
		'contabilidad' => \sgd\Http\Middleware\Contabilidad::class,
		'tesoreria' => \sgd\Http\Middleware\Tesoreria::class,
		'abastecimiento' => \sgd\Http\Middleware\Abastecimiento::class,
        'visualizador' => \sgd\Http\Middleware\Abastecimiento::class,
    ];
}
