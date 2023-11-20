@extends('layouts.front')
@section('content')

<!-- content start -->
    <div class="content"> 

        <div class="inner-page">

            <div class="register-main">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <h3 class="text-center">Reset Your Password</h3>
                            <div class="contact-form">
                            

            <form action="{{ route('password.update') }}" method="POST">
                @csrf

                @php
                    if (!isset($token)) {
                        $token = \Request::route('token');
                    }
                @endphp

                <input type="hidden" name="token" value="{{ $token }}">

                <div class="input-group mb-3">
                    <input type="email"
                           name="email"
                           class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                           placeholder="Email" required >
                   
                    @if ($errors->has('email'))
                        <span class="error invalid-feedback">{{ $errors->first('email') }}</span>
                    @endif
                </div>

                <div class="input-group mb-3">
                    <input type="password"
                           name="password"
                           class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                           placeholder="Password">
                   
                    @if ($errors->has('password'))
                        <span class="error invalid-feedback">{{ $errors->first('password') }}</span>
                    @endif
                </div>

                <div class="input-group mb-3">
                    <input type="password"
                           name="password_confirmation"
                           class="form-control"
                           placeholder="Confirm Password">
                    
                    @if ($errors->has('password_confirmation'))
                        <span class="error invalid-feedback">{{ $errors->first('password_confirmation') }}</span>
                    @endif
                </div>

                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Reset Password</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

             <div class="form-group">
                <br><a href="{{ route('login') }}">Login ?</a>
            </div>
        </div>
                        </div>
                    </div>
                </div>
            </div>

             
        </div>
    </div>
  @endsection 
@section('script')
{!! NoCaptcha::renderJs() !!}
@endsection
