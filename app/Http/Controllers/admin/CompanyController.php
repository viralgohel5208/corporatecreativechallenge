<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller\admin;
use Illuminate\Http\Request;

use App\Models\Companycat;
use App\Models\Company;

class CompanyController extends Controller
{
    public function index(){
        $company = Companycat::orderBy( 'name', 'ASC')->get();
        return view('admin.company',compact('company'));
    }
    public function addcompany(){  

        $values = array();
        $values['id'] = ''; 
        $values['name'] = '';  

        return view('admin.company-add',compact('values'));
    }
    public function edit(Request $request, $id)
    {
        $judges_details = Companycat::where('id', $id)->first();

        $values = array();
        $values['id'] = $judges_details->id; 
        $values['name'] = $judges_details->name;   
         
        return view('admin.company-add',compact('values'));

    }
    public function company(Request $request){
        if(isset($request->id)){

            $request->validate([ 
                'name' => 'required', 
                 
            ]);
        }else{
            $request->validate([ 
                'name' => 'required', 
                //'file' => 'required|mimes:png,jpg,jpeg|max:5120',
            ]);
        }
        try{


             
            $data = [ 
                'name'=> $request->name,  
            ];

            if(isset($request->id)){
                $company = Companycat::where('id', $request->id) ; 
                $company->update($data);
            }else
            {
                Companycat::create($data);
            } 
            
            return redirect()->route('company')->with('success','Company Details Edited/Added Successfully!!');
        }catch(\Exception $e){ 
            //echo  $e->getMessage();
            return redirect()->back()->with('error','Something goes wrong while uploading file!');
        } 


        
    }
    public function destroy(Request $request, $id)
    {
        $companycat = Companycat::where('id', $id);


        $image = $companycat->first();

        if(file_exists($image->image)){
            
            @unlink($image->image);
        } 
        $companycat->delete();
        return redirect()->route('company')
                        ->with('success','Company deleted successfully');
    }


    public function companyRegistration(){
        return view('admin.company-register' );
    }
    public function getCompanydata(Request $request){

        ## Read value
        $draw = $request->get('draw');
        $start = $request->get("start");
        $rowperpage = $request->get("length"); // Rows display per page

        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value
 
        // name records
        $totalRecords = Company::select('count(*) as allcount')->count();
        $totalRecordswithFilter = Company::select('count(*) as allcount')
                                ->orWhere('name', 'like', '%' .$searchValue . '%')
                                ->orWhere('contact_name', 'like', '%' .$searchValue . '%')
                                ->orWhere('email', 'like', '%' .$searchValue . '%')
                                ->orWhere('headcount', 'like', '%' .$searchValue . '%')
                                ->orWhere('department', 'like', '%' .$searchValue . '%')->count();

                                 

        // Fetch records
        $records = Company::orderBy($columnName,$columnSortOrder)
               ->orWhere('companies.name', 'like', '%' .$searchValue . '%')
               ->orWhere('companies.contact_name', 'like', '%' .$searchValue . '%')
               ->orWhere('companies.email', 'like', '%' .$searchValue . '%')
               ->orWhere('companies.headcount', 'like', '%' .$searchValue . '%')
               ->orWhere('companies.department', 'like', '%' .$searchValue . '%')
              ->select('companies.*')
              ->skip($start)
              ->take($rowperpage)
              ->get();

        $data_arr = array();

        foreach($records as $record){ 

            $name = $record->name;
            $contact_name = $record->contact_name;
            $email = $record->email;
            $headcount = $record->headcount;
            $department = $record->department;
            $image = $record->image;


           $data_arr[] = array( 
               "name" => $name,
                "contact_name" => $contact_name,
                "email" => $email,
                "headcount" => $headcount,
                "department" => $department,
                "image" => "<img src='".config('app.url').'/'.$image ."' width='150px;' >"

           );
        }

        $response = array(
           "draw" => intval($draw),
           "iTotalRecords" => $totalRecords,
           "iTotalDisplayRecords" => $totalRecordswithFilter,
           "aaData" => $data_arr
        );

        return response()->json($response); 
    }
}
