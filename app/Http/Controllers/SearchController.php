<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class SearchController extends Controller
{
	public function search(Request $request) 
	{
		$q = $reguest->get( 'q' );
		$user = User::where('name','LIKE','%'.$q.'%')->orWhere('email','LIKE','%'.$q.'%')->get();
		if(count($user) > 0)
			return view('home')->withDetails($user)->withQuery ( $q );
		else return view ('home')->withMessage('No Details found. Try to search again !');
	}
}