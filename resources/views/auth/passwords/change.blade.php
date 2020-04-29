@extends('layouts.app')

@section('content')
<div class="container">
        @if( session('errorMsg'))
            <div class="alert alert-icon alert-danger alert-dismissible" role="alert"> 
                <button type="button" class="close" data-dismiss="alert" 
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <i class="mdi mdi-check-all"></i>
                <strong>Oh no! </strong>{{ session('errorMsg') }}
            </div> 
        @endif
        
    <div class="row justify-content-center">
        
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Update Password') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.update') }}" style="padding:25px">
                        @csrf

                        <div class="form-group row">
                            <label for="oldpassword" class="col-md-4 col-form-label text-md-right" style="padding-top:25px">{{ __('Current Password') }}</label>

                            <div class="col-md-6" style="padding-top:20px">
                                <input id="oldpassword" type="password" class="form-control{{ $errors->has('oldpassword') ? ' is-invalid' : '' }}" name="oldpassword" required autofocus>

                                @if ($errors->has('oldpassword'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('oldpassword') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>



                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('New Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Repeat new Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-info">
                                    {{ __('Update') }}
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
