@extends('layouts.admin')

@section('title')
    <title>Trang chủ </title>
@endsection

@section('content')
    <div class="content-wrapper">

        @include('partials.content-header',['name' =>'menu','key'=> 'add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <form action="{{route('menu.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label>Tên Menu</label>
                                <input type="text" class="form-control"
                                       name="name"
                                       placeholder="Nhập tên danh mục">

                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Chọn Menu cha </label>
                                <select class="form-control" name="parent_id">
                                    <option value="0">Chọn danh mục cha</option>

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


