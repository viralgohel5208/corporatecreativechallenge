@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style=" ">

  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Registered Company</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Registered Company</li>
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
              <h3 class="card-title">Manage All Registered Company</h3>
            </div>

            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Contact Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Headcount</th>
                  </tr>
                </thead>
                <tbody>
                   
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
    $('#example1').DataTable({
         processing: true,
         serverSide: true,
         ajax: "{{route('getCompanydata')}}",
         columns: [
             { data: 'image' },
             { data: 'name' },
             { data: 'contact_name' },
             { data: 'email' },
             { data: 'department' },
             { data: 'headcount' },
         ]
     });
  });
</script>

@endsection