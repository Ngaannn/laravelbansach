@extends('admin.layout.main')

@section('content')

<div class="content">
	<div class="row">
		<div class="col-md-12">
			<h2 style="font-size: 24px;">
		        Thông tin người mua hàng
		    </h2>
			<div class="box box-primary" style="padding: 15px;">
				<div class="box-body">
		            <p>Họ và tên: <strong>{{ $hoadon->hoten }}</strong></p>
		            <p>Điện thoại: <strong>{{ $hoadon->dienthoai }}</strong></p>
		            <p>Email: <strong>{{ $hoadon->email }}</strong></p>
		            <p>Địa chỉ: <strong>{{ $hoadon->diachi }}</strong></p>
		            <p>Ghi chú: <strong>{{ $hoadon->ghichu }}</strong></p>
		            <p>Tổng tiền: <strong>{!! number_format($hoadon->tongtien, 0, ",",".") !!} đ</strong></p>
				</div>
			</div>
		</div>
		<div class="col-md-12">				
			<h2 style="font-size: 24px;">
		        Chi tiết đơn hàng
		    </h2>
			<div class="box box-primary">
				<div class="box-body">
		            <div id="w0" class="grid-view">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th class="text-center" width="3%">STT</th>
									<th>Sản phẩm</th>
									<th>Giá tiền</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th class="text-center" width="3%">Xóa</th>
								</tr>
							</thead>
							<tbody class="table-thongtinlienhe-body">
								@foreach($chitiethoadon as $item)
								<tr data-key="1">
									<td class="text-center">
										{{ ($chitiethoadon->currentPage() - 1) * $chitiethoadon->perPage() + $loop->iteration }}
									</td>
									<td width="25%">
										<?php
							                $sanpham = DB::table('sanpham')->select('name')->where('id',$item->sanpham_id)->get();
							            ?>
							            @foreach($sanpham as $parent)
										{{ $parent->name }}
										@endforeach
									</td>
									<td width="10%">{!! number_format($item->giatien, 0, ",",".") !!} đ</td>
									<td width="10%">{{$item->soluong}}</td>
									<td width="10%">{!! number_format($item->giatien*$item->soluong, 0, ",",".") !!} đ</td>
									<td class="text-center">
										<a class="text-danger nut-chuc-nang" href="admin/chitiethoadon/delete/{{$item->id}}" title="Xóa dữ liệu" onclick="return confirm('Bạn có muốn xóa không ?')">
											<i class="fa fa-trash"></i>
										</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
						{!! $chitiethoadon->links() !!}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



@endsection