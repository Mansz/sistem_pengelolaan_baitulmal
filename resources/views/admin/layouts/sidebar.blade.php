<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/home" class="brand-link">
        <img src="{{ asset('admin/dist/images/LOGO_BAITUL_MALL.png') }}" alt="AdminLTE Logo"
            class="brand-image img-circle elevation-2" style="opacity: .8">
        <span class="brand-text">Baitul Mal Klangenan</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="info">
                <a class="d-block">{{ Auth::User()->name }}</a>
            </div>
        </div>
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
       with font-awesome or any other icon font library -->

                <li class="nav-item">
                    <a href="{{ route('admin.home') }}" class="nav-link @yield('dashboard')">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>

                <li class="nav-item @yield('data.master')">
                    <a href="#" class="nav-link @yield('nav.master')">
                        <i class="nav-icon fas fa-database"></i>
                        <p>
                            Data Master
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>

                    <ul class="nav nav-treeview">
                        @if (Auth::user()->role == 'user')
                            {{-- muzaki --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.muzaki.index') }}" class="nav-link @yield('muzaki')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Muzaki</p>
                                </a>
                            </li>
                            {{-- mustahik --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.mustahik.index') }}" class="nav-link @yield('mustahik')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Mustahik</p>
                                </a>
                            </li>
                        @endif
                        @if (Auth::User()->role == 'admin')
                            {{-- guidelines --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.guidelines.index') }}" class="nav-link @yield('guidelines')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Pedoman</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('admin.organization.index') }}" class="nav-link @yield('organization')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Organisasi</p>
                                </a>
                            </li>
                            {{-- slide --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.slide.index') }}" class="nav-link @yield('slide')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Gambar</p>
                                </a>
                            </li>
                            {{-- news --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.news.index') }}" class="nav-link @yield('news')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Berita</p>
                                </a>
                            </li>
                            {{-- about --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.about.index') }}" class="nav-link @yield('about')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Tentang Kami</p>
                                </a>
                            </li>
                            {{-- contact --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.contact.index') }}" class="nav-link @yield('contact')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Kontak</p>
                                </a>
                            </li>
                        @endif
                    </ul>
                </li>

                {{-- @if (Auth::user()->role == 'user') --}}
                <li class="nav-item @yield('data.baitul.mal')">
                    <a href="#" class="nav-link @yield('nav.baitul.mal')">
                        <i class="nav-icon fas fa-handshake"></i>
                        @if (Auth::user()->role == 'user')
                            <p>
                                Laporan Baitul Mal
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        @else
                            <p>
                                Baitul Mal
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        @endif
                    </a>

                    <ul class="nav nav-treeview">
                        @if (Auth::user()->role == 'admin')
                            {{-- muzaki --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.muzaki.index') }}" class="nav-link @yield('muzaki')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Muzaki</p>
                                </a>
                            </li>
                            {{-- mustahik --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.mustahik.index') }}" class="nav-link @yield('mustahik')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Mustahik</p>
                                </a>
                            </li>
                        @endif
                        {{-- reception --}}
                        <li class="navπ-item">
                            <a href="{{ route('admin.reception.index') }}" class="nav-link @yield('reception')">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p>Laporan Penyaluran</p>
                            </a>
                        </li>
                        {{-- approval --}}
                        <li class="navπ-item">
                            <a href="{{ route('admin.approval.index') }}" class="nav-link @yield('approval')">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p>Laporan Penerimaan</p>
                            </a>
                        </li>
                        {{-- distributor --}}
                        {{-- <li class="nav
                             --}}
                        {{-- expenditureMal --}}
                        <li class="nav-item">
                            <a href="{{ route('admin.expenditureMal.index') }}" class="nav-link @yield('expenditureMal')">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p>Laporan Pengeluaran</p>
                            </a>
                        </li>
                    </ul>
                </li>
                {{-- @endif --}}

                @if (Auth::User()->role == 'admin')
                    <li class="nav-item @yield('data.kas')">
                        <a href="#" class="nav-link @yield('nav.kas')">
                            <i class="nav-icon fas fa-coins"></i>
                            <p>
                                Kas Masjid
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>

                        <ul class="nav nav-treeview">
                            {{-- income --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.income.index') }}" class="nav-link @yield('income')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Pemasukan</p>
                                </a>
                            </li>
                            {{-- expenditure --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.expenditure.index') }}" class="nav-link @yield('expenditure')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data Pengeluaran</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                @if (Auth::User()->role == 'admin')
                    <li class="nav-item @yield('data')">
                        <a href="#" class="nav-link @yield('nav')">
                            <i class="nav-icon fas fa-user"></i>
                            <p>
                                User
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>

                        <ul class="nav nav-treeview">
                            {{-- user --}}
                            <li class="nav-item">
                                <a href="{{ route('admin.user.index') }}" class="nav-link @yield('user')">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p>Data User</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                @if (Auth::user()->role == 'user')
                    <li class="nav-item">
                        <a href="{{ route('admin.guidelines.index') }}" class="nav-link @yield('guidelines')">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                                Pedoman
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('admin.organization.index') }}" class="nav-link @yield('organization')">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                                Struktur Organisasi
                            </p>
                        </a>
                    </li>
                @endif
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
