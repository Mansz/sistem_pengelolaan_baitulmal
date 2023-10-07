@extends('admin.layouts.app')
@section('title', 'Perbarui Data Mustahik')
@if (Auth::user()->role == 'user')
    @section('data.master', 'menu-open')
@else
    @section('data.baitul.mal', 'menu-open')
@endif
@section('mustahik', 'active')
@section('content')
    <div class="content-wrapper" style="min-height: 1345.31px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Formulir Mustahik</h1>
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
                        <h3 class="card-title">Perbarui Data Mustahik</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="display: block;">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{ route('admin.mustahik.update', $mustahik->id) }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf @method('PUT')
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="name">Nama</label>
                                            <input type="text"
                                                class="form-control  @error('name')
                                            is-invalid @enderror"
                                                id="name" placeholder="Masukan Nama" name="name"
                                                value="{{ old('name', $mustahik->name) }}">
                                            @error('name')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="rt">RT</label>
                                            <input type="number"
                                                class="form-control  @error('rt')
                                            is-invalid @enderror"
                                                id="rt" placeholder="Masukan RT" name="rt"
                                                value="{{ old('rt', $mustahik->rt) }}">
                                            @error('rt')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="rw">RW</label>
                                            <input type="number"
                                                class="form-control  @error('rw')
                                            is-invalid @enderror"
                                                id="rw" placeholder="Masukan RW" name="rw"
                                                value="{{ old('rw', $mustahik->rw) }}">
                                            @error('rw')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label>Golongan</label>
                                            <select class="form-control" name="type">
                                                <option value="fakir" {{ $mustahik->type == 'fakir' ? 'selected' : '' }}>
                                                    Fakir</option>
                                                <option value="miskin" {{ $mustahik->type == 'miskin' ? 'selected' : '' }}>
                                                    Miskin</option>
                                                <option value="mualaf" {{ $mustahik->type == 'mualaf' ? 'selected' : '' }}>
                                                    Mualaf</option>
                                                <option value="gharim" {{ $mustahik->type == 'gharim' ? 'selected' : '' }}>
                                                    Gharim</option>
                                                <option value="budak" {{ $mustahik->type == 'budak' ? 'selected' : '' }}>
                                                    Budak</option>
                                                <option value="fisabilillah"
                                                    {{ $mustahik->type == 'fisabilillah' ? 'selected' : '' }}>Fisabilillah
                                                </option>
                                                <option value="amil" {{ $mustahik->type == 'fakir' ? 'selected' : '' }}>
                                                    Amil</option>
                                                <option value="Ibnu Sabil"
                                                    {{ $mustahik->type == 'Ibnu Sabil' ? 'selected' : '' }}>Ibnu Sabil
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="amount">Nominal</label>
                                            <input type="number"
                                                class="form-control  @error('amount')
                                            is-invalid @enderror"
                                                id="amount" placeholder="Masukan Nominal" name="amount"
                                                value="{{ old('amount', $mustahik->amount) }}">
                                            @error('amount')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="date">Tanggal</label>
                                            <input type="date"
                                                class="form-control  @error('date')
                                            is-invalid @enderror"
                                                id="date" placeholder="Masukan date" name="date"
                                                value="{{ old('date', $mustahik->date) }}">
                                            @error('date')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="file">Photo</label>
                                            <input type="file"
                                                class="form-control  @error('file')
                                            is-invalid @enderror"
                                                id="file" placeholder="Masukan file" name="file"
                                                value="{{ old('file') }}" accept="image/*">
                                            @error('file')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group col-md-8">
                                            <label for="address">Alamat</label>
                                            <textarea class="form-control  @error('address') is-invalid @enderror" name="address" id="address" cols="20"
                                                rows="4" placeholder="Masukan Alamat">{{ old('address', $mustahik->address) }}</textarea>
                                            @error('address')
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
