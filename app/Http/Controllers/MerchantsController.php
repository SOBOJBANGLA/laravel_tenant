<?php

namespace App\Http\Controllers;

use App\Models\Merchant;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class MerchantsController extends Controller
{
    public function register(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:merchants',
        'shop_name' => 'required|string|max:255',
        'password' => 'required|string|min:8',
    ]);

    Merchant::create([
        'name' => $request->name,
        'email' => $request->email,
        'shop_name' => $request->shop_name,
        'password' => Hash::make($request->password), 
    ]);

    return redirect()->route('merchant.login')->with('success', 'Merchant registered successfully.');
}

public function login(Request $request)
{
    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
    ]);

    if (Auth::guard('merchant')->attempt($request->only('email', 'password'))) {
        return redirect()->route('merchant.dashboard');  
    }

    return back()->withErrors([
        'email' => 'The provided credentials do not match our records.',
    ]);
}


public function logout(Request $request): RedirectResponse
    {
        Auth::guard('merchant')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        //return redirect('/admin/login');
        return redirect()->route('merchant.login');
    }
    
    public function dashboard()
    {
        $merchants = Merchant::all();

        return view('admin.dashboard', compact('merchants'));
    }


}

