<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hotrokhachhang;

class HotrokhachhangController extends Controller
{
    public function index()
    {
    	$hotrokhachhang = Hotrokhachhang::orderBy('id', 'desc')->paginate(15);
    	return view('admin.hotrokhachhang.index',[
            'hotrokhachhang' => $hotrokhachhang,
        ]);
    }

    public function create()
    {
        $hotrokhachhang = Hotrokhachhang::all();
    	return view('admin.hotrokhachhang.create',[
            'hotrokhachhang' => $hotrokhachhang,
        ]);
    }

    public function createPost(Request $request)
    {
    	$message = [
                'name.required' => 'Chưa nhập tên bài viết !',
                'name.unique' => 'Tên bài viết đã tồn tại !',
            ];
        $validated =
            [
                'name' => 'required|unique:hotrokhachhang,name,'.$request->id,
            ];
        $this->validate($request, $validated, $message);

        $hotrokhachhang = new Hotrokhachhang;
        $hotrokhachhang->fill([
            'name' => $request->name,
            'code' => changTitle($request->name),
            'noidungbaiviet' => $request->noidungbaiviet,
            'title' => $request->title,
            'description' => $request->description,
            'headings' => $request->headings,
        ]);

        $hotrokhachhang->save();

    	return redirect('admin/hotrokhachhang/index')->with('thongbao', 'Thêm mới thành công !');
    }

    public function update($id)
    {
    	$hotrokhachhang = Hotrokhachhang::find($id);
    	return view('admin.hotrokhachhang.update',[
            'hotrokhachhang' => $hotrokhachhang,
        ]);
    }

    public function updatePost(Request $request, $id)
    {
        // dd($request->all());
    	$hotrokhachhang = Hotrokhachhang::find($id);

    	$message = [
                'name.required' => 'Chưa nhập tên bài viết !',
                'name.unique' => 'Tên bài viết đã tồn tại !',
            ];
        $validated =
            [
                'name' => 'required|unique:hotrokhachhang,name,'.$request->id,
            ];
        $this->validate($request, $validated, $message);

        $hotrokhachhang->fill([
            'name' => $request->name,
            'code' => changTitle($request->name),
            'noidungbaiviet' => $request->noidungbaiviet,
            'title' => $request->title,
            'description' => $request->description,
            'headings' => $request->headings,
        ]);

        $hotrokhachhang->save();

    	return redirect('admin/hotrokhachhang/index')->with('thongbao', 'Sửa thành công !');
    }

    public function view($id)
    {
        $hotrokhachhang = Hotrokhachhang::find($id);
        return view('admin.hotrokhachhang.view',[
            'hotrokhachhang' => $hotrokhachhang,
        ]);
    }

    public function delete($id)
    {
    	$hotrokhachhang = Hotrokhachhang::find($id);
    	$hotrokhachhang->delete();
    	return redirect('admin/hotrokhachhang/index')->with('thongbao', 'Bạn đã xóa thành công !');
    }

}
