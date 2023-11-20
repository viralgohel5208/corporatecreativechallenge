@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>{{ ($values['id'])?"Edit":"Add" }} Our Prizes</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="{{route('prizes') }}">Our Prizes</a></li>
                        <li class="breadcrumb-item active">{{ ($values['id'])?"Edit":"Add" }} </li>
                    </ol>
                </div>
            </div>
            
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">

                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">{{ ($values['id'])?"Edit":"Add" }}</h3>
                        </div> 
                        <form method="post" action="{{ route('prizes') }}" class="form-horizontal" role="form" enctype="multipart/form-data">
                           <div class="card-body">

                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            
                            @if ($error = Session::get('error'))
                                <div class="alert alert-danger">
                                    <p>{{ $error }}</p>
                                </div>
                            @endif
                            @if ($message = Session::get('success'))
                                <div class="alert alert-success">
                                    <p>{{ $message }}</p>
                                </div>
                            @endif
                            {!! csrf_field() !!} 
                                
                                <input type="hidden" name="id" value="{{ $values['id'] }}" />
                                 
                                <?php /* {{ old('name', $value->name) }} */  ?>
                                <div class="form-group row">
                                    
                                    <label for="name" class="col-sm-2 col-form-label">{{ __('Name') }}</label>
                                    <div class="col-sm-10">
                                        <input id="name" type="text" class="form-control" required  name="name" value="{{ $values['name'] }}" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    
                                    <label for="first" class="col-sm-2 col-form-label">1<sup>st</sup></label>
                                    <div class="col-sm-10">
                                        <input id="first" type="number" class="form-control" required  name="first" value="{{ $values['first'] }}" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    
                                    <label for="second" class="col-sm-2 col-form-label">2<sup>nd</sup></label>
                                    <div class="col-sm-10">
                                        <input id="second" type="number" class="form-control" required  name="second" value="{{ $values['second'] }}" />
                                    </div>
                                </div> 

                                
                                <div class="form-group row">
                                    
                                    <label for="third" class="col-sm-2 col-form-label">3<sup>rd</sup></label>
                                    <div class="col-sm-10">
                                        <input id="third" type="number" class="form-control" required  name="third" value="{{ $values['third'] }}" /> 
                                    </div>
                                </div> 

                                 
                            </div> 
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info"> Save </button> 

                                @if($values['id']!="")
                                    <a class="btn btn-danger" href="{{route('prizes')}}">Cancel</a>
                                @endif
                            </div>
                        </form>                         
                    </div>
                </div>
                 
            </div>
        </div>
    </section>
</div>
@endsection
@section('script')

<script>
  $(function () {
     
  });
</script>

@endsection
