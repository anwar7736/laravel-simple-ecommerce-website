@extends('frontend.app')
@section('content')

<style>
  .carousel-control-prev-icon {
      background-image: url(https://ek2.com.bd/images/arrow-l.svg);
  }
  .carousel-control-next-icon {
      background-image: url(https://ek2.com.bd/images/arrow-r.svg);
  }
  .image-box {
      width: 50%;
  }
    @media only screen and (max-width: 767px) {
        .slider.axil-main-slider-area.main-slider-style-2 .container-fluid {
            padding-right: 5px;
            padding-left: 5px;
}
        .trending.axil-newsletter-area .container-fluid {
            padding-right: 5px;
            padding-left: 5px;
        }
        .hot-deals.axil-newsletter-area .container-fluid {
            padding-right: 5px;
            padding-left: 5px;
            margin-top: -38px;
        }
        .recommended.axil-newsletter-area .container-fluid {
                    padding-right: 5px;
                    padding-left: 5px;
                    margin-top: -25px;
        }
        .top-brands.axil-newsletter-area  .container-fluid {
                    padding-right: 5px;
                    padding-left: 5px;
                    margin-top: -38px;
        }
    }
  .pb-6 {
    padding-bottom: 4rem!important;
}

  li, ol, ul {
    list-style: none;
}
  .channel-content {
    padding: 0 0.1rem;
    margin-bottom: -15px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-justify-content: space-around;
    -ms-flex-pack: distribute;
    justify-content: space-around;
}
  .channel-item {
    text-align: center;
    padding: 0 4px;
}
  .channel-redirect {
    display: block;
}
  .channel-icon {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
}
  .channel-icon .img-wrap {
    overflow: hidden;
}
  .channel-icon .img-wrap img {
    width: 50px;
    height: 50px;
}
  .channel-name {
    font-size: 12px;
    margin-top: 0.05rem;
    color: #757575;
}
  .channel-name .text-wrap {
    text-transform: uppercase;
    text-align: center;
    padding-top: 4px;
    overflow: hidden;
    font-size: 9px;
    text-overflow: ellipsis;
    white-space: nowrap !important;
}
.cat-image{
    height: 80px; width: 80px; border-radius: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    padding: 2px;
    box-shadow: 0 0 7px rgba(0,0,0,1.1) !important;
}
  
  .cat-image a {
    padding: 0px;
}
  
  .home-menu .img-fluid {
    width: 84px;
    height: auto;
    border-radius: 50%;
    border: 2px solid #4787C6;
}
  
  
  .category-slider {
    max-width: 100%;
    overflow-x: auto;
    overflow-y: hidden;
}
  .category-slider .channel-name{
    min-width: 60px;
  }
</style>
<!-- Start Categorie Area  -->
<div class="category-mobileview axil-categorie-area bg-color-white">
    <div class="container-fluid">
        <div class="page-card card-channel" data-module-id="channels" data-spm="icons" style="padding: 0 2.1rem !important;">
          <ul class="card-content channel-content">
              <li class="channel-item">
                  <a href="{{ route('front.categories')}}" class="channel-redirect" data-spm="1">
                      <div class="channel-icon">
                          <div class="img-wrap">
                              <img src="{{asset('images/category.png')}}" alt="Mart" />
                          </div>
                      </div>
                      <div class="channel-name">
                          <div class="text-wrap text-top">Categories</div>
                      </div>
                  </a>
              </li>
            <div class="d-flex justify-content-between col-12 category-slider">
            	@foreach($cats as $cat)

              <li class="channel-item">
                  <a href="{{ route('front.products.index',['category_id'=>$cat->id])}}" class="channel-redirect" data-spm="2">
                      <div class="channel-icon">
                          <div class="img-wrap">
                              <img src="{{ getImage('categories', $cat->image) }}" alt="{{ $cat->name}}" />
                          </div>
                      </div>
                      <div class="channel-name">
                          <div class="text-wrap text-top">{{ $cat->name}}</div>
                      </div>
                  </a>
              </li>
            @endforeach
            </div>

             
          </ul>
      </div>
    </div>
</div>
<!-- End Categorie Area  -->

<style>
  .mainmenu .img-fluid {
  	width: 84px;
    height: 76px !important;
    border-radius: 50%;
    border: 2px solid #4787C6;
    transition: .5s ease-in-out !important;
  }
  
  .mainmenu img :hover {
    filter: brightness(110%) !important;
    transform: scale(1.1) !important;
    transition: .5s ease-in-out !important;
  }
  
  .mainmenu img:hover {
    filter: brightness(110%) !important;
    transform: scale(1.1) !important;
    filter: brightness(110%) !important; 
}
  
</style>  

<div class="desktop home-menu">
    <div class="container-fluid-fluid">
        <div class="header-navbar">
            <div class="header-main-nav" style="box-shadow: 2px 5px 7px 0px #808080a6; margin-bottom: 30px;">
                <!-- Start Mainmanu Nav -->
                <nav class="mainmenu-nav pe-5">
                 
                    <ul class="mainmenu slick-mainmenu">                      
                      
                        @foreach($cats as $cat)
                        <li class="{{ $cat->subcats->count() >0? 'menu-item-has-children':'' }}">
                            <div class="border border-muted cat-image">
                            <a href="{{ route('front.products.index',['category_id'=>$cat->id])}}">
                                <img class="img-fluid" src="{{ getImage('categories', $cat->image) }}" alt="{{ $cat->name}}">
                            </a>
                            </div>
                            <a href="{{ route('front.subCategories',[$cat->url])}}">{{ $cat->name}}</a>
                            @if($cat->subcats->count())
                            <ul class="axil-submenu">
                                @foreach($cat->subcats as $sub)
                                <li><a href="{{ route('front.products.index')}}?category_id={{ $cat->id}}&sub_category_id={{ $sub->id}}">{{ $sub->name}}</a></li>
                                @endforeach
                            </ul>
                            @endif
                        </li>
                        @endforeach                  
                       
                    </ul>
                </nav>
                <!-- End Mainmanu Nav -->
            </div>
        </div>
    </div>
</div>
<!-- End Mainmenu Area -->
        
<main class="main-wrapper"> 

<!-- Start Desktop Slider Area -->
<div class="desktop-slide slider axil-main-slider-area main-slider-style-2">
    <div class="container-fluid">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach($sliders as $key=>$s)
                <div class="carousel-item  {{ $key==0 ?'active':''}}">
                  	<a href="{{$s->link}}">
                    	<img src="{{ getImage('sliders', $s->image) }}" class="d-block w-100" alt="..." />
                  	</a>
                </div>
                @endforeach
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</div>
<!-- End Slider Area -->

<!-- Start Mobile Slider Area -->
<div class="mobile-slide slider axil-main-slider-area main-slider-style-2" style="padding-top: 18px;">
    <div class="container-fluid">
        <div id="McarouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach($sliders as $key=>$s)
                <div class="carousel-item  {{ $key==0 ?'active':''}}">
                  	<a href="{{$s->link}}">
                  		<img src="{{ getImage('sliders', $s->mobile_image) }}" style="display:none" class="d-block w-100" alt="..." />
                    </a>
                </div>
                @endforeach
            </div>            
        </div>
    </div>
</div>
<!-- End Slider Area -->

<!-- Start Axil Newsletter Area  -->
@foreach($images as $im)
@if($im->section=='3')
<div class="desktop-slide recommended axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                	<img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
              	</a>
            </div>
        </div>
    </div>
</div>
  
<div class="mobile-slide recommended axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
</div>
@endif
<style>
    .title-highlighter.highlighter-primary{
        color: #ff7400;
    }
    .title-highlighter.highlighter-primary .visualy{
        visibility: hidden;
        transition: 0.3s;
        opacity: 0;
    }
    .title-highlighter.highlighter-primary:hover .visualy{
        visibility: visible;
        margin-left: 20px;
        opacity: 1;
    }
</style>
@endforeach
<!-- End Axil Newsletter Area  -->
<div class="mobile-gap-recommended"></div>
<!-- Start Expolre Product Area  -->
<div class="axil-product-area bg-color-white pt--10">
    <div class="container-fluid">
      
        <!--
      
        <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"> View All <span class="visualy"> >> </span></span></a>
        <div class="section-title-wrapper">            
            <h2 class="title">Recommended Product</h2>
        </div>
      
      -->

        <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
            <div class="slick-single-layout" id="recommended_data">
                
            </div>
            <!-- End .slick-single-layout -->
        </div>
        

    </div>
</div>
<!-- End Expolre Product Area  -->


<!-- Start Image Area  -->
@foreach($images as $im)
@if($im->section=='2')
<div class="desktop-slide hot-deals axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            <div class="etrade-newsletter-wrapper bg_image">
                <div class="newsletter-content">
                  	<a href="{{$im->link}}">
                    <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
                  </a>
                </div>
            </div>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
<div class="mobile-slide hot-deals axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            <div class="etrade-newsletter-wrapper bg_image">
                <div class="newsletter-content">
                  	<a href="{{$im->link}}">
                    <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
                  </a>
                </div>
            </div>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
@endif
@endforeach
<!-- End Image Area  -->



<!-- Start Expolre Product Area  -->
<div class="axil-product-area bg-color-white pt--10">
    <div class="container-fluid">
      
    <!--
        <a class="viewall-right" href="{{ route('front.discountProduct')}}"><span class="title-highlighter view all highlighter-primary"> View All >></span></a>
        <div class="section-title-wrapper">
            <h2 class="title">Best Offers</h2>
        </div>
    -->  
     
        <div class="hotdeal-data" style="padding-top:12px">
            <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide" id="hotdeal_data">
                
            </div>
        </div>       

    </div>
</div>
<!-- End Expolre Product Area  -->


<!-- Start Image Area  -->
@foreach($images as $im)
@if($im->section=='1')
<div class="desktop-slide trending axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                  <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
                </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
<div class="mobile-slide trending axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                	<img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              	</a>
            </div>
        </div>
    </div>
</div>
  
@endif
@endforeach
<!-- End Image Area  -->
  <div class="mobile-gap-trending"></div>
<!-- Start Expolre Product Area  -->
<div class="axil-product-area bg-color-white pt--10">
    <div class="container-fluid">
      
      <!--
        <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"> View All >></span></a>
        <div class="section-title-wrapper">
            <!--<span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Our Products</span>
            <h2 class="title">New Arivals</h2>
        </div>      
        -->
      
        <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
            <div class="slick-single-layout" id="trending_data">
                
            </div>
            <!-- End .slick-single-layout -->
        </div>

    </div>
</div>
<!-- End Expolre Product Area  -->

<!-- Start Image Area  -->
@foreach($images as $im)
@if($im->section=='4')
<div class="desktop-slide top-brands axil-newsletter-area pt--10 pb-6">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              <a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
<div class="mobile-slide top-brands axil-newsletter-area pt--10 pb-6">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              <a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
@endif
@endforeach
<!-- End Image Area  -->

<!-- Start Categorie Area  -->
<div class="brand bg-color-white" style="margin-top: -15px;">
    <div class="container-fluid">
      <h2 class="title">Pupolar Brand</h2>        
        
        <div class="row pt-5">
            @foreach($brands as $item)
            <div class="col-6 col-sm-4 col-lg-2">
                <a title="{{$item->name}}" style="transition: all 0.5s ease-in-out;box-shadow: 0 0 12px rgb(0 0 0 / 42%);" href="{{ route('front.products.index')}}?brand_id={{ $item->id}}" class="cat-block">
                    <figure>
                        <span>
                            <img style="padding: 10px;" src="{{ getImage('types', $item->image)}}" />
                        </span>
                    </figure>
                </a>
            </div>
            @endforeach
            <!-- End .col-sm-4 col-lg-2 -->
        </div>
    </div>
</div>
<!-- End Categorie Area  -->

</main>

@endsection

@push('js')

<script type="text/javascript">
    $(document).ready(function(){
        getTrending();
        getHotDeal();
        getRecommended();

        function getTrending(){
            let url='{{ route("front.trendingProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#trending_data').html(res.html);
                    }
                   
                }
            });
        }

        function getHotDeal(){
            let url='{{ route("front.hotdealProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#hotdeal_data').html(res.html);
                    }
                   
                }
            });
        }

        function getRecommended(){
            let url='{{ route("front.recommendedProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#recommended_data').html(res.html);
                    }
                   
                }
            });
        }


    });
</script>
@endpush