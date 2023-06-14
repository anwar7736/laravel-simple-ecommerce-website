<!DOCTYPE html>
<html lang="en">
@include('frontend.partials.head')
<body class="sticky-header">
    <a href="#top" class="back-to-top" id="backto-top" style="background: #c2050b;"><i class="fal fa-arrow-up"></i></a>
    @include('frontend.partials.header')
    @yield('content')

@include('frontend.partials.footer')
    