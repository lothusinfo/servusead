@extends(getTemplate() . '.layouts.app')

@section('content')
    <div class="container">
        @if (!empty(session()->has('msg')))
            <div class="alert alert-info alert-dismissible fade show mt-30" role="alert">
                {{ session()->get('msg') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        <div class="row login-container">

            <div class="col-12 col-md-6 pl-0">
                <img src="{{ getPageBackgroundSettings('login') }}" class="img-cover" alt="Login">
            </div>
            <div class="col-12 col-md-6">
                <div class="login-card">
                    <h1 class="font-20 font-weight-bold">{{ trans('auth.login_h1') }}</h1>

                    <form method="Post" action="/login" class="mt-35">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label class="input-label" for="username">{{ trans('auth.email_or_mobile') }}:</label>
                            <input name="username" type="text"
                                class="form-control @error('username') is-invalid @enderror" id="username"
                                value="{{ old('username') }}" aria-describedby="emailHelp">
                            @error('username')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="input-label" for="password">{{ trans('auth.password') }}:</label>
                            <div class="d-flex align-items-center"><input name="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" id="password"
                                    aria-describedby="passwordHelp">
                                <div class="rounded p-5"><img class="olho" style="cursor: pointer;"
                                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABDUlEQVQ4jd2SvW3DMBBGbwQVKlyo4BGC4FKFS4+TATKCNxAggkeoSpHSRQbwAB7AA7hQoUKFLH6E2qQQHfgHdpo0yQHX8T3exyPR/ytlQ8kOhgV7FvSx9+xglA3lM3DBgh0LPn/onbJhcQ0bv2SHlgVgQa/suFHVkCg7bm5gzB2OyvjlDFdDcoa19etZMN8Qp7oUDPEM2KFV1ZAQO2zPMBERO7Ra4JQNpRa4K4FDS0R0IdneCbQLb4/zh/c7QdH4NL40tPXrovFpjHQr6PJ6yr5hQV80PiUiIm1OKxZ0LICS8TWvpyyOf2DBQQtcXk8Zi3+JcKfNafVsjZ0WfGgJlZZQxZjdwzX+ykf6u/UF0Fwo5Apfcq8AAAAASUVORK5CYII=" />
                                </div>
                            </div>

                            @error('password')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-primary btn-block mt-20">{{ trans('auth.login') }}</button>
                    </form>

                    {{-- <div class="text-center mt-20">
                        <span class="badge badge-circle-gray300 text-secondary d-inline-flex align-items-center justify-content-center">{{ trans('auth.or') }}</span>
                    </div>

                    <a href="/google" target="_blank" class="social-login mt-20 p-10 text-center d-flex align-items-center justify-content-center">
                        <img src="/assets/default/img/auth/google.svg" class="mr-auto" alt=" google svg"/>
                        <span class="flex-grow-1">{{ trans('auth.google_login') }}</span>
                    </a>

                    <a href="{{url('/facebook/redirect')}}" target="_blank" class="social-login mt-20 p-10 text-center d-flex align-items-center justify-content-center ">
                        <img src="/assets/default/img/auth/facebook.svg" class="mr-auto" alt="facebook svg"/>
                        <span class="flex-grow-1">{{ trans('auth.facebook_login') }}</span>
                    </a> --}}

                    <div class="mt-30 text-center">
                        <a href="/forget-password" target="_blank">{{ trans('auth.forget_your_password') }}</a>
                    </div>

                    <div class="mt-20 text-center">
                        <span>{{ trans('auth.dont_have_account') }}</span>
                        <a href="/register" class="text-secondary font-weight-bold">{{ trans('auth.signup') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts_bottom')
    <script>
        $(".olho").mousedown(function() {
            $("#password").attr("type", "text");
        });

        $(".olho").mouseup(function() {
            $("#password").attr("type", "password");
        });
    </script>
@endpush
