<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Information;
use App\Models\DeliveryCharge;
use App\Models\Slider;

class HomeController extends Controller
{
   private $categories,$page,$products,$product, $related_products,$category,$setting,$slides;

   public function index()
   {
    $this->categories  = Category::take(7)->get();
    $this->slides  = Slider::all();
    // $this->setting  = Setting::all();
   
    $this->products=Product::latest()->paginate(30);
    return view('frontend.home.index',[
        'products'=> $this->products,
        'categories'=> $this->categories,
        'slides'=> $this->slides,
        // 'setting'=> $this->setting,
       
     ]);
   }
   public function hotdeal()
   {
    $this->categories  = Category::all();
    // $this->setting  = Setting::all();
   
    $this->products=Product::latest()->paginate(30);
    return view('frontend.home.hotdeal',[
        'products'=> $this->products,
        'categories'=> $this->categories,
        // 'setting'=> $this->setting,
       
     ]);
   }

   public function detail($id)
   {
    // $this->setting  = Setting::all();
    $cat_id= Product::where('id',$id)->value('category_id');
    $this->related_products = Product::where('category_id',$cat_id)->latest()->take(8)->get();

    $this->categories  = Category::all();
    $this->product=Product::with('images')->find($id);
    $settings = Information::all();
    $shippings = DeliveryCharge::all();

    return view('frontend.product.show',[
        'product'=>$this->product,
        'categories'=> $this->categories,
        'settings'=> $settings,
        'shippings'=> $shippings,
        'related_products'=> $this->related_products,
        // 'setting'=> $this->setting,
    ]);
   }


   public function category($id)
   {

    //    $this->setting  = Setting::all();
       $this->categories  = Category::all();
       $this->category  = Category::find($id);
       $this->products = Product::where('category_id', $id)->orderBy('id', 'desc')->paginate(30);
       return view('frontend.category.category',[
           'products' => $this->products,
           'category'=> $this->category,
           'categories'=> $this->categories,
        //    'setting'=> $this->setting,
           
       ]);
   }

   public function search(Request $request)
   {

    $searchText    =$request->search;

    // $this->setting  = Setting::all();

    $this->categories  = Category::all();
    $this->slides  = Slider::all();
    $this->product =Product::where('name','LIKE',"%" .$searchText. "%")->paginate(30);
    return view('frontend.home.hotdeal',[
        'products'=> $this->product,
        'categories'=> $this->categories,
        'slides'=> $this->slides,
        // 'setting'=> $this->setting,
        
    ]);
    
   }
   
}
