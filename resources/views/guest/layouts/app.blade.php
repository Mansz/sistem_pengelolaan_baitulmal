<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Baitul Mal || Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="{{ asset('/guest') }}/assets/img/favicon.png" rel="icon">
    <link href="{{ asset('/guest') }}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('/guest') }}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ asset('/guest') }}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="{{ asset('/guest') }}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="{{ asset('/guest') }}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="{{ asset('/guest') }}/assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS Files -->
    <link href="{{ asset('/guest') }}/assets/css/variables.css" rel="stylesheet">
    <link href="{{ asset('/guest') }}/assets/css/main.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: ZenBlog - v1.2.1
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    @include('guest.layouts.nav');
    <!-- End Header -->

    <main id="main">

        @yield('content')

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">

        <div class="footer-content">
            <div class="container">

                <div class="row g-5">
                    <div class="col-lg-6">
                        <h3 class="footer-heading">Tentang Kami</h3>
                        <p>{{ Str::limit($about->description, 200, '...') }}</p>
                        <p><a href="{{ route('guest.home') }}" class="footer-link-more">Learn More</a></p>
                    </div>
                    <div class="col-6 col-lg-6">
                        <h3 class="footer-heading">Navigasi</h3>
                        <ul class="footer-links list-unstyled">
                            <li><a href="{{ route('guest.home') }}"><i class="bi bi-chevron-right"></i> Beranda</a>
                            </li>
                            <li><a href="{{ route('guest.news') }}"><i class="bi bi-chevron-right"></i>
                                    Berita</a></li>
                            <li><a href="{{ route('guest.gallery') }}"><i class="bi bi-chevron-right"></i> Galeri</a>
                            </li>
                            <li><a href="{{ route('guest.contact') }}"><i class="bi bi-chevron-right"></i> Hubungi
                                    Kami</a></li>
                            <li><a href="{{ route('guest.about') }}"><i class="bi bi-chevron-right"></i> Tentang
                                    Kami</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-legal g-5">
            <div class="container">

                <div class="row justify-content-between">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <div class="copyright">
                            © <strong><span>Baitul Mal</span></strong> Desa Klangenan
                        </div>

                        <div class="credits">
                            Designed by Rahman
                        </div>

                    </div>

                </div>

            </div>
        </div>

    </footer>

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('/guest') }}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('/guest') }}/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="{{ asset('/guest') }}/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="{{ asset('/guest') }}/assets/vendor/aos/aos.js"></script>
    <script src="{{ asset('/guest') }}/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('/guest') }}/assets/js/main.js"></script>

</body>

</html>
