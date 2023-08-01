<?php

use App\Http\Controllers\JadwalController;
use App\Http\Controllers\HistoryController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('home', function () {
    return view('home');
});

Route::get('login', function () {
    return view('login');
});



//jadwal
Route::get('jadwal',[JadwalController::class,'data']);
Route::get('jadwal/tambah',[JadwalController::class,'tambahdata']);
Route::post('jadwal',[JadwalController::class,'tambahdataproses']);

Route::get('jadwal/edit/{id}',[JadwalController::class,'editdata']);
Route::patch('jadwal/{id}', [JadwalController::class,'editdataproses']);

Route::delete('jadwal/{id}', [JadwalController::class,'delete']);

//pesanan
Route::get('history',[HistoryController::class,'index']);
Route::delete('history/{id}', [HistoryController::class,'delete']);

