<?php

namespace App\Http\Controllers;

use App\Model\Account;
use Illuminate\Http\Request;

class AccountController extends Controller
{
    //
    public function index(Request $request){
        $accounts = Account::orderBy('MaTaiKhoan', 'DESC');
        if (isset($_GET['search'])&&!empty($_GET['search']))
        {
            $search = $request->get('search');
            $accounts->where(function($query) use($search){
                $query->where('Ten','like','%'.$search.'%')
                      ->orwhere('Ho','like','%'.$search.'%');
            });
        }
        $accounts = $accounts->paginate(10);
        return view('account.index',compact('accounts'));
    }
}
