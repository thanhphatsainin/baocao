<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table = 'sanpham';
    protected $fillable = [
        'tensanpham',
        'giasanpham',
        'hinhanhsanpham',
        'motasanpham',
        'idsanpham',
        'SoLuong'
    ];

    public function infoOder(){
        return $this->hasOne(InfoOrder::class,'id','masanpham');
    }
}
