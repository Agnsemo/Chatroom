<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class SearchController extends Controller
{
	public function search(Request $request) 
	{
		$search = $request->get('search');
		$users = DB::table('users')->where('name', 'like', '%'.$search.'%')->paginate(10);
        return view('home', ['users' => $users]);
	}
}