<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','ProductController@index')->name('product');

Route::resource('product','ProductController');
Route::get('product/{product}/delete','ProductController@destroy')
    ->name('product.delete');

Route::get('account','AccountController@index')->name('account.index');
Route::resource('order','OrderController');
