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

          <div class="card card-primary card-outline">
            <div class="card-body box-profile">
              <div class="text-center">
                 
              </div>
              <h3 class="profile-username text-center">{{$user->name}}</h3>
              <p class="text-muted text-center"></p>
              <ul class="list-group list-group-unbordered mb-3">
                
                <li class="list-group-item" >
                    <span> Email </span><b class="float-right">{{$user->email}}</b>
                  </li>
                
                <li class="list-group-item" >
                    <span> Company name </span><b class="float-right">{{ ($user->company_id==0)?$user->company_name:$company->name}}</b>
                  </li>
                @if($user->company_id==45) 
                  <li class="list-group-item" >
                    <span> Employee Id </span><b class="float-right">{{$user->employe_id}}</b>
                  </li>
                @else 
                  <li class="list-group-item" >
                    <span> Department </span><b class="float-right">{{$user->department}}</b>
                  </li>
                @endif
                <li class="list-group-item" >
                    <span> City </span><b class="float-right">{{$user->city}}</b>
                  </li>


                <li class="list-group-item" >
                    <span> Poster </span><b class="float-right">{{$user->email_header}}</b>
                  </li>

                <li class="list-group-item" >
                    <span> Instagram Post </span><b class="float-right">{{$user->zoom_teams_background}}</b>
                  </li>

                <li class="list-group-item" >
                    <span> Zoom Background </span><b class="float-right">{{$user->linkedin_cover}}</b>
                  </li>
                 
              </ul>
              <a href="{{route('users') }}" class="btn btn-primary btn-sm"><b>Back</b></a>
            </div>

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

  });
</script>

@endsection

