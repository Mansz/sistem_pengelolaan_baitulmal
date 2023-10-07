@extends('guest.layouts.app')
@section('content')
    <!-- ======= Hero Slider Section ======= -->
    <section id="hero-slider" class="hero-slider">
        <div class="container-md" data-aos="fade-in">
            <div class="row">
                <div class="col-12">
                    <div class="swiper sliderFeaturedPosts">
                        <div class="swiper-wrapper">
                            @foreach ($slides as $item)
                                <div class="swiper-slide">
                                    <div class="img-bg d-flex align-items-end"
                                        style="background-image: url('{{ asset('file/' . $item->photo) }}');">
                                        <div class="img-bg-inner">
                                            <h2>{{ $item->title }}</h2>
                                            <p>{{ $item->description }}</p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                        <div class="custom-swiper-button-next">
                            <span class="bi-chevron-right"></span>
                        </div>
                        <div class="custom-swiper-button-prev">
                            <span class="bi-chevron-left"></span>
                        </div>

                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Slider Section -->

    <!-- ======= Post Grid Section ======= -->
    <section id="posts" class="posts">
        <div class="container" data-aos="fade-up">
            <div class="row g-5">

                <div class="col-lg-12">
                    <div class="row g-5">
                        <div class="col-lg-4 border-start custom-border">
                            @foreach ($news as $item)
                                <div class="post-entry-1">
                                    <a href="#"><img src="{{ asset('file/' . $item->photo) }}" alt=""
                                            class="img-fluid"></a>
                                    <div class="post-meta"><span>{{ $item->created_at }}</span></div>
                                    <h2><a href="#">{{ $item->title }}</a></h2>
                                </div>
                            @endforeach
                        </div>
                        <div class="col-lg-4 border-start custom-border">
                            @foreach ($news1 as $item)
                                <div class="post-entry-1">
                                    <a href="#"><img src="{{ asset('file/' . $item->photo) }}" alt=""
                                            class="img-fluid"></a>
                                    <div class="post-meta"><span>{{ $item->created_at }}</span></div>
                                    <h2><a href="#">{{ $item->title }}</a></h2>
                                </div>
                            @endforeach
                        </div>
                        <div class="col-lg-4 border-start custom-border">
                            @foreach ($news2 as $item)
                                <div class="post-entry-1">
                                    <a href="#"><img src="{{ asset('file/' . $item->photo) }}" alt=""
                                            class="img-fluid"></a>
                                    <div class="post-meta"><span>{{ $item->created_at }}</span></div>
                                    <h2><a href="#">{{ $item->title }}</a></h2>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

            </div> <!-- End .row -->
        </div>
    </section> <!-- End Post Grid Section -->

    <!-- End Lifestyle Category Section -->
@endsection
