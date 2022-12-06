<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ChitiethoadonController extends Controller
{
    protected $table = "chitiethoadon";
    protected $fillable = [
    	'soluong', 'giatien', 'sanpham_id', 'hoadon_id'
    ];
}
