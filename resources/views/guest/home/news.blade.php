@extends('guest.layouts.app')
@section('content')
    <!-- ======= Search Results ======= -->
    <section id="search-result" class="search-result">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="category-title">Berita</h3>

                    @foreach ($news as $item)
                        <div class="d-md-flex post-entry-2 small-img border-bottom">
                            <a href="{{ route('guest.news.show', $item->id) }}" class="me-4 thumbnail">
                                <img src="{{ asset('file/' . $item->photo) }}" alt="" class="img-fluid"
                                    width="50%">
                            </a>
                            <div>
                                <div class="post-meta"><span>{{ $item->created_at }}</span></div>
                                <h3><a href="{{ route('guest.news.show', $item->id) }}">{{ $item->title }}</a></h3>
                                <p>{{ $item->description }}</p>
                            </div>
                        </div>
                    @endforeach

                    <!-- Paging -->
                    <div class="text-start py-4">
                        {{ $news->links() }}

                    </div><!-- End Paging -->

                </div>


            </div>
        </div>
    </section> <!-- End Search Result -->
@endsection
