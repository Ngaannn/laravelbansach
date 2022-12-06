@extends('website.main')

@section('meta_tags')

    <title>{{$sanpham->title}}</title>
    <meta name='description' itemprop='description' content='{{$sanpham->description}}' />
    <meta property='article:published_time' content='{{$sanpham->created_at}}' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="{{$sanpham->description}}" />
    <meta property="og:title" content="{{$sanpham->title}}" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', $sanpham->title)}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="{{$sanpham->title}}" />
    <meta name="twitter:site" content="@BrnBhaskar" />
    <meta property="og:image" content="{{ url('/') }}/public/upload/sanpham/{{$sanpham->anhdaidien}}" />
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
                            <a itemprop="title" href="{{ route('indexCode', ['code' => $danhmucsanphamChitiet->code]) }}">{{$danhmucsanphamChitiet->name}}</a>
                        </li>
                        <li>
                            <a itemprop="title" href="{{ route('indexCode', ['code' => $sanpham->code]) }}">{{$sanpham->name}}</a>
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
                    <div class="detail-content detail-content-page-san-pham">
                        <div class="noi-dung-san-pham-web">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="anh-san-pham">
                                        <div class="item">            
                                            <div class="clearfix" style="max-width:474px;">
                                                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                                    @if(count($hinhanhsanpham) > 0)

                                                    @foreach($hinhanhsanpham as $image)
                                                    <li data-thumb="public/upload/sanpham/hinhanh/{{$image->hinhanhsanpham}}"> 
                                                        <img src="public/upload/sanpham/hinhanh/{{$image->hinhanhsanpham}}" class="img-responsive" alt="{{$sanpham->name}}" />
                                                    </li>
                                                    @endforeach

                                                    @else
                                                    <li data-thumb="public/upload/sanpham/{{$sanpham->anhdaidien}}"> 
                                                        <img src="public/upload/sanpham/{{$sanpham->anhdaidien}}" class="img-responsive" alt="{{$sanpham->name}}" />
                                                    </li>
                                                    @endif
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="noi-dung-san-pham-web-info">
                                        <div class="ten-san-pham">
                                            @if(mb_strlen($sanpham->name, 'UTF-8') > 60)
                                                {{mb_substr($sanpham->name,0,60,'UTF-8')}}...
                                            @else
                                                {{$sanpham->name}}
                                            @endif
                                        </div>
                                        <div class="noi-dung-san-pham-web-info-spice">

                                            @if($sanpham->giasanpham != NULL or $sanpham->giasanpham != 0)
                                            <span>{{ number_format($sanpham->giasanpham) }}đ</span>
                                            @else
                                            <span>Liên hệ</span>
                                            @endif

                                        </div>
                                        
                                        <div class="noi-dung-san-pham-web-info-description">
                                            {!! $sanpham->motasanpham !!}
                                        </div>


                                        <form action="mua-hang/{{$sanpham->code}}/{{$sanpham->id}}" method="post">
                                            @csrf
                                            <div class="quantity-cart-box d-flex align-items-center">
                                                <div class="quantity">
                                                    <div class="pro-qty"><input name="soluong" type="text" value="1"></div>
                                                </div>
                                                <div class="action_link">
                                                    <button type="submit" class="btn btn-cart2"><i class="fa fa-briefcase"></i> Thêm vào giỏ hàng</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="social-links">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <ul>
                                                        <li>
                                                            <a rel="nofollow" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={!!url()->full();!!}" class="social-button " id="">
                                                                <span class="fa fa-facebook"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a rel="nofollow" target="_blank" href="https://twitter.com/intent/tweet?text=my share text&amp;url={!!url()->full();!!}" class="social-button " id="">
                                                                <span class="fa fa-twitter"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a rel="nofollow" target="_blank" href="https://plus.google.com/share?url={!!url()->full();!!}" class="social-button " id="">
                                                                <span class="fa fa-google-plus"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a rel="nofollow" target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&amp;url={!!url()->full();!!}&amp;title=my share text&amp;summary=dit is de linkedin summary" class="social-button " id="">
                                                                <span class="fa fa-linkedin"></span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="lien-quan chi-tiet-bai-viet">
                        <div class="nav-tabs-title">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active">
                                    <a href="#3" role="tab" data-toggle="tab">
                                        Chi tiết sản phẩm
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#2" role="tab" data-toggle="tab">
                                        Video sản phẩm
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane active" id="3">
                                <div class="chi-tiet-bai-viet noi-dung-chi-tiet">
                                    {!!$sanpham->noidungsanpham!!}
                                </div>
                                <div class="info-contact">
                                    <?php $cauhinh = DB::table('cauhinh')->first() ?>
                                    <div class="info-contact-title">Thông tin liên hệ</div>
                                    <div>Địa chỉ: {{ $cauhinh->diachi }}</div>
                                    <div>Hotline: {{ $cauhinh->hotline1 }} / {{ $cauhinh->hotline2 }}</div>
                                    <div>Email: {{ $cauhinh->email }}</div>
                                    <div>Website: www.dailysontaubien.com</div>
                                </div>
                            </div>
                            <div class="tab-pane" id="2">
                                <div class="chi-tiet-bai-viet noi-dung-chi-tiet">
                                    {!!$sanpham->videosanpham!!}
                                </div>
                                <div class="info-contact">
                                    <?php $cauhinh = DB::table('cauhinh')->first() ?>
                                    <div class="info-contact-title">Thông tin liên hệ</div>
                                    <div>Địa chỉ: {{ $cauhinh->diachi }}</div>
                                    <div>Hotline: {{ $cauhinh->hotline1 }} / {{ $cauhinh->hotline2 }}</div>
                                    <div>Email: {{ $cauhinh->email }}</div>
                                    <div>Website: www.becahaiphong.com</div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="detail-content-title detail-content-title-recents detail-content-title-recents-san-pham">
                        Các sản phẩm liên quan
                    </div>
                    <div class="row">
                     @foreach($sanphamlienquan as $item)
                        <div class="col-md-3 col-xs-6">
                            <div class="box-product-index margin-bottom-10">
                                <div class="box-product-index-img box-product-index-img-page">
                                    <a href="{{ route('indexCode', ['code' => $item->code]) }}" class="a-img-product">
                                        <img src="public/upload/sanpham/{{$item->anhdaidien}}" class="img-responsive" alt="{{$item->name}}">
                                    </a>
                                    <div class="quick-view">
                                        <a href="{{ route('indexCode', ['code' => $item->code]) }}">Thông tin chi tiết</a>
                                    </div>
                                </div>
                                <div class="box-product-index-cap">
                                    <div class="box-product-index-name">
                                        <a href="{{ route('indexCode', ['code' => $item->code]) }}" title="{{$item->name}}">
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
                    {!!$sanpham->headings!!}
                </div>
            </div>
        </div>
    </div>
    @include('website.copyright')
@endsection