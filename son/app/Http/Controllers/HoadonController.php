<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hoadon;
use App\Chitiethoadon;
class HoadonController extends Controller
{
    public function index()
    {
    	$hoadon = Hoadon::orderBy('id', 'desc')->paginate(15);

    	return view('admin.hoadon.index',[
            'hoadon' => $hoadon
        ]);
    }

    public function indexChitiethoadon($id)
    {
    	$hoadon = Hoadon::find($id);
    	$chitiethoadon = Chitiethoadon::where('hoadon_id', $hoadon->id)->paginate(15);
    	return view('admin.hoadon.chitiethoadon', [
    		'hoadon' => $hoadon,
    		'chitiethoadon' => $chitiethoadon
        ]);
    }

    public function delete($id)
    {
    	$hoadon = Hoadon::find($id);
    	$hoadon->delete();
    	return redirect('admin/hoadon/index')->with('thongbao', 'Bạn đã xóa thành công !');
    }

    public function deleteChitiethoadon($id)
    {
    	$chitiethoadon = Chitiethoadon::find($id);
    	$chitiethoadon->delete();
    	return redirect('admin/hoadon/index')->with('thongbao', 'Bạn đã xóa thành công !');
    }
}
