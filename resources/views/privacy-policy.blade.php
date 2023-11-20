@extends('layouts.front')
@section('content')
    <div class="content">
        <section class="section section-privacy-policy mt-lg-5 mt-3 ">
            <div class="container">
                <h2>{!!$section['title']!!}</h2>
                <div class="rte fw-semibold">
                    {!!$section['Description']!!}
                </div>                
            </div>
        </section>

    </div>
@endsection 