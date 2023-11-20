<?php
namespace App\Http\Controllers; 

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

use App\Models\Pages;
use App\Models\Faqs;
use App\Models\Roadmaps;
use App\Models\Prizes;
use App\Models\Pastwinners;
use App\Models\Category;
use App\Models\Imageslider;
use App\Models\Alphaclassroom;  
use App\Models\Companycat; 
use App\Models\User; 
use App\Models\Voting; 
use App\Models\Shopproduct;
use App\Models\Shopcategory;
use App\Models\Shoporder;
use App\Models\Exhibitedphoto;
use DB;
use Mail;
use PDF;

class HomeController extends Controller
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
        //return view('email.registerThankyou');
        $page_slug = "home";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 
        
        $faqs = Faqs::orderBy( 'id', 'ASC')->get();
        $prizes = Prizes::orderBy( 'id', 'ASC')->get();

        return view('index', compact('section','faqs','prizes')); 
    }
    public function privacyPolicy(){
        $page_slug = "privacy-policy";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 

        return view('privacy-policy', compact('section')); 
    }
    public function termsConditions(){
        $page_slug = "terms-and-conditions";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 

        return view('terms-conditions', compact('section')); 
    }
     public function faq(){
        $page_slug = "faq";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 
        $faqs = Faqs::orderBy( 'id', 'ASC')->get();
        return view('faq', compact('section','faqs')); 
    }
    public function prizes(){
        $page_slug = "prize";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 
        $prizes = Prizes::orderBy( 'id', 'ASC')->get();
        return view('prizes', compact('section','prizes')); 
    }
    public function howitworks(){
        $page_slug = "how-it-works";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        }  
        return view('how-it-works', compact('section')); 
    }
    public function roadmap(){
        $page_slug = "road-map";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        } 
        $roadmaps = Roadmaps::orderBy( 'date', 'ASC')->get();
        return view('road-map', compact('section','roadmaps')); 
    }
    public function ourcategories(){
        $page_slug = "our-categories";
        $sections = Pages::select('*')->Where('page_id', $page_slug)->get(); 
        $section = array();
        foreach ($sections as $key => $value) {
             $section[$value->section_name] = $value->value;
        }  
        return view('our-categories', compact('section')); 
    }
 
}
