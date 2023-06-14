
@php
$data=getProductInfo($product);
use App\Models\Information;
$info = Information::first();

@endphp

<div class="axil-product product-style-one" style="padding: 0px !important;">
    <div class="thumbnail" style="padding: 10px !important">
        <a href="{{ route('front.products.show',[$product->id])}}">
            <img src="{{ getImage('products', $product->image)}}" class="product_img" alt="Product Images">
        </a>

        @if($product->discount_type)
        <div class="label-block label-right">
            <div class="product-badget" style="background: #c2050b;">{{$product->discount_type=='fixed'?'':''}}{{$product->discount}} {{$product->discount_type=='fixed'?'':'%'}} Off</div>
        </div>
        @endif
        <div class="product-hover-action">
            <ul class="cart-action d-none">
                <li class="quickview">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a>
                </li>
                <li class="wishlist">
                    <a href="wishlist.php"><i class="far fa-heart"></i></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="product-content" style="padding: 10px !important;">
        <div class="inner">
            <h5 class="title text-start"><a href="{{ route('front.products.show',[$product->id])}}">{{ \Illuminate\Support\Str::limit($product->name, 17), '...' }}</a></h5>
            <div class="product-price-variant text-start">
                <span class="price current-price" style="color: #c2050b">
                  
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
                    ₹ {{ $data['price'] }}
                  @else
                  
                  @endif                   
                  
              </span>
                @if($data['old_price'])
                <span class="price old-price" style="color: #c2050b">
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
              </span>
                @endif
            </div>

           
            
        </div>
    </div>
   @if($product->type=="single")
            <form method="POST" action="{{ route('front.carts.store')}}" id="cart_form">
                @csrf
                <input type="hidden" name="product_id" value="{{ $product->id}}">
                <input type="hidden" name="variation_id" value="{{ $product->variation->id}}">
                <input type="hidden" name="is_stock" value="{{ $product->is_stock }}">
                <div class="desktop-cart cart-count" style="padding-bottom: 0px;">
                    <div class="product-add-to-cart col-12">
                        <ul class="cart-action col-12">
                            <li class="select-option col-12" style="margin-bottom: 0px;">
                                <button type="submit" class="btn p-0 button m-auto text-light col-12" style="background: #c2050b !important;"> 
                                        <p><b>
                                          <i class="fas fa-shopping-cart"></i> &nbsp; অর্ডার করুন </b></p>
                                        <span>
                                            <i class="fas fa-shopping-cart"></i>
                                        </span>                                    
                                </button>                                
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
            @else
            <div class="desktop-cart cart-count">
                    <div class="product-add-to-cart">
                        <ul class="cart-action">
                            <li class="col-12 reg" style="background: #c2050b; padding: 7px;border-radius: 4px;">                                
                                <a type="submit" style="color:white;font-size: 13px;font-weight: 900;" href="{{ route('front.products.show',[$product->id])}}" ><i class="fas fa-shopping-cart"></i> &nbsp;  অর্ডার করন </a>                                
                            </li>
                        </ul>
                    </div>
                </div>
            @endif
            
         
  
</div>

