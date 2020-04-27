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
                        style="width:250px;height:250px;padding:10px;margin:20px;">
                        <!--button uplaod picture-->
                        <button type = "submit"class="btn btn-outline-info" style="padding:3px;margin:20px;margin-left:90px;margin-bottom:50px;margin-top:1px;">
                            <a style="color:blue" href="">Upload picture</a></button>
                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br></br>
                        <h2>
                            <b>Hello, <i>{{ Auth::user()-> name}}</i></b>
                        </h2>
                        <h5> Email : {{ Auth::user()-> email}}</h4>
                        <hr>
                        <h6>Profile functions</h6>
                        </br>
                            <!-- Edit-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="{{ route('user.edit') }}">Edit profile</a></button>

                            <!--change password-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="">Change Password</a></button>
                            
                            <!--remove account-->
                            <!--paklausia ar tikrai norite istrinti ir paspaudus mygtuka grizta i home langa -->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="">Remove Account</a></button>

                             <!--to chat-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="{{ route('home') }}">Back to chat</a></button>
                            </br> </br>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection