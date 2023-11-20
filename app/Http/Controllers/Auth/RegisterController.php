<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use App\Models\Admin;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

use Illuminate\Support\Str;
use Mail;  
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
        $this->middleware('guest:admin');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255' ,'unique:users'],
            'password' => ['required', 'string', 'min:4', 'confirmed'],
            'company_id' => ['required', 'string', 'max:255'],
           // 'department' => ['required', 'string', 'max:255'],
            'city' => ['required', 'string', 'max:255'],
            //'employe_id' => ['required', 'string', 'max:255'],
            //'office_email' => ['required', 'string', 'max:255'],
            //'mobile' => ['required', 'string', 'max:255'],
            //'location' => ['required', 'string', 'max:255'],
            //'g-recaptcha-response' => 'required|captcha',
            'terms'=>'required'
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        $token = Str::random(64);
        
        $data = [
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'company_id' => $data['company_id'],
            'company_name' => $data['company_name'],
            'department' => $data['department'],
            'employe_id' => $data['employee_id'],
            'city' => $data['city'],
            //'employe_id' => $data['employe_id'],
            //'office_email' => $data['office_email'],
            //'mobile' => $data['mobile'],
            //'location' => $data['location'],
            'token' => $token,
            'email_verified_at'=> date("Y-m-d H:i:s"),
        ];  
        $userdata = User::create($data);
         
        Mail::send('email.registerThankyou', ['token' => $token], function($message) use($data){
              $message->to($data['email']);
              $message->subject('Welcome to Corporate Photography Contest 2023');
        });

        //return redirect("account")->withSuccess('Thank you for registration! You can login now.');
        return $userdata;

    }

    public function verifyAccount($token)
    {   

         
        $verifyUser = User::where('token', $token)->first();
  
        $message = 'Sorry your email cannot be identified.';
  
        if(!is_null($verifyUser) ){
            //$user = $verifyUser->user;
              
            if(!$verifyUser->email_verified_at) {
                $verifyUser->email_verified_at = date("Y-m-d H:i:s");
                $verifyUser->save();
                $message = "Your e-mail is verified. You can now login.";
            } else {
                $message = "Your e-mail is already verified. You can now login.";
            }
        }
  
      return redirect()->route('login')->with('message', $message);
    }
    /*public function showAdminRegisterForm()
    {
        return view('auth.register', ['route' => route('admin.register-view'), 'title'=>'Admin']);
    }

    protected function createAdmin(Request $request)
    {
        $this->validator($request->all())->validate();
        $admin = Admin::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => Hash::make($request['password']),
        ]);
        return redirect()->intended('admin/login');
    }*/
}
