<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'store_id','merchant_id'];

    
    public function store()
    {
        return $this->belongsTo(Store::class);
    }

   
    public function products()
    {
        return $this->hasMany(Product::class);
    }

    public function merchant()
    {
        return $this->belongsTo(Merchant::class, 'merchant_id');
    }
}

