@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Settings</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Settings</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-12">

                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">All Settings</h3>
                        </div>

                       

                         <form method="post" action="{{ route('settings.store') }}" class="form-horizontal" role="form">
                           <div class="card-body">

                            @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                            @endif
                            {!! csrf_field() !!}

                            
                                @foreach($settings as $section => $fields)

                                 
                                    <div class="form-group row">
                                        <label for="inputEmail_{{$section}}" class="col-sm-3 col-form-label">{{ucfirst( str_replace("-"," ", $fields->key))}}</label>
                                        <div class="col-sm-9">
                                            <input type="" class="form-control" id="inputEmail_{{$section}}" name="value[{{$fields->key}}]" placeholder="Enter Details" value="{{$fields->value}}">
                                        </div>
                                    </div>

                                    <?php /* <div class="panel panel-info">s
                                        <div class="panel-heading">
                                            <i class="{{  }}"></i>
                                            {{ $fields['title'] }}
                                        </div>

                                        <div class="panel-body">
                                            <p class="text-muted">{{ $fields['desc'] }}</p>
                                        </div>

                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-7  col-md-offset-2">
                                                    @foreach($fields['elements'] as $field)
                                                        @includeIf('setting.fields.' . $field['type'] )
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>

                                    </div>  */?>
                                @endforeach

                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-info"> Save </button> 
                            </div>
                        </form>


                         
                    </div>

                </div>




            </div>

        </div>
    </section>

</div>

@endsection
