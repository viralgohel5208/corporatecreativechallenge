<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;

use App\Models\Companycat;
use App\Models\Pages;
class AdminLoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
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
        //$this->middleware('guest')->except('logout');
        $this->middleware('guest:admin')->except('logout');
    }
    public function showLoginForm()
    {   
        $section = array();
        $page_slug = "login-register";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 
        $company = Companycat::orderBy( 'name', 'ASC')->get();
        return view('auth.login',compact('section','company')) ;
    }
    public function showAdminLoginForm()
    {
        return view('auth.adminlogin', ['route' => route('admin.login-view'), 'title'=>'Admin']);
    }
    public function adminLogin(Request $request)
    {
        $this->validate($request, [
            'email'   => 'required|email',
            'password' => 'required|min:6'
        ]);

        if (\Auth::guard('admin')->attempt($request->only(['email','password']), $request->get('remember'))){
            return redirect()->intended('/corporate-admin/dashboard');
        }

        return back()->withInput($request->only('email', 'remember'));
    }
}
