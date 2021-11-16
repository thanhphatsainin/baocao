<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $table = 'donhang';
    protected $fillable = [
        'TrangThai'
    ];

    public function account(){
        return $this->belongsTo(Account::class,'idkhachhang','MaTaiKhoan');
    }

    public function infoOrder(){
        return $this->hasMany(InfoOrder::class,'madonhang','id');
    }
}
