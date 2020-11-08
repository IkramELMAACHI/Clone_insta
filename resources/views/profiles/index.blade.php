@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row ">
        <div class="col-3 p-5">
            <img src="{{ asset($user->profile->getProfileImage()) }}" class="rounded-circle w-100">
        </div>

        <div class="col-9 pt-5">
            <div class="d-flex align-items-center">
                <h1>{{ $user->username }}</h1>

                @can('update', $user->profile)
                <a class="btn btn-outline-secondary ml-3" href="/profile/{{$user->username}}/edit" role="button">
                    Edit Profile
                </a>
                @else
                {{-- <a class="btn btn-primary ml-3" href="#" role="button">
                        Follow
                    </a> --}}
                <follow-button user-id="{{ $user->username }}" follows="{{ $follows }}"></follow-button>
                @endcan

            </div>
            <div class="d-flex">
                <div class="pr-5"><strong> {{ $postCount }} </strong> posts</div>
                <div class="pr-5"><strong> {{ $followersCount }} </strong> followers</div>
                <div class="pr-5"><strong> {{ $followingCount }} </strong> following</div>
            </div>
            <div class="pt-4 font-weight-bold ">{{ $user->name }}</div>
            <div>
                {!! nl2br(e($user->profile->bio)) !!}
                {{-- <pre>{{ $user->profile->bio }}</pre> --}}
            </div>
            <div class="font-weight-bold">
                <a href="{{ $user->profile->website }}" target="_blanc">
                    {{ $user->profile->website }}
                </a>
            </div>

        </div>
    </div>
    <div class="row d-flex  justify-content-center border-top">
        <div class="row Post mx-5" style = 'border-top :1px solid  '>
            <div>
                <svg aria-label="Posts" class="_8-yf5 mr-2 " fill="#999999" height="12" viewBox="0 0 48 48" width="12">
                    <path clip-rule="evenodd" d="M45 1.5H3c-.8 0-1.5.7-1.5 1.5v42c0 .8.7 1.5 1.5 1.5h42c.8 0 1.5-.7 1.5-1.5V3c0-.8-.7-1.5-1.5-1.5zm-40.5 3h11v11h-11v-11zm0 14h11v11h-11v-11zm11 25h-11v-11h11v11zm14 0h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11zm14 28h-11v-11h11v11zm0-14h-11v-11h11v11zm0-14h-11v-11h11v11z" fill-rule="evenodd">
                        </path>
                    </svg>
            </div>
        <h6 class="pt-1 " >POSTS</h6>   
        {{-- <icon-post>POSTS </icon-post> --}}
        </div>
        <div class="row  mx-5" >
            <div>
                <svg aria-label="Posts" class="_8-yf5 mr-2 " fill="#262626" height="12" viewBox="0 0 48 48" width="12">
                    <path
                        d="M41 10c-2.2-2.1-4.8-3.5-10.4-3.5h-3.3L30.5 3c.6-.6.5-1.6-.1-2.1-.6-.6-1.6-.5-2.1.1L24 5.6 19.7 1c-.6-.6-1.5-.6-2.1-.1-.6.6-.7 1.5-.1 2.1l3.2 3.5h-3.3C11.8 6.5 9.2 7.9 7 10c-2.1 2.2-3.5 4.8-3.5 10.4v13.1c0 5.7 1.4 8.3 3.5 10.5 2.2 2.1 4.8 3.5 10.4 3.5h13.1c5.7 0 8.3-1.4 10.5-3.5 2.1-2.2 3.5-4.8 3.5-10.4V20.5c0-5.7-1.4-8.3-3.5-10.5zm.5 23.6c0 5.2-1.3 7-2.6 8.3-1.4 1.3-3.2 2.6-8.4 2.6H17.4c-5.2 0-7-1.3-8.3-2.6-1.3-1.4-2.6-3.2-2.6-8.4v-13c0-5.2 1.3-7 2.6-8.3 1.4-1.3 3.2-2.6 8.4-2.6h13.1c5.2 0 7 1.3 8.3 2.6 1.3 1.4 2.6 3.2 2.6 8.4v13zM34.6 25l-9.1 2.8v-3.7c0-.5-.2-.9-.6-1.2-.4-.3-.9-.4-1.3-.2l-11.1 3.4c-.8.2-1.2 1.1-1 1.9.2.8 1.1 1.2 1.9 1l9.1-2.8v3.7c0 .5.2.9.6 1.2.3.2.6.3.9.3.1 0 .3 0 .4-.1l11.1-3.4c.8-.2 1.2-1.1 1-1.9s-1.1-1.2-1.9-1z">
                    </path>
                </svg>
            </div>
            <h6 class="pt-1">IGTV</h6>
        </div>

        <div class="row mx-5">
            <div>
                <svg aria-label="Tagged" class="_8-yf5 mr-2 " fill="#999999" height="12" viewBox="0 0 48 48" width="12">
                    <path d="M41.5 5.5H30.4c-.5 0-1-.2-1.4-.6l-4-4c-.6-.6-1.5-.6-2.1 0l-4 4c-.4.4-.9.6-1.4.6h-11c-3.3 0-6 2.7-6 6v30c0 3.3 2.7 6 6 6h35c3.3 0 6-2.7 6-6v-30c0-3.3-2.7-6-6-6zm-29.4 39c-.6 0-1.1-.6-1-1.2.7-3.2 3.5-5.6 6.8-5.6h12c3.4 0 6.2 2.4 6.8 5.6.1.6-.4 1.2-1 1.2H12.1zm32.4-3c0 1.7-1.3 3-3 3h-.6c-.5 0-.9-.4-1-.9-.6-5-4.8-8.9-9.9-8.9H18c-5.1 0-9.4 3.9-9.9 8.9-.1.5-.5.9-1 .9h-.6c-1.7 0-3-1.3-3-3v-30c0-1.7 1.3-3 3-3h11.1c1.3 0 2.6-.5 3.5-1.5L24 4.1 26.9 7c.9.9 2.2 1.5 3.5 1.5h11.1c1.7 0 3 1.3 3 3v30zM24 12.5c-5.3 0-9.6 4.3-9.6 9.6s4.3 9.6 9.6 9.6 9.6-4.3 9.6-9.6-4.3-9.6-9.6-9.6zm0 16.1c-3.6 0-6.6-2.9-6.6-6.6 0-3.6 2.9-6.6 6.6-6.6s6.6 2.9 6.6 6.6c0 3.6-3 6.6-6.6 6.6z">
                        </path></svg>
            </div>
           <h6 class="pt-1">TAGGED</h6>
        </div>
    
        {{-- 
        <div>
            <i class="fas fa-user-tag"> </i>
        </div> --}}
    </div>
    <div class="row pt-4  ">

        @forelse ($user->posts as $post)
        <div class="col-4 col-md-4 mb-4 align-self-stretch">
            <a href="/p/{{ $post->id }}">
                <img class="img border" height="300" src="{{ asset("storage/$post->image") }}">
            </a>
        </div>
        @empty
        <div class="col-12 d-flex justify-content-center text-muted">
            <div class="card border-0 text-center bg-transparent">
                <img src="{{asset('img/noimage.png')}}" class="card-img-top" alt="...">
                <div class="card-body ">
                    <h1>No Posts Yet</h1>
                </div>
            </div>
        </div>
        {{-- <div class="col-12  d-flex flex-column  align-items-center text-muted">
                <i class="fas fa-camera-retro fa-9x"></i>
                <h1 class="mt-2">No Posts Yet</h1>
            </div> --}}
        @endforelse

    </div>
</div>
@endsection