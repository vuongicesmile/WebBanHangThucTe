
<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->

    <!-- SEARCH FORM -->
    <form class="form-inline" method="get" action="{{ route('product.search') }}">

        <div class="form-group mx-sm-2 mb-2">
            <label class="sr-only"> Nhập ID </label>
            <input type="text" class="form-control" name="product_id"
                   value="{{ request()->product_id }}"
                   placeholder="Nhập Id">
        </div>

        <div class="form-group mx-sm-2 mb-2">
            <label class="sr-only"> Nhập tên sản phẩm </label>
            <input type="text"
                   value="{{ request()->name }}"
                   class="form-control" placeholder="Nhập tên sản phẩm" name="name">
        </div>

        <div class="form-group mx-sm-2 mb-2">
            <label class="sr-only"> Nhập tags sản phẩm </label>
            <input type="text"
                   value="{{ request()->tags }}"
                   class="form-control" placeholder="Nhập tags sản phẩm" name="tags">
        </div>

        <div class="form-group mx-sm-2 mb-2">
            <label class="sr-only"> Nhập tên sản phẩm </label>
            <select class="form-control" name="category_id">
                <option value="">Chọn danh mục sản phẩm</option>
                {!! $htmlOptionSearchHeader !!}
            </select>
        </div>


        <button type="submit" class="btn btn-primary mb-2">Search</button>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <!-- Messages Dropdown Menu -->
        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#"><i
                    class="fas fa-th-large"></i></a>
        </li>
    </ul>
</nav>
<!-- /.navbar -->
