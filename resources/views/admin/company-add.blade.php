@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>{{ ($values['id'])?"Edit":"Add" }}  Company</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="{{route('company') }}"> Company</a></li>
                        <li class="breadcrumb-item active">{{ ($values['id'])?"Edit":"Add" }} </li>
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

                        <form method="post" action="{{ route('company') }}" class="form-horizontal" role="form" enctype="multipart/form-data">
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
                                    
                                    <label for="name" class="col-sm-3 col-form-label">{{ __('Name') }}</label>
                                    <div class="col-sm-9">
                                        <input id="name" type="text" class="form-control" required  name="name" value="{{ $values['name'] }}" />
                                    </div>
                                </div>
                               

                                
                                 
                            </div> 
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info"> Save </button> 

                                @if($values['id']!="")
                                    <a class="btn btn-danger" href="{{route('company')}}">Cancel</a>
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
