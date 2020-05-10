@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">Upload your picture</div>
                <div class="row">
                    <div class="col-sm-3">
                    <!--@if ($message = Session::get('success'))
                        <img class = "image" src="../images/{{ Auth::user()-> profile_image}}" 
                        style="width:250px;height:250px;padding:10px;margin:20px;border-radius: 50%" width="300" />
                    @endif-->
                    <!--sena pic is db-->
                        <img class="image" src="../images/{{ Auth::user()-> profile_image}}" alt="Your Profile Image" 
                        style="width:250px;height:250px;padding:10px;margin:20px;border-radius: 50%">
                        <!--button uplaod picture-->

                    </div>
                    <div class="col-sm-9">
                        {{-- Username--}}
                        </br></br>
                        <h2>
                            <b>Hello, <i>{{ Auth::user()-> name}}</i></b>
                        </h2>

                        <h5> Change your profile picture</h5>
                        <hr>

                        @if (count($errors) > 0)
    <div class="alert alert-danger">
     Upload Validation Error<br><br>
     <ul>
      @foreach ($errors->all() as $error)
       <li>{{ $error }}</li>
      @endforeach
     </ul>
    </div>
   @endif
   @if ($message = Session::get('success'))
   <div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
           <strong>{{ $message }}</strong>
   </div>
   @endif

</br>
                            <form method="post" action="{{route('user.upload')}}" enctype="multipart/form-data">
                            {{ csrf_field() }}
                                <div class="form-group">
                                    <table class="table">
                                    <tr>
                                        <td width="40%" align="right"><label>Select File for Upload</label></td>
                                        <td width="30"><input type="file" name="select_file" /></td>
                                        <td width="30%" align="left"><input type="submit" name="upload" class="btn btn-primary" value="Upload"></td>
                                    </tr>
                                    <tr>
                                        <td width="40%" align="right"></td>
                                        <td width="30"><span class="text-muted">jpg, png, gif</span></td>
                                        <td width="30%" align="left"></td>
                                    </tr>
                                    </table>
                                </div>
                            </form>

                            <!--to chat-->
                            <button type = "submit"class="btn btn-info" style="padding:10px 20px;margin:5px;margin-left : 80%;">
                            <a style="color:white" href="{{ route('user.profile') }}">Back to profile</a></button>
                            </br> </br>
                            </br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection