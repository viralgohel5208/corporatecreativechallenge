@extends('admin.layouts.app')

@section('content')

<div class="content-wrapper-" style="">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Users</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Users</li>
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
                            <h3 class="card-title">View</h3>
                        </div> 
                            <div class="card-body">
                                <form action="" method="" class="form- control">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <select class="filters- select form-control" id="company_id" name="company_id" required>
                                                    <option value="">Select Company</option>
                                                    @foreach( $comapnies as $com )
                                                    <option {{$company_id==$com->id?"SELECTED":""}} value="{{$com->id}}">{{$com->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="button" id="searchFilter" class="btn btn-success" value="search">
                                            <a href="javascript:;" id="searchClear" data-url="{{route('users')}}" class="btn btn-primary">Cancel</a>
                                        </div>
                                    </div>
                                </form>
                                <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                  <tr>
                                    <!-- <th>No</th> -->
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Company</th>
                                    <th>Department</th>
                                    
                                    <th>Employee Id</th>
                                    <th>City</th>
                                    <th>Status</th>
                                    <!-- <th>View Photos</th> -->
                                    <!-- <th>Verified Users</th> -->
                                    <th>Action</th>
                                  </tr>
                                </thead>
                                <?php /* <tbody>
                                   @foreach($users as $i => $user)
                                   <tr>
                                    <td>{{++$i}}</td> 
                                    <td>{{$user->name}} </td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->com_name}}</td>
                                    <td>{{$user->location}}</td>
                                    
                                    <td>@if($user->status)
                                            <a href="javascipt:;" class="changeActive" data-status="1" data-id="{{$user->id}}">
                                                <label class="btn btn-xs btn-success">Active</label>
                                            </a>
                                        @else
                                            <a href="javascipt:;" class="changeActive" data-status="0" data-id="{{$user->id}}">
                                                <label class="btn btn-xs btn-danger">Inactive</label>
                                            </a>
                                        @endif</td>
                                    <td>
                                        <a href="{{route('images')}}?user_id={{$user->id}}" class="btn btn-xs btn-primary">Photos</a></td>
                                    
                                    <!-- <td>
                                        @if($user->email_verified_at)
                                            <a href="javascipt:;" class="changeStatus" data-status="1" data-id="{{$user->id}}">
                                                <label class="btn btn-xs btn-success">Yes</label>
                                            </a>
                                        @else
                                            <a href="javascipt:;" class="changeStatus" data-status="0" data-id="{{$user->id}}">
                                                <label class="btn btn-xs btn-danger">No</label>
                                            </a>
                                        @endif
                                    </td> -->

                                    <td>
                                        <form action="{{ route('user.destroy',$user->id) }}" method="POST">
                                            @csrf
                                        <a href="{{ route('user.view',$user->id) }}" class="btn btn-xs btn-success"><i class="fa fa-eye" title="View"></i></a>
                                        <a href="{{ route('user.edit',$user->id) }}" class="btn btn-xs btn-info"><i class="fa fa-pen" title="Edit"></i></a>
                                            <button type="submit" title="Remove" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></button>
                                        </form> 
                                    </td>
                                   </tr>
                                   @endforeach
                                </tbody> */ ?>
                                 
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

<script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
 

<script>
  $(function () {

    $(document).on("click","#searchFilter",function(){
        var company_id =$("#company_id").val();
        callData(company_id);
    });
    $(document).on("click","#searchClear",function(){
        callData();
    });
    callData()

function callData(company_id=""){


    $('#example1').DataTable({
        "bDestroy": true,
        dom: 'Blfrtip',
        processing: true,
        serverSide: true,
        ajax: {
            url: "{{route('getAjaexUser')}}",
            data: {
                company_id:company_id
            },
        },
        //order: [[5, 'desc']],
         order: [[7, 'desc']],
          lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All']
        ],
         columns: [ 
             { data: 'name' },
             { data: 'email' },
             { data: 'company_name' },
             { data: 'department' },
             { data: 'employe_id' },
             { data: 'city' },
             { data: 'status', },
            // { data: 'photo', },
             { data: 'id',  },

         ],
         'columnDefs': [ {
            'targets': [2,4,5], /* column index */
            'orderable': false, /* true or false */
         }],

        /*buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ] */
        buttons: [
            /*{
                extend: 'excelHtml5',
                text: 'Export',
                attr: {id: 'timeInButton',class:"btn btn-success" },
            },*/
            {
                text: 'Export',
                attr: {id: 'timeInButton',class:"btn btn-success" },
                action: function ( e, dt, node, config ) {
                     exportData()
                }
            },
            /*{
                text: 'All User Images',
                attr: {id: 'timeInButton',class:"btn btn-success" },
                action: function ( e, dt, node, config ) {
                     exportImageData()
                }
            }*/
        ]
    });
}

 $(document).on("click",".changeActive",function(){
        if(confirm("Are you sure, you want to change status ?"))
        {
            var that = $(this)
            var id = $(this).data("id");
            var status = $(this).data("status");

            $_token = "{{ csrf_token() }}";
             
            $.ajax({
                headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') },
                url: "{{ route('user-changeActive') }}",
                type: 'POST',
                cache: false,
                data: {  '_token': $_token , "id" : id,"status":status }, //see the $_token
                datatype: 'html', 
                success: function(data) {  
                    if(data.success == true) { 
                        that.parent().html(data.html);
                    }  
                },
                error: function(xhr,textStatus,thrownError) {
                    alert(xhr + "\n" + textStatus + "\n" + thrownError);
                }
            });
        } 
    })
    $(document).on("click",".changeStatus",function(){
        if(confirm("Are you sure, you want to change status ?"))
        {
            var that = $(this)
            var id = $(this).data("id");
            var status = $(this).data("status");

            $_token = "{{ csrf_token() }}";
             
            $.ajax({
                headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') },
                url: "{{ route('user-statuschange') }}",
                type: 'POST',
                cache: false,
                data: {  '_token': $_token , "id" : id,"status":status }, //see the $_token
                datatype: 'html', 
                success: function(data) {  
                    if(data.success == true) { 
                        that.parent().html(data.html);
                    }  
                },
                error: function(xhr,textStatus,thrownError) {
                    alert(xhr + "\n" + textStatus + "\n" + thrownError);
                }
            });
        } 
    })
    function exportData(){


            $_token = "{{ csrf_token() }}";
            var company_id =$("#company_id").val();
        $.ajax({
            headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') },
            url: "{{ route('user-export') }}",
            type: 'POST',
            cache: false,
            data: {  '_token': $_token,company_id:company_id }, //see the $_token
            //datatype: 'html', 
            //contentType: "application/json",
            dataType: "json",
            success: function(data) {  
                  let result =  data;
                    const url = window.URL.createObjectURL(new Blob([result]));
                    const link = document.createElement('a');
                    var today = new Date();
                    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate() +"_"+ today.getHours() + today.getMinutes() + today.getSeconds();
                    link.setAttribute('download', 'Export_Data_'+date+'.csv');
                    link.href = url;
                    document.body.appendChild(link);
                    link.click();
            },
            error: function(xhr,textStatus,thrownError) {
                alert(xhr + "\n" + textStatus + "\n" + thrownError);
            }
        });

        
    }
    function exportImageData(){
        $_token = "{{ csrf_token() }}";
            var company_id =$("#company_id").val();
        $.ajax({
            headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') },
            url: "{{ route('user-export') }}",
            type: 'POST',
            cache: false,
            data: {  '_token': $_token,company_id:company_id,exportImageData:"1" }, //see the $_token
            //datatype: 'html', 
            //contentType: "application/json",
            dataType: "json",
            success: function(data) {  
                  let result =  data;
                    const url = window.URL.createObjectURL(new Blob([result]));
                    const link = document.createElement('a');
                    var today = new Date();
                    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate() +"_"+ today.getHours() + today.getMinutes() + today.getSeconds();
                    link.setAttribute('download', 'Export_imagedata_'+date+'.csv');
                    link.href = url;
                    document.body.appendChild(link);
                    link.click();
            },
            error: function(xhr,textStatus,thrownError) {
                alert(xhr + "\n" + textStatus + "\n" + thrownError);
            }
        });
    }

  });
</script>

@endsection
