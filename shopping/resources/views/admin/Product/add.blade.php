@extends('layouts.admin')

@section('title')
    <title>Add product </title>
@endsection

@section('css')
    <link href="{{asset('vendor/select2/select2.min.css')}}" rel="stylesheet"/>
    <link rel="stylesheet" href="{{asset('admins/product/add/add.css')}}">
@endsection



@section('content')
    <div class="content-wrapper">

        @include('partials.content-header',['name' =>'product','key'=> 'add'])

        <form action="{{ route('product.store')}}" method="post" enctype="multipart/form-data">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">

                            @csrf
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input type="text" class="form-control"
                                       name="name"
                                       placeholder="Nhập sản phẩm">

                            </div>

                            <div class="form-group">
                                <label>Giá sản phẩm </label>
                                <input type="text" class="form-control"
                                       name=""
                                       placeholder="Nhập giá sản phẩm">

                            </div>
                            <div class="form-group">
                                <label>Ảnh đại diện</label>
                                <input type="file"
                                       multiple
                                       class="form-control-file"
                                       name="feature_image_path">

                            </div>
                            <div class="form-group">
                                <label>Ảnh chi tiết</label>
                                <input type="file" class="form-control-file"
                                       name="image_path[]">
                            </div>

                            <div class="form-group">
                                <label>Chọn danh mục cha </label>
                                <select class="form-control select2_init" name="parent_id">
                                    <option value="">Chọn danh mục cha</option>
                                    {!! $htmlOption !!}

                                </select>
                            </div>

                            <div class="form-group">
                                <label>Nhập tags cho sản phẩm</label>
                                <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
                                </select>
                            </div>



                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nhập nội dung</label>
                                <textarea name="content" class="form-control tinymce_editor_init" rows="9"></textarea>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>

                    </div>

                </div>
            </div>

        </form>

    </div>


@endsection


@section('js')
    <script src="{{asset('vendor/select2/select2.min.js')}}"></script>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"></script>
    <script src="{{asset('admins/product/add/add.js')}}"></script>
@endsection

