<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    public function index()
{
    
    $categories = Category::where('merchant_id', Auth::id())->get();
    return view('merchant.category-list', compact('categories'));
}

    public function create()
    {
        $stores = Store::where('merchant_id', Auth::id())->get();
        return view('merchant.create-category', compact('stores'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'store_id' => 'required|exists:stores,id',
            'name' => 'required',
        ]);
    
        
        Category::create(array_merge(
            $request->all(),
            ['merchant_id' => Auth::id()] 
        ));
    
        return redirect()->route('category.list')->with('success', 'Category created successfully!');
    }
}
