@extends('merchant.dashboard')  

@section('title', 'Store List')

@section('content')
    <div class="container">
        <h1 class="text-center mb-4">Store List</h1>
        <a href="{{ route('store.create') }}" class="btn btn-primary mb-3">Create Store</a>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Store Name</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($stores as $store)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{ $store->name }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
