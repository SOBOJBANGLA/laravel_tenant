@extends('merchant.dashboard')  

@section('title', 'Create Store')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center mb-4">Create Store</h1>
        <form action="{{ route('store.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="name">Store Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter store name" required>
            </div>
            <button type="submit" class="btn btn-success mt-3">Save</button>
        </form>
    </div>
    @endsection
