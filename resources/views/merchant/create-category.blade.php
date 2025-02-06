@extends('merchant.dashboard')  

@section('title', 'Create Category')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center mb-4">Create Category</h1>
        <form action="{{ route('category.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="store_id">Select Store</label>
                <select class="form-control" id="store_id" name="store_id" required>
                    <option value="">Select a Store</option>
                    @foreach ($stores as $store)
                        <option value="{{ $store->id }}">{{ $store->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="name">Category Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter category name" required>
            </div>
            <button type="submit" class="btn btn-success mt-3">Save</button>
        </form>
    </div>
    @endsection
