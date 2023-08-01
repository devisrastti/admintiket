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
        <div class="card">
            <div class="card-header">
                <div class="pull-left">
                    <strong>Edit Jadwal</strong>
                </div>
                <div class="pull-right">
                    <a href="{{ url ('jadwal') }}" class="btn btn-secondary btn-sm">
                        <i class="fa fa-undo"></i> Back
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <form action="{{ url ('jadwal/' .$jadwal->id) }}" method="POST">
                            @method('patch')
                            @csrf
                            <div class="form-group">
                                <label>Kota Asal</label>
                                <input type="text" name="kota_asal" class="form-control" value="{{ $jadwal->kota_asal }}" autofocus required>
                            </div>
                            <div class="form-group">
                                <label>Kota Tujuan</label>
                                <input type="text" name="kota_tujuan" class="form-control" value="{{ $jadwal->kota_tujuan }}" autofocus required>
                            </div>
                            <div class="form-group">
                                <label>Hari</label>
                                <input type="date" name="date" class="form-control"  autofocus required>
                            </div>
                            <div class="form-group">
                                <label>Jam</label>
                                <input type="time" name="time" class="form-control"  autofocus required>
                            </div>
                            <div class="form-group">
                                <label>Harga</label>
                                <input type="integer" name="harga" class="form-control" value="{{ $jadwal->harga }}" autofocus required>
                            </div>
                            <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div><!-- .animated -->
</div><!-- .content -->
@endsection
