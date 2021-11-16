<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="{{asset('backend/img/profile_small.jpg')}}" />
                             </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear">
                                <span class="block m-t-xs">
                                    @if(Auth::check())
                                    <strong style="color: whitesmoke" class="font-bold">{{ Auth::user()->fullname }}</strong>
                                    @else
                                        <strong style="color: whitesmoke" class="font-bold">Guest</strong>
                                    @endif
                                </span>
                            </span>
                    </a>
                </div>
                <div class="logo-element">
                    IN+
                </div>
            </li>
            <li class="@if(Route::is('account.index')) active @endif">
                <a href="{{route('account.index')}}"><i class="fa fa-users"></i> <span class="nav-label">Tài khoản</span></a>
            </li>
            <li class="@if(Route::is('product.index')||Route::is('product')) active @endif">
                <a href=""><i class="fa fa-table"></i> <span class="nav-label">Sản phẩm</span> <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li class="@if(Route::is('product.index')||Route::is('product')) active @endif">
                        <a href="{{route('product.index')}}">Danh sách</a>
                    </li>
                    <li class="@if(Route::is('product.create')) active @endif">
                        <a href="{{route('product.create')}}">Thêm mới</a>
                    </li>
                </ul>
            </li>
            <li class="@if(Route::is('order.index')) active @endif">
                <a href="{{route('order.index')}}"><i class="fa fa-users"></i> <span class="nav-label">Đơn hàng</span></a>
            </li>
        </ul>
    </div>
</nav>
