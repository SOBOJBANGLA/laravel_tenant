<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchant Dashboard</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="font-sans antialiased">
    <h1 class="text-center mb-4">Admin Dashboard</h1>
    <div class="container">
        <h1>Merchant List</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>         
                </tr>
            </thead>
            <tbody>
                @foreach($merchants as $merchant)
                    <tr>
                        <td>{{ $merchant->name }}</td>
                        <td>{{ $merchant->email }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
