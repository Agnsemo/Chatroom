@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Update your profile') }}</div>

                <div class="card-body">
                <!--action="{{route('user.update', $user)}}"-->
                    <form method="POST" action="{{route('user.update')}}" style="padding:25px">
                        @csrf

                        @if(session('success'))
                            <div class="alert alert-success" role='alert' >
                                {{session('success')}}
                            </div>
                        @endif

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right" style="padding-top:25px">{{ __('Username') }}</label>

                            <div class="col-md-6" style="padding-top:20px">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ $user->name }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $user->email }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4" style="padding-bottom:20px">
                                <button type="submit" class="btn btn-info" >
                                    {{ __('Update profile') }}
                                </button>
                                
                            </div>
                        </div>
                        <button type = "submit"class="btn btn-primary" style="margin-left:500px;">
                                <a style="color:white" href="{{ route('user.profile') }}">Back to profile</a></button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
