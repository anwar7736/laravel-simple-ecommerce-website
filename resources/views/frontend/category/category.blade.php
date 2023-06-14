@extends('frontend.master')

@section('body')

<section class="py-4">
    {{-- <div class="container bg-site-color rounded text-white text-center py-2 ">
        <div class="row">
          <div class="col ">
            <h4 class="fw-bold">{{ $category->name }}</h4>
          </div>
        </div>
      </div> --}}
      <div class="container  text-white text-center product-header rounded-0">
        <div class="row">
          <div class="col">
            <h4 class="fw-bold align-items-center py-2 bg-site-color">{{ $category->name }}</h4>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          @foreach($products as $product)
          <div class="col-md-2 col-6 mt-3">
            @include('frontend.product.product_section', ['product' => $product])
          </div>
          @endforeach
          
          <div class=" container px-5 ">
            <span class="px-5 mx-5">{{$products->links()}}</span>
        </div>
        </div>
      </div>
</section>


@endsection