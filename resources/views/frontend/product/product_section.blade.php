<div class="card h-100 rounded-0 border-site-color">
            <a href="{{route('product.detail',[$product->id])}}" class="zoom-img">
              <img src="{{ getImage('products', $product->image)}}" class="img-fluid position-relative " alt="">
             </a>
            @if($product->discount > 0)
              <img src="{{ asset('/') }}website/assets/img/discount.jpg" class="discount" alt="">
            <div class="box">
              <p>- {{$product->discount_type=='fixed'?'':''}}{{$product->discount}} {{$product->discount_type=='fixed'?'':'%'}} </p>
            </div>
            @endif
            {{-- <div class="card-body text-center ">
             <a href="{{route('product.detail',[$product->id])}}" class="text-truncate w-75 me-3 text-decoration-none fw-bold text-dark">
              {{$product->name}}
             </a>
             <div style="color: #fe5e00;"class="py-2 price">
              <del>{{$product->regular_price}} টাকা</del>
              <b>{{$product->sell_price}} টাকা</b>
             </div>
            </div> --}}
            <div class="card-body text-center text-truncate">
              <a href="{{route('product.detail',[$product->id])}}" class=" text-decoration-none fw-bold text-dark">
               {{$product->name}}
              </a>
              <div style="color: #fe5e00;"class="py-2 price">
                @if($product->after_discount > 0)
                  <del>{{$product->sell_price}}</del>
                  <b>{{$product->after_discount}} টাকা</b>
                @else 
                  <b>{{$product->sell_price}} টাকা</b>
                @endif
              </div>
             </div>
            <form action="{{route('add-to-cart', ['id' => $product->id ])}}" method="POST">  
                @csrf 
                <input type="hidden" name="quantity"  value="1" >
            <button type="submit" class="w-100 border-0 card-footer text-center bg-site-color rounded-0 text-white fw-bold text-decoration-none">অর্ডার করুণ</button>
                
            </form>
        </div>