<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gioithieu;

class GioithieuController extends Controller
{
    public function index()
    {
    	$gioithieu = Gioithieu::paginate(15);
    	return view('admin.gioithieu.index',[
            'gioithieu' => $gioithieu,
        ]);
    }

    public function create()
    {
    	return view('admin.gioithieu.create');
    }

    public function createPost(Request $request)
    {

        $gioithieu = new Gioithieu;
        $gioithieu->fill([
            'noidunggioithieu' => $request->noidunggioithieu,
            'title' => $request->title,
            'description' => $request->description,
            'headings' => $request->headings,
        ]);
        $gioithieu->save();

    	return redirect('admin/gioithieu/index')->with('thongbao', 'Thêm mới thành công !');
    }

    public function update($id)
    {
        $gioithieuAll = Gioithieu::all();
    	$gioithieu = Gioithieu::find($id);
    	return view('admin.gioithieu.update',[
            'gioithieu' => $gioithieu, 
            'gioithieuAll' => $gioithieuAll,
        ]);
    }

    public function updatePost(Request $request, $id)
    {
        // dd($request->all());
    	$gioithieu = Gioithieu::find($id);

        $gioithieu->fill([
            'noidunggioithieu' => $request->noidunggioithieu,
            'title' => $request->title,
            'description' => $request->description,
            'headings' => $request->headings,
        ]);

        
        $gioithieu->save();

        return redirect('admin/gioithieu/update/1')->with('thongbao', 'Sửa thành công !');
    }

    public function view($id)
    {
        $gioithieu = Gioithieu::find($id);
        return view('admin.gioithieu.view',[
            'gioithieu' => $gioithieu, 
        ]);
    }

    public function delete($id)
    {
    	$gioithieu = Gioithieu::find($id);
    	$gioithieu->delete();
    	return redirect('admin/gioithieu/index')->with('thongbao', 'Bạn đã xóa thành công !');
    }

    public function upload(Request $request)
    {


        if ($request->hasFile('upload')) {

            //get filename with extension
            $filenamewithextension = $request->file('upload')->getClientOriginalName();

            //get filename without extension
            $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);

            //get file extension
            $extension = $request->file('upload')->getClientOriginalExtension();

            //filename to store
            $filenametostore = $filename . '_' . time() . '.' . $extension;

            //Upload File
            $request->file('upload')->storeAs('uploads', $filenametostore);

           // $url = Storage::putFileAs('avatars', $request->file('upload'), $filenametostore);

            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('public/uploads/' . $filenametostore);
            $msg = 'Tải ảnh lên thành công !';
            $re = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";

            // Render HTML output
            @header('Content-type: text/html; charset=utf-8');
            echo $re;
        }
    }
}
