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
                            <a itemprop="title">Xác nhận thanh toán</a>
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
                    <div class="xac-nhan-thanh-toan">
                        <div class = "alert alert-success">
                            <div class="detail-content-name">
                                <p>Thanh toán đơn hàng thành công !</p>
                            </div>

                            <div class="xac-nhan-thanh-toan">
                                <p>Chúng tôi sẽ cho nhân viên liên hệ lại cho bạn ngay khi chúng tôi nhận được đơn đặt hàng của bạn!</p>
                            </div>
                        </div>
                    </div>
                    <div class="quay-lai-trang-chu">
                        <a href=""><i class="fa fa-reply-all"></i> Về trang chủ</a>
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