@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Company</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Company</li>
                    </ol>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-12">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">
                            <a href="{{route('addcompany') }}" class="btn btn-sm btn-success">Add New</a>
                        </li>
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
                            <h3 class="card-title">Companies</h3>
                        </div> 
                            <div class="card-body">
                             
                                 
                                <table id="example1" class="table table-bordered table-striped">
                            <thead>
                              <tr>
                                <th>No</th>  
                                <th>Name</th> 
                                <th>Action</th>
                              </tr>
                            </thead>
                            <tbody>
                               @foreach($company as $i => $image)
                               <tr>
                                <td>{{++$i}}</td> 
                                 
                                <td>{{$image->name}}</td>  
                                <td>
                                    <form action="{{ route('company.destroy',$image->id) }}" method="POST">
                                        @csrf
                                        <a href="{{ route('company.edit',$image->id) }}" class="btn btn-sm btn-info"><i class="fa fa-pen" title="Edit"></i></a>
                                        <button type="submit" class="btn btn-sm btn-danger">Delete</button>
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

<script>
  $(function () {
    $('#example1').DataTable();
  });
</script>

@endsection