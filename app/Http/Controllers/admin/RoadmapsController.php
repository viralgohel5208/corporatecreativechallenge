<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller\admin;
use Illuminate\Http\Request;

use App\Models\Roadmaps;

class RoadmapsController extends Controller
{
    public function index(){ 
        $roadmaps = Roadmaps::orderBy( 'id', 'DESC')->get(); 

        $values = array();
        $values['id'] = '';
        $values['date'] = "";
        $values['details'] = "";

        return view('admin.roadmaps.index',compact('roadmaps','values'));
    }

    public function Roadmaps(Request $request){
        $request->validate([ 
            'date' => 'required',
            'details' => 'required',
        ]);

        try{ 
            $data = [ 
                    'date'=> $request->date,
                    'details'=> $request->details,
                ];

            if(isset($request->id)){
                $roadmaps = Roadmaps::where('id', $request->id) ; 
                $roadmaps->update($data);
            }else
            {
                Roadmaps::create($data);
            } 
            
            return redirect()->route('roadmaps')->with('success','Roadmap Details Edited/Added Successfully!!');
        }catch(\Exception $e){ 
            //echo  $e->getMessage();
            return redirect()->back()->with('error','Something goes wrong while uploading file!');
        }
    }

    public function edit(Request $request, $id)
    {
        $roadmaps_details = Roadmaps::where('id', $id)->first();

        $values = array();
        $values['id'] = $roadmaps_details->id; 
        $values['date'] = $roadmaps_details->date;
        $values['details'] = $roadmaps_details->details;


        $roadmaps = Roadmaps::orderBy( 'id', 'DESC')->get(); 
        return view('admin.roadmaps.index',compact('roadmaps','values'));

    }
    public function destroy(Request $request, $id)
    {
        $roadmaps = Roadmaps::where('id', $id);
        
        $roadmaps->delete();
        return redirect()->route('roadmaps')
                        ->with('success','Roadmap Details deleted successfully');
    }
}
