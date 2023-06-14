@extends('frontend.app')
@push('css')


<style>
.woocommerce-tabs.wc-tabs-wrapper {
    padding: 20px 0 10px;
}
  
 .woocommerce-tabs ul.tabs {
    margin: 0 -20px 17px;
}
  
 ul.product-meta p {
    margin-bottom: 1px !important;
    font-size: 14px;
    color: #000;
  }
  
   .single-desc h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6, address, p, pre, blockquote, menu, ol, ul, table, hr{
    margin-bottom: 0px !important;
     color:#000
  }
  ul.product-meta {
    margin-bottom: 30px !important;
}
  
  .avai-offer {
    font-size: 16px;
    font-weight: 500;
    padding-top: 7px;
}
  h4.product-title {
    color: #212121;
    font-size: 18px;
    font-weight: 400;
    display: contents;
}
  span.price.current-price {
    font-size: 28px;
    font-weight: 500;
}
  
  @media only screen and (max-width: 767px) {
    span.price.current-price {
        font-size: 24px;
        font-weight: 500;
    }
  }
  
.single-product-content .inner .product-rating {
    display: flex;
    align-items: center;
    margin-bottom: 0px;
    line-height: 1;
    padding-bottom: 0px;
    border-bottom: none;
}
  
button.axil-btn.btn-bg-primary::before {
  background-color: var(--color-primary);
  background: #c2050b !important;
}  
  
  .small-thumb-wrapper .small-thumb-img.slick-current img {
    border-color: #c2050b !important;
}
  
  .small-thumb-img img :hover {
  border-color: #c2050b !important;
  }
  
  a.popup-zoom:hover {
    background: #c2050b !important;
}
.phone-box{
    width: 52%;
}
@media(max-width:775px){
    .phone-box{
        width: 100%;
    }
}
</style>




@endpush
@section('content')
@php

use App\Models\Information;
$info = Information::first();

$data=getProductInfo($product);
@endphp
<main class="main-wrapper">
    <!-- Start Shop Area  -->
    <div class="axil-single-product-area p pb--0 bg-color-white">
        <div class="single-product-thumb mb--5">
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="col-lg-5 mb--10">
                        <div class="row">
                            <div class="col-lg-10 order-lg-2">
                                <div class="single-product-thumbnail-wrap zoom-gallery">
                                    <div class="single-product-thumbnail product-large-thumbnail-3 axil-product">
                                        <div class="thumbnail">
                                            <a href="{{ getImage('products', $product->image)}}" class="popup-zoom">
                                                <img src="{{ getImage('products', $product->image)}}" alt="{{ $product->name}} Images">
                                            </a>
                                        </div>

                                        @foreach($product->images as $im)
                                        <div class="thumbnail">
                                            <a href="{{ getImage('products', $im->image)}}" class="popup-zoom">
                                                <img src="{{ getImage('products', $im->image)}}" alt="{{ $product->name}} Images">
                                            </a>
                                        </div>
                                        @endforeach
                                        
                                    </div>
                                  
                                  	@if($product->discount_type)
                                    <div class="label-block">
                                        <div class="product-badget" style="background: #c2050b;">{{$product->discount_type=='fixed'?'ট':''}}{{$product->discount}} {{$product->discount_type=='fixed'?'':'%'}} OFF</div>
                                    </div>
                                  	@endif
                                    <div class="product-quick-view position-view">
                                        <a href="{{ getImage('products', $product->image)}}" class="popup-zoom">
                                            <i class="far fa-search-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 order-lg-1">
                                <div class="product-small-thumb-3 small-thumb-wrapper">
                                    <div class="small-thumb-img">
                                        <img src="{{ getImage('products', $product->image)}}" alt="{{ $product->name}} image">
                                    </div>
                                    @foreach($product->images as $im)
                                    <div class="small-thumb-img">
                                        <img src="{{ getImage('products', $im->image)}}" alt="{{ $product->name}} image">
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 mb--30">
                        <div class="single-product-content">
                            <div class="inner" style="color:#000">
                                <!--h4 class="product-title" style="margin:0px">{{ $product->name}}</h4>
                                
                              	<div class="product-price-variant">
                                  <span class="price current-price" style="font-size:22px; font-weight: 500">{{ priceFormate($data['price'])}}</span>
                                  @if($data['old_price'] >0)
                                  <del><span class="price old-price" style="font-size:14px;margin-left:10px">{{ priceFormate($data['old_price'])}} </span></del>
                                  @endif
                                  
                                  @if($product->discount_type)
                                  <span class="price old-price" style="font-size:16px;margin-left:10px;background: #0064D2;padding:4px;color:#fff">{{$product->discount}} {{$product->discount_type=='fixed'?'া':'%'}} OFF </span>
                                  @endif
                                </div>
                              
                                <h6 style="font-size:14px;margin:2px">Catgeory : {{ $product->category?$product->category->name:''}}</h6>
                                <h6 style="font-size:14px;margin:2px">Brand : {{ $product->brand?$product->brand->name:''}}</h6-->
                                <div class="product-meta">
                                  	<div style="">
                                      <h2 class="product-title" style="margin:0px">{{ $product->name}}</h2>
                                  	</div>
                                  	<div style="">
                                      <div class="product-price-variant">
                                        <span class="price current-price" style="">
                                        
                                        @php  
                                          $curr = $info->currency;                   
                                        @endphp

                                        @if($curr == 'BDT')
                                          ৳ {{ $data['price'] }}
                                        @elseif ($curr == 'Dollar') 
                                          $ {{ $data['price'] }}
                                        @elseif ($curr == 'Euro') 
                                          € {{ $data['price'] }}
                                        @elseif ($curr == 'Rupee') 
                                           {{ $data['price'] }}                 
                                        @else                  
                                         @endif                                 
                                        
                                        
                                        </span>
                                        @if($data['old_price'] >0)
                                        <del><span class="price old-price" style="font-size:14px;margin-left:10px">                                          
                                         
                                           @php  
                                          $curr = $info->currency;                   
                                        @endphp

                                        @if($curr == 'BDT')
                                          ৳ {{ $data['old_price'] }}
                                        @elseif ($curr == 'Dollar') 
                                          $ {{ $data['old_price'] }}
                                        @elseif ($curr == 'Euro') 
                                          € {{ $data['old_price'] }}
                                        @elseif ($curr == 'Rupee') 
                                          ₹ {{ $data['old_price'] }}                 
                                        @else                  
                                         @endif 
                                          
                                          </span></del>
                                        @endif

                                        @if($product->discount_type)
                                        <span class="price old-price" style="font-size:16px;margin-left:12px;background: #c2050b;padding:4px;color:#fff">{{$product->discount}} {{$product->discount_type=='fixed'?'া':'%'}} OFF </span>
                                        @endif
                                      </div>
                                  	</div>
                                  	<div style="padding: 3px 0;">
                                      <h6 style="font-size:14px;margin:2px">Category : {{ $product->category?$product->category->name:''}}</h6>
                                  	</div>
                                  	<div style="padding: 3px 0;">
                                      <h6 style="font-size:14px;margin:2px">Brand : {{ $product->brand?$product->brand->name:''}}</h6>
                                  	</div>

                                  	
                                  	<div class="product-rating">
                                        <div class="star-rating" style="color: #c2050b !important;">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star empty-rating"></i>
                                        </div>
                                        <div class="review-link">
                                            <a href="#">(<span>{{$product->reviews->count()}}</span> customer reviews)</a>
                                        </div>
                                    </div>
                                  	<ul class="product-meta">
                                      {!! $product->feature !!}
                                    </ul>                                  	
                                </div>                             	
                                
                                </div>                               

                                <form method="POST" action="{{ route('front.carts.store')}}" id="cart_form">
                                    @csrf

                                    @if($product->type=='single')
                                    <input type="hidden" name="variation_id" value="{{ $product->variation->id}}">
                                    @else
                                    <div class="product-variations-wrapper">
                                        

                                        <div class="product-variation product-size-variation">
                                            
                                            <select style="height: 35px; width:50%" name="variation_id">
                                                <option value="" hidden>Select One ..</option>
                                                @foreach($product->variations as $v)
                                                    <option value="{{$v->id}}">{{'size ('.$v->size->title.') color : ('.$v->color->name.')'}}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                    </div>
				
                                    @endif

                                

                                    <div class="product-action-wrapper d-flex-center" style="margin-bottom: 15px;">
                                        <!-- Start Quentity Action  -->
                                        <input type="hidden" name="product_id" value="{{ $product->id}}">
                                        <div class="pro-qty item-quantity">
                                            <span class="dec qtybtn">-</span>
                                            <input type="number" class="quantity-input" value="1" name="quantity" />
                                            <span class="inc qtybtn">+</span>
                                        </div>
                                        
                                        <!-- End Quentity Action  -->
                                        <!-- Start Product Action  -->

                                        <ul class="product-action d-flex-center mb--0">
                                            <li class="add-to-cart">
                                                <button class="axil-btn" style="padding:7px 28px; background: #c2050b; width: 235px;color: white;">অর্ডার করুন</button>
                                            </li>
                                            
                                        </ul>
                                        <!-- End Product Action  -->
                                    </div>
                                  
                                  @if( $info->number_visibility == 3 )                                    
                                  
                                   <div class="product-action-wrapper phone-box d-flex-center first" style="background:#3167EB;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>
                                  
                                  <div class="product-action-wrapper phone-box d-flex-center second" style="background:#FE9017;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num2}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num2 ?></span></a>
                                      </div>
                                    </div>
                                  
                                  <div class="product-action-wrapper phone-box d-flex-center third" style="background:#FA3435;border-radius: 5px;padding: 10px 30px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num3}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num3 ?></span></a>
                                      </div>
                                    </div>
                                  @elseif( $info->number_visibility == 2 )
                                    <div class="product-action-wrapper phone-box d-flex-center first" style="background:#3167EB;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>
                                  
                                  <div class="product-action-wrapper phone-box d-flex-center second" style="background:#FE9017;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num2}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num2 ?></span></a>
                                      </div>
                                    </div>
                                  
                                  @elseif( $info->number_visibility == 1 )
                                    <div class="product-action-wrapper phone-box d-flex-center first" style="background:#3167EB;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">                                      
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>
                                  
                                  @else
                                  
                                  @endif
                                  
                                  
                                </form>
                                <!-- End Product Action Wrapper  -->
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End .single-product-thumb -->

        <div class="woocommerce-tabs wc-tabs-wrapper bg-vista-white">
            <div class="container">  
                <div class="product-desc-wrapper">
                    <div class="row">
                        <div class="col-lg-12 mb--20">
                            <h5 class="title"> Short Description </h5>
                            <div class="single-desc pt-4">
                                {!! $product->body !!}
                            </div>
                        </div>
                        
                    </div>
                </div>
          </div>
            
            </div>
        <!-- woocommerce-tabs -->
          
          <div class="woocommerce-tabs wc-tabs-wrapper" style="background: #dbd3d39e;">
            <div class="container">  
                
                
                <div class="reviews-wrapper pt-4">
                    <div class="row">
                        <div class="col-lg-6 mb--20">
                            <div class="axil-comment-area pro-desc-commnet-area pt-3">
                                <h5 class="title">({{$product->reviews->count()}}) Relative Product</h5>
                                <ul class="comment-list">
                                    <!-- Start Single Comment  -->
                                  	
                                  @foreach($product->reviews as $review)
                                    <li class="comment">
                                        <div class="comment-body">
                                            <div class="single-comment">
                                                <div class="comment-img">
                                                    <img src="{{ asset('images/users.png')}}" alt="Author Images" style="width:60px">
                                                </div>
                                                <div class="comment-inner">
                                                    <h6 class="commenter">
                                                        <a class="hover-flip-item-wrapper" href="#">
                                                            <span class="hover-flip-item">
                                                                <span data-text="Cameron Williamson">{{ $review->user?$review->name:''}}</span>
                                                            </span>
                                                        </a>
                                                        <span class="commenter-rating ratiing-four-star">
                                                          	@for($i=1;$i<=5;$i++)
                                                        
                                                              @if($i <= $review->review)
                                                                <a><i class="fas fa-star"></i></a>
                                                                @else
                                                                <a><i class="fas fa-star empty-rating"></i></a>
                                                                @endif
                                                            @endfor
                                                        </span>
                                                    </h6>
                                                    <div class="comment-text">
                                                        <p> {{ $review->message}}  </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                  @endforeach
                                    <!-- End Single Comment  -->
                                </ul>
                            </div>
                            <!-- End .axil-commnet-area -->
                        </div>
                        <!-- End .col -->
                        <div class="col-lg-6 mb--20">
                            <!-- Start Comment Respond  -->
                            <div class="comment-respond pro-des-commend-respond mt--0">
                                <h5 class="title mb--10">Add a Review</h5>
                                
                                <div class="rating-wrapper d-flex-center mb--10">
                                   
                                 <div class="wrapper">
                                    <div class="master">
                                        <div class="rating-component">
                                            <div class="status-msg">
                                                <label>
                                                    <input class="rating_msg" type="hidden" name="rating_msg" value="" />
                                                </label>
                                            </div>
                                            <div class="stars-box">
                                                <i class="star fa fa-star" title="1 star" data-message="Poor" data-value="1"></i>
                                                <i class="star fa fa-star" title="2 stars" data-message="Too bad" data-value="2"></i>
                                                <i class="star fa fa-star" title="3 stars" data-message="Average quality" data-value="3"></i>
                                                <i class="star fa fa-star" title="4 stars" data-message="Nice" data-value="4"></i>
                                                <i class="star fa fa-star" title="5 stars" data-message="very good qality" data-value="5"></i>
                                            </div>
                                            <div class="starrate">
                                                <label>
                                                    <input class="ratevalue" type="hidden" name="rate_value" value="" />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="feedback-tags">
                                            <div class="tags-container" data-tag-set="1">
                                                <div class="question-tag">
                                                    Why was your experience so bad?
                                                </div>
                                            </div>
                                            <div class="tags-container" data-tag-set="2">
                                                <div class="question-tag">
                                                    Why was your experience so bad?
                                                </div>
                                            </div>

                                            <div class="tags-container" data-tag-set="3">
                                                <div class="question-tag">
                                                    Why was your average rating experience ?
                                                </div>
                                            </div>
                                            <div class="tags-container" data-tag-set="4">
                                                <div class="question-tag">
                                                    Why was your experience good?
                                                </div>
                                            </div>

                                            <div class="tags-container" data-tag-set="5">
                                                <div class="make-compliment">
                                                    <div class="compliment-container">
                                                        Give a compliment
                                                        <i class="far fa-smile-wink"></i>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tags-box">
                                                <form action="{{ route('front.product-reviews.store')}}" method="post" id="review_form">
                                                  	@csrf
                                                  	<input type="hidden" name="product_id" value="{{$product->id}}" />
                                                  	<input type="hidden" name="review" id="review" value="" />
                                                  	
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label>Other Notes (optional)</label>
                                                                <textarea name="message" placeholder="Your Comment"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-12 m-0">
                                                            <div class="form-group">
                                                                <label>Name <span class="require">*</span></label>
                                                                <input id="name" type="text" name="name"/>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-lg-12 m-0">
                                                            <div class="button-box form-submit">
                                                                <button type="submit" id="submit" class="axil-btn btn-bg-primary w-auto">Submit Comment</button>
                                                            </div>
                                                          <div class="submited-box">
                                                              <div class="loader"></div>
                                                              <div class="success-message">
                                                                  Thank you!
                                                              </div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>

                                        
                                    </div>
                                </div>

 								</div>
                            </div>
                            <!-- End Comment Respond  -->
                        </div>
                        <!-- End .col -->
                    </div>
                </div>
                        
            </div>
            
            
            <!--  second woocomerce -->

    </div>
    <!-- End Shop Area  -->

    <!-- Start Recently Viewed Product Area  -->
    <div class="axil-product-area bg-color-white pt--10">
        <div class="container-fluid">
            <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"> View All >></span></a>
            <div class="section-title-wrapper">
                <!--<span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Our Products</span>-->
                <h2 class="title">You Might Also Like</h2>
            </div>
            <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
                <div class="slick-single-layout" id="relative_data">
                    
                </div>
                <!-- End .slick-single-layout -->
            </div>

        </div>
    </div>
    <!-- End Recently Viewed Product Area  -->
</main>
@endsection

@push('js')
<script type="text/javascript">
    
    $('li.size').click(function(){

        $('li.size').removeClass('active');
   
        $(this).addClass('active');
        
    });


    $('li.color').click(function(){

        $('li.color').removeClass('active');
        $(this).addClass('active');
    
    });
  
  	$(document).ready(function(){
        getRelatedProduct();
        
        function getRelatedProduct(){
            let url ='{{ route("front.products.relativeProduct",[$product->id])}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#relative_data').html(res.html);
                    }
                   
                }
            });
        }

    });
</script>
  <script type="text/javascript">
    $(".rating-component .star").on("mouseover", function () {
  var onStar = parseInt($(this).data("value"), 10); //
  $(this).parent().children("i.star").each(function (e) {
    if (e < onStar) {
      $(this).addClass("hover");
    } else {
      $(this).removeClass("hover");
    }
  });
}).on("mouseout", function () {
  $(this).parent().children("i.star").each(function (e) {
    $(this).removeClass("hover");
  });
});

$(".rating-component .stars-box .star").on("click", function () {
  var onStar = parseInt($(this).data("value"), 10);
  var stars = $(this).parent().children("i.star");
  var ratingMessage = $(this).data("message");

  var msg = "";
  if (onStar > 1) {
    msg = onStar;
  } else {
    msg = onStar;
  }
  $(document).find('#review').val(onStar);
  $('.rating-component .starrate .ratevalue').val(msg);
  

 
  $(".fa-smile-wink").show();
  
  $(".button-box .done").show();

  if (onStar === 5) {
    $(".button-box .done").removeAttr("disabled");
  } else {
    $(".button-box .done").attr("disabled", "true");
  }

  for (i = 0; i < stars.length; i++) {
    $(stars[i]).removeClass("selected");
  }

  for (i = 0; i < onStar; i++) {
    $(stars[i]).addClass("selected");
  }

  $(".status-msg .rating_msg").val(ratingMessage);
  $(".status-msg").html(ratingMessage);
  $("[data-tag-set]").hide();
  $("[data-tag-set=" + onStar + "]").show();
});

$(".feedback-tags  ").on("click", function () {
  var choosedTagsLength = $(this).parent("div.tags-box").find("input").length;
  choosedTagsLength = choosedTagsLength + 1;

  if ($(this).hasClass("choosed")) {
    $(this).removeClass("choosed");
    choosedTagsLength = choosedTagsLength - 2;
  } else {
    $(this).addClass("choosed");
    $(".button-box .done").removeAttr("disabled");
  }

  console.log(choosedTagsLength);

  if (choosedTagsLength <= 0) {
    $(".button-box .done").attr("enabled", "false");
  }
});



$(".compliment-container .fa-smile-wink").on("click", function () {
  $(this).fadeOut("slow", function () {
    $(".list-of-compliment").fadeIn();
  });
});



$(".done").on("click", function () {
  $(".rating-component").hide();
  $(".feedback-tags").hide();
  $(".button-box").hide();
  $(".submited-box").show();
  $(".submited-box .loader").show();

  setTimeout(function () {
    $(".submited-box .loader").hide();
    $(".submited-box .success-message").show();
  }, 1500);
});

</script>
@endpush
