<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\RequestLoggerMiddleware;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::group([

    'middleware' => ['api','App\Http\Middleware\RequestLoggerMiddleware'],
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('register', 'AuthController@register');
// ------------------------------------------------------------------------------------
//          Subscription Routes
// ------------------------------------------------------------------------------------
    Route::get('subscribe/{token}', 'SubscriptionController@subscribe');
    Route::get('userSubscribe', 'SubscriptionController@userSubscribe');
// ------------------------------------------------------------------------------------
//          UnSubscribe Routes
// ------------------------------------------------------------------------------------
    Route::get('unsubscribe/{token}', 'SubscriptionController@unsubscribe');
    Route::get('userUnubscribe', 'SubscriptionController@userUnubscribe');
// ------------------------------------------------------------------------------------
//          Callback Route
// ------------------------------------------------------------------------------------
    Route::get('subscription/{id}', 'SubscriptionController@getSubscription');
    
});
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
