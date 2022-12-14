<section>
    <h2 class="section-title after-line">{{ trans('financial.account') }}</h2>

    <div class="row mt-20">
        <div class="col-12 col-lg-4">
            <div class="form-group">
                <label class="input-label">{{ trans('public.email') }} <span style='color:red;'>*</span></label>
                <input type="text" name="email"
                    value="{{ (!empty($user) and empty($new_user)) ? $user->email : old('email') }}"
                    class="form-control @error('email') is-invalid @enderror" placeholder="" required />
                @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
                <label class="input-label">{{ trans('auth.name') }} <span style='color:red;'>*</span></label>
                <input type="text" name="full_name"
                    value="{{ (!empty($user) and empty($new_user)) ? $user->full_name : old('full_name') }}"
                    class="form-control @error('full_name') is-invalid @enderror" placeholder="" required />
                @error('full_name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
                <label class="input-label">{{ trans('auth.password') }} <span style='color:red;'>*</span></label>
                <div class="d-flex align-items-center"><input type="password" id="password" name="password"
                        value="{{ old('password') }}"
                        class="form-control @error('password') is-invalid @enderror required" placeholder="" required />
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

            <div class="form-group">
                <label class="input-label">{{ trans('auth.password_repeat') }} <span
                        style='color:red;'>*</span></label>
                <input type="password" name="password_confirmation" id="password_confirmation" value="{{ old('password_confirmation') }}"
                    class="form-control @error('password_confirmation') is-invalid @enderror" placeholder="" required />
                @error('password_confirmation')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
                <label class="input-label">{{ trans('public.mobile') }} <span style='color:red;'>*</span> <small>DDD +
                        n??mero (sem o 9?? d??gito)</small></label>
                <input type="tel" name="mobile"
                    value="{{ (!empty($user) and empty($new_user)) ? $user->mobile : old('mobile') }}"
                    class="form-control @error('mobile') is-invalid @enderror ls-mask-phone8_with_ddd"
                    placeholder="DDI + DDD + 00000000" data-mask="000000000000" required />
                @error('mobile')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
                <label class="input-label">{{ trans('auth.language') }} <span style='color:red;'>*</span></label>
                <select name="language" class="form-control" required>
                    <option value="">{{ trans('auth.language') }}</option>
                    @foreach ($userLanguages as $lang => $language)
                        <option value="{{ $lang }}" @if (!empty($user) and mb_strtolower($user->language) == mb_strtolower($lang)) selected @endif>
                            {{ $language }}</option>
                    @endforeach
                </select>
                @error('language')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
                <label class="input-label">{{ trans('update.timezone') }} <span style='color:red;'>*</span></label>
                <select name="timezone" class="form-control select2" data-allow-clear="false" required>
                    <option value="" {{ empty($user->timezone) ? 'selected' : '' }} disabled>
                        {{ trans('public.select') }}</option>
                    @foreach (getListOfTimezones() as $timezone)
                        <option value="{{ $timezone }}" @if (!empty($user) and $user->timezone == $timezone) selected @endif>
                            {{ $timezone }}</option>
                    @endforeach
                </select>
                @error('timezone')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group mt-30 d-flex align-items-center justify-content-between">
                <label class="cursor-pointer input-label"
                    for="newsletterSwitch">{{ trans('auth.join_newsletter') }}</label>
                <div class="custom-control custom-switch">
                    <input type="checkbox" name="join_newsletter" class="custom-control-input" id="newsletterSwitch"
                        {{ (!empty($user) and $user->newsletter) ? 'checked' : '' }}>
                    <label class="custom-control-label" for="newsletterSwitch"></label>
                </div>
            </div>

            <div class="form-group mt-30 d-flex align-items-center justify-content-between">
                <label class="cursor-pointer input-label"
                    for="publicMessagesSwitch">{{ trans('auth.public_messages') }}</label>
                <div class="custom-control custom-switch">
                    <input type="checkbox" name="public_messages" class="custom-control-input" id="publicMessagesSwitch"
                        {{ (!empty($user) and $user->public_message) ? 'checked' : '' }}>
                    <label class="custom-control-label" for="publicMessagesSwitch"></label>
                </div>
            </div>
        </div>
    </div>

</section>
@push('scripts_bottom')
    <script>
        $(".olho").mousedown(function() {
            $("#password").attr("type", "text");
            $("#password_confirmation").attr("type", "text");
        });

        $(".olho").mouseup(function() {
            $("#password").attr("type", "password");
            $("#password_confirmation").attr("type", "password");
        });
    </script>
@endpush
