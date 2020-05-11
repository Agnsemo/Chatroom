@extends('layouts.app')

@section('content')
<body style="background-color:#F4EA74;">
 <form action="/search" method="POST" role="search">
    {{ csrf_field() }}
    <div class="input-group">
        <input type="text" class="form-control" name="q"
            placeholder="Search users"> <span class="input-group-btn">
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search"></span> Search
            </button>
        </span>
    </div>
</form>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div class="card"> 
                <div class="card-body" id="app">
                    <chat-app :user="{{ auth()->user() }}"></chat-app>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
@endsection
