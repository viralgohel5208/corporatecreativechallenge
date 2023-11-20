@extends('layouts.front')
@section('content')
     <div class="content">
        <section class="section section-prizes mt-lg-5 mt-3">
            <div class="container">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><h2 class="fw-bold text-start mb-0">Prizes</h2></th>
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
    </div>

@endsection 