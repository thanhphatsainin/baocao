@extends('master.main')
@section('content')
    <div class=" text-center loginscreen animated fadeInDown">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>Sửa sản phẩm</h5>
                        <a class="btn aa btn-primary " type="button" href="{{route('product.index')}}"><i class="fa fa-list"></i>&nbsp; Danh sách</a>
                    </div>
                    <div class="ibox-content">
                        <form id="form" method="post" action="{{ route('product.update',$product->id)}}" class="wizard-big">
                            @method('PUT')
                            @csrf
                            <fieldset>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Danh mục sản phẩm</label>
                                            <select class="form-control m-b" id="idsanpham" name="idsanpham">
                                                <option value= "">--- Chọn danh mục ---</option>
                                                @foreach($categories as $category)
                                                    @if($product->idsanpham == $category->Id)
                                                        <option selected value="{{$category->Id}}">{{$category->TenLoaiSanPham}}</option>
                                                    @else
                                                        <option value="{{$category->Id}}">{{$category->TenLoaiSanPham}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                            @error('idsanpham')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input value="{{$product->tensanpham}}" id="tensanpham" name="tensanpham" type="text" class="form-control @error('tensanpham') is-invalid @enderror ">
                                            @error('tensanpham')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Giá sản phẩm</label>
                                            <input value="{{$product->giasanpham}}" id="giasanpham" name="giasanpham" type="number" class="form-control @error('giasanpham') is-invalid @enderror ">
                                            @error('giasanpham')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Số lượng</label>
                                            <input value="{{$product->SoLuong}}" id="SoLuong" name="SoLuong" type="text" class="form-control @error('SoLuong') is-invalid @enderror ">
                                            @error('SoLuong')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Link ảnh mô tả sản phẩm</label>
                                            <input value="{{$product->hinhanhsanpham}}" id="hinhanhsanpham" name="hinhanhsanpham" type="text" class="form-control @error('hinhanhsanpham') is-invalid @enderror ">
                                            <img src="{{$product->hinhanhsanpham}}" style="width: 100%; height:100%" alt="">
                                            @error('hinhanhsanpham')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            <textarea name="motasanpham" id="" cols="30" rows="10">{{$product->motasanpham}}</textarea>
                                            @error('motasanpham')
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
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
    <script>
        $(document).ready(function () {
            CKEDITOR.replace('motasanpham')
        });
    </script>
@endsection




