@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Faqs</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Faqs</li>
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
                            <h3 class="card-title">Add/Edit</h3>
                        </div> 
                        <form method="post" action="{{ route('faqs') }}" class="form-horizontal" role="form" enctype="multipart/form-data">
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
                                    
                                    <label for="question" class="col-sm-3 col-form-label">{{ __('Question') }}</label>
                                    <div class="col-sm-9">
                                        <input id="question" type="text" class="form-control" required  name="question" value="{{ $values['question'] }}" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    
                                    <label for="answer" class="col-sm-3 col-form-label">{{ __('Answer') }}</label>
                                    <div class="col-sm-9">
                                        <textarea name="answer" id="answer" class="form-control ckeditor" required >{{ $values['answer'] }}</textarea> 
                                    </div>
                                </div> 
                          
                                
                            </div> 
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info"> Save </button> 

                                @if($values['id']!="")
                                    <a class="btn btn-danger" href="{{route('faqs')}}">Cancel</a>
                                @endif
                            </div>
                        </form>                         
                    </div>
                </div>
                 <div class="col-md-12">
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">View</h3>
                        </div> 
                            <div class="card-body">
                             
                                <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                  <tr>
                                    <th>No</th> 
                                    <th>Question</th>
                                    <th>Answer</th>
                                    <th>Action</th>
                                  </tr>
                                </thead>
                                <tbody>
                                   @foreach($faqs as $i => $value)
                                   <tr>
                                    <td>{{++$i}}</td> 
                                    <td>{{$value->question}}</td>
                                    <td>{{$value->answer}}</td>
                                    <td>
                                        <form action="{{ route('faqs.destroy',$value->id) }}" method="POST">
                                            @csrf
                                        <a href="{{ route('faqs.edit',$value->id) }}" class="btn btn-sm btn-info"><i class="fa fa-pen" title="Edit"></i></a>
                                            <button type="submit" title="Remove" class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button>
                                        </form>
                                    </td>
                                   </tr>
                                   @endforeach
                                </tbody>
                                 
                              </table>
                            </div>                       
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
@section('script')

<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script>
  $(function () {
    $('#example1').DataTable();
     $('.ckeditor').ckeditor();
  });
</script>
@endsection
