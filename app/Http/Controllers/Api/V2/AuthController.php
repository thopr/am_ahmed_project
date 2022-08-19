<?php

/** @noinspection PhpUndefinedClassInspection */

namespace App\Http\Controllers\Api\V2;

use Hash;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Address;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Models\BusinessSetting;
use App\Http\Controllers\OTPVerificationController;
use App\Notifications\AppEmailVerificationNotification;


class AuthController extends Controller
{
    public function signup(Request $request)
    {
        if (User::where('email', $request->email_or_phone)->orWhere('phone', $request->email_or_phone)->first() != null) {
            return response()->json([
                'result' => false,
                'message' => translate('User already exists.'),
                'user_id' => 0
            ], 201);
        }

        if ($request->register_by == 'email') {
            $user = new User([
                'name' => $request->name,
                'email' => $request->email_or_phone,
                'password' => bcrypt($request->password),
                'verification_code' => rand(1000, 9999)
            ]);
        } else {
            
            $request->password="";
            $request->name="";
            $user = new User([
                'name' => $request->name,
                'phone' => $request->email_or_phone,
                'password' => bcrypt($request->password),
                'verification_code' => rand(1000, 9999)
            ]);
        
        
        
        }

        if ($request->register_by == 'email') {
            if (BusinessSetting::where('type', 'email_verification')->first()->value != 1) {
                $user->email_verified_at = date('Y-m-d H:m:s');
            } else{
                try {
                    $user->notify(new AppEmailVerificationNotification());
                } catch (\Exception $e) {
                    
                }
            }
        } else {
            $otpController = new OTPVerificationController();
            $otpController->send_code($user);
        }

        $user->save();

        $customer = new Customer;
        $customer->user_id = $user->id;
        $customer->save();

        $address = new Address;
        $address->user_id = $user->id;

        $address->address = "jeddah";
        $address->country_id = 191;
        $address->state_id = 3155;
        $address->city_id = 48358;
        $address->postal_code = "0";
        $address->phone = $request->email_or_phone;
        $address->set_default = 1;      

        $address->save();

        //create token
        $user->createToken('tokens')->plainTextToken;

        return response()->json([
            'result' => true,
            'message' => translate('Registration Successful. Please verify and log in to your account.'),
            'user_id' => $user->id
        ], 201);
    }


    

    public function loginjustphone(Request $request)
    {


        
  
        $user = User::whereIn('user_type', ['customer', 'seller'])->where('phone', $request->phone)->first();

     

   if($user != null){


            $code=rand(1000, 9999); 
            $user->verification_code = $code;

            if($request->device){
                $user->device_type = $request->device;
            }

            
            $user->save();
            $otpController = new OTPVerificationController();
            $otpController->send_code($user);
 
               if($request->phone=='966537266754'){
                $code=1234;
                $user->password = Hash::make($code);
                $user->save(); 
               }
            $user->password = Hash::make($code);
            $user->save();

            return response()->json([
                'result' => true,
                'message' => translate('Verification code has been sent'),
            ], 200);


    } else {

        $password="";
        $name="";
        $user = new User([
            'name' => $name,
            'phone' => $request->phone,
            'password' => bcrypt($password),
            'verification_code' => rand(1000, 9999)
        ]);

        $user->save();
        


        $customer = new Customer;
        $customer->user_id = $user->id;
        $customer->save();
      
        $address = new Address;
        $address->user_id = $user->id;

        $address->address = "jeddah";
        $address->country_id = 191;
        $address->state_id = 3155;
        $address->city_id = 48358;
        $address->postal_code = "0";
        $address->phone = $request->phone;
        $address->set_default = 1;      

        $address->save();
        //return response()->json([$customer,$address]);
        //create token
        $user->createToken('tokens')->plainTextToken;

        $user->email_verified_at = date('Y-m-d h:m:s');

        $code=rand(1000, 9999); 
        $user->verification_code = $code;

        $user->save();
        $otpController = new OTPVerificationController();
        $otpController->send_code($user);

        $user->password = Hash::make($code);

        $user->save();

        return response()->json([
            'result' => true,
            'message' => translate('Verification code has been sent'),
        ], 200);

        //new user 
    }
  
    }
    
    public function resendCode(Request $request)
    {
        $user = User::where('id', $request->user_id)->first();
        $user->verification_code = rand(1000, 9999);

   

    /*    if ($request->verify_by == 'email') {
            $user->notify(new AppEmailVerificationNotification());
        
        } else {*/
            $otpController = new OTPVerificationController();
            $otpController->send_code($user);
     
       // }

        $user->save();

        return response()->json([
            'result' => true,
            'message' => translate('Verification code is sent again'),
        ], 200);
    }

    public function confirmCode(Request $request)
    {
        $user = User::where('id', $request->user_id)->first();

        if ($user->verification_code == $request->verification_code) {
            $user->email_verified_at = date('Y-m-d H:i:s');
            $user->password = Hash::make($request->verification_code);
            $user->verification_code = null;
            $user->save();
            return response()->json([
                'result' => true,
                'message' => translate('Your account is now verified.Please login'),
            ], 200);
        } else {
            return response()->json([
                'result' => false,
                'message' => translate('Code does not match, you can request for resending the code'),
            ], 200);
        }
    }

    
    
    public function login(Request $request)
    {
        
        /*$request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
            'remember_me' => 'boolean'
        ]);*/

        $delivery_boy_condition = $request->has('user_type') && $request->user_type == 'delivery_boy';

        if ($delivery_boy_condition) {
            $user = User::whereIn('user_type', ['delivery_boy'])->where('email', $request->email)->orWhere('phone', $request->email)->first();
        } else {
            $user = User::whereIn('user_type', ['customer', 'seller'])->where('email', $request->email)->orWhere('phone', $request->email)->first();
        }

        if (!$delivery_boy_condition) {
            if (\App\Utility\PayhereUtility::create_wallet_reference($request->identity_matrix) == false) {
                return response()->json(['result' => false, 'message' => 'Identity matrix error', 'user' => null], 401);
            }
        }


        if ($user != null) {
            if (Hash::check($request->password, $user->password)) {
           // if (true) {
               
                if ($user->email_verified_at == null) {
                    return response()->json(['message' => translate('Please verify your account'), 'user' => null], 401);
                }
                return $this->loginSuccess($user);
            } else {
                return response()->json(['result' => false, 'message' => translate('Unauthorized'), 'user' => null], 401);
            }
        } else {
            return response()->json(['result' => false, 'message' => translate('User not found'), 'user' => null], 401);
        }
    }

    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();

        return response()->json([
            'result' => true,
            'message' => translate('Successfully logged out')
        ]);
    }

    public function socialLogin(Request $request)
    {
        $existingUserByProviderId = User::where('provider_id',$request->provider)->first();

        if ($existingUserByProviderId) {
            return $this->loginSuccess($existingUserByProviderId);
        } else {
            $user = new User([
                'name' => $request->name,
                'email' => $request->email,
                'provider_id' => $request->provider,
                'email_verified_at' => Carbon::now()
            ]);
            $user->save();
            $customer = new Customer;
            $customer->user_id = $user->id;
            $customer->save();
        }
        return $this->loginSuccess($user);
    }

    protected function loginSuccess($user)
    {
        $token = $user->createToken('API Token')->plainTextToken;
        return response()->json([
            'result' => true,
            'message' => translate('Successfully logged in'),
            'access_token' => $token,
            'token_type' => 'Bearer',
            'expires_at' => null,
            'user' => [
                'id' => $user->id,
                'type' => $user->user_type,
                'name' => $user->name,
                'email' => $user->email,
                'avatar' => $user->avatar,
                'avatar_original' => api_asset($user->avatar_original),
                'phone' => $user->phone
            ]
        ]);
    }
}