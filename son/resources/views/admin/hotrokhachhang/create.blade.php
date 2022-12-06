@extends('admin.layout.main')

@section('content')

<section class="content-header">
    <h1>
        Thêm mới bài viết
    </h1>
</section>
<div class="content">
	<form action="admin/hotrokhachhang/create" method="post" enctype="multipart/form-data">
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
						<label>Tên bài viết</label>
						<input type="text" class="form-control" name="name" placeholder="Nhập tên bài viết... " aria-required="true">
						@if($errors->first('name'))
						<p class="alert alert-danger"><i class=""></i> {{ $errors->first('name') }}</p>
						@endif
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-12 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Nội dung bài viết</label>
						<textarea class="form-control ckeditor" rows="7" name="noidungbaiviet" placeholder="Nhập nội dung bài viết ..."></textarea>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>


			<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Thẻ Title</label>
						<input type="text" class="form-control" name="title" onKeyDown="CountLeft(this.form.title, this.form.left,69);" onKeyUp="CountLeft(this.form.title,this.form.left,69);" placeholder="Nhập thẻ title ... " aria-required="true">
						<div class="help-block"></div>
					</div>
				</div>
				<div class="col-md-1">
					<div class="count-character-backend">
						<input readonly type="text" name="left" size=3 maxlength=3 value="69" disabled="disabled">
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Thẻ Meta Description</label>
						<textarea class="form-control" rows="7" name="description" onKeyDown="CountRight(this.form.description, this.form.right,300);" onKeyUp="CountRight(this.form.description,this.form.right,300);" placeholder="Nhập thẻ description ..."></textarea>
						<div class="help-block"></div>
					</div>
				</div>
				<div class="col-md-1">
					<div class="count-character-backend">
						<input readonly type="text" name="right" size=3 maxlength=3 value="300" disabled="disabled">
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Thẻ Headings</label>
						<textarea class="form-control ckeditor" rows="7" name="headings" placeholder="Nhập thẻ headings ..."></textarea>
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