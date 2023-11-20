@extends('layouts.front')

@section('content') 

<!-- content start -->
    <div class="content">

        <section class="section section-loginregister">
            

        <div class="inner-page">
            <div class="register-main ">
                <div class="container">
                	   @if ($errors->any())
						<div class="alert alert-danger">
						    <ul class="list-unstyled">
						        @foreach ($errors->all() as $error)
						        <li>{{ $error }}</li>
						        @endforeach
						    </ul>
						</div>
						@endif

                    <div class="row justify-content-between">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                        	<h3 class="card-title text-center">Edit Profile</h3>
                        	<br>
                            <div class="contact-form">
                                <form method="POST" class="row g-3" action="{{ route('user.info.store') }}">
                                    @csrf
                                    <div class="col-12">
                                        <input type="text" class="form-control" placeholder="Full Name" name="name" value="{{ old('name', $user->name) }}" required>
                                    </div>
                                    <div class="form-group custom- selection">
                                        <select class="filters- select form-select" id="company_id" name="company_id" required>
                                            <option value="">Select Company</option>
                                            @foreach( $company as $com )
                                            <option {{($user->company_id==$com->id)?"SELECTED":""}} value="{{$com->id}}">{{$com->name}}</option>
                                            @endforeach
                                            <option {{($user->company_id==0)?"SELECTED":""}} value="0">Other</option>
                                        </select>
                                    </div>
                                    <div class="form-group  " id="company_name_div" @if($user->company_id!=0) style="display: none" @endif> 
                                         
                                        <input type="text" class="form-control" id="company_name" placeholder="Enter Company Name" name="company_name"  value="{{ $user['company_name'] }}"  {{($user->company_id==0)?"required":""}}>
                                        
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Personal Mail ID" name="email"  value="{{$user->email }}"  required>
                                    </div>

                                    <div class="form-group" id="employee_id_div" @if($user->company_id!=45) style="display: none" @endif >
                                        <input type="text" class="form-control" id="employee_id" placeholder="Employee id" name="employe_id"  value="{{ $user->employe_id }}"  required>
                                    </div>

                                    <div class="form-group" id="department_div" @if($user->company_id==45) style="display: none" @endif >
                                        <input type="text" class="form-control" id="department" placeholder="Department" name="department"  value="{{ $user->department }}"  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="city" name="city"  value="{{ $user->city }}"  required>
                                    </div>
                                    <!-- <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Location" name="location"  value="{{ $user->location }}"  required>
                                    </div> 
                                    <div class="form-group">
                                        <input id="name" class="form-control" required type="text" name="name" value="{{ old('name', $user->name) }}" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                                    </div>  -->
                                    <div class="submit-btn text-center" >
                                        <button class="s-btn btn    btn-success">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-5">
                        	<h3 class="card-title text-center">Change Password</h3>
                        	<br>
                            <div class="contact-form">
                                <form method="POST" class="row g-3" action="{{ route('user.password.store') }}">
                                    @csrf
                                    <div class="form-group"> 
                                         <input id="old_password" class="form-control"
                                            type="password"
                                            name="old_password" required placeholder="Old Password" 
                                            /> 
                                    </div>
                                    <div class="form-group"> 
	                                        <input id="new_password" class="form-control"
	                                            type="password"
	                                            name="new_password" required placeholder="New Password" 
	                                            /> 
                                    </div>
                                    <div class="form-group">
                                    		<input id="confirm_password" class="form-control"
	                                            type="password"
	                                            name="confirm_password" required placeholder="Confirm Password" 
	                                            />
	                                    
	                                </div> 
                                    
                                    <div class="submit-btn text-center">
                                        <button class="s-btn btn  btn-success">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                         
                    </div>
                </div>
            </div>

             
        </div>

    </div>


        </section>

    </div>
  @endsection 
  @section('script')
{!! NoCaptcha::renderJs() !!}

<script type="text/javascript">
    $(document).ready(function(){
        
        $(document).on("change","#company_id",function(){
            var val = $(this).val();
            if(val==0){
                $("#company_name_div").show()
                $("#company_name").attr("required","required")
            }else{

                $("#company_name_div").hide()
                $("#company_name").removeAttr("required","required")
            }
            if(val==45){
                $("#employee_id_div").show();
                $("#employee_id").attr("required","required")
                $("#department_div").hide();
                $("#department").removeAttr("required","required")
            }else{
                $("#employee_id_div").hide();
                $("#employee_id").removeAttr("required","required")
                $("#department_div").show();
                $("#department").attr("required","required")
            }
        }); 
         @if($user->company_id==45)
                $("#employee_id_div").show();
                $("#employee_id").attr("required","required")
                $("#department_div").hide();
                $("#department").removeAttr("required","required")
         @else
          $("#employee_id_div").hide();
                $("#employee_id").removeAttr("required","required")
                $("#department_div").show();
                $("#department").attr("required","required") 
         @endif
    })
</script>
@endsection