@extends('guest.layouts.app')
@section('content')
    <!-- ======= Search Results ======= -->
    <section id="search-result" class="search-result">
        <div class="container">
            <div class="row">

                <h3 class="category-title">Galeri</h3>
                @foreach ($gallery as $item)
                    <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                        <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                            <img src="{{ asset('file/' . $item->photo) }}" class="w-100" />
                            <a href="#!" data-mdb-toggle="modal" data-mdb-target="#exampleModal1">
                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
            {{ $gallery->links() }}
        </div>
    </section> <!-- End Search Result -->
@endsection
