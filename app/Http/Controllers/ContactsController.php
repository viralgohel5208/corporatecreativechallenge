<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contacts;
use App\Models\Pages; 

class ContactsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //return view('index');
    }
    public function createForm(Request $request) {

        $page_slug = "contact-us";
        $page_name = ucfirst( str_replace("-"," ", $page_slug));
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get();// ($id);
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        }
        return view('contactus', compact('section','page_name'));

    }
    // Store Contact Form data
    public function ContactUsForm(Request $request) {
        // Form validation
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'mobile' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'company_name'=>'required',
            'message' => 'required',
            //'g-recaptcha-response' => 'required|captcha',
         ]);
        //  Store data in database
        Contacts::create($request->all());
        // 
        return back()->with('success', 'We have received your message and would like to thank you for writing to us.');
    }

     
}
