<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chitiethoadon extends Model
{
	protected $table = "chitiethoadon";
    protected $fillable = [
    	'soluong', 'size', 'giatien', 'sanpham_id', 'hoadon_id'
    ];
    public function Hoadon()
	{
	    return $this->belongsTo('App\Hoadon', 'hoadon_id', 'id');
	}
	public function Sanpham()
	{
	    return $this->belongsTo('App\Sanpham', 'sanpham_id', 'id');
	}
}