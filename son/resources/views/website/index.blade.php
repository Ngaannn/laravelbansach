<?php
use Illuminate\Support\Facades\DB;
use App\Danhmucsanpham;
use App\Sanpham;
?>
@extends('website.main')

@section('meta_tags')
    <title>{{$cauhinhseo->title}}</title>
    <meta name='description' itemprop='description' content='{{$cauhinhseo->description}}' />
    <meta property='article:published_time' content='{{$cauhinhseo->created_at}}' />
    <link rel="canonical" href="{{url()->current()}}" />
    <meta property='article:section' content='event' />
    <meta property="og:description" content="{{$cauhinhseo->description}}" />
    <meta property="og:title" content="{{$cauhinhseo->title}}" />
    <meta property="og:url" content="{{url()->current()}}" />
    <meta property="og:type" content="article" />
    <meta property="og:locale" content="en-us" />
    <meta property="og:locale:alternate" content="vi-vn" />
    <meta property="og:site_name" content="{{env('SITE_URL', $cauhinhseo->title)}}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="{{$cauhinhseo->title}}" />
    <meta name="twitter:site" content="@BrnBhaskar" />
    @foreach($hinhanhdaidien as $anh)
        <meta property="og:image" content="{{ url('/') }}/public/upload/slider/{{$anh->anhdaidien}}" />
        <meta property="og:image:url" content="{!!url()->full();!!}" />
        <meta property="og:image:size" content="300" />
    @endforeach
@endsection

@section('content')
@include('website.menu')
<?php $cauhinh = DB::table('cauhinh')->first() ?>

<div class="main-index-slide">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                
            </div>
            <div class="col-md-9">
                <div class="slider">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <?php $slider = DB::table('slider')->orderBy('id', 'DESC')->get(); ?>
                            <?php $i = 0 ?>
                            @foreach($slider as $item)
                            <div
                            @if($i == 0)
                             class="item active"
                             @else
                             class="item"
                             @endif
                             >
                            <?php $i++ ?>
                                <a href="{{$item->linkbaiviet}}">
                                  <img src="public/upload/slider/{{$item->anhdaidien}}" alt="Slider">
                                </a>
                            </div>
                            @endforeach

                        </div>
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="fa fa-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="fa fa-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>

<div class="main-content-about">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="san-pham-noi-bat-title">
                    <span>Sản phẩm nổi bật</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="san-pham-noi-bat">
                    <div class="owl-carousel">
                        <?php $sanphamHot = DB::table('sanpham')->where('status', 1)->limit(10)->get() ?>
                        @foreach($sanphamHot as $item)
                        <div class="pro-hot">
                            <div class="pro-hot-img">
                                <a href="{{ route('indexCode', ['code' => $item->code]) }}">
                                    <img src="public/upload/sanpham/{{ $item->anhdaidien }}" class="img-responsive" alt="{{ $item->name }}">
                                </a>
                            </div>
                            <div class="box-product-index-cap">
                                <div class="pro-hot-name">
                                    <a href="{{ route('indexCode', ['code' => $item->code]) }}">{{ $item->name }}</a>
                                </div>
                                <div class="pro-hot-price">
                                    @if($item->giasanpham != NULL or $item->giasanpham != 0)
                                        {{ number_format($item->giasanpham) }}đ
                                    @else
                                        Liên hệ
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php 
    $danhmucsanpham = DB::table('danhmucsanpham')
        ->where('danhmuccha_id', 0)
        ->where('status_page', 1)
        ->orderBy('vitri', 'ASC')
        ->get();
?>
@foreach($danhmucsanpham as $danhmucIndex)
<div class="main-index-content main-index-content-desktop main-index-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="box-index">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="box-index-title">
                                        <span>{{ $danhmucIndex->name }}</span>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="box-index-content-title">
                                        <ul>
                                            <li>
                                                <a href="{{ route('indexCode', ['code' => $danhmucIndex->code]) }}">Xem thêm <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                            </li>
                                            <?php $danhmuccon = DB::table('danhmucsanpham')->where('danhmuccha_id', $danhmucIndex->id)->where('status_page', 1)->limit(2)->get() ?>
                                            @if(count($danhmuccon) > 0)
                                                @foreach($danhmuccon as $chau)

                                                <li>
                                                    <a href="{{ route('indexCode', ['code' => $chau->code]) }}">{{ $chau->name }}</a>
                                                </li>
                                                @endforeach
                                            @endif

                                        </ul>
                                    </div>

                                </div>
                            </div>
                            <div class="box-index-content">
                                <div class="row">
                                    <?php
                                        $danhmucconIds = DB::table('danhmucsanpham')
                                                        ->where('danhmuccha_id', $danhmucIndex->id)
                                                        ->get()
                                                        ->pluck('id')
                                                        ->toArray();

                                        $sanphamMain = DB::table('sanpham')
                                            ->whereIn('danhmucsanpham_id', $danhmucconIds)
                                            ->orWhere('danhmucsanpham_id', $danhmucIndex->id)
                                            ->where('status', 1)
                                            ->orderBy('id', 'desc')
                                            ->limit(5)
                                            ->get();
                                    ?>

                                    @foreach($sanphamMain as $item)
                                    <div class="col-xs-5ths">
                                        <div class="box-product-index">
                                            <div class="box-product-index-img">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach


<div class="main-index-content main-index-bg-2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="box-index-title-2">
                    Tin tức mới
                </div>
                <div class="box-index-content">
                    <div class="row">
                        <?php $baivietIndex = DB::table('baiviet')->where('status', 1)->orderBy('id', 'desc')->limit(3)->get() ?>
                        @foreach($baivietIndex as $item)
                        <div class="col-md-4">
                            <div class="box-index-post">
                                <div class="box-index-post-img">
                                    <a href="{{ route('indexCode', ['code' => $item->code]) }}" title="{{ $item->name }}">
                                        <img src="public/upload/baiviet/{{ $item->anhdaidien }}" class="img-responsive" alt="{{ $item->name }}">
                                    </a>
                                    <div class="box-index-post-info">
                                        <ul class="notStyle">
                                            <li class="time"><i class="fa fa-eye" aria-hidden="true"></i> Lượt xem: {{ $item->count_page }}</li>
                                            <?php
                                                $parentsCategory = DB::table('danhmucbaiviet')->select('name')->where('id',$item->danhmucbaiviet_id)->first();
                                            ?>
                                            <li class="post"><i class="fa fa-check-square"></i> <span>{{$parentsCategory->name}}</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-index-post-cap">
                                    <div class="box-index-post-name">
                                        <a href="{{ route('indexCode', ['code' => $item->code]) }}">
                                            @if(mb_strlen($item->name, 'UTF-8') >= 50)
                                                {{mb_substr($item->name,0,50,'UTF-8')}}...
                                            @else
                                                {{$item->name}}
                                            @endif
                                        </a>
                                    </div>
                                    <div class="box-index-post-des">
                                        @if(mb_strlen($item->motabaiviet, 'UTF-8') >= 80)
                                            {{mb_substr($item->motabaiviet,0,80,'UTF-8')}}...
                                        @else
                                            {{$item->motabaiviet}}
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="cam-ket">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="why-box">
                    <div class="why-box-img">
                        <img width="180px" src="images/icon-ship.png" alt="">
                    </div>
                    <div class="why-box-title">   
                        <div class="icon-box-text-title">Vận chuyển toàn quốc</div>
                        <p>Chúng tôi hỗ trợ vận chuyển toàn quốc cho Quý khách. Quý khách sẽ thanh toán tiền cước phí vận chuyển cho đơn vị chuyển phát!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="why-box">
                    <div class="why-box-img">
                        <img width="180px" src="images/icon-2.png" alt="">
                    </div>
                    <div class="why-box-title">   
                        <div class="icon-box-text-title">Biên nhận và kiểm hàng</div>
                        <p>Khi nhận hàng, quý khách vui lòng kiểm tra thật kỹ và biên nhận với nhân viên chuyển phát là hàng đã nhận hoàn toàn đúng chuẩn.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="why-box">
                    <div class="why-box-img">
                        <img width="180px" src="images/icon-4.png" alt="">
                    </div>
                    <div class="why-box-title">   
                        <div class="icon-box-text-title">Vận chuyển toàn quốc</div>
                        <p>Chúng tôi hỗ trợ khách hàng hết lòng, vì quyền lợi của khách hàng. Vui lòng liên hệ Hotline: 0912 362 350</p>
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
                {!!$cauhinhseo->headings!!}
            </div>
        </div>
    </div>
</div>
@include('website.copyright')

@endsection