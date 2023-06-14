@extends('frontend.app')
@section('content')


<main class="main-wrapper">
    <!-- Start Breadcrumb Area  -->
    <div class="axil-breadcrumb-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="inner">
                        <ul class="axil-breadcrumb">
                            <li class="axil-breadcrumb-item"><a href="{{ route('front.home')}}">Home</a></li>
                            <li class="separator"></li>
                            <li class="axil-breadcrumb-item active" aria-current="page">Category</li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- End Breadcrumb Area  -->
    
    <style>
    .category .title {
            font-size: 14px; 
            line-height: 16px; 
            margin-top: 10px;
        }
    @media only screen and (max-width: 767px){
       /*.axil-category .desktop {
           display:none;
       }*/
       .col-6.col-md-3.col-lg-3.col-xl-3.col-sm-6.category {
            text-align: center;
        }
        .category{
            height:150px;
            padding: 5px
              margin-bottom: 10px;
        }
        .category .title {
            font-size: 14px; 
            line-height: 16px; 
            margin-top: 5px;
        }
        
     
    }
    a.active{
        color:blue;
    }
    .category{
        border:1px solid #ccc;
      margin-bottom: 10px
    }
    </style>

    <!-- Start Contact Area  -->
    <div class="axil-category pb--20">
        <div class="container-fluid">
            <div class="axil-contact-page">
                <div class="row">
                    
                    <div class="col-lg-12 col-md-12">
                        <div class="row">
                            
                            @foreach($subs as $sub)
                            <div class="col-4 col-md-2 col-lg-2 col-xl-2 col-sm-4">
                                <div class="category">
                                    <a href="{{ route('front.products.index')}}?category_id={{ $sub->parent_id}}&sub_category_id={{$sub->id}}">
                                        <img src="{{ getImage('categories', $sub->image)}}" alt="{{ $sub->name}} image" />
                                        <div class="title text-center">{{ $sub->name}}</div>
                                    </a>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
    
            <!-- End Google Map Area  -->
        </div>
    </div>
    <!-- End Contact Area  -->

</main>

@endsection