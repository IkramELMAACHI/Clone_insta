@extends('layouts.app')

@section('content')

<div class="container m-t-50">
    <div class="row">

        {{-- Main section --}}
        <div class="col-md-8 px-2">

            @forelse ($posts as $post)
            @php
            $state=false;
            @endphp

            <div class="card mx-auto custom-card mb-5" id="prova">
                {{-- {{dd($post->id)}} --}}
                <!-- Card Header -->
                <div class="card-header d-flex justify-content-between align-items-center bg-white px-3 py-3">
                    <div class="d-flex align-items-center" id="{{$post->id}}">
                        <a href="/profile/{{$post->user->username}}" style="width: 32px; height: 32px;">
                            <img src="{{asset($post->user->profile->getProfileImage()) }}" class="rounded-circle w-100">
                        </a>
                        <a href="/profile/{{$post->user->username}}" class="my-0 ml-3 text-dark text-decoration-none">
                            {{ $post->user->name }}
                        </a>
                    </div>
                    <div class="">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-link text-muted " data-toggle="modal"
                            data-target="#unique{{$loop->iteration}}">
                            <i class="fas fa-ellipsis-h"></i>
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="unique{{$loop->iteration}}" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                                <div class="modal-content">
                                    <ul class="list-group">
                                        <a href="#">
                                            <li class="btn list-group-item">Unfollow</li>
                                        </a>
                                        <a href="/p/{{ $post->id }}">
                                            <li class="btn list-group-item">Go to post</li>
                                        </a>
                                        <a href="#">
                                            <li class="btn list-group-item">Cancel</li>
                                        </a>
                                    </ul>

                                    {{-- <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                        {{-- <a href="#" class="text-muted ">
                                <i class="fas fa-ellipsis-h"></i>
                            </a> --}}
                    </div>
                </div>
                <!-- Card Image -->
                <a href="/p/{{ $post->id }}">
                    <img class="card-img" src="{{ asset("storage/$post->image") }}" alt="post image"
                        style="max-height: 767px">
                </a>
                <div class="card-body px-3 py-2 ">

                    <div class="d-flex flex-row  ">
                        <form method="POST" action="{{url()->action('LikeController@update2', ['like'=>$post->id])}}">
                            @csrf
                            @if (true)
                            <input id="inputid" name="update" type="hidden" value="1">
                            @else
                            <input id="inputid" name="update" type="hidden" value="0">
                            @endif

                            @if($post->like->isEmpty())
                            <button type="submit" class="btn pl-0">
                                <i class="far fa-heart fa-2x"></i>
                            </button>
                            @else

                            @foreach($post->like as $likes)
                            @if($likes->user_id==Auth::User()->id && $likes->State==true)
                            {{-- {{dd($post)}} --}}
                            @php
                            $state=true
                            @endphp
                            @endif


                            @endforeach
                            @if( $state)
                            <button type="submit" class="btn pl-0">
                                <i class="fas fa-heart fa-2x" style="color:red"></i>
                            </button>

                            @else
                            <button type="submit" class="btn pl-0">
                                <i class="far fa-heart fa-2x"></i>
                            </button>
                            @endif
                            @endif

                            <button name="msg" value="0" type="submit" class="btn">
                                <i class="far fa-comment fa-2x"></i>
                            </button>
                            <button type="submit" class="btn">
                                <svg aria-label="Share Post" class="_8-yf5 " fill="#262626" height="24"
                                    viewBox="0 0 48 48" width="24">
                                    <path
                                        d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z">
                                    </path>
                                </svg>
                            </button>
                        </form>
                    </div>
                    <div class="flex-row">

                        <!-- Likes -->
                        {{-- @if ($post->likes > 0) --}}
                        <h6 class="card-title">
                            {{-- {{dd($post->like)}} --}}
                            <strong> {{ count($post->like->where('State',true)) }} likes</strong>
                        </h6>
                        {{-- @endif --}}

                        {{-- Post Caption --}}
                        <p class="card-text">
                            <a href="/profile/{{$post->user->username}}" class="my-0 text-dark text-decoration-none">
                                <strong>{{ $post->user->name }}</strong>
                            </a>
                            {{ $post->caption }}
                        </p>

                        <!-- Comment -->
                        <div class="comments">
                            @foreach ($post->comments as $comment)
                            @if ($loop->iteration > 3)
                            @break
                            @endif



                            <div class="d-flex ">
                                <p class="mb-1"><strong>{{ $comment->user->name }}</strong> {{ $comment->body }}</p>
                                @if( Auth::user()->id == $comment->user_id )
                                <button type="button" class="btn btn-link text-muted " data-toggle="modal"
                                    data-target="#unique{{$comment->id}}">
                                    <i class="fas fa-ellipsis-h"></i>
                                </button>
                                @endif
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="unique{{$comment->id}}" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                                    <div class="modal-content">
                                        <ul class="list-group">
                                            <li class="btn list-group-item" type="submit">
                                                <form
                                                    action="{{ url()->action('CommentController@destroy', ['comment'=>$comment->id]) }}"
                                                    method="POST">
                                                    <input name="_method" type="hidden" value="DELETE">
                                                    {{ csrf_field() }}
                                                    <button style="    border: aqua;
                                                    background-color: white;">
                                                        Delete Comment
                                                    </button>
                                                </form>
                                            </li>
                                           
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>

                        <!-- Created At  -->
                        <p class="card-text text-muted">{{ $post->created_at->diffForHumans() }}</p>
                    </div>
                </div>

                <!-- Card Footer -->
                <div class="card-footer p-0">
                    <!-- Add Comment -->
                    <form action="{{ action('CommentController@store') }}" method="POST">
                        @csrf
                        <div class="form-group mb-0  text-muted">
                            <div class="input-group is-invalid" id="{{$post->id}}">
                                <input type="hidden" name="post_id" value="{{$post->id}}" style="height:30px">
                                <textarea class="form-control" id="body" name='body' rows="1"
                                    placeholder="Add a comment..."></textarea>
                                <div class="input-group-append">
                                    <button class="btn btn-md btn-outline-info" type="submit">Post</button>
                                </div>
                            </div>
                        </div>
                    </form>

                    {{-- https://laravelcollective.com/docs/6.0/html#installation --}}
                    {{-- https://laravelcollective.com/docs/6.0/html#installation --}}
                    {{-- @if (Auth::check())
                            {{ Form::open(['route' => ['comments.store'], 'method' => 'POST']) }}
                    <p>{{ Form::textarea('body', old('body')) }}</p>
                    {{ Form::hidden('post_id', $post->id) }}
                    <p>{{ Form::submit('Send') }}</p>
                    {{ Form::close() }}
                    @endif --}}

                </div>

            </div>

            @empty

            <div class="d-flex justify-content-center p-3 py-5 border bg-white">
                <div class="card border-0 text-center">
                    {{-- <img src="{{asset('img/nopost.png')}}" class="card-img-top" alt="..." style="max-width: 330px">
                    --}}
                    <div class="card-body ">
                        <h3>No result Found</h3>
                        {{-- <p class="card-text text-muted">We couldn't find any post, Try to follow someone</p> --}}
                    </div>
                </div>
            </div>

            @endforelse

        </div>

        {{-- Aside Section --}}
        <div class="sidebar col-md-4 h-100 py-3 fixed-right ">
            <!-- User Info -->
            <div class="d-flex align-items-center mb-3">
                <a href="/profile/{{Auth::user()->username}}" style="width: 56px; height: 56px;">
                    <img src="{{ asset(Auth::user()->profile->getProfileImage()) }}" class="rounded-circle w-100">
                </a>
                <div class='d-flex flex-column pl-3'>
                    <a href="/profile/{{Auth::user()->username}}" class='h6 m-0 text-dark text-decoration-none'>
                        <strong class="text14">{{ auth()->user()->username }}</strong>
                    </a>
                    <small class="text-muted text12">{{ auth()->user()->name }}</small>
                </div>
            </div>

            <!-- Suggestions -->
            <div class='mb-4' style="width:65%">


                @php
                $suggess = false ;
                if( count($sugg_users) !== 0 ){
                $suggess = true ;
                }
                @endphp

                @if($suggess )

                <h6 class='text-secondary'>Suggestions For You</h6>
                @endif
                <!-- Suggestion Profiles-->
                @foreach ($sugg_users as $sugg_user)

                @if ($loop->iteration == 6)
                @break
                @endif
                <div class='suggestions p-2'>
                    <div class="d-flex align-items-center  justify-content-between">
                        <div class="col-md-8 p-0">
                            <div class="d-flex align-items-center ">
                                <a href="/profile/{{$sugg_user->username}}">
                                    <img src="{{ asset($sugg_user->profile->getProfileImage()) }}"
                                        class="rounded-circle " style="width: 32px; height: 32px;">
                                </a>
                                <div class='d-flex flex-column pl-2'>
                                    <a href="/profile/{{$sugg_user->username}}"
                                        class='h6 m-0 text-dark text-decoration-none'>
                                        <strong class="text14">{{ $sugg_user->name}}</strong>
                                    </a>
                                    <small class="text-muted">Popular </small>
                                </div>
                            </div>
                        </div>
                        <follow-button user-id="{{ $sugg_user->username }}"
                            follows="{{ (auth()->user()) ? auth()->user()->following->contains($sugg_user->profile) : false }}">
                        </follow-button>

                    </div>
                </div>
                @endforeach

            </div>

            <!-- CopyRight -->
            <div>
                <span style='color: #c7c7c7;'>© 2020 InstaClone from <a href="https://github.com/IkramELMAACHI"> EL
                        MAACHI </a> </span>
            </div>
        </div>

    </div>

</div>
@endsection

{{--
@section('exscript')
    <script>

        document.addEventListener('submit', function(e){
            e.preventDefault()
            console.log('script run... ');
            var btn = e.submitter;
            console.log(btn.name)

            if (btn.name === 'liked'){
                btn.classList.toggle('text-danger');
                btn.value = !(btn.value == 'true');
            }

        })

            " action="{{url()->action('PostsController@updatelikes', ['post'=>$post->id])}}">
url = http://localhost:8000/p/{post}
(async () => {
const rawResponse = await fetch('http://localhost:8000/p/', {
method: 'POST',
headers: {
'Accept': 'application/json',
'Content-Type': 'application/json'
},
body: JSON.stringify({a: 1, b: 'Textual content'})
});
const content = await rawResponse.json();

console.log(content);
})();

</script>
@endsection --}}