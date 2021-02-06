@extends('layouts.admin')

@section('title')
    <title>Trang chủ </title>
@endsection

@section('content')
    <div class="content-wrapper">

        @include('partials.content-header',['name' =>'menu','key'=> 'Edit'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <form action="{{route('menu.update',['id'=>$menuFollowIdEdit->id])}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label>Tên Menu</label>
                                <input type="text" class="form-control"
                                       name="name"
                                       placeholder="Nhập tên menu "
                                value="{{$menuFollowIdEdit->name}}">

                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Chọn Menu cha </label>
                                <select class="form-control" name="parent_id">
                                    <option value="0">Chọn menu cha</option>
                                    {!! $optionSelect !!}

                                    //ep tu string thanh mang
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>


                </div>

            </div>
        </div>

    </div>


@endsection


