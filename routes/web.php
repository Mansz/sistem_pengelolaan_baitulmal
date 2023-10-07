<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ApprovalController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DistributorController;
use App\Http\Controllers\ExpenditureController;
use App\Http\Controllers\ExpenditureMalController;
use App\Http\Controllers\GuidelinesController;
use App\Http\Controllers\IncomeController;
use App\Http\Controllers\MustahikController;
use App\Http\Controllers\MuzakiController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\ReceptionController;
use App\Http\Controllers\SlideController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GuestController;

Route::get('/', function () {
    return redirect()->route('guest.home');
});

Auth::routes();

Route::get('/home', [GuestController::class, 'index'])->name('guest.home');
Route::get('/about', [GuestController::class, 'about'])->name('guest.about');
Route::get('/news', [GuestController::class, 'news'])->name('guest.news');
Route::get('/news/{id}', [GuestController::class, 'showNews'])->name('guest.news.show');
Route::get('/gallery', [GuestController::class, 'gallery'])->name('guest.gallery');
Route::get('/contact', [GuestController::class, 'contact'])->name('guest.contact');

Route::prefix('/admin')->name('admin.')->middleware('auth')->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/reception/refresh', [ReceptionController::class, 'refresh'])->name('reception.refresh');
    Route::get('/apporval/refresh', [ApprovalController::class, 'refresh'])->name('approval.refresh');
    Route::resource('user', UserController::class);
    Route::resource('income', IncomeController::class);
    Route::resource('income', IncomeController::class);
    Route::resource('expenditure', ExpenditureController::class);
    Route::resource('muzaki', MuzakiController::class);
    Route::resource('mustahik', MustahikController::class);
    Route::resource('reception', ReceptionController::class);
    Route::resource('distributor', DistributorController::class);
    Route::resource('expenditureMal', ExpenditureMalController::class);
    Route::resource('slide', SlideController::class);
    Route::resource('news', NewsController::class);
    Route::resource('about', AboutController::class);
    Route::resource('guidelines', GuidelinesController::class);
    Route::resource('organization', OrganizationController::class);
    Route::resource('contact', ContactController::class);
    Route::resource('approval', ApprovalController::class);


    // Route::get('/reception/refresh', [ReceptionController::class, 'refresh'])->name('reception.refresh');
});