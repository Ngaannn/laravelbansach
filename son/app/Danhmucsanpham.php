<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Danhmucsanpham extends Model
{
    protected $table = "danhmucsanpham";
    protected $fillable = [
    	'name', 'code', 'status', 'status_page', 'danhmuccha_id', 'title', 'description', 'headings', 'vitri', 'noidung'
    ];

    public function sanpham()
	{
	    return $this->hasMany('App\Sanpham', 'danhmucsanpham_id', 'id');
	}

	public function subdanhmucsanpham()
	{
	    return $this->belongsTo('App\Danhmucsanpham', 'danhmuccha_id', 'id');
	}

	public function chils(){
		return $this->hasMany(Danhmucsanpham::class, 'danhmuccha_id', 'id');
	}
}
