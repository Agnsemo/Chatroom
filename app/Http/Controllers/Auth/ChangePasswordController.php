<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ChangePasswordController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
            return view('auth.passwords.change');
    }

    public function changePassword(Request $request)
    {
            $this->validate($request,[
                'oldpassword' => 'required|max:20',
                'password' => 'required|confirmed|max:20'
            ]);

            $hashedPassword = Auth::user()->password;
            if (Hash::check($request->oldpassword,$hashedPassword)){
                $user = User::find(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();
                Auth::logout();
                return redirect()->route('login')->with('successMsg',"Your password is changed successfully");
            }
            else{
                return redirect()->back()->with('errorMsg', "Your current password is invalid");
            }
            
    }
}