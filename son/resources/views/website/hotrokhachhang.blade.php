@extends('website.main')

@section('meta_tags')
    <title>{{$baiviet->title}}</title>
    <meta name='description' itemprop='description' content='{{$baiviet->description}}' />
    <meta property='article:published_time' content='{{$baiviet->created_at}}' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="{{$baiviet->description}}" />
    <meta property="og:title" content="{{$baiviet->title}}" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', $baiviet->title)}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="{{$baiviet->title}}" />
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
                            <a itemprop="title">{{ $baiviet->name }}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
	<div class="main-content-page">
    	<div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 dis-block">
                    @include('website.sidebar')
                </div>
                <div class="col-md-9 col-sm-8 padding-right-25">
                    <div class="detail-content-body-name">
                        {{ $baiviet->name }}
                    </div>
                    <div class="detail-content-body chi-tiet-bai-viet">
                        {!!$baiviet->noidungbaiviet!!}
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
                    {!!$baiviet->headings!!}
                </div>
            </div>
        </div>
    </div>
    @include('website.copyright')
@endsection