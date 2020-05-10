<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use Illuminate\Support\Facades\Auth;

class UplaodfileController extends Controller
{
    public function index()
    {
        return view('user.upload');
    }

    public function upload(Request $request)
    {
        $user = User::find(Auth::user()->id);
     $this->validate($request, [
      'select_file'  => 'required|image|mimes:jpg,png,gif|max:2048'
     ]);

     $image = $request->file('select_file');

     $new_name = rand() . '.' . $image->getClientOriginalExtension();
     $image->move(public_path('images'), $new_name);

     // nusiusti path name i dd ../image/&new_name

     $user->profile_image = $new_name;

        $user->save();
     return back()->with('success', 'Image Uploaded Successfully')->with('path', $new_name);
    }
}
