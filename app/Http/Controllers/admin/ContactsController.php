<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Models\Contacts; 

class ContactsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //return view('admin.home');
    }
    public function contacts(){
         
        return view('admin.contacts' );
    }
    public function getContacts(Request $request){

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
        $totalRecords = Contacts::select('count(*) as allcount')->count();
        $totalRecordswithFilter = Contacts::select('count(*) as allcount')
                                ->orWhere('name', 'like', '%' .$searchValue . '%')
                                ->orWhere('email', 'like', '%' .$searchValue . '%')
                                ->orWhere('mobile', 'like', '%' .$searchValue . '%')
                                ->orWhere('company_name', 'like', '%' .$searchValue . '%')
                                ->orWhere('message', 'like', '%' .$searchValue . '%')->count();

        // Fetch records 
                                $columnName  = ($columnName=="action")?"id":$columnName;
        $records = Contacts::orderBy($columnName,$columnSortOrder)
               ->orWhere('contacts.name', 'like', '%' .$searchValue . '%')
               ->orWhere('contacts.email', 'like', '%' .$searchValue . '%')
               ->orWhere('contacts.mobile', 'like', '%' .$searchValue . '%')
               ->orWhere('contacts.company_name', 'like', '%' .$searchValue . '%')
               ->orWhere('contacts.message', 'like', '%' .$searchValue . '%')
              ->select('contacts.*')
              ->skip($start)
              ->take($rowperpage)
              ->get();

        $data_arr = array();

        foreach($records as $key => $record){ 

            $name = $record->name;
            $email = $record->email;
            $mobile = $record->mobile;
            $company_name = $record->company_name;
            $message = $record->message;

           $data_arr[] = array( 
                
               "name" => $name,
                "email" => $email,
                "mobile" => $mobile,
                "company_name" => $company_name,
                "message" => $message,
                "action" => '<a href="'.route('contacts.destroy',$record->id).'"  title="Remove" onClick="return confirm('."'Are you sure you want to delete?'".');" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>'
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
    public function destroy(Request $request){
         
        $Contacts = Contacts::where('id', $request->id) ; 
        $Contacts->delete();
        return redirect()->route('contacts')
                        ->with('success','Contact deleted successfully');
    }  
}
