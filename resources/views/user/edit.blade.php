@extends('layouts.app')

@section('stylesheets')
    <style type="text/css">
        .image {
            width: 100px;
        }
    </style>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">Edit profile data</div>
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br>
                        <h2>
                            <b>Edit your profile</i></b>
                        </h2>
                        <h5> Email : {{ Auth::user()-> email}}</h4>
                        <hr>
                        <h6>Profile functions</h6>
                        <h4>cia edit langas</h4>
                        </br>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection