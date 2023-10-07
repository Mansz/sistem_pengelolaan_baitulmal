@extends('guest.layouts.app')
@section('content')
    <main id="main">
        <section>
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-12 text-center mb-5">
                        <h1 class="page-title">Tentang Kami</h1>
                    </div>
                </div>

                <div class="row mb-5">

                    <div class="d-md-flex post-entry-2 half">
                        <div class="ps-md-5 mt-4 mt-md-0">
                            <div class="post-meta mt-4">Tentang Kami</div>
                            <h2 class="mb-4 display-4">{{ $about->title }}</h2>

                            <p>{{ $about->description }}</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>

    </main><!-- End #main -->
@endsection
