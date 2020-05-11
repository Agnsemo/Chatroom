@extends('layouts.app')

@section('content')
<body style="background-color:#F4EA74;">
 <div class="row justify-content-center">
			<div class="col-md-5" >
				<form action="/search" method="get">
					<div class="input-group">
						<input type="search" name="/search" class="form-control">
						<span class="input-group-prepend" >
								<button type="submit" class="btn btn-primary">Search</button>
						</span>
			</div> 
			</div>
			</div>
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
