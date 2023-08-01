@extends('main')

@section('title', 'Dashboard')

@section('breadcrumbs')
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dashboard</h1>
            </div>
        </div>
    </div>
</div>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">


            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-user"></i><strong class="card-title pl-2">Profile Card</strong>
                    </div>
                    <div class="card-body">
                        <div class="mx-auto d-block">
                            <img class="rounded-circle mx-auto d-block" src="{{ url('style/images/sepit.jpeg')}}" style="height: 250px" alt="Card image cap">
                            <h5 class="text-sm-center mt-2 mb-1">Speedboat Bintang Rizki Express</h5>
                            <div class="location text-sm-center"><i class="fa fa-map-marker"></i> Ketapang, Kalimantan Barat</div>
                            <div class="location text-sm-center"><i class="fa fa-map-marker"></i> Pontianak, Kalimantan Barat</div>
                        </div>
                        <hr>
                        <div class="card-text text-sm-center">
                            <a href="https://mail.google.com/"><i class="fa fa-google pr-1"></i></a>

                        </div>
                    </div>
                </div>
            </div>

@endsection

@section('content')
<div class="content mt-3">
    <div class="animated fadeIn">

    </div><!-- .animated -->
</div><!-- .content -->
@endsection
