@extends('frontend.master')
@php 
    $shippings = \App\Models\DeliveryCharge::all();
@endphp
@section('body')
<section class="">
    <div class="container">
        <div class="border-site-color pt-3 px-1 my-3 fw-bold">
            <p><span style="color:#fe5e00">সম্মানিত ক্রেতা,</span> অর্ডারটি কনফার্ম করতে আপনার নাম, সম্পূর্ণ ঠিকানা, মোবাইল নাম্বার লিখে <span style="color:#fe5e00">অর্ডার কনফার্ম করুন</span> বাটনে ক্লিক করুন, ২৪ ঘন্টার মধ্যে আপনার সাথে ফোনে যোগাযোগ করা হবে । <span style="color:#fe5e00">ধন্যবাদ</span></p>
        </div>
        <div class="row">
            <div class="col-md-5 mb-3">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('new-order') }}" method="POST" id="checkout_form">
                            @csrf
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">আপনার নাম <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="customer_name" name="first_name"
                                placeholder="আপনার নাম লিখুন">
                              </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">মোবাইল নম্বর <span class="text-danger">*</span></label>
                                <input type="number" class="form-control" id="customer_phone" name="mobile"
                                        placeholder="আপনার মোবাইল লিখুন">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">ডেলিভারীর ঠিকানা <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="customer_address" name="shipping_address"
                                placeholder="আপনার ঠিকানা লিখুন">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">ডেলিভারী এরিয়া <span class="text-danger">*</span></label>
                                
                                <select name="shipping_charge" id="shipping_method" class="form-control">
                                    @foreach ($shippings as $shipping)
                                    <option value="{{ $shipping->amount }}">{{ $shipping->title }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="hidden" id="cash" class=""name="payment_method" value="1">
                            <div class="mb-3">
                               <button type="submit" style="background:#fe5e00; color:white" class="btn fw-bold w-100" id="conf_order_btn">অর্ডার কনফার্ম করুণ</button>
                            </div>
                              
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card " style="border: 1px solid #e9e9e9">
                    <h5 class="font-weight-bold bg-site-color text-white fw-bold card-header">SHOPPING CART</h5>
                    <div class="card-body p-2 table-responsive" id="order_info_table">
                        <table class="cart_table table text-center mb-0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Image</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php($sum = 0)
                                @foreach ($products as $product)
                                    <tr>
                                        <td class="align-left"><a class="remove-item"
                                                onclick="return confirm('Are you sure to remove this..');"
                                                href="{{ route('remove-cart-product', ['id' => $product->id]) }}"><i
                                                    class="fa fa-trash text-danger"></i></a>
                                        </td>
                                        <td>
                                            <img width="50" src="{{ getImage('products', $product->attributes->image) }}"
                                                    alt="">
                                        </td>
                                        <td class="align-left ">
                                            <a style="font-size: 14px" class="text-info "
                                                href="{{route('product.detail',[$product->id])}}">{{ $product->name }}</a>
                                        </td>
                                        <td>{{ $product->price }}</td>
                                        
                                        <td width="10%" class="cart_qty text-center">
                                            <div class=" d-flex align-items-center mb-4 pt-1">

                                                <div class="input-group quantity mr-3" style="width: 130px;">
                                                    <div class="input-group-btn">
                                                        <button class="btn  btn-minus qty_minus"
                                                            data-id="{{ $product->id }}">
                                                            <i class="fa fa-minus"></i>
                                                        </button>
                                                    </div>
                                                    <input type="text" class="form-control  text-center"
                                                        value="{{ $product->quantity }}">
                                                    <div class="input-group-btn">
                                                        <button class="btn qty_plus btn-plus"
                                                            data-id="{{ $product->id }}">
                                                            <i class="fa fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>

                                        </td>
                                        <td>{{ $product->quantity * $product->price }}</td>
                                    </tr>
                                    @php($sum = $sum + $product->quantity * $product->price)
                                    @endforeach
                            </tbody>

                            <tfoot>
                                <tr>
                                    <th colspan="4" class="text-right pr-2">Sub Total</th>
                                    <td><span id="net_total" data-value="{{$sum}}">{{ number_format($sum) }}</span></td>
                                    
                                </tr>
                                <tr>
                                    <th colspan="4" class="text-right pr-2">Shipping Cost</th>
                                    <td>
                                        @php($shipping = 100)
                                        <span id="cart_shipping_cost">0</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="4" class="text-right pr-2">Total</th>
                                    <td>
                                        @php($grandTotal = $sum + $shipping)
                                        <span id="grand_total">{{ number_format($grandTotal) }}</span>
                                    </td>
                                    <?php
                                    Session::put('order_total', $grandTotal);
                                    Session::put('shipping_total', $shipping);
                                    ?>
                                </tr>
                            </tfoot>
                        </table>


                    </div>
                </div>
                <div class="continue-shoping mt-3 float-end">
                    <a href="{{ route('home') }}" style="background:#fe5e00; color:white" class="btn fw-bold">Contuniue Shopping</a>
                </div>
            </div>
        </div>
    </div>
 </section>
@endsection


@push('script')
    <script>
        $(document).on('submit','form#checkout_form', function(e) {
            e.preventDefault(); 
            $('span.textdanger').text('');

            let ele=$('form#checkout_form');
            var url=ele.attr('action');
            var method=ele.attr('method');
            var formData = ele.serialize();

            $.ajax({
                url,
                method,
                data: formData,
                success: function(res) {
                    if(res.success){
                        toastr.success(res.msg);
                        if(res.url){
                            document.location.href = res.url;
                        }else{
                            window.location.reload();
                        }
                        
                    }else{
                        toastr.error(res.msg);
                    }
                    
                },
                error:function (response){
                    $.each(response.responseJSON.errors,function(field_name,error){
                        $(document).find('[name='+field_name+']').after('<span class="textdanger" style="color:red">' +error+ '</span>');
                    })
                }
            });
        });
        
        $(function() {
            $('#shipping_method').on('change', function() {
                console.log('sdfsdfs');
                var vvv = $(this).val();
                $("#cart_shipping_cost").text(vvv);
                $("#shipping_cost").val(vvv);
                calculate();

            })
            $('#shipping_method').trigger('change')

            $(".qty_plus").click(function() {
                var qty = $('#qty').val();
                var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: '{{ route('increment-cart-product') }}',
                    type: 'GET',
                    data: {
                        _token: CSRF_TOKEN,
                        id: $(this).data('id')
                    },
                    success: function(response) {
                        // $('#order_info_table').empty();
                        // $('#order_info_table').append(data);
                        if (response) {
                           // console.log(response.data);
                             location.reload();
                        } else {
                            alert('something went wrong')
                        }
                         calculate();
                    }
                });
            });

            $(".qty_minus").click(function() {
                var qty = $('#qty').val();
                var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: '{{ route('decrement-cart-product') }}',
                    type: 'GET',
                    data: {
                        _token: CSRF_TOKEN,
                        id: $(this).data('id')
                    },
                    success: function(response) {
                        // $('#order_info_table').empty();
                        // $('#order_info_table').append(data);
                        if (response) {
                           // console.log(response.data);
                             location.reload();
                        } else {
                            alert('something went wrong')
                        }

                         calculate();
                    }
                });
            });
        })

        function calculate() {
            var net_total = parseFloat($('#net_total').data('value'));
            var cart_shipping_cost = parseFloat($('#cart_shipping_cost').text());
            $('#grand_total').text(net_total + cart_shipping_cost);
        }
    </script>
@endpush
