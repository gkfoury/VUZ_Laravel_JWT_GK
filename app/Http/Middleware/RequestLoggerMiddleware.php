<?php

namespace App\Http\Middleware;

use Closure;
use App\LogEntry;

class RequestLoggerMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next) {
        $response = $next($request);
        $logEntry = new LogEntry();

        $logEntry->REQUEST_START_TIME = date('Y-m-d H:i:s', LARAVEL_START);
        $logEntry->URL = json_encode($request->getUri());
        $logEntry->METHOD = json_encode($request->getMethod());
        $logEntry->REQUEST_HEADER = json_encode($request->header());
        $logEntry->REQUEST_BODY = json_encode($request->all());
        $logEntry->RESPONSE =  json_encode($response->getContent());

        $logEntry->save();
        return $response;
    }

    // public function terminate(Request $request, Response $response) {
    //     $logEntry = new LogEntry();

    //     $logEntry->REQUEST_START_TIME = date('Y-m-d H:i:s', LARAVEL_START);
    //     $logEntry->URL = $request->fullUrl();
    //     $logEntry->METHOD = $request->getMethod();
    //     $logEntry->REQUEST_HEADER = $request->header();
    //     $logEntry->REQUEST_BODY = $request->all();
    //     $logEntry->RESPONSE =  json_decode($request->getContent(), true);

    //     $logEntry->save();
    // }
}
