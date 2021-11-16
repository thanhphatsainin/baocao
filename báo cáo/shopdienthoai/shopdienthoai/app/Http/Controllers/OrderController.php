<?php

namespace App\Http\Controllers;

use App\Model\Order;
use Illuminate\Http\Request;
use PHPUnit\Exception;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $orders = Order::orderBy('id', 'DESC');
        if (isset($_GET['search'])&&!empty($_GET['search']))
        {
            $search = $request->get('search');
            $orders->where(function($query) use($search){
                $query->where('tensanpham','like','%'.$search.'%');
            });
        }
        $orders = $orders->paginate(10);
        return view('order.index',compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $order = Order::find($id);
        if ($order){
            $infoOrders = $order->infoOrder;
            return view('order.edit',compact('order','infoOrders'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        try {
            $order = Order::find($id);
            if ($order){
                $data['TrangThai'] = $request['TrangThai'];
                $order->fill($data)->save();
            }
        }catch (\Exception $e){
            return redirect()->route('order.index')->withError('Cập nhật trạng thái thất bại');
        }
        return redirect()->route('order.index')->withSuccess('Cập nhật trạng thái thành công');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
