<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ScrapperController;
use App\Http\Controllers\Auth\LoginController;

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
    return view('auth.login');
});
Route::post('/login_user', [LoginController::class, 'loginUser']);

Auth::routes();
Route::get('/home', function () {
    return redirect('dashboard');
});
Route::get('/dashboard', [HomeController::class, 'index'])->name('home');

//Route::get('/sentimen', [ScrapperController::class, 'indexSentimen']);
Route::get('/data', [ScrapperController::class, 'index']);

Route::post('/store/dataset', [ScrapperController::class, 'addDataSet']);
Route::post('/update/dataset/{id}', [ScrapperController::class, 'updateDataSet']);
Route::get('/delete/dataset/{id}', [ScrapperController::class, 'deleteDataSet']);

//detail
Route::post('/store/detail/dataset', [ScrapperController::class, 'adddetailDataSet']);
Route::post('/upload/detail/dataset', [ScrapperController::class, 'importKomentar']);
Route::post('/update/detail/dataset/{id}', [ScrapperController::class, 'adddetailDataSet']);
Route::get('/delete/detail/dataset/{id}', [ScrapperController::class, 'deletedetail']);
