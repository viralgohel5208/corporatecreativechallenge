@extends('layouts.front')
@section('content')
    <div class="content">
        <section class="section section-faqpage mt-lg-5 mt-3">
            <div class="container">
                <h2>Frequently asked questions</h2>
                <div class="accordion" id="accordionFAQ">

                    @foreach($faqs as $key => $value)
                    <div class="accordion-item">
                        <h3 class="accordion-header" id="heading1">
                            <button class="accordion-button {{($key==0)?'':'collapsed'}}" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseOne{{$key}}" aria-expanded="true" aria-controls="collapseOne{{$key}}">
                            {{$value->question}} 
                            
                            </button>

                        </h3>
                        <div id="collapseOne{{$key}}" class="accordion-collapse collapse {{($key==0)?'active show':''}}" aria-labelledby="headingOne"  
                            data-bs-parent="#accordionFAQ">
                            <div class="accordion-body">
                                
                                <p>{!!nl2br($value->answer)!!}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach 
                    

                </div>
            </div>
        </section>

    </div>


 
@endsection 