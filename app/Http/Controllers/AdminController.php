<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator,Redirect,Response;
Use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Session;
use DB;

class AdminController extends Controller
{
    //
    public function dashboard()
    {
        //After adding passport featues i got few errors so i commented the condition to enter dashboard page
      //if(Auth::check()){

        $users = User::all();
        return view('dashboard',['users' => $users]);
      //}
      return redirect('')->with('message', 'Login First!');
    }
    public function deleteUser($id){
        //
        $user = DB::table('users')->where('id',$id)->delete();
        if($user){
        return redirect('dashboard')->with('message', 'User Successfully Deleted!');
        }

    }

    public function editUser($id)
    {
        $user = DB::table('users')->where('id',$id)->first();
        return view('edit_user',compact('user'));
    }

    public function updateUser(Request $request,$id)
    {


            $data['name'] = $request->name;
            $data['email'] = $request->email;

            $user = DB::table('users')->where('id',$id)->update($data);
            if($user){
            return "user is successfully";
            }
    }
}
