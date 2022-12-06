<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotrokhachhang extends Model
{
    protected $table = "hotrokhachhang";
    protected $fillable = [
    	'name', 'code', 'noidungbaiviet', 'title', 'description', 'headings'
    ];
}
