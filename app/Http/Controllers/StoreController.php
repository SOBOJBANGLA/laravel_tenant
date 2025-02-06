<?php

namespace App\Http\Controllers;

use App\Models\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StoreController extends Controller
{
    public function index()
    {
        $stores = Store::where('merchant_id', Auth::id())->get();
        return view('merchant.store-list', compact('stores'));
    }

    public function create()
    {
        return view('merchant.create-store');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:stores',
        ]);

        
        Store::create([
            'name' => $request->name,
            'merchant_id' => Auth::id(),
        ]);

        return redirect()->route('store.list')->with('success', 'Store created successfully!');
    }
}

