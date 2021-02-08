<?php

namespace App\Http\Controllers;

use App\Category;
use App\Components\Recursive;
use App\Product;
use App\ProductImage;
use App\ProductTag;
use App\Tag;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class AdminProductController extends Controller
{
    use StorageImageTrait;
    private $category;
    private $product;
    private $productImage;
    private $tag;
    private $productTag;
    public function __construct(Category $category,Product $product, ProductImage $productImage,Tag $tag,ProductTag $productTag)
    {

    $this->category= $category;
    $this->product= $product;
    $this->productImage=$productImage;
    $this->tag=$tag;
    $this->productTag=$productTag;
    }
    public function index()
    {
        $products = $this->product->latest()->paginate(5);
        return view('admin.product.index',compact('products'));
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
    try{
        DB::beginTransaction();

        $dataProductCreate = [
            'name'=>$request->name,
            'price' =>$request->price,
            'content'=>$request->contents,
            'user_id'=>auth()->id(),
            'category_id'=>$request->category_id
        ];
        $dataUploadFeatureImange= $this->storageTraitUpload($request,'feature_image_path','Product');
        if(!empty($dataUploadFeatureImange)) {
            $dataProductCreate['feature_image_name']=$dataUploadFeatureImange['file_name'];
            $dataProductCreate['feature_image_path']=$dataUploadFeatureImange['file_path'];

        }
        $product =$this->product->create($dataProductCreate);
        //insert data to product images
        if($request->hasFile('image_path'))
        {
            foreach ($request->image_path as $fileItem) {
                $dataProductImageDetail = $this->storageTraitUploadMutiple($fileItem,'Product');
                $product->images()->create([
                    'image_path' => $dataProductImageDetail['file_path'],
                    'image_name' => $dataProductImageDetail['file_name']

                ]);
            }
        }
    if(!empty($request->tags)){
        foreach ($request->tags as $tagItem){
            //insert to tags
            $tagInstance =$this->tag->firstOrCreate(['name'=>$tagItem]);
            $tagIds[]=$tagInstance->id;
        }
    }
        //insert tags for product

        $product->tags()->attach($tagIds);
        DB::commit();
        return redirect()->route('product.index');
    } catch(\Exception $exception) {
        DB::rollBack();
        Log::error('Message'.$exception->getMessage().'---Line :'.$exception->getLine());
    }

    }

    public function edit($id)
    {
        $product =$this->product->find($id);
        $htmlOption= $this->getCategory($product->category_id);
        return view('admin.product.edit',compact('htmlOption','product'));
    }

    public function update(Request $request,$id) {

        try{
            DB::beginTransaction();

            $dataProductUpdate = [
                'name'=>$request->name,
                'price' =>$request->price,
                'content'=>$request->contents,
                'user_id'=>auth()->id(),
                'category_id'=>$request->category_id
            ];
            $dataUploadFeatureImange= $this->storageTraitUpload($request,'feature_image_path','Product');
            if(!empty($dataUploadFeatureImange)) {
                $dataProductCreate['feature_image_name']=$dataUploadFeatureImange['file_name'];
                $dataProductCreate['feature_image_path']=$dataUploadFeatureImange['file_path'];

            }
            $this->product->find($id)->update($dataProductUpdate);
            $product=$this->product->find($id);
            //insert data to product images
            if($request->hasFile('image_path'))
            {
                $this->productImage->where('product_id',$id)->delete();
                foreach ($request->image_path as $fileItem) {
                    $dataProductImageDetail = $this->storageTraitUploadMutiple($fileItem,'Product');
                    $product->images()->create([
                        'image_path' => $dataProductImageDetail['file_path'],
                        'image_name' => $dataProductImageDetail['file_name']

                    ]);
                }
            }
            if(!empty($request->tags)){
                foreach ($request->tags as $tagItem){
                    //insert to tags
                    $tagInstance =$this->tag->firstOrCreate(['name'=>$tagItem]);
                    $tagIds[]=$tagInstance->id;
                }
            }
            //insert tags for product

            $product->tags()->sync($tagIds);
            DB::commit();
            return redirect()->route('product.index');
        } catch(\Exception $exception) {
            DB::rollBack();
            Log::error('Message'.$exception->getMessage().'---Line :'.$exception->getLine());
        }
    }


    public function delete($id) {
    try {
        $this->product->find($id)->delete();
        return response()->json([
            'code' =>200,
            'message' =>'sucess'
        ],200);

    } catch(\Exception $exception) {
        Log::error('Message'.$exception->getMessage().'---Line :'.$exception->getLine());
        return response()->json([
            'code' =>500,
            'message' =>'fail'
        ],500);
    }

    }
}
