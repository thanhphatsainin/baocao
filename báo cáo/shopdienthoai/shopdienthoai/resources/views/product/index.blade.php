@extends('master.main')
@section('content')
    @if (session()->has('success'))
        <div class="alert alert-success">
            @if(is_array(session('success')))
                @foreach (session('success') as $message)
                    {{ $message }}
                @endforeach
            @else
                {{ session('success') }}
            @endif
        </div>
    @endif
    @if (session()->has('error'))
        <div class="alert alert-danger">
            @if(is_array(session('error')))
                @foreach (session('error') as $message)
                    {{ $message }}
                @endforeach
            @else
                {{ session('error') }}
            @endif
        </div>
    @endif

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Product </h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-9 m-b-xs">

                            <a class="btn btn-primary " type="button" href="{{route('product.create')}}"><i class="fa fa-plus"></i>&nbsp;Add</a>

                        </div>
                        <form action="" method="get">
                            <div class="col-sm-3">
                                <div class="input-group">
                                    <input type="text" placeholder="Search" value="{{ Request::get('search')}}" name="search" class="input-sm form-control">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-sm btn-primary"> Go!</button>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Tên sản phẩm</th>
                                <th>Hình ảnh sản phẩm</th>
                                <th>Giá sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Mô tả sản phẩm</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($products as $product)
                                <tr>
                                    <td>{{$product->id}}</td>
                                    <td>{{$product->tensanpham}}</td>
                                    <td>
                                        <img style="width: 60px; height: 60px" src="{{$product->hinhanhsanpham}}" alt="">
                                    </td>
                                    <td>{{$product->giasanpham}}</td>
                                    <td>{{$product->SoLuong}}</td>
                                    <td>{{\Illuminate\Support\Str::limit($product->motasanpham,60)}}</td>
                                    <td class="col-sm-2 row" style="vertical-align:middle">

                                        <a href="{{route('product.edit',$product->id)}}" class="btn btn-info bt dim" type="button">
                                            <i class="fa fa-edit"></i>
                                        </a>

                                        <a href="{{route('product.delete',$product->id)}}" class="btn btn-danger bt dim" onclick="return confirm('Có chắc muốn xóa?')" type="submit">
                                            <i class="fa fa-trash-o"></i>
                                        </a>

                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-5 m-b-xs">
                        </div>
                        <div class="col-sm-7">
                            <div class="input-group">
                                {{$products->links()}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection


