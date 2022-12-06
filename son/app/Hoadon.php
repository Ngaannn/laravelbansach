<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hoadon extends Model
{
    protected $table = "hoadon";
    protected $fillable = [
    	'hoten', 'diachi', 'dienthoai', 'email', 'tongtien', 'ghichu'
    ];

    public function chitiethoadon()
	{
	    return $this->hasMany('App\Chitiethoadon', 'hoadon_id', 'id');
	}
}
