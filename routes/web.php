<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MerchantsController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth:merchant')->prefix('merchant')->group(function () {
//     Route::get('/dashboard', function () {
//         return view('merchant.dashboard');
//     })->name('merchant.dashboard');  
// });

Route::middleware('auth:merchant')->prefix('merchant')->group(function () {
    Route::get('/dashboard', function () {
        return view('merchant.dashboard');
    })->name('merchant.dashboard');  

    Route::post('logout', [MerchantsController::class, 'logout'])->name('merchant.logout');
     // Store Routes
     Route::get('store-list', [StoreController::class, 'index'])->name('store.list');
     Route::get('create-store', [StoreController::class, 'create'])->name('store.create');
     Route::post('create-store', [StoreController::class, 'store'])->name('store.store');

     // Category Routes
     Route::get('category-list', [CategoryController::class, 'index'])->name('category.list');
     Route::get('create-category', [CategoryController::class, 'create'])->name('category.create');
     Route::post('create-category', [CategoryController::class, 'store'])->name('category.store');

     // Product Routes
     Route::get('product-list', [ProductController::class, 'index'])->name('product.list');
     Route::get('create-product', [ProductController::class, 'create'])->name('product.create');
     Route::post('create-product', [ProductController::class, 'store'])->name('product.store');

});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/merchant/register', function () {
    return view('merchant.register');
})->name('merchant.register');

Route::post('/merchant/register', [MerchantsController::class, 'register']);

// Route::get('/merchant/login', function () {
//     return view('merchant.login');
// })->name('merchant.login');

// Route::post('/merchant/login', [MerchantsController::class, 'login']);

Route::get('/', function () {
    return view('merchant.login');
})->name('merchant.login');

Route::post('/', [MerchantsController::class, 'login']);

Route::get('/admin/dashboard', [MerchantsController::class, 'dashboard'])->name('admin.dashboard');

require __DIR__.'/auth.php';
