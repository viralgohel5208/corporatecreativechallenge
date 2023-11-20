@extends('layouts.front')
@section('content')

       <div class="content">
        <section class="section section-how-it-works mt-lg-5 mt-3">
            <div class="container">
                <h2>How it Works</h2>
                <div class="howitworks-steps counter-start">
                    <div class="howitworks-step">
                        <h3>{{$section['1 Title']}}</h3>
                        <p>{!!nl2br($section['1 Description'])!!} </p>
                        <div class="img-wrap">
                            @if( isset($section['1 Image']) && $section['1 Image']!="" && file_exists("uploads/".$section['1 Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['1 Image'] }}" alt="contest" class="img-fluid">
                            @else 
                                <img class="img-fluid" src="{{ asset('front/images/howitwork-img-1.jpg')}}" alt="" />
                            @endif  
                        </div>
                    </div>
                    <div class="howitworks-step">
                        <h3>{{$section['2 Title']}}</h3>
                        <p>{!!nl2br($section['2 Description'])!!} </p> 
                        <div class="img-wrap">
                            @if( isset($section['2 Image']) && $section['2 Image']!="" && file_exists("uploads/".$section['2 Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['2 Image'] }}" alt="contest" class="img-fluid">
                            @else 
                                <img class="img-fluid" src="{{ asset('front/images/howitwork-img-2.jpg')}}" alt="" />
                            @endif 
                        </div>
                    </div>
                    <div class="howitworks-step">
                        <h3>{{$section['3 Title']}}</h3>
                        <p>{!!nl2br($section['3 Description'])!!}  </p>
                        <div class="img-wrap">
                            @if( isset($section['3 Image']) && $section['3 Image']!="" && file_exists("uploads/".$section['3 Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['3 Image'] }}" alt="contest" class="img-fluid">
                            @else 
                                <img class="img-fluid" src="{{ asset('front/images/howitwork-img-3.jpg')}}" alt="" />
                            @endif 
                        </div>
                    </div>
                    <div class="howitworks-step">
                        <h3>{{$section['4 Title']}}</h3>
                        <p>{!!nl2br($section['4 Description'])!!} </p>
                        <div class="img-wrap">
                            @if( isset($section['4 Image']) && $section['4 Image']!="" && file_exists("uploads/".$section['4 Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['4 Image'] }}" alt="contest" class="img-fluid">
                            @else 
                                <img class="img-fluid" src="{{ asset('front/images/howitwork-img-4.jpg')}}" alt="" />
                            @endif 
                        </div>
                    </div>
                    <div class="howitworks-step">
                        <h3>{{$section['5 Title']}}</h3>
                        <p>{!!nl2br($section['5 Description'])!!} </p>
                        <div class="img-wrap">
                            @if( isset($section['5 Image']) && $section['5 Image']!="" && file_exists("uploads/".$section['5 Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['5 Image'] }}" alt="contest" class="img-fluid">
                            @else 
                                <img class="img-fluid" src="{{ asset('front/images/howitwork-img-5.jpg')}}" alt="" />
                            @endif 
                        </div>
                    </div>
                </div>
            </div>
        </section>

    
        <section class="section section-watchtutorial mb-5">
            <div class="container">
                <div class="videowrap">
                    <button class="btn play-btn" id="videoModalBtn"><img src="{{ asset('front/images/icon-play.png')}}"><span>Watch Tutorial</span></button>
                </div>
            </div>
        </section> 
    


    </div>


@endsection 
@section('script') 
<script type="text/javascript">
    
 $("#videoModalBtn").click(function () {
  var src =
    "{{$section['Instruction Video - Youtube URL']}}";
  $("#videoModal").modal("show");
  $("#videoModal iframe").attr("src", src);
});

</script>
@endsection
