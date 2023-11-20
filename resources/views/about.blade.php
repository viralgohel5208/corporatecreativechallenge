@extends('layouts.front')

@section('content') 

    <!-- content start -->
    <div class="content">

        <section class="section section-slideslow mt-lg-5 mt-3">
        
        <div class="about-contest">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-5">
                        <div class="about-detail">
                            <p>{!!nl2br($section['About-Intro'])!!}</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-7">
                        <div class="youtube-block">
                            <iframe src="{{$section['Youtube-Link']}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="unlock-talent">
            <div class="container">
                <div class="text-block">
                    <div class="main-title">
                        <h2>Unlocking <span>Talent</span> in Photography</h2>
                    </div>

                    <p>{!!nl2br($section['Unlocking-Talent-in-Photography-Details'])!!}</p>


                </div>

                <div class="contest-image">
                    <div class="row">
                        <div class="col-sm-6 col-lg-6 col-md-6">
                            <div class="image-block">
                                @if( isset($section['Photography-image-1']) && $section['Photography-image-1']!="" && file_exists("uploads/".$section['Photography-image-1']))   
                                    <img src="{{ config('app.url').'/uploads/'.$section['Photography-image-1'] }}" alt="contest" class="img-fluid">
                                @else
                                    <img src="{{ asset('front/images/contest1.png')}}" alt="contest" class="img-fluid">
                                @endif  
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6 col-md-6">
                            <div class="image-block">
                                @if( isset($section['Photography-image-2']) && $section['Photography-image-2']!="" && file_exists("uploads/".$section['Photography-image-2']))   
                                    <img src="{{ config('app.url').'/uploads/'.$section['Photography-image-2'] }}" alt="contest" class="img-fluid">
                                @else
                                    <img src="{{ asset('front/images/contest2.png')}}" alt="contest" class="img-fluid">
                                
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <div class="main-title">
                        <h2>Promoting photography as an art form at <span>workplace</span></h2>
                    </div>

                </div>

                <div class="contest-image">
                    <div class="row">
                        <div class="col-sm-6 col-lg-6 col-md-6">
                            <div class="image-block">
                                @if( isset($section['Workplace-image-1']) && $section['Workplace-image-1']!="" && file_exists("uploads/".$section['Workplace-image-1']))   
                                    <img src="{{ config('app.url').'/uploads/'.$section['Workplace-image-1'] }}" alt="contest" class="img-fluid">
                                @else
                                    <img src="{{ asset('front/images/contest3.png')}}" alt="contest" class="img-fluid">
                                
                                @endif 
                            </div>
                            <div class="text-block">
                                <p>{!!nl2br($section['Workplace-intro-1'])!!}</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6 col-md-6">
                            <div class="image-block">
                                @if( isset($section['Workplace-image-2']) && $section['Workplace-image-2']!="" && file_exists("uploads/".$section['Workplace-image-2']))   
                                    <img src="{{ config('app.url').'/uploads/'.$section['Workplace-image-2'] }}" alt="contest" class="img-fluid">
                                @else
                                    <img src="{{ asset('front/images/contest4.png')}}" alt="contest" class="img-fluid">
                                
                                @endif 
                            </div>
                            <div class="text-block">
                                <p>{!!nl2br($section['Workplace-intro-2'])!!}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="corporate-workshop">
            <div class="container">
                <div class="section-title p-0">
                    <h2>Learning through</h2>
                </div>
                <div class="main-title">
                    <h2>Corporate <span>Workshops</span></h2>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="works-img">
                            @if( isset($section['Corporate-Workplace-image-1']) && $section['Corporate-Workplace-image-1']!="" && file_exists("uploads/".$section['Corporate-Workplace-image-1']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['Corporate-Workplace-image-1'] }}" alt="contest" class="img-fluid">
                            @else
                                <img src="{{ asset('front/images/contest3.png')}}" alt="contest" class="img-fluid">
                            
                            @endif 
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="text-block">
                            <p>{!!nl2br($section['Corporate-Workplace-intro-1'])!!}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="workshop-img">
                @if( isset($section['Workplace-Banner-image']) && $section['Workplace-Banner-image']!="" && file_exists("uploads/".$section['Workplace-Banner-image']))   
                    <img src="{{ config('app.url').'/uploads/'.$section['Workplace-Banner-image'] }}" alt="contest" class="img-fluid">
                @else
                    <img src="{{ asset('front/images/workshop.png')}}" alt="workplace" class="img-fluid">
                
                @endif 
                 
            </div>
        </div>

    </section>


    </div>
    <!-- content end -->




  @endsection 