<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\Companycat;
use App\Models\Category;
use App\Models\Userimages;
use App\Models\Pages;

use Validator;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth'); 
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   
        $user = Auth::user();

        $section = array();
        $page_slug = "profile";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 

        $company = Companycat::select('name')->Where('id', $user->company_id)->first(); 
        
        return view('user.profile',compact('section','user','company') );
    }
     
    public function edit(Request $request, $id){

        $user = Auth::user();
        $userimages = Userimages::Where('id', $id)->Where('user_id', $user->id)->first();
         

        $values = array();
        $values['id'] = $userimages->id; 
        $values['title'] = $userimages->title; 
        $values['category'] = $userimages->category;
        $values['location'] = $userimages->location;
        $values['description'] = $userimages->description;
        $values['photo'] = $userimages->photo;
        $values['crop_photo'] = $userimages->crop_photo;
        $values['photo_models'] = $userimages->photo_models;
        $values['photo_iso'] = $userimages->photo_iso;
        $values['photo_aperture'] = $userimages->photo_aperture;
        $values['photo_exposure'] = $userimages->photo_exposure;
        $category = Category::orderBy( 'id', 'ASC')->get();
        return view('user.uploadImage',compact('category','values') );
    }
    public function editProfile()
    {
        $user = \Auth::user();
        $company = Companycat::orderBy( 'name', 'ASC')->get();
        return view('user.edit-profile', compact('user','company'));
    }

    public function accountInfoStore(Request $request)
    {
        /*$request->validateWithBag('account', [
            'name' => ['required', 'string', 'max:255'], 
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email,'.\Auth::user()->id],
            'employe_id' => ['required', 'string', 'max:255'],
            'company_id' => ['required', 'string', 'max:255'],
            'office_email' => ['required', 'string', 'max:255'],
            'mobile' => ['required', 'string', 'max:255'],
            'location' => ['required', 'string', 'max:255'],
        ]);*/

        $this->validate($request, [
            'name' => ['required', 'string', 'max:255'], 
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email,'.\Auth::user()->id],
            //'employe_id' => ['required', 'string', 'max:255'],
            'company_id' => ['required', 'string', 'max:255'],
            //'office_email' => ['required', 'string', 'max:255'],
            //'mobile' => ['required', 'string', 'max:255'],
            //'location' => ['required', 'string', 'max:255'],
            //'department' => ['required', 'string', 'max:255'],
            'city' => ['required', 'string', 'max:255'],
         ]);


        $user = \Auth::user()->update($request->except(['_token']));
        if ($user) {
            $message = "Account updated successfully.";
            return redirect()->route('home')->with('message', $message);
        } else {
            $message = "Error while saving. Please try again.";
            return redirect()->route('home')->with('message', $message);
        }
    }
    public function accountLinkStore(Request $request){

        $this->validate($request, [ 
            'type' => ['required', 'string' ],
            'link' => ['required', 'string' ],
         ]); 

        //$user = \Auth::user()->update($request->except(['_token']));
         $user = \Auth::user()->update(
                [
                    $request->type =>  $request->input('link') ,
                ]);
        if ($user) {
            $message = "Link Save successfully.";
            return redirect()->route('home')->with('message', $message);
        } else {
            $message = "Error while saving. Please try again.";
            return redirect()->route('home')->with('message', $message);
        }
    }
    public function changePasswordStore(Request $request)
    {   
        $this->validate($request, [
            'old_password' => ['required'],
            'new_password' => ['required'],
            'confirm_password' => ['required', 'same:new_password'],
         ]);

        /*$validator = \Validator::make($request->all(), [
            'old_password' => ['required'],
            'new_password' => ['required'],
            'confirm_password' => ['required', 'same:new_password'],
        ]);
        $temp=true;*/

        if (! Hash::check($request->input('old_password'), \Auth::user()->password)) {
                  $temp=false;
                return redirect()->back()->with('error', 'Old password is incorrect.x');
                exit;
                /*$validator->errors()->add(
                    'errors', 'Old password is incorrect.'
                );*/
            }
         


        $user = \Auth::user()->update([
                    'password' => Hash::make($request->input('new_password')),
                ]);
                if ($user) {
                    $message = "Password updated successfully.";
                    return redirect()->route('home')->with('message', $message);
                } else {
                    $message = "Error while saving. Please try again.";
                    return redirect()->back()->with('error', $message);
                } 
        /*$validator->after(function ($validator) use ($request) {
            if ($validator->failed()){
                return;
                exit;
            } 

            if (! Hash::check($request->input('old_password'), \Auth::user()->password)) {
                  $temp=false;
                return redirect()->back()->with('error', 'Old password is incorrect.x');
                exit;
                /*$validator->errors()->add(
                    'errors', 'Old password is incorrect.'
                );* /
            }
            if($temp){
                   
                $validator->validateWithBag('password');
                $user = \Auth::user()->update([
                    'password' => Hash::make($request->input('new_password')),
                ]);
                if ($user) {
                    $message = "Password updated successfully.";
                    return redirect()->route('home')->with('message', $message);
                } else {
                    $message = "Error while saving. Please try again.";
                    return redirect()->back()->with('error', $message);
                } 
            }

        });
        return redirect()->back()->with('error', 'Old password is incorrect.5');*/
    }
     
}
