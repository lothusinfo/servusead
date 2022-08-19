@extends('web.default.layouts.app', ['appFooter' => false, 'appHeader' => false])

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/agora/agora.css" />
@endpush


@section('content')
    <div class="agora-page">
        <IFRAME src="{{ $url }}" allow="geolocation *; microphone *; camera *; display-capture *;" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"
            sandbox="allow-same-origin allow-scripts allow-modals allow-forms" style='border:0;height:100vh;width:100vw;'
            scrolling="no"></IFRAME>
    </div>
@endsection
