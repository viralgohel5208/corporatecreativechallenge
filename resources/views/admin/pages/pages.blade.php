@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style=" ">

  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Pages</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Pages</li>
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
              <h3 class="card-title">Manage All Pages</h3>
            </div>

            <div class="card-body">
              @if (session('success'))
                <div class="alert alert-success">
                  {{ session('success') }}
                </div>
                @endif
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Page Name</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                   @foreach ($pages as $key => $page)

                  <tr>

                    <td>{{++$key}}</td>
                    <td>{{ ucfirst(str_replace("-"," " ,$page->page_id))}}</td>
                    <td><a href="{{ url('corporate-admin/page/'.$page->page_id) }}" class="btn btn- btn-primary btn-sm"> <i class="fas fa-edit"></i> </a></td>
                     
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
    $("#example1").DataTable({
      "responsive": true, 
      "lengthChange": false, 
      "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    })
    //.buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    /*$('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });*/
  });
</script>

@endsection