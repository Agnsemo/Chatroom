@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <div class="card">
			<div class="card-header" style="text-align:rigth">Search users by username</div>
			<div class="col-md-20">
				<form action="/search" method="get">
					<div class="input-group">
						<input type="search" name="/search" class="form-control">
						<span class="input-group-prepend" >
								<button type="submit" class="btn btn-primary">Search</button>
						</span>
			</div> 
                <div class="card-body" id="app">
                    <chat-app :user="{{ auth()->user() }}"></chat-app>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
