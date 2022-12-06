@extends('website.main')

@section('meta_tags')

    <title>Thanh toán đơn hàng</title>
    <meta name='description' itemprop='description' content='Thanh toán đơn hàng' />
    <meta property='article:published_time' content='' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', 'Thanh toán đơn hàng')}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Thanh toán đơn hàng" />
    <meta name="twitter:site" content="@BrnBhaskar" />
    <meta property="og:image" content="" />
    <meta property="og:image:url" content="{!!url()->full();!!}" />
    <meta property="og:image:size" content="300" />
@endsection

@section('content')
    @include('website.menuPage')
    <div class="main-break">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb list-unstyled">
                        <li class="home">
                            <a class="active" href="{{ url('/') }}" title="Về trang chủ">
                                <span itemprop="title"><i class="fa fa-home "></i> Trang chủ</span>
                            </a>
                        </li>
                        <li>
                            <a itemprop="title" href="{{ route('indexCode', ['code' => 'thanh-toan']) }}">Thanh toán</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="main-content-page">
        <div class="container">
            @if($soluonggiohang >=1)
                <form action="{{ route('indexCode', ['code' => 'thanh-toan']) }}" method="POST">
                @csrf
                <div class="row">
                    <!-- Checkout Billing Details -->
                    <div class="col-lg-6">
                        <div class="checkout-billing-details-wrap">
                            <div class="detail-content-body-name">
                                Thông tin người mua hàng
                            </div>
                            <div class="billing-form-wrap">
                                <div class="single-input-item">
                                    <label for="com-name" class="required">Họ tên</label>
                                    <input type="text" id="com-name" name="hoten" placeholder="Ex: Nguyễn Văn A">
                                </div>

                                
                                <div class="single-input-item">
                                    <label for="phone" class="required">Số điện thoại</label>
                                    <input type="text" id="phone" name="dienthoai" placeholder="Ex: 0123456789">
                                </div>

                                <div class="single-input-item">
                                    <label for="street-address" class="required mt-20">Địa chỉ nhận hàng</label>
                                    <input type="text" id="street-address" name="diachi" placeholder="Ghi đầy đủ tên đường/phố, phường/xã, quận/huyện, tỉnh thành" required="">
                                </div>

                                <div class="single-input-item">
                                    <label for="email" class="required">Email</label>
                                    <input type="email" id="email" name="email" placeholder="Ex: info@gmail.com" required="">
                                </div>

                                <div class="single-input-item">
                                    <label for="ordernote" class="required">Ghi chú</label>
                                    <textarea id="ordernote" name="ghichu" cols="30" rows="3" placeholder="Ex: Giao hàng lúc 10h sáng,..."></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary Details -->
                    <div class="col-lg-6">
                        <div class="order-summary-details ">
                            <div class="detail-content-body-name">
                                Chi tiết đơn hàng
                            </div>
                            <div class="order-summary-content table-responsive">
                                <!-- Order Summary Table -->
                                <div class="order-summary-table">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sản phẩm</th>
                                                <th>Thành tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($sanphamGiohang as $item)
                                            <tr>
                                                <td><a href="{{ route('indexCode', ['code' => $item->code]) }}">{{ $item->name }} <strong class="soluong"> × {{ $item->qty }}</strong></a>
                                                </td>
                                                <td>{!! number_format($item->price*$item->qty, 0, ",",".") !!}đ</td>
                                            </tr>
                                            @endforeach

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td>Thành tiền</td>
                                                <td><strong>{!! number_format($tongtien, 0, ",",".") !!}đ</strong></td>
                                            </tr>
                                            <tr>
                                                <td>Phí ship hàng</td>
                                                <td><strong>{!! number_format(30000, 0, ",",".") !!}đ</strong></td>
                                            </tr>
                                            <tr>
                                                <td>Tổng tiền</td>
                                                <td><strong>{!! number_format($tongtien+30000, 0, ",",".") !!}đ</strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- Order Payment Method -->
                                <div class="order-payment-method">
                                    
                                    <div class="summary-footer-area">
                                        <div class="custom-control custom-checkbox mb-20">
                                            <input type="checkbox" name="checkbox" class="custom-control-input" id="terms" required="">
                                            <label class="custom-control-label" for="terms">Tôi đồng ý thanh toán đơn hàng trên !</a></label>
                                        </div>
                                        <button type="submit" class="btn btn__bg">Thanh toán</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            @else
                <div class="row">
                    <div class="col-md-12">
                        Bạn chưa mua hàng !
                    </div>
                </div>
            @endif
        </div>  
    </div>

    @include('website.footer')
    <div class="theH">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                </div>
            </div>
        </div>
    </div>
    @include('website.copyright')


    
@endsection