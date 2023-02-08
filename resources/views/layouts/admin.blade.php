
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{{isset($title) ? $title.' | '.config('app.name') : config('app.name') }}</title>

<!-- Google Font: Source Sans Pro --> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons --> 
<link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style --> 
<link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css?v=3.2.0">
@stack('css')
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

<!-- navbar -->
@include('layouts.inc_admin.navbar')
<!-- /.navbar -->

<!-- main sidebar container -->
@include('layouts.inc_admin.sidebar')

<!--content wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (page header) --> 
<div class="content-header">
<div class="container-fluid mb-2">
@yield('content-header')
</div> <!-- /.container-fluid --> 
</div>
<!-- /.content-header --> 

<!-- Main content -->
<div class="content">
<div class="container-fluid">
@yield('content')

</div>
</div>

</div>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
<!--control sidebar content goes here -->
<div class="p-3">
<h5>Title</h5>
<p>Sidebar content</p>
</div>
</aside>
<!-- /.control-sidebar -->

<!-- main footer -->
<footer class="main-footer">
<!-- to the right -->
<div class="float-right d-none d-sm-inline">
Version 1.0.1
</div>
<!-- default to the left -->
<strong>Copyright &copy; 2022 Nisa Hoeriah.</strong> All rights reserved.
</footer>
</div>
<!-- ./wrapper -->

@yield('modal')

<!--REQUIRED SCRIPTS -->

<!--jquerry -->
<script src="/adminlte/plugins/jquery/jquery.min.js"></script>
<!--Bootsrap 4 -->
<script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AMINLTE App -->
<script src="/adminlte/dist/js/adminlte.min.js?v=3.2.0"></script>
@stack('js')
</body>
</html>
