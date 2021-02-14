<h1>bai viet</h1>

@foreach($posts as $post)


    <a href="{{route('post.show',['id'=>$post->id])}}">{{$post->title}}</p></a><p>


@endforeach
