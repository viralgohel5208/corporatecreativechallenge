<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
 
use App\Models\User;
use App\Models\Userimages; 
use App\Models\Companycat;
use App\Models\Voting; 

use DB;

class HomeController extends Controller
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
         
        $user = User::Where('isdelete', '0')->count();
        $company = Companycat::count();
        return view('admin.home',compact('user','company'));
    }
    public function Users()
    {       
        $company_id = (isset($_GET['company_id']) && $_GET['company_id']!="" )?$_GET['company_id']:0;
        /*$users = User::select('users.*','companycats.name as com_name');
        $users = $users->leftJoin('companycats', 'companycats.id', '=', 'users.company_id');
        if( $company_id ){

            $users = $users->Where( 'companycats.id', '=', $_GET['company_id'] );
        }
        $users->Where( 'users.isdelete', '=', 0 );
        $users = $users->orderBy( 'id', 'DESC')->get();*/
       
        $comapnies = Companycat::orderBy( 'name', 'DESC')->get(); 
        return view('admin.users',compact('comapnies','company_id'));
    }
    public function getAjaexUser(Request $request){
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
        $totalRecords = User::select('count(*) as allcount')->count();
        $totalRecordswithFilter = User::select('count(*) as allcount')
                                ->leftJoin('companycats', 'companycats.id', '=', 'users.company_id')
                                
                                ->where(function($query) use ($searchValue) {
                                        $query->orWhere('users.name', 'like', '%' .$searchValue . '%')
                                        ->orWhere('users.email', 'like', '%' .$searchValue . '%')
                                        ->orWhere('companycats.name', 'like', '%' .$searchValue . '%')
                                        ->orWhere('users.location', 'like', '%' .$searchValue . '%');
                                }); 


        $columnName  = ($columnName=="action")?"id":$columnName;
        $records = User::orderBy($columnName,$columnSortOrder)
                ->leftJoin('companycats', 'companycats.id', '=', 'users.company_id')
               ->where(function($query) use ($searchValue) {
                        $query->orWhere('users.name', 'like', '%' .$searchValue . '%')
                        ->orWhere('users.email', 'like', '%' .$searchValue . '%')
                        ->orWhere('companycats.name', 'like', '%' .$searchValue . '%')
                        ->orWhere('users.location', 'like', '%' .$searchValue . '%');
                })
              ->select('users.*','companycats.name as com_name')
              ->Where( 'users.isdelete', '=', 0 );

        $company_id = $request->get('company_id');
        if( $company_id !=""){ 

            $records = $records->Where( 'companycats.id', '=', $company_id);
            $totalRecordswithFilter = $totalRecordswithFilter->Where( 'companycats.id', '=', $company_id);
        }

        $totalRecordswithFilter = $totalRecordswithFilter->Where( 'users.isdelete', '=', 0 )->count();

        $records = $records->skip($start)
              ->take($rowperpage)
               ->get();
               //dd($records);
        $data_arr = array();

        foreach($records as $key => $record){ 

            $name = $record->name;
            $email = $record->email;
            $company_name =  ($record->company_id==0)?$record->company_name:$record->com_name;
            $location = $record->location;
            $status =  '';
            if($record->status){
                $status ='<a href="javascipt:;" class="changeActive" data-status="1" data-id="'.$record->id.'"><label class="btn btn-xs btn-success">Active</label></a>';

            }else{
                $status ='<a href="javascipt:;" class="changeActive" data-status="0" data-id="'.$record->id.'"><label class="btn btn-xs btn-danger">Inactive</label></a>';

            }
            
            // 
            $action  =  '<form action="'.route('user.destroy',$record->id).'" method="POST">
                                            <input type="hidden" name="_token" value="'.csrf_token().'">
                                        <a href="'. route('user.view',$record->id) .'" class="btn btn-xs btn-success"><i class="fa fa-eye" title="View"></i></a>
                                        <a href="'. route('user.edit',$record->id) .'" class="btn btn-xs btn-info"><i class="fa fa-pen" title="Edit"></i></a>
                                            <button type="submit" title="Remove" onclick="return confirm(';
            $action  .="'Are you sure you want to delete?'";
            $action  .=');" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></button>
                                        </form>';        
            $data_arr[] = array( 
                
                "name" => $name,
                "email" => $email,
                "company_name" => $company_name, 
                "department" => ($record->company_id==45)?"":$record->department,
                "employe_id" => ($record->company_id!=45)?"":$record->employe_id,
                "city" => $record->city,
                "status" => $status,
                //"photo" => $photo,
                "id" => $action,
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
        
    public function userstatuschange(Request $request){
         
        $user = User::where('id', $request->id) ; 
        if($request->status){
            $user->update(array('email_verified_at'=>NULL));
            $html = '<a href="javascipt:;" class="changeStatus" data-status="0" data-id="'.$request->id.'">
                                                <label class="btn btn-xs btn-danger">No</label>
                                            </a>';
        }else{
            $user->update(array('email_verified_at'=>date("Y-m-d H:i:s")));
            $html = '<a href="javascipt:;" class="changeStatus" data-status="1" data-id="'.$request->id.'">
                                                <label class="btn btn-xs btn-success">Yes</label>
                                            </a>';

        }
        return response()->json(array('success' => true, 'html'=>$html));
    }
    public function userchangeActive(Request $request){
         
        $user = User::where('id', $request->id) ; 
        if($request->status){
            $user->update(array('status'=>0));
            $html = '<a href="javascipt:;" class="changeActive" data-status="0" data-id="'.$request->id.'">
                                                <label class="btn btn-xs btn-danger">Inactive</label>
                                            </a>';
        }else{
            $user->update(array('status'=>1));
            $html = '<a href="javascipt:;" class="changeActive" data-status="1" data-id="'.$request->id.'">
                                                <label class="btn btn-xs btn-success">Active</label>
                                            </a>';

        }
        return response()->json(array('success' => true, 'html'=>$html));
    }
   
    public function userDestroy(Request $request){
        //$user_data = User::where('id', $request->id)->first();

        //$user = User::where('id', $request->id) ;
        //$user->update(array('isdelete'=>1,'email'=>"@@".$request->id."@@".$user_data->email."@@"));

        $User = User::where('id', $request->id) ; 
        $User->delete();
 
        return redirect()->back()->with('success','User Deleted successfully');
    }
    public function userView(Request $request, $id){
        $user = User::where('id', $id)->first();

        $company = Companycat::where('id', $user->company_id)->first(); 
        return view('admin.userView',compact('user','company'));
    }
    
    public function userEdit(Request $request, $id){
        $user = User::where('id', $id)->first();

        $company = Companycat::orderBy( 'name', 'DESC')->get(); 
        return view('admin.userEdit',compact('user','company'));
    }
    public function userUpdate(Request $request){

        $user = User::where('id', $request->id)->first();
        $request->validateWithBag('account', [
            'name' => ['required', 'string', 'max:255'], 
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email,'.$user->id],
            //'employe_id' => ['required', 'string', 'max:255'],
            'company_id' => ['required', 'string', 'max:255'],
            //'department' => ['required', 'string', 'max:255'],
            'city' => ['required', 'string', 'max:255'],
        ]);
        try{

            $user = User::where('id', $request->id)->update($request->except(['_token','id']));
            if ($user) {
                $message = "Account updated successfully.";
                return redirect()->route('users')->with('message', $message);
            } else {
                $message = "Error while saving. Please try again.";
                return redirect()->back()->with('error', $message);
            }
        }catch(\Exception $e){ 

            echo  $e->getMessage();
        }
    }
    
    public function userExport()
    {
        $array = array();

        $exportImageData = (isset($_POST['exportImageData']) && $_POST['exportImageData']!="" )?$_POST['exportImageData']:0;

        if($exportImageData){

             $array[] = "id,Title,Description,Photo,CropImage,models,iso,aperture,exposure,views,userName,email,office_email,Mobile,location,company";

            $records = Userimages::leftJoin('users', 'users.id', '=', 'userimages.user_id')  
                ->leftJoin('companycats', 'companycats.id', '=', 'users.company_id') 
              ->select('userimages.*','users.name as user_name' ,'users.email as user_email','users.office_email as user_office_email','users.mobile as user_mobile','users.location as user_location','companycats.name as com_name', 'users.company_id', 'users.company_name')->get();
               
           
            foreach($records as $key => $imagedata){ 

                $photo = '<img src="'.config('app.url').'/'.$imagedata->crop_photo.'" width="150px">';
                 
                 $array[] =  "\n".(++$key)
                    .",".'"'.str_replace( '"',"'",str_replace( ",","-",($imagedata->title))).'"'
                    .",".'"'.str_replace( '"',"'",str_replace( ",","-",($imagedata->description))).'"'
                    .",".($imagedata->photo)
                    .",".($imagedata->crop_photo)
                    .",".($imagedata->photo_models)
                    .",".($imagedata->photo_iso)
                    .",".($imagedata->photo_aperture)
                    .",".($imagedata->photo_exposure)
                    .",".($imagedata->views) 
                    .",".($imagedata->user_name)
                    .",".($imagedata->user_email)
                    .",".($imagedata->user_office_email)
                    .",".($imagedata->user_mobile)
                    .",".($imagedata->user_location)
                    .",".(($imagedata->company_id==0)?$imagedata->company_name:$imagedata->com_name) ;    
            }
 

        }else{

            $array[] = "id,name,email,department,employee Id,city,Poster,Instagram Post,Zoom Background,company";

            $users = User::select('users.*','companycats.name as com_name','companycats.image as com_image');
            $users = $users->leftJoin('companycats', 'companycats.id', '=', 'users.company_id');
            $company_id = (isset($_POST['company_id']) && $_POST['company_id']!="" )?$_POST['company_id']:0;
            if( $company_id ){

                $users = $users->Where( 'companycats.id', '=', $_POST['company_id'] );
            }
            $users->Where( 'users.isdelete', '=', 0 );
            $users = $users->orderBy( 'id', 'DESC')->get();

            

            foreach ($users as $key => $user) {
                $company_name = ($user->company_id==0)?$user->company_name:$user->com_name;
                //$total_photo = Userimages::where('user_id', $user->id)->count();
                $department = ($user->company_id==45)?"":$user->department;
                $employe_id = ($user->company_id!=45)?"":$user->employe_id;
                $array[] = "\n".(++$key).",".($user->name).",".($user->email).",".($department).",".($employe_id).",".($user->city).",".($user->email_header).",".($user->zoom_teams_background).",".($user->linkedin_cover).",".($company_name)  ;
            }
        }

        return json_encode($array);
    }
}
