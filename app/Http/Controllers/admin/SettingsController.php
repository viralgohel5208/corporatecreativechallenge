<?php

namespace App\Http\Controllers\admin;


use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\Settings;

class SettingsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {   

        $settings = Settings::getAll(); 
        return view('admin.setting.index',["settings"=>$settings]);
    }

    public function store(Request $request)
    {
       
        foreach($request->value as $key => $val){ 
            Settings::set($key, $val);
        }  
        return redirect()->back()->with('status', 'Settings has been saved.');
    }


    public function accountInfo()
    {
        $user = \Auth::user();
        return view('auth.setting.myAccount', compact('user'));
    }
    public function accountInfoStore(Request $request)
    {
        $request->validateWithBag('account', [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email,'.\Auth::user()->id],
        ]);
        $user = \Auth::user()->update($request->except(['_token']));
        if ($user) {
            $message = "Account updated successfully.";
        } else {
            $message = "Error while saving. Please try again.";
        }
        return redirect()->route('admin.account.info')->with('account_message', $message);
    }
    public function changePasswordStore(Request $request)
    {
        $validator = \Validator::make($request->all(), [
            'old_password' => ['required'],
            'new_password' => ['required'],
            'confirm_password' => ['required', 'same:new_password'],
        ]);
        $validator->after(function ($validator) use ($request) {
            if ($validator->failed()) return;
            if (! Hash::check($request->input('old_password'), \Auth::user()->password)) {
                $validator->errors()->add(
                    'old_password', 'Old password is incorrect.'
                );
            }
        });
        $validator->validateWithBag('password');
        $user = \Auth::user()->update([
            'password' => Hash::make($request->input('new_password')),
        ]);
        if ($user) {
            $message = "Password updated successfully.";
        } else {
            $message = "Error while saving. Please try again.";
        }
        return redirect()->route('admin.account.info')->with('password_message', $message);
    }

}
