@extends('admin.layout.main')

@section('content')

<section class="content-header">
    <h1>
        Cập nhật danh mục
    </h1>
</section>
<div class="content">
	<form action="admin/danhmucsanpham/update/{{$danhmucsanpham->id}}" method="post" enctype="multipart/form-data">
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
						<label>Tên danh mục</label>
						<input type="text" class="form-control" name="name" placeholder="Nhập tên danh mục... " aria-required="true" value="{{$danhmucsanpham->name}}">
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Danh mục cha</label>
		              	<select class="form-control" name="danhmuccha_id">
		                    <option value="0">Lựa chọn danh mục cha</option>

		                    @foreach($danhmucsanphamAll as $item)
		                    <option value="{{$item->id}}" 
		                    	@if($danhmucsanpham->danhmuccha_id == $item->id)
		                    		{{"selected"}}
		                    	@endif
	                    	>
	                    		{{$item->name}}
	                    	</option>
		                    @if($item->chils)
		                    	@foreach($item->chils as $ccat)
		                    		<option value="{{$ccat->id}}" 
				                    	@if($danhmucsanpham->danhmuccha_id == $ccat->id)
				                    		{{"selected"}}
				                    	@endif
			                    	>
			                    		--- {{$ccat->name}}
			                    	</option>

		                    	@endforeach
		                    @endif
		                    @endforeach
		              	</select>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Trạng thái menu</label>
						<select class="form-control" name="status">
		                    <option value="2">Lựa chọn trạng thái</option>
		                    <option value="0" <?php if($danhmucsanpham->status == 0 or $danhmucsanpham->status == 2) echo "selected" ?>>Không hiển thị</option>
		                    <option value="1" <?php if($danhmucsanpham->status == 1) echo "selected" ?>>Hiển thị</option>
		              	</select>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

			<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Trạng thái trang chủ</label>
						<select class="form-control" name="status_page">
		                    <option value="2">Lựa chọn trạng thái</option>
		                    <option value="0" <?php if($danhmucsanpham->status_page == 0 or $danhmucsanpham->status_page == 2) echo "selected" ?>>Không hiển thị</option>
		                    <option value="1" <?php if($danhmucsanpham->status_page == 1) echo "selected" ?>>Hiển thị</option>
		              	</select>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Vị trí</label>
						<select class="form-control" name="vitri">
		                    <option value="0">Lựa chọn vị trí</option>
		                    <?php 
		                        for($i = 1; $i <= 15; $i++){
		                            
		                            
	                                echo "<option value='".$i."'".($danhmucsanpham->vitri == $i ? 'selected' : '')." >Vị trí ".$i."</option>";
		                        }
	                        ?>

		              	</select>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

	    	<div class="row">
	    		<div class="col-md-12 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Nội dung danh mục</label>
						<textarea class="form-control" id="editor" rows="7" name="noidung" placeholder="Nhập nội dung danh mục ...">{{$danhmucsanpham->noidung}}</textarea>
						<div class="help-block"></div>
					</div>
				</div>
	    	</div>

			<div class="row">
	    		<div class="col-md-7 col-xs-12">
	        		<div class="field-caterory-name">
						<label>Thẻ Title</label>
						<input type="text" class="form-control" name="title" onKeyDown="CountLeft(this.form.title, this.form.left,69);" onKeyUp="CountLeft(this.form.title,this.form.left,69);" placeholder="Nhập thẻ title ... " aria-required="true" value="{{$danhmucsanpham->title}}">
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
						<textarea class="form-control" rows="7" name="description" onKeyDown="CountRight(this.form.description, this.form.right,300);" onKeyUp="CountRight(this.form.description,this.form.right,300);" placeholder="Nhập thẻ description ...">{{$danhmucsanpham->description}}</textarea>
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
						<textarea class="form-control ckeditor" rows="7" name="headings" placeholder="Nhập thẻ headings ...">{{$danhmucsanpham->headings}}</textarea>
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