@extends('layouts.authlayout')

@section('form')

<div class="login100-more col-md-5" style="background-size : 100% 85% ; background-image: url('{{ asset('/img/Home.jpg') }}');">

</div>

<div class="col-md-5 rounded" style="height: 420px"> 

<form method="POST" action="{{ route('login') }}" class="h-100 login100-form validate-form">
    @csrf
    <span class="login100-form-title p-b-10">

        <img src="{{asset('img/logo3.png')}}" alt="" style="width :100px">

    </span>


    @error('email')
    <div class="alert alert-danger w-100 mb-1">{{ $message }}</div>
    @enderror
    <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
        <input id="email" class="input100 @error('email') is-invalid @enderror" type="email" name="email"
            placeholder="Email">
        <span class="focus-input100"></span>
    </div>

    @error('password')
    <div class="alert alert-danger w-100 mb-1">{{ $message }}</div>
    @enderror
    <div class="wrap-input100 validate-input m-b-20" data-validate="Type password">
        <input id="password" class="input100 @error('password') is-invalid @enderror" type="password" name="password"
            placeholder="Password">
        <span class="focus-input100"></span>
    </div>

    <div class="container-login100-form-btn">
        <button type="submit" class="login100-form-btn">
            Sign in
        </button>
    </div>

    <div class="w-full text-center p-t-27 p-b-50">
        @if (Route::has('password.request'))
        {{-- <span class="txt1">
            Forgot
        </span> --}}

        <a href="{{ route('password.request') }}" class="txtlink">
            Forgot password?
        </a>
        @endif
    </div>

    <div class="w-full text-center">
        <span class="txt1">
            Don't have account?
        </span>
        <a href="{{ route('register') }}" class="txtlink2">
            Sign up
        </a>
    </div>
</form>

</div>
@endsection