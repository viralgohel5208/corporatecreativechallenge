<?php

namespace App\Http\Controllers\admin;


use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Models\Pages;
    

class PagesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function page()
    {   
        $pages = Pages::groupBy('page_id')->orderBy("p_ordr","ASC")->get();
        return view('admin.pages.pages',compact('pages'));
    }

    public function pageEdit($id)
    {   
        $page_name = ucfirst( str_replace("-"," ", $id));
        $sections = Pages::select('*')->Where('page_id', $id)->orderBy("ordr","ASC")->get();// ($id);
        return view('admin.pages.editPage', compact('sections','page_name'));
    }

    public function pageUpdate(Request $request, $id)
    {    
        $page_name = ucfirst( str_replace("-"," ", $id));
        //echo $id;
        //dd($request->all());

        $input = $request->all();
        if(isset( $input['fields']) && !empty($input['fields'])){
            foreach($input['fields'] as $key => $field){
                $update = array();
                
                if($field['type']=="text-area")
                {
                    $update['value'] = $field['value']; 
                }elseif($field['type']=="ck-editor"){
                    $update['value'] = $field['value']; 
                }elseif($field['type']=="text"){
                    $update['value'] = $field['value']; 

                }elseif($field['type']=="image" || $field['type']=="video"){

                    if ($images = $request->file()) {  
                        foreach($images as $image){
                            if(isset($image[$key]['value'])){

                                $img = $image[$key]['value'] ; 

                                $destinationPath = 'uploads/';
                                //$profileImage = str_random(5)."-".date('YmdHis') ."-".str_random(3).".".$img->getClientOriginalExtension();
                                $profileImage =  rand()."_".date('YmdHis') ."_".$img->getClientOriginalName();
                                $img->move($destinationPath, $profileImage);
                                $update['value'] = $profileImage; 

                                if(isset($field['oldimg']) && file_exists( 'uploads/' . $field['oldimg'] )){
                                    @unlink( 'uploads/' . $field['oldimg'] );
                                }
                            }
                        } 
                    }  
                } 
                $sections = Pages::where('page_id', $id)->where('section_name', $key); 
                $sections->update($update);
            }
        }
        //return redirect()->back()->with('status','Student Updated Successfully');
        //return redirect()->route('editpage',['id'=>$id])->with('success', 'Welcome to ItSolutionStuff Tutorials!');
        return redirect()->route('pages')->with('success', $page_name.' page Updated Successfully.');
    }

}
