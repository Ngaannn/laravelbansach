<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Danhmucbaiviet;
use App\Baiviet;
use App\Danhmucsanpham;
use App\Sanpham;
use App\Gioithieu;
use App\Cauhinh;
use App\Hinhanhsanpham;

use Carbon\Carbon;
use Mail;
use App\Hoadon;
use App\Chitiethoadon;
use Cart;

use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use App;
class WebsiteController extends Controller
{

    public function index()
    {
        $cauhinhseo = DB::table('cauhinhseo')->first();
        $hinhanhdaidien = DB::table('slider')->orderBy('id', 'desc')->limit(1)->get();
        $soluonggiohang = Cart::count();
    	return view('website.index', [
            'cauhinhseo' => $cauhinhseo,
            'hinhanhdaidien' => $hinhanhdaidien,
            'soluonggiohang' => $soluonggiohang,
    	]);
    }

    public function error()
    {
        $soluonggiohang = Cart::count();
        return view('website.error', [
            'soluonggiohang' => $soluonggiohang,
        ]);
    }

    public function xacnhan()
    {
        $soluonggiohang = Cart::count();
        return view('website.xacnhan',[
            'soluonggiohang' => $soluonggiohang,
        ]);
    }

    public function show($code, Request $request)
    {
        $danhmucbaiviet = Danhmucbaiviet::where('code',$code)->first();
        $baivietChitiet = Baiviet::where('code',$code)->first();
        $danhmucsanpham = Danhmucsanpham::where('code',$code)->first();
        $sanpham = Sanpham::where('code', $code)->first();
        $soluonggiohang = Cart::count();
        $sanphamGiohang = Cart::content();
        $tongtien = Cart::total();
        $hinhanhdaidien = DB::table('slider')->orderBy('id', 'desc')->limit(1)->get();
        // dd($sanphamGiohang);
        if($danhmucbaiviet){
            $baiviet = Baiviet::where('danhmucbaiviet_id', $danhmucbaiviet->id)->orderBy('id', 'desc')->paginate(10);
            return view('website.danhmucbaiviet', [
                'danhmucbaiviet' => $danhmucbaiviet,
                'baiviet' => $baiviet,
                'soluonggiohang' => $soluonggiohang,
                'hinhanhdaidien' => $hinhanhdaidien,
            ]);
        }
        // End danh mục bài tiết
        elseif($baivietChitiet){
            $baivietChitiet->count_page += 1;
            $baivietChitiet->save();
            $danhmucbaivietChitiet = DB::table('danhmucbaiviet')->where('id', $baivietChitiet->danhmucbaiviet_id)->first();
            $baivietlienquan = Baiviet::where('danhmucbaiviet_id', $baivietChitiet->danhmucbaiviet_id)->orderBy('id', 'desc')->limit(6)->get();
            return view('website.baiviet', [
                'baivietChitiet' => $baivietChitiet,
                'danhmucbaivietChitiet' => $danhmucbaivietChitiet,
                'baivietlienquan' => $baivietlienquan,
                'soluonggiohang' => $soluonggiohang,
            ]);
        }
        // End chi tiết bài viết
        elseif($danhmucsanpham){
            $dieukien[] = $danhmucsanpham->id;
            $danhmucsanpham1 = Danhmucsanpham::where('danhmuccha_id',$danhmucsanpham->id)->get();
            if(count($danhmucsanpham1) > 0)
            foreach ($danhmucsanpham1 as $item1) {
                $dieukien[] = $item1->id;
                $danhmucsanpham2 = Danhmucsanpham::where('danhmuccha_id',$item1->id)->get();
                if(count($danhmucsanpham2) > 0)
                foreach ($danhmucsanpham2 as $item2) {
                    $dieukien[] = $item2->id;
                    $danhmucsanpham3 = Danhmucsanpham::where('danhmuccha_id',$item2->id)->get();
                    if(count($danhmucsanpham3) > 0)
                    foreach ($danhmucsanpham3 as $item3) {
                        $dieukien[] = $item3->id;
                    }
                }
            }
            $sanpham = Sanpham::whereIn('danhmucsanpham_id',$dieukien)->orderBy('id', 'desc')->paginate(20);        

            return view('website.danhmucsanpham', [
                'danhmucsanpham' => $danhmucsanpham,
                'sanpham' => $sanpham,
                'soluonggiohang' => $soluonggiohang,
                'hinhanhdaidien' => $hinhanhdaidien,
            ]);
        }
        // End danh mục sản phẩm
        elseif($sanpham){
            $danhmucsanphamChitiet = DB::table('danhmucsanpham')->where('id', $sanpham->danhmucsanpham_id)->first();
            $hinhanhsanpham = Hinhanhsanpham::where('sanpham_id', $sanpham->id)->get();
            $sanphamlienquan = Sanpham::where('danhmucsanpham_id', $sanpham->danhmucsanpham_id)->orderBy('id', 'desc')->limit(8)->get();
            return view('website.sanpham', [
                'sanpham' => $sanpham,
                'danhmucsanphamChitiet' => $danhmucsanphamChitiet,
                'hinhanhsanpham' => $hinhanhsanpham,
                'sanphamlienquan' => $sanphamlienquan,
                'soluonggiohang' => $soluonggiohang,
            ]);
        }
        // End sản phẩm
        elseif($code == 'gioi-thieu'){
            $gioithieu = DB::table('gioithieu')->first();
            return view('website.gioithieu', [
                'gioithieu' => $gioithieu,
                'soluonggiohang' => $soluonggiohang,
                'hinhanhdaidien' => $hinhanhdaidien,
            ]);
        }
        // End giới thiệu
        elseif($code == 'lien-he'){
            return view('website.lienhe', [
                'soluonggiohang' => $soluonggiohang,
                'hinhanhdaidien' => $hinhanhdaidien,
            ]);
        }
        // End liên hệ
        elseif($code == 'gio-hang'){
            return view('website.giohang', [
                'sanphamGiohang' => $sanphamGiohang,
                'tongtien' => $tongtien,
                'soluonggiohang' => $soluonggiohang,
            ]);
        }
        // End giỏ hàng
        elseif($code == 'thanh-toan'){
            return view('website.thanhtoan', [
                'sanphamGiohang' => $sanphamGiohang,
                'tongtien' => $tongtien,
                'soluonggiohang' => $soluonggiohang,
            ]);
        }
        // End thanh toán
        elseif($code == 'sitemap.xml'){
            $danhmucbaivietList = Danhmucbaiviet::latest()->get();
            $danhmucsanphamList = Danhmucsanpham::latest()->get();
            $baivietList = Baiviet::latest()->get();
            $sanphamList = Sanpham::latest()->get();
            return response()->view('sitemap.index', [
                'danhmucbaivietList' => $danhmucbaivietList,
                'danhmucsanphamList' => $danhmucsanphamList,
                'baivietList' => $baivietList,
                'sanphamList' => $sanphamList,
            ])->header('Content-Type', 'text/xml');
        }
        // End sitemap
        else{
            return redirect()->route('error');
        }
    }


    public function post($code, Request $request)
    {
        $soluonggiohang = Cart::count();
        if($code == 'thanh-toan'){
            $message = [
                'hoten.required' => 'Chưa nhập họ tên !',
                'diachi.required' => 'Chưa nhập địa chỉ !',
                'dienthoai.required' => 'Chưa nhập điện thoại !',
            ];
            $validated =
                [
                    'hoten' => 'required:hoadon,hoten,'.$request->id,
                    'diachi' => 'required:hoadon,diachi,'.$request->id,
                    'dienthoai' => 'required:hoadon,dienthoai,'.$request->id,
                ];
            $this->validate($request, $validated, $message);


            $tongtien = Cart::total();
            $giohang = $request->session()->get('cart');
            if($giohang){
                $hoadon = new Hoadon;
                $hoadon->hoten = $request->hoten;
                $hoadon->diachi = $request->diachi;
                $hoadon->dienthoai = $request->dienthoai;
                $hoadon->email = $request->email;
                $hoadon->ghichu = $request->ghichu;
                $hoadon->tongtien = $tongtien;
                if($request->checkbox){
                    
                    $hoadon->save();
                    
                    // Lưu chi tiết hóa đơn
                    foreach($giohang['default'] as $key => $value){
                        $chitiethoadon = new Chitiethoadon;
                        $chitiethoadon->hoadon_id = $hoadon->id;
                        $chitiethoadon->sanpham_id = $value->id;
                        $chitiethoadon->soluong = $value->qty;
                        $chitiethoadon->giatien = $value->price;
                        $chitiethoadon->save();
                        
                    }


                    // Gửi thông tin vào mail
                    // $chitiethoadonMail = Chitiethoadon::where('hoadon_id', $hoadon->id)->get();
                    
                    // $data = array(
                    //     'hoten'=>$request->hoten, 
                    //     'diachi'=>$request->diachi, 
                    //     'dienthoai'=>$request->dienthoai, 
                    //     'email'=>$request->email, 
                    //     'tongtien'=>$tongtien, 
                    //     'ghichu'=>$request->ghichu, 
                    //     'sanpham'=>$value->id, 
                    //     'soluong'=>$value->qty, 
                    //     'giatien'=>$value->price,
                    //     'chitiethoadonMail' => $chitiethoadonMail
                    // );

                    // Mail::send('website.mail',  $data, function($message) {
                    //     $message->to('shopkorea.nhapkhau@gmail.com', 'Hệ thống')->subject('Thông tin mua hàng website !');
                    // });


                    // $request->session()->forget('cart');
                    // return redirect()->route('xacnhan');
                }

                
            }

            $request->session()->forget('cart');
            return redirect()->route('xacnhan');
        }
        // End thanh toán
        elseif($code == 'tim-kiem'){
            $tukhoa = $request->tukhoa;
            $sanpham = DB::table('sanpham')
                                    ->where('name', 'like', '%'.$request->tukhoa.'%')
                                    ->orWhere('code', 'like', '%'.$request->tukhoa.'%')
                                    ->orWhere('motasanpham', 'like', '%'.$request->tukhoa.'%')
                                    ->orWhere('giasanpham', 'like', '%'.$request->tukhoa.'%')
                                    ->paginate(10);
            $hinhanhdaidien = DB::table('slider')->orderBy('id', 'desc')->limit(1)->get();
            return view('website.timkiem', [
                'tukhoa' => $tukhoa,
                'sanpham' => $sanpham,
                'hinhanhdaidien' => $hinhanhdaidien,
                'soluonggiohang' => $soluonggiohang,
            ]);
        }
        // End tìm kiếm
        else{
            return redirect()->route('error');
        }

    }

    public function muahang($code, $id, Request $request)
    {
        
        $sanpham = Sanpham::find($id);
        
        if($sanpham->giasanpham != NULL){
            Cart::add(array(
                'id' => $id,
                'name' => $sanpham->name,
                'qty' => $request->soluong,
                'price' => $sanpham->giasanpham,
                'weight' => 0,
                'options' => array(
                    'img' => $sanpham->anhdaidien,
                    'code' => $sanpham->code,
                )
            ));
        }
        if($sanpham->giasanpham2 == NULL){
             Cart::add(array(
                'id' => $id,
                'name' => $sanpham->name,
                'qty' => $request->soluong,
                'price' => 0,
                'weight' => 0,
                'options' => array(
                    'img' => $sanpham->anhdaidien,
                    'code' => $sanpham->code,
                )
            ));
        }
        // dd(Cart::content());

        return redirect()->route('indexCode', ['code' => 'gio-hang']);
    }

    public function capnhatgiohang($id, $qty)
    {
        Cart::update($id, $qty); // Will update the quantity
        return redirect()->route('indexCode', ['code' => 'gio-hang']);
    }
    public function xoasanpham($id)
    {
        Cart::remove($id);
        return redirect()->route('indexCode', ['code' => 'gio-hang']);
    }

}