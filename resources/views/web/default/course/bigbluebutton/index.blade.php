@extends('web.default.layouts.app',['appFooter' => false, 'appHeader' => false])

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/agora/agora.css"/>
@endpush


@section('content')

    <div class="agora-page">
        <div class="agora-navbar d-flex align-items-center justify-content-between shoa px-35 py-10">
            <div class="">
                <a class="navbar-brand d-flex align-items-center justify-content-center mr-0" href="/">
                    @if(!empty($generalSettings['logo']))
                        <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo">
                    @endif
                </a>

                <span class="font-weight-bold border-left border-gray200 ml-10 pl-10">{{ $session->webinar->title }}</span>
            </div>
        </div>

        <div class="d-flex flex-column flex-lg-row">
            <div class="agora-stream flex-grow-1 bg-info-light p-15">
                {{-- {{ var_dump($url) }} --}}
                {{-- <iframe src="{{ $url }}" width="100%" height="500" allow="camera *;microphone *;display-capture *;" allowfullscreen></iframe> --}}

                <IFRAME src="{{ $url }}" allow="geolocation *; microphone *; camera *; display-capture *;" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" sandbox="allow-same-origin allow-scripts allow-modals allow-forms" width="100%" height="500" style='border:0' scrolling="no"></IFRAME>
            </div>
        </div>
    </div>
@endsection
