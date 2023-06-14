<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Variation;

use App\Utils\Util;

class CartController extends Controller
{

    public function __construct(Util $util){

        $this->util=$util;
    }


    public function index(){
        $cart = session()->get('cart', []);

            if (request()->ajax()) {
                
                $segm='home';
                if(request()->segment){
                    $segm=request()->segment;
                }                
                
                $view=view('frontend.partials.cart_sidebar', compact('cart','segm'))->render();

                return response()->json(['success'=>true,'html'=>$view]);
            }
        return view('frontend.cart.index', compact('cart'));
    }
    public function store(Request $request){
        
        $data=$request->validate([
            'product_id' => 'required|numeric',
            'variation_id' => 'required|numeric',
        ]);
      
        $segm='home';
        if(request()->segment){
            $segm=request()->segment;
        }
        $product_id=$request->product_id;
        $variation_id=$request->variation_id;
        $quantity=1;
        $product = Product::findOrFail($product_id);
        $variation=Variation::find($variation_id);
        $data=getProductInfo($product);
        $cart = session()->get('cart', []);
      
      
        if($request->is_stock != 0) {
        	$stock=$this->util->checkProductStock($product_id, $variation_id);
        if($stock < $quantity){
            return response()->json(['success'=>false,'msg'=>' Stock Not Available!']);
        }	
        }   

  
        if(isset($cart[$variation_id])) {
          
          	$new_stock=$cart[$variation_id]['quantity']+1;       
          
            if($request->is_stock != 0) {          
                  $stock=$this->util->checkProductStock($product_id, $variation_id);
                  if($stock < $new_stock){
                      return response()->json(['success'=>false,'msg'=>' stock Note Available!']);              
                  }          
              }        
          
          	$cart[$variation_id]['quantity']=$new_stock;
          	$cart[$variation_id]['variation_id']=$variation_id;
        } else {
            
            $cart[$variation_id] = [
                "name" => $product->name,
                "size" => $variation->size?$variation->size->title:'',
                "color" => $variation->color?$variation->color->name:'',
                "quantity" => $quantity,
                "price" => $data['price'],
                "discount" => $data['discount_amount'],
                "variation_id" => $variation_id,
                "product_id" => $product_id,
                "image" => $product->image,
                "is_stock" => $product->is_stock
            ];
        }
        session()->put('cart', $cart);

        $view=view('frontend.partials.cart_sidebar',compact('cart','segm'))->render();
        $total_item=getTotalCart();
        $url=route('front.checkouts.index');
        return response()->json(['success'=>true,'msg'=>'Product added to cart successfully!','html'=>$view,'item'=>$total_item,'url'=>$url]);

    }

    public function edit(Request $request,$id)
    {
        if($id){
            $qty=$request->quantity;
          	
          	$cart = session()->get('cart');
          	$segm='home';
          	if($request->segment){
            	$segm=$request->segment;
          	}
          
          	if($qty==0){
            	if(isset($cart[$id])) {
                    unset($cart[$id]);
                }
          	}else{
               	$product_id=$cart[$id]["product_id"];
              	$stock=$this->util->checkProductStock($product_id, $id);
              	if($stock <$qty){
                  	return response()->json(['success'=>false,'msg'=>' Stock Note Available!']);
              	}
              	
              	$cart[$id]["quantity"] = $qty;
              
            }
           
            session()->put('cart', $cart);
            $view=view('frontend.partials.cart_sidebar',compact('cart','segm'))->render();
            return response()->json(['success'=>true,'msg'=>'Update cart successfully!','html'=>$view,'segment'=>$segm]);
        }else{
            return response()->json(['success'=>false,'msg'=>' Something Went Wrong !']);
        }
    }


    public function destroy($id)
    {
        if($id) {
            $segm='home';
            if(request()->segment){
                $segm=request()->segment;
            }
            
            $cart = session()->get('cart');
            if(isset($cart[$id])) {
                unset($cart[$id]);
                session()->put('cart', $cart);
            }

            $view=view('frontend.partials.cart_sidebar',compact('cart','segm'))->render();
            $total_item=getTotalCart();
            return response()->json(['success'=>true,'msg'=>'Product removed successfully !','html'=>$view,'item'=>$total_item,'segment'=>$segm]);
        }else{
            return response()->json(['success'=>false,'msg'=>' Something Went Wrong !']);
        }
    }


}
