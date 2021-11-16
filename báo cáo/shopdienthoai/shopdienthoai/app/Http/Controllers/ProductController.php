<?php

namespace App\Http\Controllers;

use App\Model\Category;
use App\Model\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use PHPUnit\Exception;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $products = Product::orderBy('id', 'DESC');
        if (isset($_GET['search'])&&!empty($_GET['search']))
        {
            $search = $request->get('search');
            $products->where(function($query) use($search){
                $query->where('tensanpham','like','%'.$search.'%');
            });
        }
        $products = $products->paginate(10);
        return view('product.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::all();
        return view('product.create',compact('categories'));
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
        try {
            $data = $request->all();
            $product = new Product();
            $product->fill($data)->save();
        }catch (\Exception $e){
            return redirect()->route('product.index')->withError('Thêm mới thất bại');
        }
        return redirect()->route('product.index')->withSuccess('Thêm mới thành công');
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
        $product = Product::find($id);
        if ($product){
            $categories = Category::all();
            return view('product.edit',compact('product','categories'));
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
            $data = $request->all();
            $product = Product::find($id);
            if ($product){
                $product->fill($data)->save();
            }
        }catch (\Exception $e){
            return redirect()->route('product.index')->withError('Cập nhật thất bại');
        }
        return redirect()->route('product.index')->withSuccess('Cập nhật thành công');
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
        try {
            $product = Product::find($id);
            if ($product){
                $product->delete();
            }
        }catch (\Exception $e){
            return redirect()->route('product.index')->withError('Xóa thất bại');
        }
        return  redirect()->route('product.index')->withSuccess('Xóa thành công');
    }
}
