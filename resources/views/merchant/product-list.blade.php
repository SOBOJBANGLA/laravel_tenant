@extends('merchant.dashboard')  

@section('title', 'Product List')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center mb-4">Product List</h1>
        <a href="{{ route('product.create') }}" class="btn btn-primary mb-3">Create Product</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Category Name</th>
                    <th>Store Name</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $product)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->category->name }}</td>
                        <td>{{ $product->store->name }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    @endsection
