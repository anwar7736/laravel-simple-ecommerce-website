<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
// use Cart;
use Darryldecode\Cart\Cart;
use App\Models\Product;
use App\Models\Variation;

class CartController extends Controller
{
    private $product;

    public function index(Request $request, $id)
    {
        $this->product = Product::find($id);
        $variation = Variation::where('product_id', $this->product->id)->first();

        $price = $this->product->after_discount > 0 ? $this->product->after_discount : $this->product->sell_price;
        \Cart::add(array (
            'id'        => $this->product->id,
            'name'      => $this->product->name,
            'price'     => $price,
            'quantity'  => $request->quantity,
            'attributes'=> [
                'image' => $this->product->image,
                'variation_id'  => $variation->id ?? $this->product->id,
                'discount'  => $this->product->discount,
                "is_stock"  =>  $this->product->is_stock,
            ],
            
        ));
        return redirect('/show-cart');
    }

    public function show()
    {
        if(\Cart::isEmpty()){
            return redirect()->route('home');
        }else{

            return view('frontend.cart.show', [
                'products' => \Cart::getContent(),
            ]);
        }
    }

    public function remove($id)
    {
        \Cart::remove($id);
        return redirect()->back()->with('message', 'Cart product info remove successfully.');
    }


    public function increment(Request $request)
    {


        $data= \Cart::update($request->id, array(
            'quantity' => 1, // so if the current product has a quantity of 4, another 2 will be added so this will result to 6
          ));
          $result= \Cart::get($request->id);
        if($data){
            return response([
                'success'=>true,
                'data'=>$result
            ]);
        }else{
            return response([
                'success'=>false
            ]);
        }

    }

    public function decrement(Request $request)
    {


        $data= \Cart::update($request->id, array(
            'quantity' => -1, // so if the current product has a quantity of 4, another 2 will be added so this will result to 6
          ));
          $result= \Cart::get($request->id);
        if($data){
            return response([
                'success'=>true,
                'data'=>$result
            ]);
        }else{
            return response([
                'success'=>false
            ]);
        }

    }

}
