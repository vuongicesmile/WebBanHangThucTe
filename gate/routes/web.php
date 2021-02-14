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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/admin', [App\Http\Controllers\HomeController::class, 'admin'])->name('admin');


Route::get('/post/list', [App\Http\Controllers\PostController::class, 'index'])->name('post.index');
Route::get('/post/show{id}', [App\Http\Controllers\PostController::class, 'show'])->name('post.show');

Route::get('/post/create', [App\Http\Controllers\PostController::class, 'create'])->name('post.create');


