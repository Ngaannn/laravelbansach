@extends('admin.layout.main')

@section('content')


<section class="content-header">
    <h1>
        Danh sách hóa đơn giỏ hàng
    </h1>
</section>
<div class="content">
	<div class="box box-primary">
		<div class="box-body">
            <div id="w0" class="grid-view">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th class="text-center" width="3%">STT</th>
							<th>Thời gian</th>
							<th>Họ tên</th>
							<th>Địa chỉ</th>
							<th>Điện thoại</th>
							<th>Email</th>
							<th>Ghi chú</th>
							<th>Tổng tiền</th>
							<th class="text-center" width="3%">Xem</th>
							<th class="text-center" width="3%">Xóa</th>
						</tr>
					</thead>
					<tbody class="table-thongtinlienhe-body">
						@foreach($hoadon as $item)
						<tr data-key="1">
							<td class="text-center">
								{{ ($hoadon->currentPage() - 1) * $hoadon->perPage() + $loop->iteration }}
							</td>
							<td width="15%">{!! date('d-m-Y ( H:i )', strtotime($item->created_at)) !!} </td>
							<td width="15%">{{$item->hoten}}</td>
							<td width="15%">{{$item->diachi}}</td>
							<td width="15%">{{$item->dienthoai}}</td>
							<td width="15%">{{$item->email}}</td>
							<td width="15%">{{$item->ghichu}}</td>
							<td width="15%">{!! number_format($item->tongtien, 0, ",",".") !!} đ</td>
							<td class="text-center">
								<a class="text-success nut-chuc-nang" href="admin/hoa-don/{{$item->id}}" title="Xem chi tiết">
									<i class="fa fa-eye"></i>
								</a>
							</td>
							<td class="text-center">
								<a class="text-danger nut-chuc-nang" href="admin/hoadon/delete/{{$item->id}}" title="Xóa dữ liệu" onclick="return confirm('Bạn có muốn xóa không ?')">
									<i class="fa fa-trash"></i>
								</a>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				{!! $hoadon->links() !!}
			</div>
		</div>
	</div>
</div>

@endsection