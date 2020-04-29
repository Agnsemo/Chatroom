@extends('layouts.app')

@section('stylesheets')
    <style type="text/css">
        .image {
            width: 100px;
        }
    </style>
@endsection

<script>
function myFunction() {
    var txt;
    var r = confirm("Are you sure you want to delete your account? ");
    if (r == true) {
        alert("Your Account deleted!");
        //UserController.destroy Auth::logout();
        //atlogininti ji, 
        //istrinti account ir 
        //sugrizti to public +
        //pridejau delete route

        window.location = "{{ route('user.delete') }}";
        //window.location = "{{ route('labas') }}";
    } else {
        alert("Your account is not deleted!");
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>


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
                        
                        </br>
                            <!-- Edit-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="{{ route('user.edit') }}">Edit profile</a></button>
                            

                            <!--change password-->
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" href="{{ route('password.change') }}">Change Password</a></button>
                            
                            <!--remove account-->
                            <!--paklausia ar tikrai norite istrinti ir paspaudus mygtuka grizta i home langa -->
                            
                            <button type = "submit"class="btn btn-info" style="padding:10px;margin:10px;">
                            <a style="color:white" onclick="myFunction()">Delete Account</a></button>

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