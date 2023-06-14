<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\DeliveryCharge;
use App\Utils\ModulUtil;
use App\Utils\Util;
use Session, DB, Cart;

class CheckoutController extends Controller
{
    private $customer;
    private $order;
    private $orderDetail;
    private $cartProducts;
    public $modulutil;
    public $util;

    public function __construct(ModulUtil $modulutil, Util $util){

        $this->util=$util;
        $this->modulutil=$modulutil;
    }

    public function newOrder(Request $request)
    {
        // // dd($request);
        // // if (Session::get('customer_id'))
        // // {
        // //     $this->customer = User::find(Session::get('customer_id'));
        // // }
        // // else
        // // {
        //     $request->validate([
        //         'name'               => 'required',
        //         'mobile'             => 'digits_between:11,11',
        //         'delivery_address'   => 'required',
        //     ]);

        //     // $this->customer = Customer::newCustomer($request);

        //     // Session::put('customer_id', $this->customer->id);
        //     // Session::put('customer_name', $this->customer->name);
        // // }

        // if ($request->payment_method == 1)
        // {
        //     // dd($request);
        //     $this->order    = Order::newOrder($this->customer, $request);
        //     OrderDetail::newOrderDetail($this->order);

        //     Cart::clear();
           
        // }

        $data=$request->validate([
            'mobile' => 'digits_between:11,11',
            'first_name' => 'required',            
            'payment_method' => 'required',
            'shipping_address' => 'required',           
            'note' => '',
          	'shipping_charge' => 'required|numeric',          
        ]);
      
        if(empty(auth()->user()->id)){
        	$user = User::create([
              'first_name' => $request->first_name,
              'mobile' => $request->mobile,
              'shipping_address' => $request->shipping_address,
              'note' => $request->note
            ]);

          $data['user_id']=$user->id;
          
        } else {
        	$data['user_id']=auth()->user()->id;
        }

        $carts = Cart::getContent();
      	$coupn_discount=getCouponDiscount() ?? 0;

   
        $product=[];
        if ($carts) {
            $total=0;
            $total_discount=0;
            foreach($carts as $key=>$item){
                $total +=$item['quantity'] * $item['price'];
                $total_discount +=$item['quantity'] * $item['attributes']['discount'];
                $product[]=[
                    'product_id'=>$item['id'],
                    'quantity'=>$item['quantity'],
                    'unit_price'=>$item['price'],
                    'variation_id'=>$item['attributes']['variation_id'],
                    'discount'=>$item['attributes']['discount'],
                    'is_stock'=>$item['attributes']['is_stock'],
                ];

            }
        }
      
        $data['date']=date('Y-m-d');
        
        $user = DB::table('model_has_roles')->where('role_id', 8)->inRandomOrder()->first();
        if($user)
        {
             $data['assign_user_id'] = $user->model_id;
        }
        else  $data['assign_user_id'] = 1;
        //$data['invoice_no']=time();
        $data['invoice_no'] = rand(111111,999999);
        $data['discount'] = $total_discount + $coupn_discount;
        $data['amount'] = $total_discount + $total;
      	$data['final_amount'] = ($total + $request->shipping_charge) - $coupn_discount;		
      	
        DB::beginTransaction();
        try {

            unset($data['payment_method']);
            $order=Order::create($data);

            if (!empty($product)) {    
              
                foreach ($product as $key => $item) {                  
                  if($item['is_stock'] != 0) {
                   		$stock=$this->util->checkProductStock($item['product_id'], $item['variation_id']);
                        if($stock < $item['quantity']){
                            return response()->json(['success'=>false,'msg'=>' Stock Note Available!']);
                        }
                    	$this->util->decreaseProductStock($item['product_id'], $item['variation_id'],$item['quantity']);
                   }                 
                  
                }             
              
			  $order->details()->createMany($product);
        
            }    
          
            $this->modulutil->orderPayment($order, $request->all());
            $this->modulutil->orderstatus($order);
          
            /*if($request->payment_method == 'nogod' || $request->payment_method == 'bkash' || $request->payment_method == 'rocket')
              {
                   $order->payments()->create([
                    'amount'=> $order->final_amount,
                    'account_no'=> $request->pay_num,
                    'tnx_id'=> $request->tnx_id,
                    'method'=> $request->payment_method,
                    'date'=> date('Y-m-d'),
                    'note'=> '',
                  ]); 

                  $order->payment_status = $request->payment_method.'_pending';
                  $order->save();
                
                  DB::commit();
            
                  session()->put('cart',[]);
                  session()->put('coupon_discount',null);
                  session()->put('discount_type',null); 

                  $url=route('front.confirmOrder',[$order->id]);
                  return response()->json(['success'=>true,'msg'=>'Order Create successfully!','url'=>$url]);                
                 }  else if($request->payment_method == 'stripe')
                
                     {
                             \Stripe\Stripe::setApiKey('sk_test_51MqweQJRdIwi69uLqYCCskJ2yEzljmB9gKECTX8Oq69ypKPRnFi4eGQ2aukb0fROFpwqavigEt2OcJRBqlngI6AV00vgFvfpqr');
                              $charge = \Stripe\Charge::create([
                                  'source' => $_POST['stripeToken'],
                                  'description' => "10 cucumbers from Roger's Farm",
                                  'amount' => $request->input('amount'),
                                  'currency' => 'usd'         
                              ]);	
                
                                if($charge->status == 'succeeded'){
                            OrderPayment::create([
                                'order_id' => $order->id,
                                'amount'=> $order->final_amount,
                                'account_no'=> $request->input('mobile'),
                                'tnx_id'=> '123',
                                'method'=> 'Stripe',
                                'date'=> date('Y-m-d'),
                                'note'=> ''
                            ]);

                            $order->payment_status = 'Stripe Completed';
                            $order->save();  
                                  
                            DB::commit();            
                            session()->put('cart',[]);
                            session()->put('coupon_discount',null);
                            session()->put('discount_type',null); 
                                  
                            return redirect()->route('front.confirmOrder',[$order->id]);        
                  } 
            }
              else 
            {*/
            	  DB::commit();            
                  Cart::clear();
                  Session::flash('message', 'আপনার অর্ডারটি সফলভাবে সম্পন্ন হয়েছে আমাদের কল সেন্টার থেকে ফোন করে আপনার অর্ডারটি কনফার্ম করা হবে'); 
                  return response()->json(['success'=>true,'msg'=>'আপনার অর্ডারটি সফলভাবে সম্পন্ন হয়েছে','url'=> route('complete-order')]);
            // }             
           

        } catch (\Exception $e) {
            
            DB::rollback();
            return response()->json(['success'=>false,'msg'=>$e->getMessage()]);
        }

    }
    public function completeOrder()
    {
        if(Session::has('message'))
        {
            return view('frontend.checkout.complete-order');
        }

        return redirect()->route('home');
    }
}
