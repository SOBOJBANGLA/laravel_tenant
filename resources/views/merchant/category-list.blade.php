@extends('merchant.dashboard')  

@section('title', 'Category List')

@section('content')
    <div class="container mt-5">
        
        <h1 class="text-center mb-4">Category List</h1>
        <a href="{{ route('category.create') }}" class="btn btn-primary mb-3">Create Category</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Category Name</th>
                    <th>Store Name</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $category)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $category->name }}</td>
                        <td>{{ $category->store->name }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    @endsection
