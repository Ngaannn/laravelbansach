@extends('admin.layout.main')

@section('content')


<section class="content-header">
    <h1>
        Danh sách khách hàng liên hệ
    </h1>
</section>
<div class="content">
	<div class="box box-primary">
		<div class="box-body">
			<div class="row">
				<div class="col-md-4">
					@if(session('thongbao'))
						<div class="alert alert-success">
							<i class="fa fa-check"></i> {{session('thongbao')}}
						</div>
					@endif
				</div>
			</div>
            <div id="w0" class="grid-view">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th class="text-center" width="3%">STT</th>
							<th>Thời gian</th>
							<th>Họ tên</th>
							<th>Điện thoại</th>
							<th>Nội dung</th>
							<th>Url order</th>
							<th class="text-center" width="3%">Xóa</th>
						</tr>
					</thead>
					<tbody class="table-thongtinlienhe-body">
						@foreach($thongtinlienhe as $item)
						<tr data-key="1">
							<td class="text-center">
								{{ ($thongtinlienhe->currentPage() - 1) * $thongtinlienhe->perPage() + $loop->iteration }}
							</td>
							<td width="15%">{{$item->created_at}}</td>
							<td width="15%">{{$item->hoten}}</td>
							<td width="15%">{{$item->dienthoai}}</td>
							<td width="15%">{{$item->noidung}}</td>
							<td width="15%">{{$item->urlorder}}</td>
							<td class="text-center">
								<a class="text-danger nut-chuc-nang" href="admin/thongtinlienhe/delete/{{$item->id}}" title="Xóa dữ liệu" onclick="return confirm('Bạn có muốn xóa không ?')">
									<i class="fa fa-trash"></i>
								</a>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				{!! $thongtinlienhe->links() !!}
			</div>
		</div>
	</div>
</div>

@endsection