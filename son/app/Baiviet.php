<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Baiviet extends Model
{
    protected $table = "baiviet";
    protected $fillable = [
    	'name', 'code', 'anhdaidien','motabaiviet', 'noidungbaiviet', 'status', 'danhmucbaiviet_id', 'title', 'description', 'headings'
    ];

    public function danhmucbaiviet()
	{
	    return $this->belongsTo('App\Danhmucbaiviet', 'danhmucbaiviet_id', 'id');
	}
}
