@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>{{ ($user['id'])?"Edit":"Add" }} User</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="{{route('users') }}">User</a></li>
                        <li class="breadcrumb-item active">{{ ($user['id'])?"Edit":"Add" }} </li>
                    </ol>
                </div>
            </div>
            
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{ ($user['id'])?"Edit":"Add" }}</h3>
                        </div> 
                        <form method="post" action="{{ route('user.update') }}" class="form-horizontal" role="form" enctype="multipart/form-data">
                           <div class="card-body">

                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            
                            @if ($error = Session::get('error'))
                                <div class="alert alert-danger">
                                    <p>{{ $error }}</p>
                                </div>
                            @endif
                            @if ($message = Session::get('success'))
                                <div class="alert alert-success">
                                    <p>{{ $message }}</p>
                                </div>
                            @endif
                            {!! csrf_field() !!} 
                                
                                <input type="hidden" name="id" value="{{ $user['id'] }}" />
                                 
                                <?php /* {{ old('name', $value->name) }} */  ?>
                                <div class="form-group row"> 
                                    <label for="name" class="col-sm-3 col-form-label">{{ __('Name') }}</label>
                                    <div class="col-sm-9">
                                        <input id="name" type="text" class="form-control" required  name="name" value="{{ $user['name'] }}" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email" class="col-sm-3 col-form-label">{{ __('Email') }}</label>
                                    <div class="col-sm-9">
                                        <input id="email" type="email" class="form-control" required  name="email" value="{{ $user['email'] }}" />
                                    </div>
                                </div>
                                 <div class="form-group row"> 
                                    <label for="name" class="col-sm-3 col-form-label">{{ __('Company Name') }}</label>
                                    <div class="col-sm-9">
                                        <select class="filters-select form-control" id="company_id" name="company_id" required>
                                            <option value="">Select Company</option>
                                            @foreach( $company as $com )
                                            <option {{($user['company_id']==$com->id)?"SELECTED":""}} value="{{$com->id}}">{{$com->name}}</option>
                                            @endforeach

                                            <option {{($user['company_id']==0)?"SELECTED":""}} value="0">Other</option>
                                        </select>
                                    </div>
                                </div>
                                
 


                                <div class="form-group row" id="employe_id_div" {{($user['company_id']==45 && $user['company_id']!="")?"":"style='display: none;'"}} > 
                                    <label for="employe_id" class="col-sm-3 col-form-label">{{ __('Employee Id') }}</label>
                                    <div class="col-sm-9">
                                        <input id="employe_id" type="text" class="form-control" required  name="employe_id" value="{{ $user['employe_id'] }}" />
                                    </div>
                                </div>

                                <div class="form-group row" id="department_div"  {{($user['company_id']==45 || $user['company_id']=="")?"style='display: none;'":""}}> 
                                    <label for="department" class="col-sm-3 col-form-label">{{ __('Department') }}</label>
                                    <div class="col-sm-9">
                                        <input id="department" type="text" class="form-control" required  name="department" value="{{ $user['department'] }}" />
                                    </div>
                                </div>


                                <div class="form-group row"> 
                                    <label for="office_email" class="col-sm-3 col-form-label">{{ __('City') }}</label>
                                    <div class="col-sm-9">
                                        <input id="office_email" type="text" class="form-control" required  name="city" value="{{ $user['city'] }}" />
                                    </div>
                                </div> 
                                
                                
                                
                               

                                 <div class="form-group row" id="company_name_div" @if($user['company_id']!=0) style="display: none" @endif> 
                                    <label for=" " class="col-sm-3 col-form-label"> </label>
                                    <div class="col-sm-9"> 
                                        <input type="text" class="form-control" id="company_name" placeholder="Enter Company Name" name="company_name"  value="{{ $user['company_name'] }}"  {{($user['company_id']==0)?"required":""}}>
                                    </div>
                                </div> 

                                <div class="col-12"  >
                                </div>

                                
                                  

                                 
                            </div> 
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info"> Save </button> 

                                @if($user['id']!="")
                                    <a class="btn btn-danger" href="{{route('users')}}">Cancel</a>
                                @endif
                            </div>
                        </form>                         
                    </div>
                </div>
                 
            </div>
        </div>
    </section>
</div>
@endsection
@section('script')

<script>
  $(function () {
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
                $("#employe_id_div").show();
                $("#employe_id").attr("required","required")
                $("#department_div").hide();
                $("#department").removeAttr("required","required")
            }else{
                $("#employe_id_div").hide();
                $("#employe_id").removeAttr("required","required")
                $("#department_div").show();
                $("#department").attr("required","required")
            }
        });

         @if($user['company_id']==45)
                $("#employe_id_div").show();
                $("#employe_id").attr("required","required")
                $("#department_div").hide();
                $("#department").removeAttr("required","required")
         @else
          $("#employe_id_div").hide();
                $("#employe_id").removeAttr("required","required")
                $("#department_div").show();
                $("#department").attr("required","required") 
         @endif
  });
</script>

@endsection
