@extends(getTemplate() . '.layouts.app')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
@endpush

@section('content')
    @php
    $registerMethod = getGeneralSettings('register_method') ?? 'mobile';
    $showOtherRegisterMethod = getFeaturesSettings('show_other_register_method') ?? false;
    $showCertificateAdditionalInRegister = getFeaturesSettings('show_certificate_additional_in_register') ?? false;
    @endphp

    <div class="container">
        <div class="row login-container">
            <div class="col-12 col-md-6 pl-0">
                <img src="{{ getPageBackgroundSettings('register') }}" class="img-cover" alt="Login">
            </div>
            <div class="col-12 col-md-6">
                <div class="login-card">
                    <h1 class="font-20 font-weight-bold">{{ trans('auth.signup') }}</h1>

                    <form method="post" action="/register" class="mt-35">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group">
                            <label class="input-label" for="full_name">{{ trans('auth.full_name') }} <span
                                    style='color:red;'>*</span>:</label>
                            <input name="full_name" type="text" value="{{ old('full_name') }}"
                                class="form-control @error('full_name') is-invalid @enderror" required>
                            @error('full_name')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        @include('web.default.auth.register_includes.email_field', ['required' => true])
                        @include('web.default.auth.register_includes.mobile_field', ['required' => true])

                        <div class="form-group">
                            <label class="input-label" for="password">{{ trans('auth.password') }} <span
                                    style='color:red;'>*</span>:</label>
                            <div class="d-flex align-items-center"><input name="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" id="password"
                                    aria-describedby="passwordHelp" required>
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

                        <div class="form-group ">
                            <label class="input-label" for="confirm_password">{{ trans('auth.retype_password') }} <span
                                    style='color:red;'>*</span>:</label>
                            <div class="d-flex align-items-center"><input name="password_confirmation" type="password"
                                    class="form-control @error('password_confirmation') is-invalid @enderror"
                                    id="confirm_password" aria-describedby="confirmPasswordHelp" required>

                                <div class="rounded p-5"><img class="olho" style="cursor: pointer;"
                                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABDUlEQVQ4jd2SvW3DMBBGbwQVKlyo4BGC4FKFS4+TATKCNxAggkeoSpHSRQbwAB7AA7hQoUKFLH6E2qQQHfgHdpo0yQHX8T3exyPR/ytlQ8kOhgV7FvSx9+xglA3lM3DBgh0LPn/onbJhcQ0bv2SHlgVgQa/suFHVkCg7bm5gzB2OyvjlDFdDcoa19etZMN8Qp7oUDPEM2KFV1ZAQO2zPMBERO7Ra4JQNpRa4K4FDS0R0IdneCbQLb4/zh/c7QdH4NL40tPXrovFpjHQr6PJ6yr5hQV80PiUiIm1OKxZ0LICS8TWvpyyOf2DBQQtcXk8Zi3+JcKfNafVsjZ0WfGgJlZZQxZjdwzX+ykf6u/UF0Fwo5Apfcq8AAAAASUVORK5CYII=" />
                                </div>
                            </div>
                            @error('password_confirmation')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        {{-- <div class="form-group">
                            <label class="input-label" for="certificate_additional">{{ trans('update.certificate_additional') }}</label>
                            <input name="certificate_additional" id="certificate_additional" class="form-control @error('certificate_additional') is-invalid @enderror"/>
                            @error('certificate_additional')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div> --}}

                        @if (getFeaturesSettings('timezone_in_register'))
                            @php
                                $selectedTimezone = getGeneralSettings('default_time_zone');
                            @endphp

                            <div class="form-group">
                                <label class="input-label">{{ trans('update.timezone') }} <span
                                        style='color:red;'>*</span></label>
                                <select name="timezone" class="form-control select2" data-allow-clear="false" required>
                                    <option value="" {{ empty($user->timezone) ? 'selected' : '' }} disabled>
                                        {{ trans('public.select') }}</option>
                                    @foreach (getListOfTimezones() as $timezone)
                                        <option value="{{ $timezone }}"
                                            @if ($selectedTimezone == $timezone) selected @endif>{{ $timezone }}</option>
                                    @endforeach
                                </select>
                                @error('timezone')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        @endif

                        @if (!empty($referralSettings) and $referralSettings['status'])
                            <div class="form-group ">
                                <label class="input-label" for="referral_code">{{ trans('financial.referral_code') }} <span
                                        style='color:red;'>*</span>:</label>
                                <input name="referral_code" type="text"
                                    class="form-control @error('referral_code') is-invalid @enderror" id="referral_code"
                                    value="{{ !empty($referralCode) ? $referralCode : old('referral_code') }}"
                                    aria-describedby="confirmPasswordHelp">
                                @error('referral_code')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        @endif


                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" name="term" value="1"
                                {{ (!empty(old('term')) and old('term') == '1') ? 'checked' : '' }}
                                class="custom-control-input @error('term') is-invalid @enderror" id="term" required>
                            <label class="custom-control-label font-14" for="term">{{ trans('auth.i_agree_with') }}
                                <a href="pages/terms" target="_blank"
                                    class="text-secondary font-weight-bold font-14">{{ trans('auth.terms_and_rules') }}</a>
                            </label>

                            @error('term')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        @error('term')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                        <button type="submit" class="btn btn-primary btn-block mt-20">{{ trans('auth.signup') }}</button>
                    </form>

                    <div class="text-center mt-20">
                        <span class="text-secondary">
                            {{ trans('auth.already_have_an_account') }}
                            <a href="/login" class="text-secondary font-weight-bold">{{ trans('auth.login') }}</a>
                        </span>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/select2/select2.min.js"></script>
    <script>
        $(".olho").mousedown(function() {
            $("#password").attr("type", "text");
            $("#confirm_password").attr("type", "text");
        });

        $(".olho").mouseup(function() {
            $("#password").attr("type", "password");
            $("#confirm_password").attr("type", "password");
        });
    </script>
@endpush
