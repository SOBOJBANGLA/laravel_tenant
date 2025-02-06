<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="bg-dark text-white p-4" style="width: 250px; min-height: 100vh;">
            <h1 class="mb-4 text-center text-danger">Merchant Dashboard</h1>
            <nav>
                <ul class="list-unstyled">
                    <li class="mb-3">
                        <a href="{{ route('store.list') }}" class="text-white text-decoration-none d-block py-2 px-3 rounded hover:bg-primary">
                            <i class="fa fa-store mr-2"></i>Stores
                        </a>
                    </li>
                    <li class="mb-3">
                        <a href="{{ route('category.list') }}" class="text-white text-decoration-none d-block py-2 px-3 rounded hover:bg-primary">
                            <i class="fa fa-tags mr-2"></i>Categories
                        </a>
                    </li>
                    <li class="mb-3">
                        <a href="{{ route('product.list') }}" class="text-white text-decoration-none d-block py-2 px-3 rounded hover:bg-primary">
                            <i class="fa fa-box mr-2"></i>Products
                        </a>
                    </li>
                    <li class="mt-5">
                        <form action="{{ route('merchant.logout') }}" method="POST">
                            @csrf
                            <button class="btn btn-danger w-100">Logout</button>
                        </form>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="p-4" style="flex-grow: 1;">
            <h1 class="text-center mb-4 text-danger">Welcome, {{ Auth()->user()->name }}</h1>
            
            @yield('content')  
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
