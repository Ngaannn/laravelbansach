@extends('admin.layout.main')

@section('content')

<section class="content-header">
    <h1>
        Cập nhật bản ghi
    </h1>
</section>
<div class="content">
	<form action="admin/footer/update/{{$footer->id}}" method="post" enctype="multipart/form-data">
	{{-- <input type="hidden" name="_token" value=""> --}}
	@csrf
	<div class="box box-primary">
		<div class="box-body">
			@if(count($errors) > 0)
				<div class="alert alert-danger">
					@foreach($errors->all() as $item)
						{{$item}}<br>
					@endforeach
				</div>
			@endif
	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Chính sách cửa hàng</label>
						<textarea class="form-control ckeditor" rows="7" name="chinhsach" placeholder="Nhập ...">{{ $footer->chinhsach }}</textarea>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>
	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Dịch vụ nổi bật</label>
						<textarea class="form-control ckeditor" rows="7" name="dichvu" placeholder="Nhập ...">{{ $footer->dichvu }}</textarea>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>
	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Có thể bạn quan tâm</label>
						<textarea class="form-control ckeditor" rows="7" name="cothequantam" placeholder="Nhập ...">{{ $footer->cothequantam }}</textarea>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

		    <div class="form-group">
		        <button type="submit" class="btn btn-success">Lưu lại</button>
		    </div>
		</div>
	</div>
	</form>
</div>

@endsection