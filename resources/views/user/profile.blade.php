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
                        <img class="image" src="../images/user.png" alt="Your Profile Image" 
                        style="width:200px;height:200px;padding:10px;">
                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br>
                        <h2>
                            <b>Hello, <i>{{ Auth::user()-> name}}</i></b>
                        </h2>
                        <h5> Email : {{ Auth::user()-> email}}</h4>
                        <hr>
                        <h6>Profile functions</h6>
                        </br>
                        <form>
                            <button type="submit" class="btn btn-info">Edit Profile</a></button>
                            <button type = "submit" class = "btn btn-info">Change Password</button>
                            <!--paklausia ar tikrai norite istrinti ir paspaudus mygtuka grizta i home langa -->
                            <button type = "submit" class = "btn btn-info">Remove account</button>
                            <button href="{{ route('home') }}" type = "submit" class = "btn btn-info">Back to chat</button>
                            </br> </br>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection