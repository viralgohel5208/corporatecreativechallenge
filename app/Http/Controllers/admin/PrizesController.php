<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller\admin;
use Illuminate\Http\Request;

use App\Models\Prizes;

class PrizesController extends Controller
{
    public function index(){ 
        $prizes = Prizes::orderBy( 'id', 'DESC')->get();  
        return view('admin.prizes.index',compact('prizes'));
    }

    public function Prizes(Request $request){
        if(isset($request->id)){

            $request->validate([ 
                'name' => 'required',
                'first' => 'required',
                'second' => 'required',
                'third' => 'required',
                 
            ]);
        }else{
            $request->validate([ 
                'name' => 'required',
                'first' => 'required',
                'second' => 'required',
                'third' => 'required', 
            ]);
        }
        try{

 
            $data = [ 
                'name'=> $request->name,
                'first'=> $request->first,
                'second'=> $request->second,
                'third'=> $request->third,
                 
            ];

            if(isset($request->id)){
                $prizes = Prizes::where('id', $request->id) ; 
                $prizes->update($data);
            }else
            {
                Prizes::create($data);
            } 
            
            return redirect()->route('prizes')->with('success','Prizes Details Edited/Added Successfully!!');
        }catch(\Exception $e){ 
            echo  $e->getMessage();
            //return redirect()->back()->with('error','Something goes wrong while uploading file!');
        }
    }
    public function addprizes(){  

        $values = array();
        $values['id'] = ''; 
        $values['name'] = '';
        $values['first'] = '';
        $values['second'] = '';
        $values['third'] = ''; 

        return view('admin.prizes.create',compact('values'));
    }
    public function edit(Request $request, $id)
    {
        $prizes_details = Prizes::where('id', $id)->first();

        $values = array();
        $values['id'] = $prizes_details->id; 
        $values['name'] = $prizes_details->name;
        $values['first'] = $prizes_details->first;
        $values['second'] = $prizes_details->second;
        $values['third'] = $prizes_details->third; 


        $prizes = Prizes::orderBy( 'id', 'DESC')->get(); 
        return view('admin.prizes.create',compact('prizes','values'));

    }
    public function destroy(Request $request, $id)
    {
        $prizes = Prizes::where('id', $id); 
        $prizes->delete();
        return redirect()->route('prizes')
                        ->with('success','Prizes Details deleted successfully');
    }
}
