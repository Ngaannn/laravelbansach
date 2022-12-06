@extends('website.main')

@section('meta_tags')

    <title>Tất cả sản phẩm</title>
    <meta name='description' itemprop='description' content='Tất cả sản phẩm' />
    <meta property='article:published_time' content='' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="Tất cả sản phẩm" />
    <meta property="og:title" content="Tất cả sản phẩm" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', 'Tất cả sản phẩm')}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Tất cả sản phẩm" />
    <meta name="twitter:site" content="@BrnBhaskar" />
    <meta property="og:image" content="" />
    <meta property="og:image:url" content="" />
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
                            <a itemprop="title">Sản phẩm</span></a>
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
                    <div class="detail-content-body-name">
                        Sản phẩm
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-3 col-sm-4 dis-block">
                    @include('website.sidebar')
                </div>
                <div class="col-md-9 col-sm-8 padding-right-25">

                    <div class="detail-content">
                        <div class="detail-content-body-product">
                            @if(count($sanpham) > 0)
                            <div class="row">
                            @foreach($sanpham as $item)
                            <div class="col-md-3 col-xs-6">
                                <div class="box-product-index margin-bottom-10">
                                    <div class="box-product-index-img box-product-index-img-page">
                                        <a href="{{$item->code}}/sp/{{$item->id}}" class="a-img-product">
                                            <img src="public/upload/sanpham/{{$item->anhdaidien}}" class="img-responsive" alt="{{$item->name}}">
                                        </a>
                                        <div class="quick-view">
                                            <a href="{{$item->code}}/sp/{{$item->id}}">Thông tin chi tiết</a>
                                        </div>
                                    </div>
                                    <div class="box-product-index-cap">
                                        <div class="box-product-index-name">
                                            <a href="{{$item->code}}/sp/{{$item->id}}" title="{{$item->name}}">
                                                @if(mb_strlen($item->name, 'UTF-8') >= 45)
                                                    {{mb_substr($item->name,0,45,'UTF-8')}}...
                                                @else
                                                    {{$item->name}}
                                                @endif
                                            </a>
                                        </div>
                                        <div class="box-product-index-spice">
                                            @if($item->giasanpham != NULL or $item->giasanpham != 0)
                                            {{ number_format($item->giasanpham) }}đ
                                            @else
                                            Liên hệ
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            @endforeach
                            </div>
                            {!! $sanpham->links() !!}
                            @else
                            Dữ liệu đang được cập nhật ...
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 dis-none">
                    @include('website.sidebar')
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