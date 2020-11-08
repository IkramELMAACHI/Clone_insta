<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{-- Title --}}
    <title>{{ config('app.name', 'InstaClone') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    {{-- <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet"> --}}
    <title> Instagram </title>
    <link rel="shortcut icon" type="image/png" href=" {!! asset('svg/instagam.svg') !!} " />
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    {{-- <link href="{{ asset('css/util.css') }}" rel="stylesheet"> --}}
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel = "icon" href ="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png" 
            type = "image/x-icon"> 
            {{-- <i class="fab p-1 rounded-lg  fa-2x fa-instagram" style=" color:white ; background: linear-gradient(45deg, #405de6, #5851db, #833ab4, #c13584, #e1306c, #fd1d1d);"></i> --}}

</head>

<body>
    <style>
        @font-face {
    font-family: OptimusPrinceps;
    src: url('{{ public_path('fonts/Amsterdam-VwYy.ttf') }}');
}
.search {
  position: relative;
  color: rgba(160,174,192,1);
}

.search-input {
  color: rgba(160,174,192,1);
  border-color: rgba(203,213,224,1);
  
  text-align: center;
  padding: .25rem .8rem;
  border-radius: 20px;
}

.search-input:focus {
  text-align: left;
  border-radius: 20px;
  border-color: rgba(203,213,224,1);
  
}

.search-input:focus + .fa-search {  
  display: none;

}
.search-input:focus {
  outline: none; 
}
.fa-search {
  position: absolute;
  top: 0.6rem;
  left: .8rem;
}

 </style>
    <div id="app">

        <!-- Header section -->
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm pos-fixed left-0 right-0 zindex">
            <div class="container px-2">
 
                <a class="navbar-brand" href="{{ url('/') }}"> 
                    <i class="fab p-1 rounded-lg  fa-2x fa-instagram" style=" color:white ; background: linear-gradient(45deg, #405de6, #5851db, #833ab4, #c13584, #e1306c, #fd1d1d);"></i>
                    <span style="border-left:solid 2px #333; font-family: 'Lobster', cursive;  font-size : 20px " class="pl-3"> Instagram </span>
                </a>
                <!-- Links -->
                <div class="navbar-collapse collapse justify-content-stretch" id="navbar5"> 
                   <form action="/search" method="POST" role="search" class="m-auto d-inline w-80">
                        @csrf 
                            <div class="search">
                                <input class="search-input"  name="q" type="search"  placeholder='Search' aria-label=" Search" />
                               <i class="fa fa-search"></i>
                             </div> 
                    </form>   

                    <ul class="navbar-nav">
                        <!-- Authentication Links -->
                        @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                        @endif
                        @else
                        <li class="nav-item px-2 {{ Route::is('post.index') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ url('/') }}">
                                <i class="fas fa-home fa-2x"></i>
                            </a>
                        </li>
                        <li class="nav-item px-2 {{ Route::is('post.explore') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ url('/explore') }}">
                                <i class="far fa-compass fa-2x"></i>
                            </a>
                        </li>
                        <li class="nav-item px-2 ">
                            <a class="nav-link" href="#">
                                <i class="far fa-heart fa-2x"></i>
                            </a>
                        </li>
                        <li class="nav-item px-2">
                            <a href="/profile/{{Auth::user()->username}}" class="nav-link"
                                style="width:50px; height: 32px; padding-top: 6px;margin-right:-10px">
                                <img src="{{ asset(Auth::user()->profile->getProfileImage())  }}"
                                    class="rounded-circle w-100 border">
                                {{-- <i class="far fa-user fa-2x"></i> --}}
                            </a>
                        </li>

                        <!-- Add more dropdown in Profile Page -->
                        <!-- To get current routedd(Route::currentRouteName())  -->
                        {{-- @if (Route::is('profile.index')) --}}

                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre></a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">

                                @can('update', Auth::user()->profile)
                                <a class="dropdown-item" href="/p/create" role="button">
                                    Add New Post
                                </a>
                                @endcan

                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                    style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>
                        {{-- @endif --}}

                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4 bg-body" style="min-height:100vh">
            @yield('content')
        </main>
    </div>

    {{-- @yield('exscript') --}}

</body>

</html>