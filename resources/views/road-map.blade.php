@extends('layouts.front')
@section('content')
     <div class="content">
        <section class="section section-road-map mb-5 mt-lg-5 mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 caption">
                        <h2>Road Map</h2>
                      
                        <div class="map-row">
                            @foreach($roadmaps as $key => $value)
                                 
       
                            <div class="map-iteam">
                                <div class="date">
                                    <span class="dt">{{ date("d" , strtotime( $value->date))}}</span>
                                    <span class="mm">{{ date("M" , strtotime( $value->date))}}</span>
                                </div>
                                <div class="note"><p>{!!$value->details!!}</p>
                                </div>
                            </div>

                            @endforeach
                             
                        </div>


                    </div>
                    <div class="col-lg-7">
                        <div class="text-center">
                            <div class="img-wrap"><img src="{{ asset('front/images/main-banner.png')}}" /></div>
                            <!-- 
                                <a href="{{ route('account') }}" class="btn btn-lg btn-dark">Register Now</a>
                            -->    
                            </div>
                        </div>
                </div>
            </div>
        </section>
       
    </div>


  
@endsection 