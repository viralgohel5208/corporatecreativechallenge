@extends('layouts.front')
@section('content')
  <div class="content">
        <section class="section section-contactus mt-lg-5 mt-3">
            <div class="container">
              <div class="row align-items-end justify-content-center">
                <div class="col-lg-5 caption">
                        <h2 class="text-center">Contact Us</h2>
                        <form class="row g-3"  method="post" id="contact_form" name="contact_form" action="{{ route('contact-us.store') }}">
                        @csrf
                         
                            <div class="col-12">
                               <input type="text" class="form-control" placeholder="Name" name="name" id="name" required>
                            </div>
                            <div class="col-12">
                            <input type="email" class="form-control" placeholder="Email ID" name="email" id="email" required>
                            </div>

                            <div class="col-12">
                              <input type="text" class="form-control" placeholder="Company Name" name="company_name" id="company_name" required>
                            </div>
                            <div class="col-12">
                              <input type="text" class="form-control" placeholder="Mobile" name="mobile" id="mobile" required>
                            </div>
                            <div class="col-12"> 
                              <textarea name="message" id="message" required class="form-control" placeholder="Message"  cols="30" rows="6"></textarea>
                            </div>

                            <div class="col-12 text-center">
                              <button type="submit" class="btn btn-success">Submit</button> 
                            </div>
                          </form>

                          <p class="moreinformation mt-3 mt-lg-5">Please mail below incase of more information required<br><a class="text-danger" href="mailto:{{$globalSettings['email']}}">{{$globalSettings['email']}}</a></p>
                    </div>                    
                </div>
            </div>
        </section>

    </div>

    
@endsection 
@section('script')
{!! NoCaptcha::renderJs() !!}

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#contact_form").validate();
    })
</script>
@endsection