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
                                <th>Tên khách hàng</th>
                                <th>Địa chỉ</th>
                                <th>Hình thức thanh toán</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($orders as $order)
                                <tr>
                                    <td>{{$order->id}}</td>
                                    <td>{{$order->account->Ho.' '.$order->account->Ten}}</td>
                                    <td>{{\Illuminate\Support\Str::limit($order->DiaChi,60)}}</td>
                                    <td>{{$order->HinhThucThanhToan}}</td>
                                    <td>{{$order->TONGTIEN}}</td>
                                    <td>{{$order->TrangThai}}</td>
                                    <td class="col-sm-2 row" style="vertical-align:middle">
                                        <a href="{{route('order.edit',$order->id)}}" class="btn btn-info bt dim" type="button">
                                            <i class="fa fa-edit"></i>
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
                                {{$orders->links()}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection


