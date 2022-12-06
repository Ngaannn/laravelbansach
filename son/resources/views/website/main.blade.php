<?php
use Illuminate\Support\Facades\DB;
use App\Danhmucsanpham;
?>
<!DOCTYPE html>
<html lang="vi">
	<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<base href="{{asset('')}}">
		<link rel="stylesheet" href="css/frontend/bootstrap.min.css">
		<link rel="stylesheet" href="public/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/frontend/stellarnav.css">
		<link rel="stylesheet" href="css/frontend/lightslider.css">
		<link rel="stylesheet" href="css/frontend/owl.carousel.min.css">
        <link rel="stylesheet" href="css/frontend/owl.theme.default.min.css">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i&amp;subset=latin,vietnamese" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="css/frontend/alo.css">
		<link rel="stylesheet" href="css/frontend/style.css">

		<meta name="robots" content="index,follow" />
		<link rel="shortcut icon" href="public/upload/cauhinh/favicon.ico" type="image/x-icon">
		@yield('meta_tags')
		<?php $cauhinhseo = DB::table('cauhinhseo')->first() ?>
		{!! $cauhinhseo->webmastertool !!}
		{!! $cauhinhseo->script !!}
	</head>
	<body>

		<?php $cauhinh = DB::table('cauhinh')->first() ?>
		<div class="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-5 col-sm-6">
						<div class="top-bar-left">
							<a><i class="fa fa-desktop"></i> Email: {{ $cauhinh->email }} </a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
						<ul class="socials top-bar-right">
                            <li class="social-item">
                                <a rel="nofollow" target="_blank" href=""><i class="fa fa-facebook"></i></a>
                            </li>
                            <li class="social-item">
                                <a rel="nofollow" target="_blank" href=""><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li class="social-item">
                                <a rel="nofollow" target="_blank" href=""><i class="fa fa-instagram"></i></a>
                            </li>
                            <li class="social-item">
                                <a rel="nofollow" target="_blank" href=""><i class="fa fa-google-plus"></i></a>
                            </li>
                        </ul>
					</div>
				</div>
			</div>
		</div>


		<header>
		  	<section class="container header-mobile">
			    <div class="row">
			      	<div class="col-md-7 col-xs-4">
				        <a class="logo img-responsive" href="{{ url('/') }}">
				          	<img src="public/upload/cauhinh/{{ $cauhinh->logo }}" alt="{{ $cauhinh->tendoanhnghiep }} ">
			          	</a>
			      	</div>

			      	<div class="col-md-5 col-sm-12 col-xs-4">
						<div class="header-search">
							<form action="{{ route('indexCode', ['code' => 'tim-kiem']) }}" method="post">
								@csrf
		                        <div class="input-group">
		                            <input name="tukhoa" type="text" class="form-control" placeholder="Nhập từ khóa cần tìm...">
		                            <span class="input-group-btn">
		                            <button type="submit" class="btn btn-success"><i class="fa fa-search"></i></button>
		                        </span>
		                        </div><!-- /input-group -->
		                    </form>
						</div>
					</div>

			      	<div class="col-md-5 col-xs-4 text-right">
				       <div class="header-hotline-title" style="margin-top: 10px">
	                        <a href="{{ route('indexCode', ['code' => 'gio-hang']) }}">Giỏ hàng ( {{ $soluonggiohang }} )</a>
	                    </div>
			      	</div>
			    </div>
		  	</section>

		</header>

		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-xs-3">	
						<div class="logo-site">
							<a href="{{ url('/') }}" class="logo-wrapper ">					
								<img src="public/upload/cauhinh/{{ $cauhinh->logo }}" alt="{{ $cauhinh->tendoanhnghiep }} ">
							</a>
						</div>
					</div>
					<div class="col-md-5 col-sm-12 col-xs-9">
						<div class="header-search">
							<form action="{{ route('indexCode', ['code' => 'tim-kiem']) }}" method="post">
								@csrf
		                        <div class="input-group">
		                            <input name="tukhoa" type="text" class="form-control" placeholder="Nhập từ khóa cần tìm...">
		                            <span class="input-group-btn">
		                            <button type="submit" class="btn btn-success"><i class="fa fa-search"></i></button>
		                        </span>
		                        </div><!-- /input-group -->
		                    </form>
						</div>
					</div>
					<div class="col-md-3 col-xs-5">
						<div class="header-hotline">
		                    <div class="header-hotline-title text-right">
		                        <a href="{{ route('indexCode', ['code' => 'gio-hang']) }}">Giỏ hàng ( {{ $soluonggiohang }} )</a>
		                    </div>
		                    <div class="header-hotline-body"><i class="fa fa-phone"></i> {{ $cauhinh->hotline1 }}@if ($cauhinh->hotline2 != NULL) / {{ $cauhinh->hotline2 }} @endif</div>
		                </div>
					</div>
				</div>
			</div>
		</div>

		@yield('content')

		<div class="float-icon-hotline">
	    	<ul>
	    		<li class="hotline_float_icon">
	    			<a id="messengerButton" href="tel:{{ $cauhinh->hotline1 }}">
	    				<i class="fa fa-hotline animated"></i><span>Hotline: {{ $cauhinh->hotline1 }}</span>
	    			</a>
	    		</li>
	    		<li class="hotline_float_icon">
	    			<a rel="nofollow" target="_Blank" id="messengerButton" href="//zalo.me/{{ $cauhinh->zalo }}">
	    				<i class="fa fa-zalo animated"></i><span>Nhắn tin qua Zalo</span>
	    			</a>
	    		</li>
	    		<li class="hotline_float_icon">
	    			<a rel="nofollow" target="_Blank" id="messengerButton" href="{{ $cauhinh->fanpage }}">
	    				<i class="fa fa-facebook animated"></i><span>Fanpage Facebook</span>
	    			</a>
	    		</li>
	    		<li class="hotline_float_icon">
	    			<a rel="nofollow" target="_Blank" id="messengerButton" href="https://m.me/{{ $cauhinh->mess }}">
	    				<i class="fa fa-facebooks animated"></i><span>Nhắn tin qua Facebook</span>
	    			</a>
	    		</li>
	    	</ul>
	    </div>

		<script src="js/frontend/jquery.min.js"></script>
		<script src="js/frontend/bootstrap.min.js"></script>
		<script src="js/frontend/stellarnav.js"></script>
		<script src="js/frontend/lightslider.js"></script>
		<script src="js/frontend/owl.carousel.js"></script>
		<script src="js/frontend/custom.js"></script>
      	<script type="application/ld+json">{
			"@context": "http://schema.org",
		  	"@type": "Professionalservice",
			"@id":"{{ url('/') }}",
			"url": "{{ url('/') }}",
			"logo": "{{ url('/') }}/public/upload/cauhinh/{{$cauhinh->logo}}",
		    "image":"{{ url('/') }}/public/upload/cauhinh/{{$cauhinh->logo}}",
		    "priceRange":"1000$-30000$",
			"hasMap": " ",	
			"email": "mailto:{{$cauhinh->email}}",
		    "founder": "{{$cauhinh->tendoanhnghiep}}",
		  	"address": {
		    	"@type": "PostalAddress",
		    	"addressLocality": "Hoài Đức",
		        "addressCountry": "VIỆT NAM",
		    	"addressRegion": "Hà Nội",
		    	"postalCode":"180000",
		    	"streetAddress": "{{$cauhinh->diachi}}"
		  	},
		  	"description": "{{$cauhinhseo->description}}",
			"name": "{{$cauhinhseo->title}}",
		  	"telephone": "{{$cauhinh->hotline1}}",
		  	"openingHoursSpecification": [
			  	{
				    "@type": "OpeningHoursSpecification",
				    "dayOfWeek": [
				      	"Monday",
				      	"Tuesday",
				      	"Wednesday",
				      	"Thursday",
				      	"Friday"
				    ],
				    "opens": "07:30",
				    "closes": "18:00"
			  	},
			  	{
				    "@type": "OpeningHoursSpecification",
				    "dayOfWeek": [
				      "Saturday"
				    ],
				    "opens": "8:00",
				    "closes": "11:30"
			  	}
		  	],
		  	"geo": {
		    	"@type": "GeoCoordinates",
			   	"latitude": "20.8493022",
		    	"longitude": "106.7260935"
	 		}, 			
         	"potentialAction": {
			    "@type": "ReserveAction",
			    "target": {
			      	"@type": "EntryPoint",
			      	"urlTemplate": "{{ url('/') }}",
			      	"inLanguage": "vn",
			      	"actionPlatform": [
				        "http://schema.org/DesktopWebPlatform",
				        "http://schema.org/IOSPlatform",
				        "http://schema.org/AndroidPlatform"
			      	]
			    },
			    "result": {
			      	"@type": "Reservation",
			      	"name": "Đăng ký"
			    }
		  	},
			 
		  	"sameAs" : [
            	"{{$cauhinh->fanpage}}"
            ]
		}
		</script>
		<script type="application/ld+json">{
		  	"@context": "http://schema.org",
		  	"@type": "Person",
		  	"name": "{{$cauhinh->tendoanhnghiep}}",
		  	"jobTitle": "CEO",
		  	"image" : "{{ url('/') }}/public/upload/cauhinh/{{$cauhinh->logo}}",
		   	"worksFor" : "{{$cauhinhseo->title}}",
		  	"url": "{{ url('/') }}",
			"sameAs" : [
            	"{{$cauhinh->fanpage}}"
             ], 
			"AlumniOf" : [ "Trường Trung học phổ thông",
			"Vietnam Maritime University" ],
			"address": {
			  	"@type": "PostalAddress",
		    	"addressLocality": "Hai Phong",
			    "addressRegion": "vietnam"
		 	}}
		</script>
		{!! $cauhinhseo->analytics !!}
	</body>
</html>