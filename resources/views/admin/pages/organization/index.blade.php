@extends('admin.layouts.app')
@section('title', 'Data Organisasi')
@section('data.master', 'menu-open')
@section('organization', 'active')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Data Organisasi</h1>
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
                            <div class="card">
                                <div class="card-body">
                                    @if (Auth::user()->role == 'admin')
                                        <div class="row justify-content-center mb-4">
                                            @if ($count == 0)
                                                <a href="{{ route('admin.organization.create') }}"
                                                    class="btn btn-sm btn-outline-primary">
                                                    Tambah Data
                                                </a>
                                            @else
                                                <form action="{{ route('admin.organization.destroy', $organization->id) }}"
                                                    method="POST">
                                                    @method('DELETE') @csrf
                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                        <a href="{{ route('admin.organization.edit', $organization->id) }}"
                                                            class="btn btn-sm btn-outline-secondary">
                                                            Edit
                                                        </a>
                                                        <button type="submit" onclick="return confirm('Are you sure?')"
                                                            class="btn btn-sm btn-outline-danger">
                                                            Delete
                                                        </button>
                                                    </div>
                                                </form>
                                            @endif
                                        </div>
                                    @endif
                                    @if ($count == 0)
                                        <div class="row justify-content-center">
                                            <div class="col-md-6">
                                                <div class="alert alert-info alert-dismissible">
                                                    <h5><i class="icon fas fa-info"></i> Info!</h5>
                                                    Data Pedoman belum tersedia, silahkan tambah data terlebih dahulu.
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <iframe src="{{ asset('file/' . $organization->pdf) }}" frameborder="0"
                                            width="100%" height="600px"></iframe>
                                    @endif
                                </div>
                            </div>

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
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                // "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            });
        });
    </script>
@endpush
