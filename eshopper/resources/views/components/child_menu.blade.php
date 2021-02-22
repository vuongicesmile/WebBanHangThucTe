@if($categoryParent->categoryChilrent->count())
    <ul role="menu" class="sub-menu">
        @foreach($categoryParent->categoryChilrent as $categoryChild)
            <li>
                <a href="shop.html">{{$categoryChild->name}}</a>
                @if($categoryChild->categoryChilrent->count())
                    @include('compenents.child_menu',['$categoryParent'=>$categoryChild])
                @endif
            </li>
        @endforeach
    </ul>
@endif

