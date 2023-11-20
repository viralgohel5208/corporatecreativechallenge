<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller\admin;
use Illuminate\Http\Request;

use App\Models\Faqs;

class FaqsController extends Controller
{
    public function index(){ 
        $faqs = Faqs::orderBy( 'id', 'DESC')->get(); 

        $values = array();
        $values['id'] = '';
        $values['question'] = "";
        $values['answer'] = "";

        return view('admin.faqs.index',compact('faqs','values'));
    }

    public function Faqs(Request $request){
        $request->validate([ 
            'question' => 'required',
            'answer' => 'required',
        ]);

        try{ 
            $data = [ 
                    'question'=> $request->question,
                    'answer'=> $request->answer,
                ];

            if(isset($request->id)){
                $faqs = Faqs::where('id', $request->id) ; 
                $faqs->update($data);
            }else
            {
                Faqs::create($data);
            } 
            
            return redirect()->route('faqs')->with('success','Faqs Edited/Added Successfully!!');
        }catch(\Exception $e){ 
            echo  $e->getMessage();
            //return redirect()->back()->with('error','Something goes wrong while uploading file!');
        }
    }

    public function edit(Request $request, $id)
    {
        $faqs_details = Faqs::where('id', $id)->first();

        $values = array();
        $values['id'] = $faqs_details->id; 
        $values['question'] = $faqs_details->question;
        $values['answer'] = $faqs_details->answer;


        $faqs = Faqs::orderBy( 'id', 'DESC')->get(); 
        return view('admin.faqs.index',compact('faqs','values'));

    }
    public function destroy(Request $request, $id)
    {
        $faqs = Faqs::where('id', $id);
        
        $faqs->delete();
        return redirect()->route('faqs')
                        ->with('success','Faqs deleted successfully');
    }
}
