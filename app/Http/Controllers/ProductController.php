<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    public function index()
{
    $products = Product::where('merchant_id', Auth::id())->get(); 
    return view('merchant.product-list', compact('products'));
}

public function create()
{
   
    $stores = Store::where('merchant_id', Auth::id())->get();
    $categories = Category::where('merchant_id', Auth::id())->get();
    return view('merchant.create-product', compact('categories', 'stores'));
}

public function store(Request $request)
{
    $request->validate([
        'store_id' => 'required|exists:stores,id',
        'category_id' => 'required|exists:categories,id',
        'name' => 'required',
    ]);

    
    Product::create(array_merge(
        $request->all(),
        ['merchant_id' => Auth::id()]
    ));

    return redirect()->route('product.list');
}

}
