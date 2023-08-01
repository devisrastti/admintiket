@extends('main')

@section('title', 'History')

@section('breadcrumbs')
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Riwayat Pesanan</h1>
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
                    <strong>Data Pesanan</strong>
                </div>
            </div>
            <div class="card-body table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Email</th>
                            <th>Harga</th>
                            <th>Nama</th>
                            <th>Jadwal</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($history as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->email }}</td>
                                <td>{{ $item->harga }}</td>
                                <td>{{ $item->nama }}</td>
                                <td>{{ $item->jadwal }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </div><!-- .animated -->
</div><!-- .content -->
@endsection
