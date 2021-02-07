<?php

namespace App\Http\Controllers;

use App\Category;
use App\Components\Recursive;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminProductController extends Controller
{
    use StorageImageTrait;
    private $category;
    public function __construct(Category $category)
    {
    $this->category= $category;
    }
    public function index()
    {
        return view('admin.product.index');
    }
    public function create()
    {
        $htmlOption= $this->getCategory($parentId='');
        return view('admin.product.add',compact('htmlOption'));
    }
    public function getCategory($parentId)
    {
        $data = $this->category->all();
        $recusive = new Recursive($data);
        $htmlOption = $recusive->categoryRecusive($parentId);
        return $htmlOption;
    }
    public function store(Request $request)
    {
        $dataUpload= $this->storageTraitUpload($request,'feature_image_path','Product');

        dd($dataUpload);
    }
}
