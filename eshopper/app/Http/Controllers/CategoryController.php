<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($slug,$categoryId)
    {
        $categorysLimit = Category::where('parent_id',0)->take(3)->get();
        $products =Product::where('category_id',$categoryId)->paginate(12);
        $categorys = Category::where('parent_id',0)->get();
        return view('product.category.list',compact('categorysLimit','products','categorys'));
    }
}
