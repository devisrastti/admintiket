@extends('main')

@section('title', 'Jadwal')

@section('breadcrumbs')
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Jadwal Speedboat</h1>
            </div>
        </div>
    </div>
</div>
@endsection

@section('content')
<div class="content mt-3">
    <div class="animated fadeIn">

        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif

        <div class="card">
            <div class="card-header">
                <div class="pull-left">
                    <strong>Data Jadwal</strong>
                </div>
                <div class="pull-right">
                    <a href="{{ url ('jadwal/tambah') }}" class="btn btn-success btn-sm">
                        <i class="fa fa-plus"></i> Tambah Data
                    </a>
                </div>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Kota Asal</th>
                            <th>Kota Tujuan</th>
                            <th>Hari</th>
                            <th>Jam</th>
                            <th>Harga</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($jadwal as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->kota_asal }}</td>
                                <td>{{ $item->kota_tujuan }}</td>
                                <td>{{ $item->hari }}</td>
                                <td>{{ $item->jam }}</td>
                                <td>{{ $item->harga }}</td>
                                <td class="text-center">
                                    <a href="{{ url ('jadwal/edit/' .$item->id) }}" class="btn btn-primary btn-sm">
                                        <i class="fa fa-pencil"></i>
                                    </a>
                                    <form action="{{ url('jadwal/' .$item->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Yakin Hapus Data?')">
                                        @method('delete')
                                        @csrf
                                        <button class="btn btn-danger btn-sm">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </div><!-- .animated -->
</div><!-- .content -->
@endsection
