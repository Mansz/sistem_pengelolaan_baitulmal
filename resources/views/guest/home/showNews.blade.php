@extends('guest.layouts.app')
@section('content')
    <section class="single-post-content">
        <div class="container">
            <div class="row">
                <div class="col-md-9 post-content" data-aos="fade-up">

                    <!-- ======= Single Post Content ======= -->
                    <div class="single-post">
                        <div class="post-meta">
                            <span>{{ $news->created_at }}</span>
                        </div>
                        <figure class="my-4">
                            <img src="{{ asset('file/' . $news->photo) }}" alt="" class="img-fluid">
                        </figure>
                        <h1 class="mb-5">{{ $news->title }}</h1>
                        <p><span class="firstcharacter">L</span>orem ipsum dolor sit, amet consectetur adipisicing elit.
                            Ratione officia sed, suscipit distinctio, numquam omnis quo fuga ipsam quis inventore voluptatum
                            recusandae culpa, unde doloribus saepe labore alias voluptate expedita? Dicta delectus beatae
                            explicabo odio voluptatibus quas, saepe qui aperiam autem obcaecati, illo et! Incidunt voluptas
                            culpa neque repellat sint, accusamus beatae, cumque autem tempore quisquam quam eligendi harum
                            debitis.</p>


                    </div><!-- End Single Post Content -->
                </div>
            </div>
    </section>
@endsection
