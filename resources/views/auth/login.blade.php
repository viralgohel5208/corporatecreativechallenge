@extends('layouts.front')
@section('content')
    
    <div class="content">
        <section class="section section-loginregister">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-5">
                         <form method="POST" class="row g-3" name="login" id="login" action="{{ route('login') }}">
                                    @csrf 
                            <h2>Login</h2>
                            <div class="col-12">
                                <input type="email" class="form-control" id="inputEmail" name="email" value="{{ old('email') }}" required placeholder="Personal Mail Id">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control" id="inputPassword"  name="password" placeholder="Password"   required>
                            </div>
                            <p>Forgot Password ? <a href="{{ route('password.request') }}">Click here</a></p>
                            <div class="col-12 text-end">
                                <button type="submit" class="btn btn-success">Enter</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-5 mt-5 mt-lg-0">
                         <form method="POST" class="row g-3" name="register" id="register" action="{{ route('register') }}">
                                     @csrf 
                            <h2>Register</h2>


                            <div class="col-12">
                                <input type="text" class="form-control" id="inputEmail" placeholder="Full name"  name="name" value="{{ old('name') }}" required>
                            </div>
                            <div class="col-12">
                                
                                <select class="filters-select form-select" name="company_id" id="company_id" required>
                                    <option value="">Select Company</option>
                                    @foreach( $company as $com )
                                    <option {{(old('company_id')==$com->id)?"SELECTED":""}} value="{{$com->id}}">{{$com->name}}</option>
                                    @endforeach
                                    <option {{(old('company_id')=="0")?"SELECTED":""}} value="0">Others</option>
                                </select>
                            </div>

                            <div class="col-12" id="company_name_div" {{(old('company_id')=="0")?"":"style='display: none;'"}} >
                                <input type="text" class="form-control" id="company_name" placeholder="Enter Company Name" name="company_name"  value="{{ old('company_name') }}"  {{(old('company_id')=="0")?"required":""}}>
                            </div>

                            <div class="col-12">
                                <input type="email" class="form-control" id="inputEmail" placeholder="Personal Mail Id" name="email"  value="{{ old('email') }}"  required>
                            </div>
                            <div class="col-12" id="employee_id_div" {{(old('company_id')==45 && old('company_id')!="")?"":"style='display: none;'"}} >
                                <input type="text" class="form-control" id="employee_id" placeholder="Employee ID" name="employee_id"  value="{{ old('employee_id') }}"   >
                            </div>

                            <div class="col-12" id="department_div" {{(old('company_id')==45 || old('company_id')=="")?"style='display: none;'":""}} >
                                <input type="text" class="form-control" id="department" placeholder="Department" name="department"  value="{{ old('department') }}"  required>
                            </div>
                            <div class="col-12">
                                <input type="text" class="form-control" id="inputCity" placeholder="City" name="city" value="{{ old('city') }}"  required >
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control" placeholder="Create Password" name="password" required>
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control" placeholder="Retype password" name="password_confirmation" required>
                            </div>

                            <div class="col-12"> 

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"  
                                            id="agreeTerms"  required name="terms" value="agree" >
                                    <label class="form-check-label" for="gridCheck">I hereby agree to the <a href="{{ route('terms-conditions') }}">Terms & Conditions</a> and would like to register for the Challenge.</label>
                                </div>
                            </div>

                            <div class="col-12 text-end">
                                <button type="submit" class="btn btn-success">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
         <section class="section section-webinar webinar-bg mt-lg-5 mt-5 mb-5 py-5" data-bg="">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-5">
                        <h2>Webinar</h2>
                        <h3>Tips and Tricks to create effective Internal Communication Visuals with Generative Artifical Intelligence (GenAI)</h3>
                        <div class="date"><span class="dd">3</span><span class="mm">November, Friday</span></div>
                        <div class="time"><span class="time-icon"></span> 3.30 PM - 4.00 PM </div>
                        <a href="https://docs.google.com/forms/d/1NqpHv8Chsd6FQMoLSvjA-_dJy4GAZcXUTsrqvFjRUtk/edit" target="_blank" class="btn btn-dark">Register Now</a>
                    </div>
                    <div class="col-lg-7 mt-4 mt-lg-0 text-center">
                        <div class="img-wrap">
                            <img src="{{ asset('front/images/register-webinar.jpg')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

     <?php /* 
    <div class="content">



        <div class="inner-page">
            <div class="register-main">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <h3 class="card-title text-center">Existing User Login</h3>
                            <br>
                            <div class="contact-form">
                                <form method="POST" name="login" id="login" action="{{ route('login') }}">
                                    @csrf
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Personal Mail ID" name="email" value="{{ old('email') }}" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                                    </div>
                                    <div class="form-group">
                                        <a href="{{ route('password.request') }}">Forgot Password ?</a>
                                    </div>
                                    <div class="submit-btn">
                                        <button class="s-btn btn">Login</button>
                                    </div>
                                </form>
                            </div>

                            <div class="enquire">
                                     
                                    <a href="{{ route('contact-us') }}" target="_blank">
                                       <img src="{{ asset('front/images/Enquire-Now.png')}}" alt="Enquire Now" class="img-fluid">
                                     </a>                   
                                </div>
                            <?php / * <div class="corporate-banner">
                                <div class="container" style="margin-right: -20px;">
                                     
                                    <a href="{{ route('contact-us') }}" target="_blank">
                                       <img src="{{ asset('front/images/Enquire-Now.png')}}" alt="Enquire Now" class="img-fluid">
                                     </a>                   
                                </div>
                            </div>* / ?>
                            

                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <h3 class="card-title text-center">New Participant Registration</h3>
                            <br>
                            <div class="registration-form">
                                <form method="POST" name="register" id="register" action="{{ route('register') }}">
                                     @csrf
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Full Name" name="name" value="{{ old('name') }}" required>
                                    </div>
                                    <div class="form-group custom-selection">
                                        <select class="filters-select form-select" name="company_id" required>
                                            <option value="">Select Company</option>
                                            @foreach( $company as $com )
                                            <option value="{{$com->id}}">{{$com->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Employee ID / SAP ID  " name="employe_id" value="{{ old('employe_id') }}" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Personal Mail ID" name="email"  value="{{ old('email') }}"  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Office Mail ID" name="office_email"  value="{{ old('office_email') }}"  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Mobile Number" name="mobile"  value="{{ old('mobile') }}"  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Location" name="location"  value="{{ old('location') }}"  required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Create Password" name="password" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Retype password" name="password_confirmation" required>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox"  
                                            id="agreeTerms"  required name="terms" value="agree" >
                                        <label class="form-check-label"  for="agreeTerms">
                                            I have read the Terms & Conditions and accept to participate in the Corporate Photography Contest 2023.
                                        </label>
                                    </div>

                                    <div class="form-group captcha">
                                        <!-- <img src="{{ asset('front/images/capcha.png')}}" alt="capthca" class="img-fluid"> -->
                                        <div class="form-group gender-group form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}"> 
                                            <div class="col-md- 6">
                                                {!! app('captcha')->display() !!}
                                                @if ($errors->has('g-recaptcha-response'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>

                                    <div class="submit-btn">
                                        <button class="btn">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="corporate-banner">
                <div class="container">
                     
                    <a href="{{$section['Advertisement-Link']}}" target="_blank">
                      @if( isset($section['Advertisement-Image']) && $section['Advertisement-Image']!="" && file_exists("uploads/".$section['Advertisement-Image']))   
                          <img src="{{ config('app.url').'/uploads/'.$section['Advertisement-Image'] }}" alt="ad-box" class="img-fluid">
                      @else
                          <img src="{{ asset('front/images/ad-img.jpg')}}" alt="ad-box" class="img-fluid">
                      @endif 
                      </a>                   
                </div>
            </div>
        </div>

    </div>
    */ ?>


    </div>

    @endsection 
@section('script')
{!! NoCaptcha::renderJs() !!}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
        $("#register").validate();
        $("#login").validate();
        
        @if(old('company_id')==0)
            $("#company_name_div").hide()
                $("#company_name").removeAttr("required","required")
        @endif

         @if(old('company_id')==45)
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
        
    })
</script>
@endsection