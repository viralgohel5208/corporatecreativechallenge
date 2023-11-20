@extends('layouts.front')

@section('content') 
<style type="text/css">
	/*.cropControls{
		background: none !important;
	}
	.upload-photo-box .cropControls i.cropControlUpload {
		background: #755d5d0f;
	    width: 300px;
	    height: 300px;
	}
	
	.cropControls i.cropControlRemoveCroppedImage{
		    top: 0;
    right: 0;
    position: absolute;
	}*/
	.croppedImg{
		top: 1px;
    	position: absolute;
	}
	.upload-photo-box p{
		text-align: center;
		font-size: 120px;
	}
	.form-control{
		width: 100% !important;
	}
	#cropContainerModal
	{
		max-width: 100% !important;
		width: 530px !important;
		height:530px !important;
	}
	@media (max-width: 767px){

		#cropContainerModal
		{
			max-width: 100% !important;
			width: 375px !important;
			height:375px !important;
		}		
	}
</style>
<link href='https://fonts.googleapis.com/css?family=Lato:300,400,900' rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Mrs+Sheppards&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="{{asset('front/croppic/assets/css/main.css')}}" rel="stylesheet">
<link href="{{asset('front/croppic/assets/css/croppic.css')}}" rel="stylesheet">
 
	<!-- content start -->
	<div class="content">

		<div class="inner-page">
			<div class="upload-photo-main">
				<form name="upload_photo" id="upload_photo" method="post" action="{{route('user.uploadSubmit')}}" enctype="multipart/form-data">
					@csrf

           <input type="hidden" name="id" value="{{ $values['id'] }}" />
					<div class="container" style="text-align: center;" >
						
						

						<div class="upload-photo-box" id="cropContainerModal" style="margin: 0 auto;">
							<!-- <p> + </p> -->
		
							<!-- <div class="upload-btn">
								<div id="cropContainerModal"></div>
								<button class="btn" id="cropContainerModal7">Upload file</button>
								<input type="file" name="" id="">
							</div> -->
						</div>
						<em>Text cropping tool is only for Gallery Viewing only.</em>
						@if($values['id']!="")
						<div class="row">
							<br><br>
							<div class="photo-title">
								<h4>Old Image</h4>
							</div>
							<div class="col-md-12">
	                        	<img src="{{config('app.url').'/'.$values['crop_photo']}}" class="img-fluid mb-2" alt="white sample" style="width:200px;" />
	                            
	                            <!-- <img src="{{config('app.url').'/'.$values['photo']}}" class="img-fluid mb-2" alt="white sample" style="width:200px;" /> -->
	                            
	                        </div>
                        </div>
                        @endif
                        <input type="hidden" name="photo" value="{{$values['photo']}}">
	                    <input type="hidden" name="crop_photo" value="{{$values['crop_photo']}}">
	                    <input type="hidden" name="photo_models" value="{{$values['photo_models']}}">
	                    <input type="hidden" name="photo_iso" value="{{$values['photo_iso']}}">
	                    <input type="hidden" name="photo_aperture" value="{{$values['photo_aperture']}}">
	                    <input type="hidden" name="photo_exposure" value="{{$values['photo_exposure']}}">

						<div class="photo-description">
							<div class="photo-title">
								<h2>Enter Photo Title</h2>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required name="title" id="title" placeholder="Title" value="{{$values['title']}}">
							</div>
							<?php /* <div class="form-group">
								<input type="text" class="form-control" required name="location" id="location" placeholder="Location" value="{{$values['location']}}">
							</div> */ ?>
							<div class="form-group"> 
								<textarea name="description"   class="form-control" placeholder="Photo Description" id="" cols="30" rows="10">{{$values['description']}}</textarea>
							</div>
 
							<div class="form-group custom-select">
								<label for="">Select Category</label>
								<select name="category" required class="form-control form-select" id="category">
									<option value="">Select Category</option>
									@foreach($category as $cat)
										<option {{($values['category']==$cat->id)?"SELECTED":""}} value="{{$cat->id}}">{{$cat->name}}</option>
									@endforeach
									
								</select>
							</div>
							<div class="form-group">
								<button class="btn  btn" id="cropContainerModal7">Submit</button>
							</div>
						</div>
						
					</div>
				</form>
			</div>

		</div>
	</div>



	</div>
<style type="text/css">
	#loader{
		display: none;
		position: fixed;
	    left: 0px;
	    top: 0px;
	    width: 100%;
	    height: 100%;
	    z-index: 999999;
		text-align: center;
	    background: url('https://i.imgur.com/Cn9MC39.gif') 50% 50% no-repeat rgba(0,0,0,0.8);
		vertical-align: middle;
	  color: #fff;
	}
	.loader.bubblingG{
		display: none !important;
	}
</style>
<div class="text-center" id="loader" >	
	<!-- <img src="{{asset('front/images/loading.gif')}}" alt="loader" width="200px;" class="img-fluid"> -->
</div>
  @endsection 

@section('script') 
	
	<script src="{{ asset('front/croppic/assets/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('front/croppic/assets/js/jquery.mousewheel.min.js') }}"></script>
   	<script src="{{ asset('front/croppic/croppic.min.js') }}"></script>
    <script src="{{ asset('front/croppic/assets/js/main.js') }}"></script>


  <script>


		var croppicContainerModalOptions = {
    		uploadUrl:'{{route("user.image.upload")}}',
    		cropUrl:'{{route("user.image.crop")}}',
    		modal:true,
    		imgEyecandyOpacity:0.4,
    		loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> ',
    		onBeforeImgUpload: function(){ console.log('onBeforeImgUpload'); $("#loader").show(); },
    		onAfterImgUpload: function(){ console.log('onAfterImgUpload'); },
    		onImgDrag: function(){ console.log('onImgDrag') },
    		onImgZoom: function(){ console.log('onImgZoom');$("#loader").hide();  },
    		onBeforeImgCrop: function(){ console.log('onBeforeImgCrop') },
    		onAfterImgCrop:function(){ console.log('onAfterImgCrop') },
    		onReset:function(){ console.log('onReset');  },
    		onError:function(errormessage){ console.log('onError:'+errormessage) }
    	} 
    	var cropContainerModal = new Croppic('cropContainerModal', croppicContainerModalOptions);
    	     
    </script>



@endsection