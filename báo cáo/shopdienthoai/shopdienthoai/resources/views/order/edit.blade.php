@extends('master.main')
@section('content')
    <div class=" text-center loginscreen animated fadeInDown">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Thay đổi trạng thái đơn hàng</h5>
                        <a class="btn aa btn-primary " type="button" href="{{route('order.index')}}"><i class="fa fa-list"></i>&nbsp; Danh sách</a>
                    </div>
                    <div class="ibox-content">
                        <form id="form" method="post" action="{{ route('order.update',$order->id)}}" class="wizard-big">
                            @method('PUT')
                            @csrf
                            <fieldset>
                                <div class="row">
                                    <div class="col-lg-12" style="text-align: center">
                                        <label>Chi tiết đơn hàng</label>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Tên khách hàng</label>
                                            <input value="{{$order->account->Ho.' '.$order->account->Ten}}" disabled id="tensanpham" name="tensanpham" type="text" class="form-control @error('tensanpham') is-invalid @enderror ">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input value="{{$order->DiaChi}}" disabled id="giasanpham" name="giasanpham" type="number" class="form-control @error('giasanpham') is-invalid @enderror ">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Hình thức thanh toán</label>
                                            <input value="{{$order->HinhThucThanhToan}}" disabled id="SoLuong" name="SoLuong" type="text" class="form-control @error('SoLuong') is-invalid @enderror ">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Tổng tiền</label>
                                            <input value="{{$order->TONGTIEN}}" disabled id="hinhanhsanpham" name="hinhanhsanpham" type="text" class="form-control @error('hinhanhsanpham') is-invalid @enderror ">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 row">
                                        @foreach($infoOrders as $infoOrder)
                                            <div class="col-lg-6">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label>Tên sản phẩm</label>
                                                        <input value="@if($infoOrder->product){{$infoOrder->product->tensanpham}} @endif" disabled type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label>Số lượng</label>
                                                        <input value="{{$infoOrder->soluongsanpham}}" disabled type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label>Giá tiền từng sản phẩm</label>
                                                        <input value="{{$infoOrder->tientungsanpham}}" disabled type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Trạng thái</label>
                                            <select class="form-control" name="TrangThai" id="">
                                                <option value="Đang xử lý" @if($order->TrangThai == 'Đang xử lý') selected @endif>Đang xử lý</option>
                                                <option value="Đã giao cho Shipper" @if($order->TrangThai == 'Đã giao cho Shipper') selected @endif>Đã giao cho Shipper</option>
                                                <option value="Giao hàng thành công" @if($order->TrangThai == 'Giao hàng thành công') selected @endif>Giao hàng thành công</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-7 m-b-xs">
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="col-sm-8 col-sm-offset-5">
                                            <button class="btn btn-white" type="reset">Xóa</button>
                                            <button class="btn btn-primary" type="submit">Lưu</button>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <script src="//cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="{{asset('backend/js/plugins/summernote/summernote.min.js')}}"></script>
@endsection




