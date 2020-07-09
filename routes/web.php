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

// Route::get('/', function () {
//     return view('welcome');
// });

 Route::get('/', 'AuthController@index');
  Route::get('registration', 'AuthController@registration');
  Route::get('logout', 'AuthController@logout');

  Route::get('dashboard', 'AdminController@dashboard');
  Route::get('/edit-user/{id}', 'AdminController@editUser')->name('admin.editUser');

