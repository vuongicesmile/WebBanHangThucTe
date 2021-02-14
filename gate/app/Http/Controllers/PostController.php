<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public function index()
    {
        $posts = Post::all();
        return view('list',compact('posts'));
    }

    public function show($id)
    {
        $post = Post::find($id);
        if(auth()->user()->can('view',$post)) {
            return view('show',compact('post'));
        }else {
            abort(403);
        }


    }

    public function create()
    {
        if(auth()->user()->can('create',Post::class)) {
            dd('post cerate');
        }
        else {
            abort(403);
        }

    }


}
