@extends('frontend.master')
@section('body')
<section class="py-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12 py-4">
                <div class="card card-body text-center ">
                    <h1 style="color:#fe5e00" >{{Session::get('message')}}</h1>                
                </div>
                <div class="mt-2" align="center">
                    <a href="{{ route('home') }}" style="background:#fe5e00; color:white" class="btn rounded">HOME</a>
                </div>

                {{-- <a href="{{ route('home') }}" class="btn btn-success text-white ms-auto ">প্রোডাক্ট বাছাই করুন</a> --}}
            </div>
        </div>
    </div>
</section>
@endsection