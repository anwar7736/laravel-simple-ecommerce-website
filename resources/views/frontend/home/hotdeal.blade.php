@extends('frontend.master')
@section('body')
<div class="container-fluid pt-2">
    

  <img src="" alt="" >
    <!-- Products End -->
    <div class="text-center mb-4">


        @if ($products->count() == 0)
                <h1 style="color:#fe5e00;" class="py-5">দুঃখিত কোন পণ্য পাওয়া যায়নি  </h1>
                <a style="background:#fe5e00; color:white" href="{{ route('home') }}" class="btn rounded">HOME</a>
    

                @else
                <div class="container  rounded text-white text-center py-2 ">
                    <div class="row">
                      <div class="col ">
                        <h4 class="fw-bold bg-site-color py-2">নতুন পণ্য</h4>
                      </div>
                    </div>
                  </div>
    </div>
    <div class="row px-xl-5 pb-3">

        @foreach($products as $product)
        
       {{-- <div class=" col-md-2 col-6 border-light border-1 ">
            <div class="card  border-1 ">
                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                    <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">
                        <img class="img-fluid w-100" src="{{asset($product->image)}}" alt="" style="height: 210px; width:205px;">
                    </a>
                    
                </div>
                <div class="card-body border-left border-right text-center p-0 ">
                    
                    
                        <h6 class="text-muted ml-2"><del>৳{{$product->regular_price}}</del></h6>
                        <h6 class="text-warning">৳{{$product->selling_price}}</h6>
                        <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">
                            <h6 class="text-truncate mb-3 px-3">{{$product->name}}</h6>
                        </a>
                        
                            <form action="{{route('add-to-cart', ['id' => $product->id ])}}" method="POST">  
                                @csrf    
                                
                                <input type="hidden" name="quantity"  value="1" >
                                <div class="pb-3">
                                    <button type="submit" class="btn btn-sm w-100 mb-2 bg-danger px-2 text-white rounded" name="order_now" >অর্ডার করুন</button> 
                                </div>
                                
                                
                            </form>
                    
                </div>
                
            </div>
        </div> --}}

        <div class="col-md-2 col-6 mt-3">
            @include('frontend.product.product_section', ['product' => $product])
        </div>
        @endforeach
        @endif
    </div>

    <span>{{$products->links()}}</span>
</div>

{{-- <style>
    .w-5{
        height: 45px;
        width: 45px;
    }
</style> --}}
@endsection