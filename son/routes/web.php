<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route admin

Route::get('vlc', 'UserController@login');
Route::post('vlc', 'UserController@loginPost');
Route::get('vlc/logout', 'UserController@logout');
Route::group(['prefix' => 'admin', 'middleware' => 'adminLogin'], function(){

	Route::group(['prefix' => 'layout'], function(){
		Route::get('index', 'Controller@index');
	});

	Route::group(['prefix' => 'danhmucsanpham'], function(){
		Route::get('index', 'DanhmucsanphamController@index');
		Route::get('create', 'DanhmucsanphamController@create');
		Route::post('create', 'DanhmucsanphamController@createPost');
		Route::get('update/{id}', 'DanhmucsanphamController@update');
		Route::post('update/{id}', 'DanhmucsanphamController@updatePost');
		Route::get('view/{id}', 'DanhmucsanphamController@view');
		Route::get('delete/{id}', 'DanhmucsanphamController@delete');
	});

	Route::group(['prefix' => 'sanpham'], function(){
		Route::get('index', 'SanphamController@index');
		Route::get('create', 'SanphamController@create');
		Route::post('create', 'SanphamController@createPost');
		Route::get('update/{id}', 'SanphamController@update');
		Route::post('update/{id}', 'SanphamController@updatePost');
		Route::get('view/{id}', 'SanphamController@view');
		Route::get('delete/{id}', 'SanphamController@delete');

		Route::get('deleteHinhanhsanpham/{id}', 'SanphamController@removeHinhanhsanpham');
	});

	Route::group(['prefix' => 'danhmucbaiviet'], function(){
		Route::get('index', 'DanhmucbaivietController@index');
		Route::get('create', 'DanhmucbaivietController@create');
		Route::post('create', 'DanhmucbaivietController@createPost');
		Route::get('update/{id}', 'DanhmucbaivietController@update');
		Route::post('update/{id}', 'DanhmucbaivietController@updatePost');
		Route::get('view/{id}', 'DanhmucbaivietController@view');
		Route::get('delete/{id}', 'DanhmucbaivietController@delete');
	});

	Route::group(['prefix' => 'baiviet'], function(){
		Route::get('index', 'BaivietController@index');
		Route::get('create', 'BaivietController@create');
		Route::post('create', 'BaivietController@createPost');
		Route::get('update/{id}', 'BaivietController@update');
		Route::post('update/{id}', 'BaivietController@updatePost');
		Route::get('view/{id}', 'BaivietController@view');
		Route::get('delete/{id}', 'BaivietController@delete');
	});

	Route::group(['prefix' => 'hotrokhachhang'], function(){
		Route::get('index', 'HotrokhachhangController@index');
		Route::get('create', 'HotrokhachhangController@create');
		Route::post('create', 'HotrokhachhangController@createPost');
		Route::get('update/{id}', 'HotrokhachhangController@update');
		Route::post('update/{id}', 'HotrokhachhangController@updatePost');
		Route::get('view/{id}', 'HotrokhachhangController@view');
		Route::get('delete/{id}', 'HotrokhachhangController@delete');
	});

	Route::group(['prefix' => 'gioithieu'], function(){
		Route::get('index', 'GioithieuController@index');
		Route::get('create', 'GioithieuController@create');
		Route::post('create', 'GioithieuController@createPost');
		Route::get('update/{id}', 'GioithieuController@update');
		Route::post('update/{id}', 'GioithieuController@updatePost');
		Route::get('view/{id}', 'GioithieuController@view');
		Route::get('delete/{id}', 'GioithieuController@delete');

		Route::post('ckeditor/image_upload', 'GioithieuController@upload')->name('upload');
	});

	Route::group(['prefix' => 'slider'], function(){
		Route::get('index', 'SliderController@index');
		Route::get('create', 'SliderController@create');
		Route::post('create', 'SliderController@createPost');
		Route::get('update/{id}', 'SliderController@update');
		Route::post('update/{id}', 'SliderController@updatePost');
		Route::get('view/{id}', 'SliderController@view');
		Route::get('delete/{id}', 'SliderController@delete');
	});

	Route::group(['prefix' => 'footer'], function(){
		Route::get('index', 'FooterController@index');
		Route::get('create', 'FooterController@create');
		Route::post('create', 'FooterController@createPost');
		Route::get('update/{id}', 'FooterController@update');
		Route::post('update/{id}', 'FooterController@updatePost');
		Route::get('view/{id}', 'FooterController@view');
		Route::get('delete/{id}', 'FooterController@delete');
	});

	Route::group(['prefix' => 'cauhinh'], function(){
		Route::get('index', 'CauhinhController@index');
		Route::get('create', 'CauhinhController@create');
		Route::post('create', 'CauhinhController@createPost');
		Route::get('update/{id}', 'CauhinhController@update');
		Route::post('update/{id}', 'CauhinhController@updatePost');
		Route::get('view/{id}', 'CauhinhController@view');
		Route::get('delete/{id}', 'CauhinhController@delete');
	});

	Route::group(['prefix' => 'cauhinhseo'], function(){
		Route::get('index', 'CauhinhseoController@index');
		Route::get('create', 'CauhinhseoController@create');
		Route::post('create', 'CauhinhseoController@createPost');
		Route::get('update/{id}', 'CauhinhseoController@update');
		Route::post('update/{id}', 'CauhinhseoController@updatePost');
		Route::get('view/{id}', 'CauhinhseoController@view');
		Route::get('delete/{id}', 'CauhinhseoController@delete');
	});

	Route::group(['prefix' => 'user'], function(){
		Route::get('index', 'UserController@index');
		Route::get('create', 'UserController@create');
		Route::post('create', 'UserController@createPost');
		Route::get('update/{id}', 'UserController@update');
		Route::post('update/{id}', 'UserController@updatePost');
		Route::get('view/{id}', 'UserController@view');
		Route::get('delete/{id}', 'UserController@delete');
	});

	Route::group(['prefix' => 'hoadon'], function(){
		Route::get('index', 'HoadonController@index');
		Route::get('delete/{id}', 'HoadonController@delete');
	});

	Route::get('hoa-don/{id}', 'HoadonController@indexChitiethoadon');
	Route::get('chitiethoadon/delete/{id}', 'HoadonController@deleteChitiethoadon');
});

// tìm kiếm ajax backend
Route::post('ajax/filter/danhmucbaiviet', 'DanhmucbaivietController@ajaxFilter');
Route::post('ajax/filter/baiviet', 'BaivietController@ajaxFilter');
Route::post('ajax/filter/danhmucsanpham', 'DanhmucsanphamController@ajaxFilter');
Route::post('ajax/filter/sanpham', 'SanphamController@ajaxFilter');

// Route website mới
Route::get('/', 'WebsiteController@index')->name('trangchu');
Route::get('{code}', 'WebsiteController@show')->name('indexCode');
Route::post('{code}', 'WebsiteController@post')->name('indexCodePost');

Route::get('thong-tin/xac-nhan', 'WebsiteController@xacnhan')->name('xacnhan');
Route::get('index/error-404', 'WebsiteController@error')->name('error');

// Route giỏ hàng
Route::post('mua-hang/{code}/{id}', 'WebsiteController@muahang');
Route::get('cap-nhat-gio-hang/{id}/{qty}', ['as' => 'capnhatgiohang', 'uses' => 'WebsiteController@capnhatgiohang']);
Route::get('xoa-san-pham/{id}', ['as' => 'xoasanpham', 'uses' => 'WebsiteController@xoasanpham']);

Route::any('{query}',
 function() { return redirect()->route('error'); })
    ->where('query', '.*');