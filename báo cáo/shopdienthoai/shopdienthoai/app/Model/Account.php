<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    //
    protected $table = "taikhoan";
    public function order(){
        return $this->hasMany(Order::class,'MaTaiKhoan','idkhachhang');
    }
}
