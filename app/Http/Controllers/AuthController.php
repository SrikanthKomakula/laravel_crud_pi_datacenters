<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator,Redirect,Response;
Use App\User;
Use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Session;

class AuthController extends Controller
{

    public function index()
    {
        return view('login');
    }

    public function registration()
    {
        return view('registration');
    }

    public function postLogin(Request $request)
    {
        request()->validate([
        'email' => 'required',
        'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');


        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return redirect('')->with('message', 'Login Failed');

        }

        $authto =  $user->createToken('Auth Token')->accessToken;
        Auth::attempt($credentials);
            return redirect()->intended('dashboard')->with('authtoken', $authto);;
        //return redirect('dashboard')->with('authtoken', 'authto');


    }

    public function postRegistration(Request $request)
    {
        request()->validate([
        'name' => 'required',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:6',
        ]);
        $mailData = [
            'name'=> $request->name,
            'email' => $request->email,
            'password' => $request->password
        ];

        $data = $request->all();
        $check = $this->create($data);

        //\Mail::to($request->email)->send(new \App\Mail\WelcomeMail($mailData));
        //Mail::to($request->email)->send(new WelcomeMail($mailData));
        return redirect('')->with('message', 'User Successfully Registered!');
    }



    public function create(array $data)
    {
      return User::create([
        'name' => $data['name'],
        'email' => $data['email'],
        'password' => Hash::make($data['password'])
      ]);
    }

    public function logout() {
        Session::flush();
        Auth::logout();
        return Redirect('/');
    }
}
