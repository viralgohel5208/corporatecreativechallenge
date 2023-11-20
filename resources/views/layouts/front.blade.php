<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"> 
        
    <title>@if( isset ( $section['title']) ){{$section['title']." | "}}@endif{{config('app.name')}}</title>
    <meta name="title" content="@if( isset ( $section['title']) ){{$section['title']}}@endif" />
    <meta name="keywords" content="@if( isset ( $section['Meta-tags']) ){{$section['Meta-tags']}}@endif" />
    <meta name="description" content="@if( isset ( $section['Meta-Description']) ){{$section['Meta-Description']}}@endif" />
     
     

    <!-- Favicon -->

    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('front/images/favicon.jpg')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('front/images/favicon.jpg')}}">
    
    <link rel="stylesheet" type="text/css" href="{{ asset('front/css/fontawesome/fontawesome.min.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('front/css/fontawesome/all.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('front/css/fonts.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('front/css/styles.css') }}">
    <!--=== Windows Phone JS Code Start ===-->
    <script type="text/javascript">
        if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement('style')
            msViewportStyle.appendChild(
                document.createTextNode(
                    '@-ms-viewport{width:auto!important}'
                )
            )
            document.querySelector('head').appendChild(msViewportStyle)
        }
    </script>
    
</head>

<body>


     
     <header class="sticky-headerWrap">
        <div class="sticky-header">
            <div class="container">
                <div class="main-header navbar navbar-expand-lg bg-transparent" role="navigation">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="logowrap me-auto">
                        <a href="/">
                            <img src="{{ asset('front/images/logo.png')}}"
                                alt="Corporate Creative Challenge 2023" height="109" />
                            </a></div>


                    <div class="offcanvas offcanvas-end text-bg-white" tabindex="-1" id="navbarSupportedContent"
                        aria-labelledby="navbarSupportedContentLabel">
                        <div class="offcanvas-header">
                            <button type="button" class="btn-close btn-close-dark ms-auto" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">


                            <!-- <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent"> -->

                            <ul class="navbar-nav justify-content-end  ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="{{config('app.url') }}">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        About
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="{{ route('our-categories') }}">Our Categories</a></li>
                                        <li><a class="dropdown-item" href="{{ route('how-it-works') }}">How it works</a></li>
                                        <li><a class="dropdown-item" href="{{ route('road-map') }}">Road Map</a></li>
                                        <li><a class="dropdown-item" href="{{ route('faq') }}">FAQ’s</a></li>
                                        <!-- <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li>
                                            <hr class="dropdown-divider">
                                        </li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('prize') }}">Prizes</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('contact-us') }}" class="nav-link">Contact</a>
                                </li>
                                    @guest
                                    <li class="nav-item">
                                        <a href="#" {{ route('account') }} class="btn btn-dark">Register / Login <svg
                                            class="svg-icon icon-right-arrow ms-2" viewBox="0 -6.5 38 38" version="1.1"
                                            xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <g id="icons" stroke="none" stroke-width="1" fill="none"
                                                fill-rule="evenodd">
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
                                    </li>
                                    @endguest
                                     

                                    @auth
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('home') }}">Profile</a>
                                    </li>

                                    <?php /* <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                      @csrf
                                    </form>
                                    <li class="nav-item">
                                        <a href="javascript:;" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                    </li> */ ?>

                                    <li class="nav-item">
                                        <a target="_blank" href="https://express.adobe.com/sp/" class="btn btn-dark">Create With Express<svg
                                            class="svg-icon icon-right-arrow ms-2" viewBox="0 -6.5 38 38" version="1.1"
                                            xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <g id="icons" stroke="none" stroke-width="1" fill="none"
                                                fill-rule="evenodd">
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
                                    </li>


                                    @endauth
                                     
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <marquee style="color: red;">The Corporate Creative Challenge 2023 has ended. Stay tuned for results...</marquee>
    </header>
    <!-- header end -->
    @yield('content')

    
    <div class="startwithadobeexpressWrap">
        <div class="container">
            <div class="startwithadobeexpress">
                <div class="caption">
                    <h3>Start with <span>Adobe Express</span> to create your designs</h3>
                    <a href="{{$globalSettings['Adobe-Express-get-started-link ']}}" class="btn btn-dark">Get Started</a>
                </div>
            </div>
        </div>
    </div>


    <footer class="footer">
        <div class="container">
            <div class="main-footer">
                <div class="logowrap"><a href="/"><img src="{{ asset('front/images/logo.png')}}"
                            alt="Corporate Creative Challenge 2023"></a></div>
                <div class="footerLink">
                    <ul>
                        <li class="active"><a href="#">Links</a></li>
                        <li><a href="{{ route('our-categories') }}">Our Categories</a></li>
                        <li><a href="{{ route('road-map') }}">Road Map</a></li>
                        <li><a href="{{ route('faq') }}">FAQ’s</a></li>
                        <li><a href="{{ route('prize') }}">Prizes</a></li>
                        <li><a href="{{ route('contact-us') }}">Contact Us</a></li>
                    </ul>
                </div>
                @guest
                <div class="signOutLink">
                    <a href="#" {{ route('account') }} >Register / Login</a>
                </div>
                @endguest
                @auth
                <div class="signOutLink">
                    <a href="{{ route('home') }}">Profile</a>
                    
                    <br>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                  @csrf
                </form>
               
                 
                    <a href="javascript:;"  onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a>
                
                </div>

                @endauth

            </div>
            <div class="small-footer">
                <div class="copyright">Copyright © Corporate Creative Challenge 2023</div>
                <div class="privacyPolicyLinks">
                    <a href="{{ route('privacy-policy') }}">Privacy Policy</a>
                    <a href="{{ route('terms-conditions') }}">Terms & Conditions</a>
                </div>

            </div>
        </div>
    </footer>


    <!-- Video Modal Start -->
    <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="ratio ratio-16x9">
                        <iframe title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Video Modal End -->

    




     <script src="{{ asset('front/js/jquery.min.js')}}"></script>
    <script src="{{ asset('front/js/popper.min.js')}}"></script>
    <script src="{{ asset('front/js/bootstrap.min.js')}}"></script>
    <script src="{{ asset('front/js/script.js')}}"></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>
    <script type="text/javascript">
    @if($errors->any()) 
      @foreach ($errors->all() as $error) 
        $.notify("{{$error}}", "error"); 
      @endforeach 
    @endif 

    @if(Session::has('error'))
      $.notify("{{Session::get('error')}}", "error"); 
    @endif

    @if(Session::has('success'))
      $.notify("{{Session::get('success')}}", "success"); 
    @endif

    @if(Session::has('message'))
      $.notify("{{Session::get('message')}}", "success"); 
    @endif

    @if(Session::has('subscribed'))
      $.notify("{{Session::get('subscribed')}}", "success"); 
    @endif 

    </script>

    @yield('script')
 
</body>
</html>