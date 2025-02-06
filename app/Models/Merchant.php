<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Merchant extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'shop_name', 'password', 
    ];

    protected $hidden = [
        'password', 
    ];

    public function stores()
    {
        return $this->hasMany(Store::class);
    }
    public function products()
    {
        return $this->hasMany(Product::class);
    }

    public function categories()
    {
        return $this->hasMany(Category::class);
    }
}
