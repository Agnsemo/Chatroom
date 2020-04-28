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

    /*public function edit(User $user)
    {   
        $user = Auth::user();
        return view('users.edit', compact('user'));
    }*/

    public function update(Request $request)
    { 
        $user = User::find(Auth::user()->id);
        if ($user){
            $validate =null;
            if(Auth::user()->email === $request['email'])
            {
                $validate = $request->validate([
                    'name' => 'required|min:2',
                    'email' => 'required|email'
                ]);
            }
            else{
                $validate = $request->validate([
                    'name' => 'required|min:2',
                    'email' => 'required|email|unique:users'
                ]);
            }

            if ($validate){
                $user->name = $request['name'];
                $user->email = $request['email'];

                $user->save();

                $request-> session()->flash('success', 'Your details have now been updated!');
                return redirect()-> back();
            }
            else{return redirect()-> back();}
        }
        else{
            return redirect()->back();
        }
        /*$this->validate(request(), [
            'name' => 'required',
            'email' => 'required|email|unique:users'
        ]);

        $user->name = request('name');
        $user->email = request('email');

        $user->save();
        return back();*/
    }

    //public function edit($id)
    public function edit()
    {

        //$user = User::find($id);
        //return view('user.edit', compact('user', 'id'));
        //return view('user.edit');
        
        if (Auth::user())
        {
            $user = User::find(Auth::user()->id);
            if ($user){
            return view('user.edit')-> withUser($user);
            }else{
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
        
    }

}
