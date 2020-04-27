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
                <div class="card-header">User profile</div>
                <div class="row">
                    <div class="col-sm-3">
                        <img class="image" src="/images/user.png" alt="Your Profile Image">
                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br>
                        <h2>
                            <b>{{ Auth::user()-> name}}</b>
                        </h2>
                        <h5> Email : {{ Auth::user()-> email}}</h4>
                        <hr>
                        <h6>Profile functions</h6>
                        </br>
                        <button type="submit" class="btn btn-warning">Edit</a></button>
                        <!--paklausia ar tikrai norite istrinti ir paspaudus mygtuka grizta i home langa -->
                        <button type = "submit" class = "btn btn-danger">Delete</button>
                        <button href="{{ route('home') }}" type = "submit" class = "btn btn-primary">Back to chat</button>
                        </br> </br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection