@extends('layouts.admin')

@section('title')
    <title>Setting </title>
@endsection

@section('content')
    <div class="content-wrapper">

        @include('partials.content-header',['name' =>'Settings','key'=> 'add'])


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <form action="{{route('settings.store').'?type='.request()->type}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label>config key</label>
                                <input type="text"
                                       class="form-control @error('config_key') is-invalid @enderror"
                                       name="config_key"
                                       placeholder="Nhập config key">

                                @error('config_key')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror

                            </div>


                            @if(request()->type === "Text")
                                <div class="form-group">
                                    <label>config value</label>
                                    <input type="text"
                                           class="form-control @error('config_value') is-invalid @enderror"
                                           name="config_value"
                                           placeholder="Nhập config value">
                                    @error('config_value')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror

                                </div>

                            @elseif(request()->type === 'Textarea')

                                <div class="form-group">
                                    <label>config value</label>
                                    <textarea rows="5"
                                              class="form-control @error('config_value') is-invalid @enderror"
                                              name="config_value"
                                              placeholder="Nhập config value">
                                    </textarea>

                                    @error('config_value')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>

                            @endif()
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>


                </div>

            </div>
        </div>

    </div>


@endsection


