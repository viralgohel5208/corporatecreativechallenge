@extends('layouts.front')
@section('content')
     <div class="content">
        <section class="section section-categories  mt-lg-5 mt-3">
            <div class="container">
                <h2>Categories</h2>
                <h3>There are 3 categories in Corporate Creative Challenge, Poster, Instagram post and Zoom Background page. Every participant can upload one entry each to every category.</h3>
                <div class="row">
                    <div class="col-md-4 text-center"><div class="card card-1"><div class="card-body"><h4 class="h5">Category 1</h4><h5 class="h2">Poster</h5></div></div></div>
                    <div class="col-md-4 text-center mt-5 mt-md-0"><div class="card card-2"><div class="card-body"><h4 class="h5">Category 2</h4><h5 class="h2">Instagram Post</h5></div></div></div>
                    <div class="col-md-4 text-center mt-5 mt-md-0"><div class="card card-3"><div class="card-body"><h4 class="h5">Category 3</h4><h5 class="h2">Zoom Background</h5></div></div></div>
                </div>
            </div>
        </section>
        <section class="section section-topics mt-lg-5 mt-3">
            <div class="container">
                <h2>Topics</h2>
                <h3>Participants are free to select any topic and pair it with any category they prefer. For example, they can choose "Nature" for an Instagram post, "Internal Event Promotion" for a flyer, or mix and match as they see fit to create their designs. This flexibility allows for creativity and variety in the Corporate Creative Challenge.
</h3>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Nature</h4>  
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Promote a local hiking event with beautiful nature graphics.</p>
                                <p><b>Instagram Post:</b> Share a stunning nature photo with an inspiring quote.</p>
                                <p><b>Zoom Background:</b> Create a serene natural landscape for virtual meetings.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Travel</h4>
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Promote a travel agency's special vacation packages.</p>
                                <p><b>Instagram Post:</b> Share a memorable travel photo with a travel tip.</p>
                                <p><b>Zoom Background:</b> Design a dreamy travel destination for virtual meetings.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Music</h4>
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Promote a live music event with dynamic music-themed graphics.</p>
                                <p><b>Instagram Post:</b> Share your favorite music playlist or album cover.</p>
                                <p><b>Zoom Background:</b> Design a musical backdrop for virtual meetings.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Pets</h4>
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Advertise a pet adoption event with cute pet photos.</p>
                                <p><b>Instagram Post:</b> Feature your adorable pet with a fun caption.</p>
                                <p><b>Zoom Background:</b> Create a pet-friendly background for virtual </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Employee Wellness Campaign</h4>
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Design an informative flyer promoting the benefits of exercise and healthy eating for employees.</p>
                                <p><b>Instagram Post:</b> Share a photo of a healthy office snack with tips for staying energized at work.</p>
                                <p><b>Zoom Background:</b> Create a soothing wellness-themed background for virtual meetings with calming imagery.meetings.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="h5">Internal Event Promotion</h4>
                            </div>
                            <div class="card-body">
                                <p><b>Poster:</b> Design an eye-catching flyer with event details and a registration link for employees.</p>
                                <p><b>Instagram Post:</b> Post a teaser image or video clip of the upcoming internal event to generate excitement.</p>
                                <p><b>Zoom Background:</b> Create a custom background with event branding and date/time information for virtual meetings.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-webinar mt-lg-5 mt-3 mb-5">
            <div class="container">               
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-5">
                        <h2>Webinar</h2>
                        <h3>Tips and Tricks to create effective Internal Communication Visuals with Generative Artifical Intelligence (GenAI)</h3>
                        <div class="date"><span class="dd">3</span><span class="mm">November, Friday</span></div>
                        <div class="time"><span class="time-icon"></span> 3.30 PM - 4.00 PM </div>
                        <a href="https://docs.google.com/forms/d/1NqpHv8Chsd6FQMoLSvjA-_dJy4GAZcXUTsrqvFjRUtk/edit" target="_blank" class="btn btn-dark">Register Now</a>
                    </div>
                    <div class="col-lg-auto mt-4 mt-lg-0 text-center">
                        <div class="img-wrap">
                            <img src="{{ asset('front/images/categories-webinar.jpg')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>


  
@endsection 