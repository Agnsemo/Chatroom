<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('user.profile');
    }

    //public function edit($id)
    public function edit()
    {
        //
        return view('user.edit');
        
        /**if (Auth::user())
        {
            $user = User::find(Auth::user()->id);
            if ($user){
            return view('user.edit')-> withUser($user);
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }**/
        
    }

    public function update($id){}
}
