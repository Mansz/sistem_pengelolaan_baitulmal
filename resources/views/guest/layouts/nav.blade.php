<header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

        <a href="{{ route('guest.home') }}" class="logo d-flex align-items-center">
            <!-- Uncomment the line below if you also wish to use an image logo -->
            <img src="{{ asset('admin/dist/images/LOGO_BAITUL_MALL.png') }}" alt="">
            <h1>BAITUL MAL DESA KLANGENAN</h1>
        </a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a href="{{ route('guest.home') }}">Beranda</a></li>
                <li><a href="{{ route('guest.news') }}">Berita</a></li>
                <li><a href="{{ route('guest.gallery') }}">Galeri</a></li>
                <li><a href="{{ route('guest.contact') }}">Hubungi Kami</a></li>
                <li><a href="{{ route('guest.about') }}">Tentang Kami</a></li>
                <li><a href="{{ route('login') }}">Login</a></li>
            </ul>
        </nav><!-- .navbar -->


        <i class="bi bi-list mobile-nav-toggle"></i>
    </div>

</header>
