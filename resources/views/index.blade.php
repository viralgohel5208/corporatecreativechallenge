@extends('layouts.front')

@section('content')



    <div class="content">
        <section class="section section-slideslow mt-lg-5 mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 caption">
                        <h2>{{$section['Lets have Title']}}</h2>
                        <a href="{{$section['Lets have Link']}}" class="btn btn-dark">Participate with <span class="text-purple">Express</span> <svg
                                class="svg-icon icon-right-arrow text-purple ms-2" viewBox="0 -6.5 38 38" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <g id="icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g id="ui-gambling-website-lined-icnos-casinoshunter"
                                        transform="translate(-1511.000000, -158.000000)" fill="currentColor"
                                        fill-rule="nonzero">
                                        <g id="1" transform="translate(1350.000000, 120.000000)">
                                            <path
                                                d="M187.812138,38.5802109 L198.325224,49.0042713 L198.41312,49.0858421 C198.764883,49.4346574 198.96954,49.8946897 199,50.4382227 L198.998248,50.6209428 C198.97273,51.0514917 198.80819,51.4628128 198.48394,51.8313977 L198.36126,51.9580208 L187.812138,62.4197891 C187.031988,63.1934036 185.770571,63.1934036 184.990421,62.4197891 C184.205605,61.6415481 184.205605,60.3762573 184.990358,59.5980789 L192.274264,52.3739093 L162.99947,52.3746291 C161.897068,52.3746291 161,51.4850764 161,50.3835318 C161,49.2819872 161.897068,48.3924345 162.999445,48.3924345 L192.039203,48.3917152 L184.990421,41.4019837 C184.205605,40.6237427 184.205605,39.3584519 184.990421,38.5802109 C185.770571,37.8065964 187.031988,37.8065964 187.812138,38.5802109 Z"
                                                id="right-arrow"></path>
                                        </g>
                                    </g>
                                </g>
                            </svg></a>
                    </div>
                    <div class="col-lg-7">
                        <div class="img-wrap">
                            @if( isset($section['Lets have Image']) && $section['Lets have Image']!="" && file_exists("uploads/".$section['Lets have Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['Lets have Image'] }}"  >
                            @else  
                            <img src="{{ asset('front/images/main-banner.png')}}" />
                            @endif 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-aboutchallenge py-5 mt-lg-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="img-wrap text-center">
                            @if( isset($section['About Image']) && $section['About Image']!="" && file_exists("uploads/".$section['About Image']))   
                            <img src="{{ config('app.url').'/uploads/'.$section['About Image'] }}"  >
                            @else  
                            <img src="{{ asset('front/images/AdobeExpressAd01.jpg')}}" />
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-5 caption">
                        <h2>{{$section['About Title']}}</h2>
                        <p>{!!nl2br($section['About Description'])!!}</p>
                        <a href="{{$section['About Link']}}" class="btn btn-dark">Participate with <span class="text-purple">Express</span> <svg
                                class="svg-icon icon-right-arrow text-purple ms-2" viewBox="0 -6.5 38 38" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <g id="icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g id="ui-gambling-website-lined-icnos-casinoshunter"
                                        transform="translate(-1511.000000, -158.000000)" fill="currentColor"
                                        fill-rule="nonzero">
                                        <g id="1" transform="translate(1350.000000, 120.000000)">
                                            <path
                                                d="M187.812138,38.5802109 L198.325224,49.0042713 L198.41312,49.0858421 C198.764883,49.4346574 198.96954,49.8946897 199,50.4382227 L198.998248,50.6209428 C198.97273,51.0514917 198.80819,51.4628128 198.48394,51.8313977 L198.36126,51.9580208 L187.812138,62.4197891 C187.031988,63.1934036 185.770571,63.1934036 184.990421,62.4197891 C184.205605,61.6415481 184.205605,60.3762573 184.990358,59.5980789 L192.274264,52.3739093 L162.99947,52.3746291 C161.897068,52.3746291 161,51.4850764 161,50.3835318 C161,49.2819872 161.897068,48.3924345 162.999445,48.3924345 L192.039203,48.3917152 L184.990421,41.4019837 C184.205605,40.6237427 184.205605,39.3584519 184.990421,38.5802109 C185.770571,37.8065964 187.031988,37.8065964 187.812138,38.5802109 Z"
                                                id="right-arrow"></path>
                                        </g>
                                    </g>
                                </g>
                            </svg></a>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-howtoparticipate py-5 mt-lg-5">
            <div class="container">
                <div class="section-heading">
                    <h2>{{$section['Participate Title']}}</h2>
                    <h3>STEPS</h3>
                </div>
                <div class="participate-steps counter-start">
                    <div class="participate-step">
                        <h2>{{$section['Step 1 Title']}}</h2>
                        <p>{!!nl2br($section['Step 1 Description'])!!}</p>
                    </div>
                    <div class="participate-step">
                        <h2>{{$section['Step 2 Title']}}</h2>
                        <p>{!!nl2br($section['Step 2 Description'])!!}</p>
                    </div>
                    <div class="participate-step">
                        <h2>{{$section['Step 3 Title']}}</h2>
                        <p>{!!nl2br($section['Step 3 Description'])!!}</p>
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
                            <img src="{{ asset('front/images/home-webinar.jpg') }}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="section section-adobeexpress py-lg-5 mt-lg-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 caption">
                        <h2>Create with <span class="text-peach">Adobe Express</span></h2>
                        <p><a href="{{$section['Create with tour link']}}" class="btn btn-dark me-2">Take Tour</a></p>
                        <p><a href="{{$section['Create with Participate link']}}" class="btn btn-dark me-2">Participate with <span
                                    class="text-purple">Express</span> <i
                                    class="fa-solid fa-arrow-right-long text-purple"></i></a></p>
                    </div>
                    <div class="col-lg-7">
                        <style>
                            .video-wrap {
                              position: relative;
                              width: 100%;
                              overflow: hidden;
                              padding-top: 100%; /* 1:1 Aspect Ratio */
                            }
                            
                            .responsive-iframe {
                              position: absolute;
                              top: 0;
                              left: 0;
                              bottom: 0;
                              right: 0;
                              width: 100%;
                              height: 100%;
                              border: none;
                            }

                        </style>
                        <div class="video-wrap">
                             <iframe class="responsive-iframe" src="{{$section['Create with Video Link']}}"></iframe>
                            <!--<div class="img-wrap text-center"><img src="{{ asset('front/images/video-bg.png')}}" /></div>
                            <button class="btn play-btn" id="videoModalBtn"><img src="{{ asset('front/images/icon-play.png')}}" /></button>-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-editpdf py-5 mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="img-wrap text-center">
                            @if( isset($section['Drag-drop Image']) && $section['Drag-drop Image']!="" && file_exists("uploads/".$section['Drag-drop Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['Drag-drop Image'] }}"  >
                            @else  
                            <img src="{{ asset('front/images/edit-pdf-img-1.jpg')}}" alt="" />
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="caption">
                            <h2>{{$section['Drag-drop Title']}}</h2>
                            <p>{!!nl2br($section['Drag-drop Description'])!!} </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-worktogether py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 order-lg-2">
                        <div class="img-wrap text-center">
                            @if( isset($section['Work together Image']) && $section['Work together Image']!="" && file_exists("uploads/".$section['Work together Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['Work together Image'] }}"  >
                            @else  
                            <img src="{{ asset('front/images/edit-pdf-img-2.jpg')}}" alt="" />
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="caption">
                            <h2>Work together.</h2>
                            <h2>{{$section['Work together Title']}}</h2>
                            <p>{!!nl2br($section['Work together Description'])!!} </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-buildyourbrand py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="img-wrap text-center">
                            @if( isset($section['Build your brand Image']) && $section['Build your brand Image']!="" && file_exists("uploads/".$section['Build your brand Image']))   
                                <img src="{{ config('app.url').'/uploads/'.$section['Build your brand Image'] }}"  >
                            @else  
                            <img src="{{ asset('front/images/edit-pdf-img-3.jpg')}}" alt="" />
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="caption">
                            <h2>{{$section['Build your brand Title']}}</h2>
                            <p>{!!nl2br($section['Build your brand Description'])!!} </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-participation-categories py-5 mt-lg-5">
            <div class="container">
                <div class="section-heading">
                    <div class="row justify-content-between align-items-end">
                        <div class="col-lg-auto">
                            <h2>Participation categories</h2>
                        </div>
                    </div>
                </div>
                <div class="participation-categories-grid">
                    <div class="grid-iteam"><div class="d-block text-center"><a target="_blank" href="https://new.express.adobe.com/explore/templates?assetCollection=ccx%2Feditor%2Ftemplate%2FInstagram-Square-Post"><img src="{{ asset('front/images/instapost-1.png')}}" alt="" /></a></div><div class="mt-3 text-center"><a target="_blank" class="btn btn-primary px-5" href="https://new.express.adobe.com/explore/templates?assetCollection=ccx%2Feditor%2Ftemplate%2FInstagram-Square-Post">Instagram Post</a></div></div>
                    <div class="grid-iteam"><div class="d-block text-center"><a target="_blank" href="https://new.express.adobe.com/explore/templates?assetCollection=ccx%2Feditor%2Ftemplate%2FPoster-ALL"><img src="{{ asset('front/images/poster.png')}}" alt="" /></a></div><div class="mt-3 text-center"><a target="_blank" class="btn btn-primary px-5" href="https://new.express.adobe.com/explore/templates?assetCollection=ccx%2Feditor%2Ftemplate%2FPoster-ALL">Poster</a></div></div>
                    <div class="grid-iteam"><div class="d-block text-center"><a target="_blank" href="https://new.express.adobe.com/explore/templates?q=zoom+background"><img src="{{ asset('front/images/zoom-bg.png')}}" alt="" /></a></div><div class="mt-3 text-center"><a target="_blank" class="btn btn-primary px-5" href="https://new.express.adobe.com/explore/templates?q=zoom+background">Zoom Background</a></div></div>
                </div>
            </div>
        </section>
        <!-- 
            <section class="section section-gocreative py-5 mt-lg-5">
                <div class="container">
                    <div class="section-heading">
                        <div class="row justify-content-between align-items-end">
                            <div class="col-lg-auto">
                                <h2>Go creative<br>Create your design using templates</h2>
                            </div>
                            <div class="col-lg-auto">
                                <a href="#" class="btn btn-dark">Participate with <span class="text-purple">Express</span>
                                    <svg class="svg-icon icon-right-arrow text-purple ms-2" viewBox="0 -6.5 38 38"
                                        version="1.1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink">
                                        <g id="icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <g id="ui-gambling-website-lined-icnos-casinoshunter"
                                                transform="translate(-1511.000000, -158.000000)" fill="currentColor"
                                                fill-rule="nonzero">
                                                <g id="1" transform="translate(1350.000000, 120.000000)">
                                                    <path
                                                        d="M187.812138,38.5802109 L198.325224,49.0042713 L198.41312,49.0858421 C198.764883,49.4346574 198.96954,49.8946897 199,50.4382227 L198.998248,50.6209428 C198.97273,51.0514917 198.80819,51.4628128 198.48394,51.8313977 L198.36126,51.9580208 L187.812138,62.4197891 C187.031988,63.1934036 185.770571,63.1934036 184.990421,62.4197891 C184.205605,61.6415481 184.205605,60.3762573 184.990358,59.5980789 L192.274264,52.3739093 L162.99947,52.3746291 C161.897068,52.3746291 161,51.4850764 161,50.3835318 C161,49.2819872 161.897068,48.3924345 162.999445,48.3924345 L192.039203,48.3917152 L184.990421,41.4019837 C184.205605,40.6237427 184.205605,39.3584519 184.990421,38.5802109 C185.770571,37.8065964 187.031988,37.8065964 187.812138,38.5802109 Z"
                                                        id="right-arrow"></path>
                                                </g>
                                            </g>
                                        </g>
                                    </svg></a>
                            </div>
                        </div>
                    </div>
                    <div class="gocreative-cards">
                        <div class="gocreative-cards-item"><a href="#"><img src="{{ asset('front/images/gocreative-01.jpg')}}" alt="" /></a>
                        </div>
                        <div class="gocreative-cards-item"><a href="#"><img src="{{ asset('front/images/gocreative-02.jpg')}}" alt="" /></a>
                        </div>
                        <div class="gocreative-cards-item"><a href="#"><img src="{{ asset('front/images/gocreative-03.jpg')}}" alt="" /></a>
                        </div>
                        <div class="gocreative-cards-item"><a href="#"><img src="{{ asset('front/images/gocreative-04.jpg')}}" alt="" /></a>
                        </div>
                    </div>
                </div>
            </section>
         -->
        <section class="section section-prizes py-5 mt-lg-5">
            <div class="container">
                <div class="section-heading">
                    <h2>Prizes</h2>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Categories</th>
                                <th class="text-center">1<sup>st</sup></th>
                                <th class="text-center">2<sup>nd</sup></th>
                                <th class="text-center">3<sup>rd</sup></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($prizes as $key => $value)
                            <tr>
                                <th>{{$value->name}}</th>
                                <td class="text-center"><button type="button" class="btn btn-primary">INR
                                        {{number_format($value->first)}}</button></td>
                                <td class="text-center"><button type="button" class="btn btn-primary">INR
                                        {{number_format($value->second)}}</button></td>
                                <td class="text-center"><button type="button" class="btn btn-primary">INR
                                        {{number_format($value->third)}}</button></td>
                            </tr>
                             

                                 @endforeach
                             
                        </tbody>
                    </table>
                </div>
        </section>
        <section class="section section-homefaqs py-5 mt-lg-5">
            <div class="container">
                <div class="section-heading">
                    <h3>FAQ’s</h3>
                    <h2>Frequently asked questions</h2>
                </div>
                <div class="faqGridWrap accordion" id="accordionFAQ">

                    @foreach($faqs as $key => $value)
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="heading1">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse{{$key}}" aria-expanded="false" aria-controls="collapse{{$key}}">
                                {{$value->question}} 
                            </button>
                        </h2>
                        <div id="collapse{{$key}}" class="accordion-collapse collapse" aria-labelledby="heading{{$key}}"
                            data-bs-parent="#accordionFAQ">
                            <div class="accordion-body">
                                <p>{!!nl2br($value->answer)!!}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach 
                     

                </div>
                <?php /* <div class="section-footer">
                    <a href="{{$section['Participate with Express Link']}}" class="btn btn-dark">Participate with <span class="text-purple">Express</span> <svg
                            class="svg-icon icon-right-arrow text-purple ms-2" viewBox="0 -6.5 38 38" version="1.1"
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g id="icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g id="ui-gambling-website-lined-icnos-casinoshunter"
                                    transform="translate(-1511.000000, -158.000000)" fill="currentColor"
                                    fill-rule="nonzero">
                                    <g id="1" transform="translate(1350.000000, 120.000000)">
                                        <path
                                            d="M187.812138,38.5802109 L198.325224,49.0042713 L198.41312,49.0858421 C198.764883,49.4346574 198.96954,49.8946897 199,50.4382227 L198.998248,50.6209428 C198.97273,51.0514917 198.80819,51.4628128 198.48394,51.8313977 L198.36126,51.9580208 L187.812138,62.4197891 C187.031988,63.1934036 185.770571,63.1934036 184.990421,62.4197891 C184.205605,61.6415481 184.205605,60.3762573 184.990358,59.5980789 L192.274264,52.3739093 L162.99947,52.3746291 C161.897068,52.3746291 161,51.4850764 161,50.3835318 C161,49.2819872 161.897068,48.3924345 162.999445,48.3924345 L192.039203,48.3917152 L184.990421,41.4019837 C184.205605,40.6237427 184.205605,39.3584519 184.990421,38.5802109 C185.770571,37.8065964 187.031988,37.8065964 187.812138,38.5802109 Z"
                                            id="right-arrow"></path>
                                    </g>
                                </g>
                            </g>
                        </svg></a>

                </div> */ ?>
            </div>
        </section>
    </div>




  @endsection 
@section('script') 
 <script type="text/javascript">
    
 $("#videoModalBtn").click(function () {
  var src =
    "{{$section['Create with Video Link']}}";
  $("#videoModal").modal("show");
  $("#videoModal iframe").attr("src", src);
});

</script>
@endsection
