@extends('admin.layouts.app')
@section('title', 'Data Penerimaan')
@section('data.baitul.mal', 'menu-open')
@section('approval', 'active')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Laporan Penerimaan</h1>
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
                                {{-- <a href="{{ route('admin.approval.create') }}" type="button"
                                    class="btn btn-primary btn-sm">Tambah
                                    Data</a> --}}
                                <a href="{{ route('admin.approval.refresh') }}" type="button"
                                    class="btn btn-success btn-sm">Refresh</a>
                                <div class="btn-group">
                                    <div class="dropdown">
                                        <button class="btn btn-info btn-sm dropdown-toggle" type="button"
                                            id="filterDropdown" data-toggle="dropdown">
                                            Filter
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="filterDropdown">
                                            <a class="dropdown-item" href="{{ route('admin.approval.index') }}">Semua</a>
                                            <div class="dropdown-divider"></div>
                                            @for ($year = date('Y'); $year >= 2020; $year--)
                                                <a class="dropdown-item"
                                                    href="{{ route('admin.approval.index', ['year' => $year]) }}">{{ $year }}</a>
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
                                            <th>Rw</th>
                                            <th>Tahun</th>
                                            <th>Total Orang</th>
                                            <th>Total Nominal</th>
                                            <th style="width: 18%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($approvals as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $item->rw }}</td>
                                                <td>{{ date('Y', strtotime($item->date)) }}</td>
                                                <td>{{ $item->number_people }} Orang</td>
                                                <td>@currency($item->amount)</td>
                                                <td style="text-align: center;">
                                                    <form action="{{ route('admin.approval.destroy', $item->id) }}"
                                                        method="POST">
                                                        @method('DELETE') @csrf
                                                        <div class="btn-group" role="group" aria-label="Basic example">
                                                            {{-- <a href="{{ route('admin.approval.edit', $item->id) }}"
                                                                class="btn btn-sm btn-outline-secondary">
                                                                Edit
                                                            </a> --}}
                                                            <button type="submit" onclick="return confirm('Are you sure?')"
                                                                class="btn btn-sm btn-outline-danger">
                                                                Delete
                                                            </button>
                                                        </div>
                                                    </form>

                                                </td>
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
            $("#example3").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": [{
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
                ],
            }).buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');
        });
    </script>
@endpush
