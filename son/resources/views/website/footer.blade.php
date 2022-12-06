<section id="footerMidle">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-12 col-xs-12 footerCol infoShop">
                <div class="groupFooter">
                    <?php $cauhinh = DB::table('cauhinh')->first() ?>
                    <div class="logoFt">
                        <a title="Ins shop">
                            <img src="public/upload/cauhinh/{{ $cauhinh->logo }}" alt="{{ $cauhinh->tendoanhnghiep }}" itemprop="logo" class="img-responsive">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 footerCol menuLink">
                <div class="groupFooter">
                    <div class="h4-foot">
                        THÔNG TIN LIÊN HỆ
                    </div>
                    <div class="address">
                        <ul class="info-address notStyle">
                            <li>
                                <span>{{$cauhinh->tendoanhnghiep}}</span>
                            </li>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <span>Đ/c: {{$cauhinh->diachi}}</span>
                            </li>
                            @if($cauhinh->diachi2 != NULL)
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <span>VPĐD: {{$cauhinh->diachi2}}</span>
                            </li>
                            @endif
                            <li>
                                <i class="fa fa-envelope"></i>
                                <span>Email: {{$cauhinh->email}}</span>
                            </li>

                            <li>
                                <i class="fa fa-phone"></i> 
                                <span>Hotline: {{$cauhinh->hotline1}} @if($cauhinh->hotline2 != NULL)- {{$cauhinh->hotline2}}@endif</span>
                            </li>
                            <li>
                                <i class="fa fa-home"></i>
                                <span>Website: www.dailysontaubien.com</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 footerCol menuLink">
                <div class="groupFooter">
                    <div class="h4-foot">
                        Liên kết nhanh
                    </div>
                    <div class="menu-foot">
                        <ul class="notStyle linklist">
                            <li>
                                <a href="{{ route('indexCode', ['code' => 'gioi-thieu']) }}"><span><i class="fa fa-angle-right"></i> Giới thiệu</span></a>
                            </li>

                            <?php $danhmucbaivietFoot = DB::table('danhmucbaiviet')->get() ?>
                            @foreach($danhmucbaivietFoot as $item)
                            <li>
                                <a href="{{ route('indexCode', ['code' => $item->code]) }}"><span><i class="fa fa-angle-right"></i> {{ $item->name }}</span></a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 footerCol menuLink">
                <div class="groupFooter">
                    <div class="h4-foot">
                        Hotline liên hệ
                    </div>
                    <div class="hotlineBot">
                        <img class="imgHl" src="images/hotline-foot.png" alt="Hotline footer">
                        <div class="boxHotline">
                            <b>{{ $cauhinh->hotline1 }}</b>
                            <i>(Tất cả các ngày trong tuần)</i>
                        </div>
                    </div>
                    <div class="socical-foot">Kết nối với chúng tôi</div>
                    <div class="listSocial">
                        <ul>
                            <li class="facebook"><a target="_blank" href="{{ $cauhinh->fanpage }}"><i class="fa fa-facebook"></i></a></li>
                            <li class="google-plus"><a target="_blank" href="{{ $cauhinh->google }}"><i class="fa fa-google-plus"></i></a></li>
                            <li class="twitter"><a target="_blank" href="{{ $cauhinh->twiter }}"><i class="fa fa-twitter"></i></a></li>
                            <li class="instagram"><a target="_blank" href="{{ $cauhinh->ytb }}"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>