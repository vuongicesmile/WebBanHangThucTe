@extends('layouts.admin')

@section('title')
    <title>Trang chu</title>
@endsection

@section('css')
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('admins/slider/add/add.css') }}">
    <style>
        .c-checkbox input {
            width: 20px;
            background-color: #fff;
            height: 20px;
            margin-top: 0px;
        }
        .select2-container--default .select2-selection--multiple .select2-selection__choice {
            background-color: #0f6674 !important;
        }
    </style>
@endsection

@section('js')
    <script>
        function showTooglePanel() {
            let index = $(this).data('key');
            $('#demo' + index).slideToggle();
        }
        $(function () {
            $(document).on('click', '.show_hide_panel', showTooglePanel);
            $(".checkall").click(function(){
                let key = $(this).data('key');
                $('.check_item_' + key).prop('checked', this.checked);
            });

        })
    </script>
@endsection


@section('content')

    <div class="content-wrapper">
        @include('partials.content-header', ['name' => '', 'key' => 'Sửa Quyền của nhóm'])

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12" style="padding: 0">
                        <div class="form-group">
                            <label>Tên nhóm quyền</label>
                            <input type="text"
                                   class="form-control"
                                   name="name"
                                   placeholder="Nhập tên nhóm quyền"
                                   value="Quản lí"
                            >
                        </div>

                        <div class="form-group">
                            <label>Mô tả nhóm quyền</label>
                            <input type="text"
                                   class="form-control"
                                   name="name"
                                   placeholder="Nhập mô tả nhóm quyền"
                                   value="Quản trị web"
                            >
                        </div>
                    </div>
                    @foreach($data as $key => $dataItem)


                        <div class="panel panel-primary col-md-12" style="padding: 0" style="position: relative">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <label class="c-checkbox">
                                        <input class="module-name job-module checkall"
                                               data-key="{{ $key }}"
                                               checked name="" type="checkbox"
                                               value="">
                                        Quản lý {{ $dataItem->name }}
                                    </label>

                                </h3>
                                <div class="box-tools pull-right" style="position: absolute;top: 3px;right: 0;">
                                    <button type="button" class="btn btn-box-tool show_hide_panel" data-key="{{ $key }}"><i
                                            class="fa fa-minus"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="panel-body" id="demo{{ $key }}">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="box box-warning">
                                            <div class="box-body">
                                                <div class="checkbox c-checkbox">
                                                    <label class="small">
                                                        <input class="item-name job-module_item check_item_{{ $key }}" name="permission[]"
                                                               checked="" type="checkbox" value="32">
                                                        Danh sách  {{ $dataItem->name }}
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="box box-warning">
                                            <div class="box-body">
                                                <div class="checkbox c-checkbox">
                                                    <label class="small">
                                                        <input class="item-name job-module_item check_item_{{ $key }}" name="permission[]"
                                                               checked="" type="checkbox" value="32">
                                                        Tạo  {{ $dataItem->name }}
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="box box-warning">
                                            <div class="box-body">
                                                <div class="checkbox c-checkbox">
                                                    <label class="small">
                                                        <input class="item-name job-module_item check_item_{{ $key }}" name="permission[]"
                                                               checked="" type="checkbox" value="32">
                                                        Sửa  {{ $dataItem->name }}
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="box box-warning">
                                            <div class="box-body">
                                                <div class="checkbox c-checkbox">
                                                    <label class="small">
                                                        <input class="item-name job-module_item check_item_{{ $key }}" name="permission[]"
                                                               checked="" type="checkbox" value="32">
                                                        Xóa  {{ $dataItem->name }}
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    @endforeach

                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" class="form-control btn btn-primary" name="name" value="submit">
                        </div>
                    </div>


                </div>


            </div>
        </div>

    </div>

@endsection



