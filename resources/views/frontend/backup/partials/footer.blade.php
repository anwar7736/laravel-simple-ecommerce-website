  <!-- Start Footer Area  -->
@php
use App\Models\Information;
$info = Information::first();



@endphp
 
  <footer class="axil-footer-area footer-style-2" style="background-color: #ededef;"> 
      <!-- Start Footer Top Area  -->
      <div class="pt--20 pb--20">
          <div class="container">
              <div class="row footer-top pt-4"> 
                  
                  <div class="col-lg-4 ml-5 col-sm-6">
                      <div class="axil-footer-widget">
                          <h5 class="m-0 widget-title">Best Categories</h5> 
                          <div class="inner">
                              <ul>
                                  @foreach(DB::table('categories')->whereNull('parent_id')->take(5)->get() as $cat)
                                  <p class="m-0"><a href="{{ route('front.products.index')}}?category_id={{$cat->id}}"> {{ $cat->name}}</a></p>
                                  @endforeach
                              </ul>
                          </div>
                      </div>
                  </div>
                  <!-- End Single Widget  -->
                  <!-- Start Single Widget  -->
                    <div class="col-lg-4 ml-5 col-sm-6">
                        <div class="axil-footer-widget">
                          <h5 class="m-0 widget-title">Customer Service</h5>
                          <div class="inner">
                              <ul>
                                  <p class="m-0"><a href=" {{ route('front.aboutUs')}} ">About us</a></p>
                                  <p class="m-0"><a href="{{ route('front.faq')}}">FAQ</a></p>
                                  <p class="m-0"><a href="{{ route('front.termCondition')}}">Terms and conditions</a></p>
                                  <p class="m-0"><a href="{{ route('front.privacyPolicy')}}">Privacy policy</a></p>
                                  <p class="m-0"><a href="{{ route('front.returnPolicy')}}">Return policy</a></p>
                              </ul>
                          </div>
                      </div>
                  </div>
                  <div class="desktop-foot-last col-lg-4 ml-5 col-sm-6" style="margin-bottom:-27px"> 
                    <div class="last-foot axil-footer-widget">
                      <h5 class="m-0 widget-title">Contact Us</h5>
                      
                      <div class="inner">
                          <p class="m-0">{{ $info->site_name }} <br>
                            
                          <ul class="support-list-item mt-1">
                            <p class="m-0">Address: <span> {{ $info->address }} </span><br>
                              <p class="m-0">Email us: <a href="mailto:{{ $info->owner_email }}"><span>{{ $info->owner_email }}</span> </a></p>
                              <p class="m-0">Call us: <a href="tel:{{ $info->owner_phone }}"><span>{{ $info->owner_phone }}</span> </a></p>
                              
                          </ul>
                      </div>
                      
                      
                  </div>
                </div>
                <div class="mobile-foot-last col-lg-4 ml-5 col-sm-6" style="margin-bottom:-27px"> 
                  <div class="axil-footer-widget">
                      <h5 class="m-0 widget-title">Contact Us</h5>
                      
                      <div class="inner">
                          <p class="m-0">{{ $info->site_name }}<br>
                          </p>
                          <ul class="support-list-item mt-1">
                            	<p class="m-0">Address: <span> {{ $info->address }} </span><br>
                              <p class="m-0">Email us: <a href="mailto:{{ $info->owner_email }}"><span>{{ $info->owner_email }}</span> </a></p>
                              <p class="m-0">Call us: <a href="tel:{{ $info->owner_phone }}"><span>{{ $info->owner_phone }}</span> </a></p>
                              
                          </ul>
                      </div>
                      
                     
                  </div>
                </div>
                  
              </div>
          </div>
      </div>
      <!-- End Footer Top Area  -->
      <!-- Start Copyright Area  -->
      <div class="copyright-area copyright-default separator-top">
          <div class="container-fluid">
              <div class="row align-items-center">
                    <div class="col-xl-12 col-lg-12">
                      <div class="tex-center">
                        
                      </div>
                    </div>
                    
                    <div class="col-xl-12 col-lg-12">                        
                        <div class="copyright-left d-flex flex-wrap justify-content-center">
                            <div class="social-share" style="">
                              <a href="{{ $info->facebook }}" blank="_target"><i class="fab fa-facebook-f"></i></a>
                              <a href="{{ $info->instagram }}"><i class="fab fa-instagram"></i></a>
                              <a href="{{ $info->youtube }}"><i class="fab fa-youtube"></i></a>
                            </div>                            
                        </div>
                      <ul class="quick-link" style="display: block;text-align: center;">
                              <li>{!! $info->copyright !!} <a href="https://softitglobal.com/">SoftitGlobal.com</a></li>
                            </ul>
                    </div>
                    
              </div>
          </div>
      </div>
      <!-- End Copyright Area  -->
  </footer>
  <!-- End Footer Area  -->

  


<div class="cart-dropdown" id="cart-dropdown">
    
</div>

<style>
.footer-style-2 .footer-top p {
    color: #000000;
    font-size: 14px;
}
.footer-style-2 .axil-footer-widget .widget-title {
    font-weight: 400;
    text-transform: uppercase;
}
    .copyright-default.separator-top {
        background: white;
    }
    h5.widget-title {
        padding-bottom: 10px;
    }
    h5.app-title {
    padding: 20px 0 0;
    font-size: 18px;
    text-transform: uppercase;
    font-weight: 400;
}
.download-btn-group img {

    height: auto;
}
    .last-foot {
        padding-left: 32px;
        border-left: 1px solid rgba(195,195,195,.5);
    }
    .support-list-item span {
    color: #3577f0;
    font-weight: 500;
}
.mobile-foot-last {
    display: none;
}
        
    @media (min-width: 1366.999px) {
        .col-lg-2 {
            flex: 0 0 auto;
            width: 16.66666667%;
        }
    }
    /*@media (max-width: 1366px) {*/
    /*    .col-md-3 {*/
    /*        flex: 0 0 auto;*/
    /*        width: 25%;*/
    /*    }*/
    /*}*/
    @media (max-width: 767px) {
        .col-6 {
            flex: 0 0 auto;
            width: 50%;
        }
        .desktop-foot-last {
            display: none;
        }
        .mobile-foot-last {
            display: block;
        }
    }
</style>

<style>
ul.product-meta p {
    margin-bottom: 10px;
}
        .mobile-cart.cart-count {
        display: none;
        }
        .cart-count {
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: space-around;
        }
        .pro-qty .qtybtn {
        background: #ffffff;
        border: 1px solid #ddd;
        border-radius: 10%;
        }
        .pro-qty input {
        width: 40px;
        border-radius: 3px;
        border: 1px solid #ddd;
        }
        .axil-product {
        text-align: center;
        background: white;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 10px;
        }
        .axil-product .product-content {
            margin-bottom: 0px;
        }
        .axil-product .cart-action li.select-option button:hover {
            background-color:#ef245d;
        }
        .axil-privacy-policy ul li {
        }
        
        
        
        @media only screen and (max-width: 767px) {
            .desktop-cart.cart-count {
                -display: none;
            }
            .product-add-to-cart {
                margin-top: 10px;
            }
            .mobile-cart.cart-count {
                display: flex;
            }
            .mobile-cart.cart-count {
                flex-direction: column;
            }
            .axil-product .product-content .product-price-variant span.price {
                font-size: 16px;
            }
        }
        @media (min-width: 1366.999px) {
            .col-lg-2 {
                flex: 0 0 auto;
                width: 16.66666667%;
            }
        }
        /*@media (max-width: 1366px) {*/
        /*    .col-md-3 {*/
        /*        flex: 0 0 auto;*/
        /*        width: 25%;*/
        /*    }*/
        /*}*/
        @media (max-width: 767px) {
            .col-6 {
                flex: 0 0 auto;
                width: 50%;
            }
        }
        
        div.toast {
            
            font-size:13px;
        }
        @media only screen and (min-width: 992px) and (max-width: 1199px){
.footer-style-2 .axil-footer-widget .inner .download-btn-group .qr-code img {
    height: auto;
}
}
    </style>
    
@include('frontend.partials.js')

</body>

<html>