<div class="menu">
	<div class="container">
		<div class="row">
			<div class="col-md-3 no-pad-right">
				<div class="xt-ct-menu xt-ct-menu-page">
                    <div class="hamburger toggler-btn xtlab-ctmenu-item">
                    	Danh mục sản phẩm
                    </div>
                    <div class="xtlab-ctmenu-sub xtlab-ctmenu-sub-page xtlab-ctmenu-sub-page-box">
                    	<ul class="sub-menu sub-menu-background">
                    		<?php $danhmucsanphamMenu1 = DB::table('danhmucsanpham')->where('danhmuccha_id', 0)->where('status', 1)->limit(7)->get() ?>
                    		@foreach($danhmucsanphamMenu1 as $item1)
                    		<li>
                    			<a href="{{ route('indexCode', ['code' => $item1->code]) }}"><i class="fa fa-angle-right"></i> {{ $item1->name}}</a>
                    			<?php $danhmucsanphamMenu2 = DB::table('danhmucsanpham')->where('danhmuccha_id', $item1->id)->where('status', 1)->get() ?>
                    			@if(count($danhmucsanphamMenu2) > 0)
                    			<ul class="sub-menu-child">
                    				@foreach($danhmucsanphamMenu2 as $item2)
                    				<li>
                    					<a href="{{ route('indexCode', ['code' => $item2->code]) }}">{{ $item2->name }}</a>
                    				</li>
                    				@endforeach
                    			</ul>
                    			@endif
                    		</li>
                    		@endforeach

                    		<?php $danhmucsanphamMenu11 = DB::table('danhmucsanpham')->where('danhmuccha_id', 0)->where('status', 1)->skip(7)->take(8)->get() ?>
                    		@if(count($danhmucsanphamMenu11) > 0)
                    		<div class="xtlab-ctmenu-sub-hidden">
				                <ul class="ul-last">
				                	@foreach($danhmucsanphamMenu11 as $item11)
                                    <li>
		                    			<a href="{{ route('indexCode', ['code' => $item11->code]) }}"><i class="fa fa-angle-right"></i> {{ $item11->name }}</a>
		                    			<?php $danhmucsanphamMenu21 = DB::table('danhmucsanpham')->where('danhmuccha_id', $item11->id)->where('status', 1)->get() ?>
		                    			@if(count($danhmucsanphamMenu21) > 0)
		                    			<ul class="sub-menu-child">
		                    				@foreach($danhmucsanphamMenu21 as $item21)
		                    				<li>
		                    					<a href="{{ route('indexCode', ['code' => $item21->code]) }}">{{ $item21->name }}</a>
		                    				</li>
		                    				@endforeach
		                    			</ul>
		                    			@endif
		                    		</li>
		                    		@endforeach
                                </ul>
				            </div>
				            <li class="last-child" style="background: #fff;">
				                <a class="a-last-child nomal" id="p1">Xem thêm danh mục</a>
				            </li>
				            @endif
                    	</ul>
                    </div>
                </div>
			</div>
			<div class="col-md-9 no-pad-left">
				<nav class="navbar navbar-inverse">
				    <div id="main-nav" class="stellarnav light desktop">
				        <ul>
				            <li>
				            	<a href="{{ url('/') }}" class="active"><i class="fa fa-home"></i> Trang chủ</a>
				            </li>
				            <li><a href="{{ url('gioi-thieu') }}">Giới thiệu</a></li>
				            <?php $danhmucSanPhamMenuMobile1 = DB::table('danhmucsanpham')->where('danhmuccha_id', 0)->where('status', 1)->orderBy('vitri', 'ASC')->get() ?>
                			@foreach($danhmucSanPhamMenuMobile1 as $danhMucCha)
            				<li class="display-none-desktop">
            					<a href="{{ route('indexCode', ['code' => $danhMucCha->code]) }}">{{ $danhMucCha->name }}</a>
            					<?php $danhmucSanPhamMenuMobile2 = DB::table('danhmucsanpham')->where('danhmuccha_id', $danhMucCha->id)->where('status', 1)->orderBy('vitri', 'ASC')->get() ?>
                    			@if(count($danhmucSanPhamMenuMobile2) > 0)
                    			<ul>
                    				@foreach($danhmucSanPhamMenuMobile2 as $itemMoBile)
                    				<li>
                    					<a href="{{ route('indexCode', ['code' => $itemMoBile->code]) }}">{{ $itemMoBile->name }}</a>
                    				</li>
                    				@endforeach
                    			</ul>
                    			@endif
            				</li>
            				@endforeach
				            <?php $danhmucbaivietMenu = DB::table('danhmucbaiviet')->where('status', 1)->get() ?>
				            @foreach($danhmucbaivietMenu as $item)
				            <li>
				            	<a href="{{ route('indexCode', ['code' => $item->code]) }}">{{ $item->name }}</a>
				            </li>
				            @endforeach
	                        <li><a href="{{ route('indexCode', ['code' => 'lien-he']) }}">Liên hệ</a></li>
				        </ul>
				    </div>
				</nav>
			</div>
			
		</div>
	</div>
</div>