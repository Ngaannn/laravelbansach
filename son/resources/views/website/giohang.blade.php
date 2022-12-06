@extends('website.main')

@section('meta_tags')

    <title>Giỏ hàng</title>
    <meta name='description' itemprop='description' content='Giỏ hàng' />
    <meta property='article:published_time' content='' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', 'Giỏ hàng')}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Giỏ hàng" />
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
                            <a itemprop="title" href="{{ route('indexCode', ['code' => 'gio-hang']) }}">Giỏ hàng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="main-content-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="detail-content">
                        <div class="detail-content-body-name">
                            Giỏ hàng
                        </div>

                        <div class="detail-content-body chi-tiet-bai-viet">
                            @if($soluonggiohang >=1)
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <!-- Cart Table Area -->
                                    <div class="cart-table table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="pro-thumbnail">Hình ảnh</th>
                                                    <th class="pro-title">Sản phẩm</th>
                                                    <th class="pro-price">Giá</th>
                                                    <th class="pro-quantity">Số lượng</th>
                                                    <th class="pro-subtotal">Thành tiền</th>
                                                    <th class="pro-remove">Cập nhật</th>
                                                    <th class="pro-remove">Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($sanphamGiohang as $item)
                                                <tr>
                                                    <td class="pro-thumbnail">
                                                        <a href="{{ route('indexCode', ['code' => $item->code]) }}">
                                                            <img class="img-fluid img-responsive" src="public/upload/sanpham/{{$item->options->img}}" alt="{{ $item->name }}">
                                                        </a>
                                                    </td>
                                                    <td class="pro-title">
                                                        <a href="{{ route('indexCode', ['code' => $item->code]) }}">{{ $item->name }}</a>
                                                    </td>
                                                    <td class="pro-price">
                                                        <span>{!! number_format($item->price, 0, ",",".") !!}đ</span>
                                                    </td>
                                                    <td class="pro-quantity">
                                                        <div class="pro-qty">
                                                            <input type="text" value="{{$item->qty}}" class="so-luong">
                                                        </div>
                                                    </td>
                                                    <td class="pro-subtotal"><span>{!! number_format($item->price*$item->qty, 0, ",",".") !!}đ</span></td>
                                                    <td class="pro-remove">
                                                        <button class="btn btn-success btn-sm chuc-nang-update" id="{{$item->rowId}}"><i class="fa fa-check"></i></button>
                                                    </td>
                                                    <td class="pro-remove"><a class="btn btn-danger btn-sm" href="xoa-san-pham/{{$item->rowId}}"><i class="fa fa-trash-o"></i></a></td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="cart-update-option d-block d-md-flex justify-content-between">

                                        <div class="cart-update">
                                            <a href="" class="btn btn__bg"><i class="fa fa-reply-all"></i> Tiếp tục mua hàng</a>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-lg-7"></div>
                                <div class="col-lg-5 ml-auto">
                                    <!-- Cart Calculation Area -->
                                    <div class="cart-calculator-wrapper">
                                        <div class="cart-calculate-items">
                                            <div class="div-h3">Tổng số lượng giỏ hàng</div>
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <tbody><tr>
                                                        <td>Thành tiền</td>
                                                        <td>{!! number_format($tongtien, 0, ",",".") !!}đ</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Phí ship hàng</td>
                                                        <td>{!! number_format(30000, 0, ",",".") !!}đ</td>
                                                    </tr>
                                                    <tr class="total">
                                                        <td>Tổng tiền</td>
                                                        <td class="total-amount">{!! number_format($tongtien+30000, 0, ",",".") !!}đ</td>
                                                    </tr>
                                                </tbody></table>
                                            </div>
                                        </div>
                                        <a href="{{ route('indexCode', ['code' => 'thanh-toan']) }}" class="btn btn__bg d-block">Thanh toán ngay</a>
                                    </div>
                                </div>
                            </div>
                            @else
                                <div class="row">
                                    <div class="col-md-12">
                                        Bạn chưa mua hàng !
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>   
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