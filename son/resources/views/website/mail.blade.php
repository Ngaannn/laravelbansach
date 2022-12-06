<div>Họ tên: {{ $hoten }}</div><br>
<div>Điện thoại: {{ $dienthoai }}</div><br>
<div>Email: {{ $email }}</div><br>
<div>Địa chỉ nhận hàng: {{ $diachi }}</div><br>
<div>Tổng tiền hóa đơn: {!! number_format($tongtien+30000, 0, ",",".") !!} đ ( Tính cả phí ship hàng: 30.000 đ )</div><br>
<div>Chi tiết đơn hàng: </div>
<table>
	<thead>
		<tr>
			<th>STT</th>
			<th>Sản phẩm</th>
			<th>Đơn giá</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
		</tr>
	</thead>
	<tbody>
		<?php $stt = 0; ?>
		@foreach($chitiethoadonMail as $item)
		<?php $stt ++; ?>
		<tr>
			<td>{{ $stt }}</td>
			<?php
                $sanpham = DB::table('sanpham')->select('name')->where('id',$item->sanpham_id)->get();
            ?>
            @foreach($sanpham as $parent)
			<td>{{ $parent->name }}</td>
			@endforeach
			<td>{!! number_format($item->giatien, 0, ",",".") !!} đ</td>
			<td>{{ $item->soluong }}</td>
			<td>{!! number_format($item->giatien*$item->soluong, 0, ",",".") !!} đ</td>
		</tr>
		@endforeach
	</tbody>
</table>