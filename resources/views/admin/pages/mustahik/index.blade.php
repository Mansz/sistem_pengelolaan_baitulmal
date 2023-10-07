@extends('admin.layouts.app')
@section('title', 'Data Mustahik')
@if (Auth::user()->role == 'user')
    @section('data.master', 'menu-open')
@else
    @section('data.baitul.mal', 'menu-open')
@endif
@section('mustahik', 'active')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Data Mustahik</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                @if (Auth::user()->role == 'user')
                                    <a href="{{ route('admin.mustahik.create') }}" type="button"
                                        class="btn btn-primary btn-sm">Tambah
                                        Data</a>
                                @endif
                                <div class="btn-group">
                                    <div class="dropdown">
                                        <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                            id="filterDropdown" data-toggle="dropdown">
                                            Filter
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="filterDropdown">
                                            <a class="dropdown-item" href="{{ route('admin.mustahik.index') }}">Semua</a>
                                            <div class="dropdown-divider"></div>
                                            @for ($year = date('Y'); $year >= 2020; $year--)
                                                <a class="dropdown-item"
                                                    href="{{ route('admin.mustahik.index', ['year' => $year]) }}">{{ $year }}</a>
                                            @endfor
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example3" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 7%">No</th>
                                            <th>Nama</th>
                                            <th>Rt</th>
                                            <th>Rw</th>
                                            <th>Golongan</th>
                                            <th>Tanggal</th>
                                            <th>Nominal</th>
                                            <th style="width: 30%">Alamat</th>
                                            <th>photo</th>
                                            @if (Auth::user()->role == 'user')
                                                <th style="width: 18%">Action</th>
                                            @endif
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($mustahik as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->rt }}</td>
                                                <td>{{ $item->rw }}</td>
                                                <td>{{ $item->type }}</td>
                                                <td>{{ $item->date }}</td>
                                                <td>@currency($item->amount)</td>
                                                <td>{{ $item->address }}</td>
                                                <td>
                                                    @if ($item->photo == null)
                                                        <p>Tidak ada photo</p>
                                                    @else
                                                        <img src="{{ asset('file/' . $item->photo) }}" width="100"
                                                            height="100">
                                                    @endif
                                                </td>
                                                @if (Auth::user()->role == 'user')
                                                    <td style="text-align: center;">
                                                        <form action="{{ route('admin.mustahik.destroy', $item->id) }}"
                                                            method="POST">
                                                            @method('DELETE') @csrf
                                                            <div class="btn-group" role="group"
                                                                aria-label="Basic example">
                                                                <a href="{{ route('admin.mustahik.edit', $item->id) }}"
                                                                    class="btn btn-sm btn-outline-secondary">
                                                                    Edit
                                                                </a>
                                                                <button type="submit"
                                                                    onclick="return confirm('Are you sure?')"
                                                                    class="btn btn-sm btn-outline-danger">
                                                                    Delete
                                                                </button>
                                                            </div>
                                                        </form>

                                                    </td>
                                                @endif
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
@push('script')
    <!-- Page specific script -->
    <script>
        $(function() {
            var userRole = '<?php echo Auth::user()->role; ?>';

            var buttons = [{
                    extend: 'pdf',
                    exportOptions: {
                        columns: 'th:not(:nth-last-child(-n+2))'
                    }
                },
                {
                    extend: 'excel',
                    exportOptions: {
                        columns: 'th:not(:nth-last-child(-n+2))'
                    }
                }
            ];

            if (userRole === 'admin') {
                buttons = [{
                        extend: 'pdf',
                        exportOptions: {
                            columns: 'th:not(:last-child)'
                        }
                    },
                    {
                        extend: 'excel',
                        exportOptions: {
                            columns: 'th:not(:last-child)'
                        }
                    }
                ];
            }
            $("#example3").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": buttons
            }).buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');
        });
    </script>
@endpush
