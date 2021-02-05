<?php

namespace App\Http\Controllers;

use App\Category;
use App\Components\Recursive;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;



class CategoryController extends Controller
{
    private $category;

    public function __construct(Category $category)
    {
        $this->category=$category;
    }
    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recursive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }

    public function create()
    {
        $htmlOption = $this->getCategory($parentId = '');
        return view('category.add', compact('htmlOption'));
    }



    public function index() {
        //lay nhung moi nhat va phan trang lap la 5
        $categories = $this->category->latest()->paginate(5);
        return view('category.index',compact('categories'));
    }
    public function store(Request $request)
    {
        $this->category->create([
            'name' =>$request->name,
            'parent_id'=> $request->parent_id,
            'slug' => str_slug($request->name)
        ]);
        return redirect()->route('categories.index');
    }
}
