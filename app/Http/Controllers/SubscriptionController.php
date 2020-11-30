<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use JWTFactory;
use Validator;
use App\Subscription;


class SubscriptionController extends Controller {

    /**
     * Create a new SubscriptionController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api',['except' => ['userSubscribe','userUnubscribe','getSubscription']]);
    }

    /**
     * 
     */
	public function subscribe($token) {
        $payload = JWTAuth::parseToken()->getPayload();

        $sub = new Subscription();
        $sub->user_id = $payload->get('userId');
        $sub->MSISDN = $payload->get('MSISDN');
        $sub->operator_id = $payload->get('operator_id');
        $sub->status = 'PENDING';
        $sub->save();

        return response()->json([
            'success' => true,
            'data' => $sub
        ], 200);
    }

    /**
     * 
     */
	public function userSubscribe(Request $request) {
        $validator = Validator::make(request()->all(), 
                      [
                      'userId' => 'required',
                      'MSISDN' => ['required','regex:/^961([0-9]{8}|3[0-9]{6})$/'], // Lebanese International MSISDN format
                      'Operator_id' => 'required',  
                     ]);  

         if ($validator->fails()) {  
               return response()->json(['error'=>$validator->errors()], 401); 
            }

        $customClaims = [
            'aud'=> "localhost:8000",
            'sub'=> "1",
            'userId'=> $request->userId,
            'MSISDN'=> $request->MSISDN,
            'operator_id'=> $request->Operator_id,
        ];
        $factory = JWTFactory::customClaims($customClaims);
        $payload = $factory->make();
        $token = JWTAuth::encode($payload);
        return redirect('/api/auth/subscribe/'.$token)->header('Authorization', 'Bearer ' . $token->get());
    }

    /**
     * 
     */
    public function unsubscribe($token) {
        $payload = JWTAuth::parseToken()->getPayload();

        $subscription = Subscription::find($payload->get('subscription_id'));

        if($subscription) { // subscription found in DB update it
            $subscription->status = 'unsubscribed';
            $subscription->save();
            return response()->json([
                'success' => true,
                'data' => $subscription
            ], 200);
        }
        
        return response()->json(['error'=>'Error Reading Subscription'], 401); 
    }

    /**
     * 
     */
	public function userUnubscribe(Request $request) {
        $validator = Validator::make(request()->all(), 
                      [ 
                      'subscription_id' => 'required',
                     ]);  

         if ($validator->fails()) {  
               return response()->json(['error'=>$validator->errors()], 401); 
            }

        $customClaims = [
            'aud'=> "localhost:8000",
            'sub'=> "1",
            'subscription_id'=> $request->subscription_id,
        ];
        $factory = JWTFactory::customClaims($customClaims);
        $payload = $factory->make();
        $token = JWTAuth::encode($payload);
        return redirect('/api/auth/unsubscribe/'.$token)->header('Authorization', 'Bearer ' . $token->get());
    }

    /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function getSubscription($id) {
        $subscription = subscription::find($id);

        return response()->json([
            'success' => true,
            'data' => $subscription
        ], 200);
        
    }

}
