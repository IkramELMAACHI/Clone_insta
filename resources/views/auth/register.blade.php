@extends('layouts.authlayout')

@section('form')

<div class="login100-more col-md-5" style="width :500px ; background-size : 100% 100% ; background-image: url('{{ asset('/img/Home.jpg') }}');">

</div>

<div class="col-md-5 rounded" style="height: 500px"> 
<form method="POST" action="{{ route('register') }}" class="login100-form validate-form  m-b-40">
    @csrf
   
    <span class="login100-form-title p-b-10"> 
        <img src="{{asset('img/logo3.png')}}" alt="" style="width :100px">
    </span>

    {{-- <span class="login100-form-title2 p-b-34">
        Sign up to see photos and videos from your friends.
    </span> --}}

    <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
        <input id="email" type="email" class="input100 @error('email') is-invalid @enderror"
         name="email" placeholder="Email" >
        <span class="focus-input100"></span>
        @error('email')
        <span class="invalid-feedback m-l-16" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

    <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
        <input id="name" type="text" class="input100 @error('name') is-invalid @enderror" name="name"
            placeholder="Full Name" value="{{ old('name') }}" autocomplete="name" autofocus>
        <span class="focus-input100"></span>
        @error('name')
        <span class="invalid-feedback m-l-16" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>


    <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
        <input id="username" type="text" class="input100 @error('username') is-invalid @enderror" name="username"
            placeholder="Username" value="{{ old('username') }}" autocomplete="username" autofocus>
        <span class="focus-input100"></span>
        @error('username')
        <span class="invalid-feedback m-l-16" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>


    <div class="wrap-input100 validate-input m-b-20" data-validate="Type password">
        <input id="password" type="password" class="input100 @error('password') is-invalid @enderror" name="password"
            placeholder="Password" autocomplete="new-password">
        <span class="focus-input100"></span>
        @error('password')
        <span class="invalid-feedback m-l-16" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

    <div class="wrap-input100 validate-input m-b-20" data-validate="Type password">
        <input id="password-confirm" type="password" class="input100" name="password_confirmation"
            placeholder="Confirm Password" autocomplete="new-password">
        <span class="focus-input100"></span>
        @error('password-confirm')
        <span class="invalid-feedback m-l-16" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>


    <div class="container-login100-form-btn">
        <button type="submit" class="login100-form-btn">
            Register
        </button>
    </div>

    <div class="w-full text-center m-t-49">
        <span class="txt1">
            Have an account?
        </span>
        <a href="{{ route('login') }}" class="txtlink2">
            Log in
        </a>

    </div>

</form>
</div>
@endsection