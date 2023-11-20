@extends('layouts.front')
@section('content')

<!-- content start -->
    <div class="content"> 

        <section class="section section-loginregister">
        <div class="inner-page">

            <div class="register-main">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <h3 class="text-center">Forgot Password</h3>
                            <div class="contact-form">
                            

                            @if (session('status'))
                                <div class="alert alert-success">
                                    {{ session('status') }}
                                </div>
                            @endif

                            <form action="{{ route('password.email') }}" class="row g-3" method="post">
                                @csrf

                                <div class="input-group mb-3">
                                    <input type="email"
                                           name="email"
                                           class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" required 
                                           placeholder="Email">
                                     
                                    @if ($errors->has('email'))
                                        <span class="error invalid-feedback">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="r ow ">
                                    <div class="col-12 submit-btn text-center">
                                        <button type="submit" class="btn btn-primary btn- block">Send Password Reset Link</button>
                                    </div>
                                    <!-- /.col -->
                                </div>
                            </form>
 
                                <div class=" ">
                                    
                                    <div class="form-group text-center">
                                        <br>
                                        <a href="{{ route('account') }}">Login Or Register ?</a>
                                    </div>
                                     
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
@endsection
