@extends('frontend.master')
@section('body')

<section class="detail">
    <div class="container">
        <div class="row ">
            <div class="col-md-6 mt-3 border-1 border-site-color ">
                {{-- <img src="{{ asset('/') }}website/assets/img/2-550x550.jpg" class="img-fluid" alt=""> --}}
                <div class="col-6 col-md-12 col-12">
                    @if (count($product->images) > 0)
                        <div class="xzoom-container w-100">
                            <img class="xzoom w-100" id="xzoom-default" src="{{ getImage('products', $product->images[0]->image)}}"
                                xoriginal="{{ getImage('products', $product->images[0]->image)}}" />
                            <div class="xzoom-thumbs pt-3">
                                @foreach ($product->images as $key => $subImage)
                                    <a href="{{ getImage('products', $subImage->image)}}">
                                        <img class="xzoom-gallery" width="80" src="{{ getImage('products', $subImage->image)}}"
                                            @if ($key == 0) xpreview="{{ getImage('products', $subImage->image)}}" @endif
                                            title="The description goes here"></a>
                                @endforeach
                            </div>
                        </div>
                    @else
                        <div class="xzoom-container">
                            <img class="xzoom " id="xzoom-default" src="{{ getImage('products',$product->image) }}"
                                xoriginal="{{ getImage('products',$product->image)}}" />
                            <div class="xzoom-thumbs pt-3">
                                <a href="{{ getImage('products',$product->image) }}">
                                    <img class="xzoom-gallery" width="80" src="{{ getImage('products',$product->image) }}"
                                        xpreview="{{ getImage('products',$product->image) }}" title="The description goes here"
                                        class="rounded w-100" style="height: 200px; width:100%;">
                                </a>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
            <div class="col-md-6 mt-3 ">
                <div class="row mx-3">
                    <div class="col-12  shadow p-3">
                        <h4>{{$product->name}}</h4>
                        <div style="color: #fe5e00;" class="py-2">
                            @if($product->after_discount > 0)
                            <del>{{$product->sell_price}}</del>
                            <b>{{$product->after_discount}} টাকা</b>
                            @else 
                            <b>{{$product->sell_price}} টাকা</b>
                            @endif
                        </div>


                        <form action="{{ route('add-to-cart', ['id' => $product->id]) }}" method="POST">
                            @csrf
                        <div class=" d-flex align-items-center mb-4 pt-2">
                            পরিমান :
                                {{-- <div class="input-group quantity mr-3" style="width: 130px;">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-minus"  id="qty_minus">
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" id="qty" min="1" name="quantity" class="form-control  text-center" value="1">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn  btn-plus" id="qty_plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>             --}}
                                <div class="input-group quantity mr-3" style="width: 130px;">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-minus" id="qty_minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" id="qty" min="1" name="quantity"
                                        class="form-control  text-center" value="1">
                                    {{-- <input type="number" name="quantity" class="form-control bg-secondary text-center" value="1" min="1"> --}}
                                    <div class="input-group-btn">
                                        <button type="button" class="btn  btn-plus" id="qty_plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                         </div>
                         <button type="submit" class="order-korun fw-bold border-0 py-2">অর্ডার করুণ</button>
                        </form>
                         <hr>
                    </div>
                    <div class="col-12 shadow p-3 mt-3">
                        <div class="fw-bold fs-6"><span style="color:#fe5e00">প্রিয় ক্রেতা,</span> অর্ডার করার আগে প্রোডাক্টি সম্পর্কে জানতে বিবরণ পড়ে নিন। <span style="color:#fe5e00">বিশেষ অনুরোধ</span> যদি প্রয়োজন হয় তবেই শুধু অর্ডার করবেন, অন্যথায় আপনার ও আমাদের মূল্যবান সময় নষ্ট করবেন না। <span style="color:#fe5e00">ধন্যবাদ</span>
                        </div>
                        <div class="d-flex">
                            <img src="{{ asset('/') }}website/assets/img/call.gif" alt="" height="60" width="100">
                            @foreach ($settings as $setting)
                            <a href="tel:+88{{$setting->owner_phone}}" class="fs-1 fw-bold text-decoration-none text-orange">{{$setting->owner_phone}}</a>
                            @endforeach
                        </div>
                        @foreach ($shippings as $shipping)
                        <div class="d-flex justify-content-between py-2 text-info fw-bold">
                            <div>{{ $shipping->title}}</div>
                            <div>	৳ {{ $shipping->amount}}</div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="row py-3 my-5  border-site-color">
            <div class="col-12  ">
                <div class="text-center py-2 mb-3 bg-site-color rounded-2 text-white">
                    <h2>DESCRIPTION</h2>
                </div>
                {!!$product->body!!}
            </div>
        </div>

    </div>
  </section>
  <section class="py-4 product">
    {{-- <div class="container product-header rounded">
      <div class="row">
        <div class="col">
          <h4>রিলেটেড  পণ্য</h4>
        </div>
      </div>
    </div> --}}
    <div class="container">
        <div class="row ">
          <div class="col-md-12  rounded-0 text-white text-center">
            <h4 class="fw-bold align-items-center py-2 bg-site-color">রিলেটেড  পণ্য</h4>
          </div>
        </div>
      </div>
    <div class="container">
      <div class="row">
        @foreach($related_products as $product)
        <div class="col-md-2 col-6 mt-3">
            @include('frontend.product.product_section', ['product' => $product])
        </div>
        @endforeach
      
        {{-- <div class=" container px-5 ">
          <span class="px-5 mx-5">{{$products->links()}}</span>
      </div> --}}
      </div>
    </div>
    
  </section>



@endsection


