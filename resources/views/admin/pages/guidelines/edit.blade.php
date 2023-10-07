@extends('admin.layouts.app')
@section('title', 'Perbarui Data Pedoman')
@section('data.master', 'menu-open')
@section('guidelines', 'active')
@section('content')
    <div class="content-wrapper" style="min-height: 1345.31px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Formulir Pedoman</h1>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- SELECT2 EXAMPLE -->
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">Perbarui Data Pedoman</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="display: block;">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{ route('admin.guidelines.update', $guideline->id) }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf @method('PUT')
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="file">PDF</label>
                                            <input type="file"
                                                class="form-control  @error('file')
                                            is-invalid @enderror"
                                                id="file" placeholder="Masukan file" name="file"
                                                value="{{ old('file') }}" accept="application/pdf">
                                            @error('file')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Perbarui Data</button>
                                </form>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
