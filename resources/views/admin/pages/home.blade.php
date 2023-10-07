@extends('admin.layouts.app')
@section('title', 'Dashboard')
@section('dashboard', 'active')
@section('content')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dashboard</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('admin.home') }}">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $user }}</h3>

                                <p>Total {{ Auth::user()->role == 'admin' ? 'Petugas' : 'Mustahik' }}</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-user"></i>
                            </div>
                            @if (Auth::user()->role == 'admin')
                                <a href="{{ route('admin.user.index') }}" class="small-box-footer">More info <i
                                        class="fas
                                fa-arrow-circle-right">
                                    </i></a>
                            @else
                                <a href="{{ route('admin.mustahik.index') }}" class="small-box-footer">More info <i
                                        class="fas
                                    fa-arrow-circle-right">
                                    </i></a>
                            @endif
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>{{ $admin }}</h3>

                                <p>Total {{ Auth::user()->role == 'admin' ? 'Admin' : 'Muzaki' }}</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fas fa-user"></i>
                            </div>
                            @if (Auth::user()->role == 'admin')
                                <a href="{{ route('admin.user.index') }}" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            @else
                                <a href="{{ route('admin.muzaki.index') }}" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            @endif
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>@currency($totalIncome)</h3>
                                <p>Saldo</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fas fa-money-bill"></i>
                            </div>
                            @if (Auth::user()->role == 'admin')
                                <a href="{{ route('admin.income.index') }}" class="small-box-footer">More info <i
                                        class="fas
                            fa-arrow-circle-right">
                                    </i></a>
                            @else
                                <a href="{{ route('admin.approval.index') }}" class="small-box-footer">More info <i
                                        class="fas
                                fa-arrow-circle-right">
                                    </i></a>
                            @endif
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>@currency($totalExpenditure)</h3>
                                <p>Total Pengeluaran</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fas fa-handshake"></i>
                            </div>
                            @if (Auth::user()->role == 'admin')
                                <a href="{{ route('admin.expenditure.index') }}" class="small-box-footer">More info <i
                                        class="fas
                            fa-arrow-circle-right">
                                    </i></a>
                            @else
                                {{-- <a href="{{ route('admin.expenditureMal.index') }}" class="small-box-footer">More info <i
                                        class="fas
                                fa-arrow-circle-right">
                                    </i></a> --}}
                            @endif
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->

        @if (Auth::user()->role == 'admin')
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">

                            <!-- BAR CHART -->
                            <div class="card card-success">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        {{ Auth::user()->role == 'admin' ? 'Kas Masjid' : 'Baitul Mal' }}
                                    </h3>

                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart">
                                        <canvas id="barChart"
                                            style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->

                        </div>
                        <!-- /.col (RIGHT) -->
                    </div>
                    <!-- /.row -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        @endif
    </div>
    <!-- /.content-wrapper -->
@endsection

@push('script')
    <!-- ChartJS -->
    <script src="{{ asset('admin/plugins/chart.js/Chart.min.js') }}"></script>
    <script>
        $(function() {
            //* ChartJS
            @if (auth()->user()->role === 'admin')
                var incomeLabel = 'Data Pemasukan';
            @else
                var incomeLabel = 'Data Penerimaan';
            @endif

            var monthIncomeData = @json($monthIncome);
            var monthExpendituresData = @json($monthExpenditures);

            var areaChartData = {
                labels: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September',
                    'Oktober', 'November', 'Desember'
                ],
                datasets: [{
                        label: incomeLabel,
                        backgroundColor: 'rgba(60,141,188,0.9)',
                        borderColor: 'rgba(60,141,188,0.8)',
                        pointRadius: false,
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: monthIncomeData
                    },
                    {
                        label: 'Data Pengeluaran',
                        backgroundColor: 'rgba(210, 214, 222, 1)',
                        borderColor: 'rgba(210, 214, 222, 1)',
                        pointRadius: false,
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: monthExpendituresData
                    },
                ]
            };
            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $('#barChart').get(0).getContext('2d')
            var barChartData = $.extend(true, {}, areaChartData)
            var temp0 = areaChartData.datasets[0]
            var temp1 = areaChartData.datasets[1]
            barChartData.datasets[0] = temp1
            barChartData.datasets[1] = temp0

            var barChartOptions = {
                responsive: true,
                maintainAspectRatio: false,
                datasetFill: false
            }

            new Chart(barChartCanvas, {
                type: 'bar',
                data: barChartData,
                options: barChartOptions
            })
        })
    </script>
@endpush
