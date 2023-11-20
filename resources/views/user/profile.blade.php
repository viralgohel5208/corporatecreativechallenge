@extends('layouts.front')



@section('content') 

	

	 <div class="content">

        <section class="section section-myprofile">

            <div class="container">

                <div class="row justify-content-between">

                    <div class="col-lg-5 caption">

                        <h2>My Profile</h2>

                        <h3>{{$user->name}}

                        	<a href="{{route('user-edit-profile')}}" class="btn btn-none">

                        		<img src="{{ asset('front/images/icon-edit.png')}}" />

                        	</a> 

                        </h3>

                        <p>Company : {{ ($user->company_id==0)?$user->company_name:(isset($company->name)?$company->name:'')}}</p>

                        <p>Personal Mail ID : {{$user->email}}</p>

                         @if($user->company_id==45)
                        <p>Employee Id : {{$user->employe_id}}</p>
                        @else
                        <p>Department : {{$user->department}}</p>
                        @endif

                        <p>City : {{$user->city}}</p>
                      
                            <p><button class="btn btn-none p-0 play-btn" id="videoModalBtn"><img src="{{ asset('front/images//icon-play-with-text.png')}}" /></button></p>
                      
                    </div>

                    <div class="col-lg-5 mt-5 mt-lg-0">

                         

                            <h3 class="text-lg-end fw-bolder">Upload link</h3> 

                            <style type="text/css">

                            	.input-group{

                            		display: block;

                            	}

                            	.input-group form {

                            		display: flex;

                            	}

                            	.input-group input{

                            		border-bottom-right-radius: 0;

                            		border-top-right-radius: 0;

                            	}

                            	.input-group button{

                            		border-bottom-left-radius: 0;

                            		border-top-left-radius: 0;

                            	}

                            </style>

                            <div class="input-group-wrap mb-3">

                                <label for="exampleFormControlInput1" class="form-label">Poster</label>

                                <div class="input-group">

                                	<form method="POST"   action="{{ route('user.info.link') }}">

                                    @csrf

                                    	<input type="hidden" name="type" value="email_header">

	                                    <input type="text" required name="link" class="form-control" placeholder="Enter Link" aria-label="Enter Link" aria-describedby="button-addon2" value="{{$user->email_header}}">

	                                    <!-- <button class="btn btn-none p-0 edit-btn"><img src="{{ asset('front/images/icon-edit.png')}}" /></button> -->

	                                    <button class="btn btn-success" type="submit" id="button-addon2">Submit</button>

                                	</form>

                                </div>

                            </div>

                            <div class="input-group-wrap mb-3">

                                <label for="exampleFormControlInput1" class="form-label">Instagram Post</label>

                                <div class="input-group">

                                	<form method="POST"  action="{{ route('user.info.link') }}">

                                    @csrf

                                    	<input type="hidden" name="type" value="zoom_teams_background">

	                                    <input type="text" required name="link" class="form-control" placeholder="Enter Link" aria-label="Enter Link" aria-describedby="button-addon2" value="{{$user->zoom_teams_background}}">

	                                    <!-- <button class="btn btn-none p-0 edit-btn" id="videoModalBtn"><img src="{{ asset('front/images/icon-edit.png')}}" /></button> -->

	                                    <button class="btn btn-success" type="submit" id="button-addon2">Submit</button>

                                	</form>

                                </div>

                            </div>

                            <div class="input-group-wrap mb-3">

                                <label for="exampleFormControlInput1" class="form-label">Zoom Background</label>

                                <div class="input-group">

                                	<form method="POST" action="{{ route('user.info.link') }}">

                                    @csrf	                                  

                                    	<input type="hidden" name="type" value="linkedin_cover">  

                                    	<input type="text" required name="link" class="form-control" placeholder="Enter Link" aria-label="Enter Link" aria-describedby="button-addon2" value="{{$user->linkedin_cover}}">

	                                    <!-- <button class="btn btn-none p-0 edit-btn" id="videoModalBtn"><img src="{{ asset('front/images/icon-edit.png')}}" /></button> -->

	                                    <button class="btn btn-success" type="submit" id="button-addon2">Submit</button>

                                	</form>

                                </div>

                            </div>





                        

                    </div>

                </div>

            </div>

        </section>



    </div>

     

  @endsection 

  @section('script') 

<script type="text/javascript">

    

$("#videoModalBtn").click(function () {

  var src =

    "https://www.youtube.com/embed/-5lDj3-6F-A?si=pHl6ogzJN7FjkQoq";

  $("#videoModal").modal("show");

  $("#videoModal iframe").attr("src", src);

});





</script>

@endsection