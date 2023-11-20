@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style=" ">

  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>{{$page_name}}</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="{{route('pages') }}">Pages</a></li>
            <li class="breadcrumb-item active">Edit Pages</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Manage All Section</h3>
            </div>
            <form method="post" action="" class="form-horizontal" enctype="multipart/form-data">
              <div class="card-body"> 
                @if (session('success'))
                <div class="alert alert-success">
                  {{ session('success') }}
                </div>
                @endif
                {!! csrf_field() !!}

                @foreach($sections as $key => $section)
                  <input type="hidden"    name="fields[{{$section->section_name}}][type]"   value="{{$section->type}}">

                  <div class="form-group row">
                    <label for="inputEmail_{{$section}}" class="col-sm-12 col-form-label">{{ucfirst( str_replace("-"," ", $section->section_name))}}</label>
                    <div class="col-sm-12">

                     <!--  {{$section->type}} -->

                    @if($section->type=="text")

                      <input type="text" class="form-control" id="inputEmail_{{$key}}" name="fields[{{$section->section_name}}][value]" placeholder="Enter Details" value="{{$section->value}}">

                    @elseif($section->type=="image" || $section->type=="video" )
                      
                      @if($section->value!="" && file_exists("uploads/".$section->value))
                        @if( $section->type=="video" )
                        <video id="myVideo" loop muted  controls width="300px"  >
                          <source src="{{ config('app.url').'/uploads/'.$section->value }}" type="video/mp4">
                        </video>
                        @else
                        <img src="{{ config('app.url').'/uploads/'.$section->value }}" class="img-size-100 mr-3  img-fluid" style="max-width: 400px;"><br><br>
                        @endif
                      @endif
                      <input type="file" class="form-control" id="inputEmail_{{$key}}" name="fields[{{$section->section_name}}][value]" placeholder="Select File" >
                      <input type="hidden"    name="fields[{{$section->section_name}}][oldimg]"   value="{{$section->value}}">
                      <em>{{$section->instruction}}</em>

                    @elseif($section->type=="text-area")

                        <textarea class="form-control" cols="5" rows="6"  id="inputEmail_{{$key}}" name="fields[{{$section->section_name}}][value]" placeholder="Enter Details" >{{$section->value}}</textarea> 
                    @elseif($section->type=="ck-editor")
                        <textarea class="form-control ckeditor" cols="5" rows="6"  id="inputEmail_{{$key}}" name="fields[{{$section->section_name}}][value]" placeholder="Enter Details" >{{$section->value}}</textarea>
                    @endif
                    </div>
                  </div>
                  <!-- <hr> -->
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

  </div>

</section>
</div>
@endsection

@section('script')
<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script>
  $(function () {
     $('.ckeditor').ckeditor();
  });
</script>

@endsection