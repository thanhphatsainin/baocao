<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class InfoOrder extends Model
{
    //
    protected $table = 'chitiecdonhang';

    public function order(){
        return $this->belongsTo(Order::class,'madonhang','id');
    }
    public function product(){
        return $this->belongsTo(Product::class,'masanpham','id');
    }
}
