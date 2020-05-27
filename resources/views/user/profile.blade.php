@extends('layouts.app')


@section('content')
<body style="background-color:#F4EA74;">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">USER PROFILE</div>
                
                <div class="card-body">
                 <div class="row">
                    <div class="col-sm-3">
                        <img class="image" src="../images/{{ Auth::user()-> profile_image}}" alt="Your Profile Image" 
                        style="width:250px;height:250px;padding:10px;margin:20px;border-radius: 50%">

                        
                        <!--button uplaod picture-->
                        <button type = "submit"class="btn btn-outline-info" style="padding:3px;margin:20px;margin-left:90px;margin-bottom:50px;margin-top:1px;">
                            <a style="color:black" href="{{ route('user.upload') }}">Upload picture</a></button>
                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br></br>
                        <h2>
                            <b>Hello, <i>{{ Auth::user()-> name}}</i></b>
                        </h2>
                        <h5> Email : {{ Auth::user()-> email}}</h4>
                        <hr>
                        
                        </br>
                            <!-- Edit-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:black" href="{{ route('user.edit') }}">Edit profile</a></button>
                            

                            <!--change password-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:black" href="{{ route('password.change') }}">Change password</a></button>
                            
                            <!--remove account-->
                            <!--paklausia ar tikrai norite istrinti ir paspaudus mygtuka grizta i home langa -->

                            <form action = "{{route('delete')}}" method = "post">
                                @csrf
                                <button type = "submit"class="btn btn-info" style="align:right;padding:10px;margin:5px;margin-left : 80%;">
                                <a style="color:black" onclick="return confirm('Are you sure you want to delete your account?');">Delete account</a></button>
                            </form>
                             <!--to chat-->
                            <button type = "submit"class="btn btn-info" style="padding:10px 20px;margin:5px;margin-left : 80%;">
                            <a style="color:black" href="{{ route('home') }}">Back to chat</a></button>
                            </br> </br>
                            </br>

                            
                    </div>
                 </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
@endsection