<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Footer;

class FooterController extends Controller
{
    public function index()
    {
    	$footer = Footer::paginate(15);
    	return view('admin.footer.index',[
            'footer' => $footer,
        ]);
    }

    public function create()
    {
    	return view('admin.footer.create');
    }

    public function createPost(Request $request)
    {

        $footer = new Footer;
        $footer->fill([
            'chinhsach' => $request->chinhsach,
            'dichvu' => $request->dichvu,
            'cothequantam' => $request->cothequantam,
        ]);
        $footer->save();

    	return redirect('admin/footer/index')->with('thongbao', 'Thêm mới thành công !');
    }

    public function update($id)
    {
    	$footer = Footer::find($id);
    	return view('admin.footer.update',[
            'footer' => $footer, 
        ]);
    }

    public function updatePost(Request $request, $id)
    {
    	$footer = Footer::find($id);

        $footer->fill([
            'chinhsach' => $request->chinhsach,
            'dichvu' => $request->dichvu,
            'cothequantam' => $request->cothequantam,
        ]);
        
        $footer->save();

        return redirect('admin/footer/update/1')->with('thongbao', 'Sửa thành công !');
    }

    public function view($id)
    {
        $footer = Footer::find($id);
        return view('admin.footer.view',[
            'footer' => $footer, 
        ]);
    }

    public function delete($id)
    {
    	$footer = Footer::find($id);
    	$footer->delete();
    	return redirect('admin/footer/index')->with('thongbao', 'Bạn đã xóa thành công !');
    }
}
