<div class="row">
    <div class="col-5">
        <div class="form-group">
            <label class="input-label" for="mobile">{{ trans('auth.country') }} <span style='color:red;'>*</span>:</label>
            <select name="country_code" class="form-control select2 required" required>
                <option value="">{{ trans('auth.select') }}</option>
                @foreach(getCountriesMobileCode() as $country => $code)
                    <option value="{{ $code }}">{{ $country }}</option>
                @endforeach
            </select>

        </div>
    </div>

    <div class="col-7">
        <div class="form-group">
            <label class="input-label" for="mobile">{{ trans('auth.mobile') }} {{ !empty($optional) ? "(". trans('public.optional') .")" : '' }} <?= !empty($required) ? "<span style='color:red;'>*</span>" : '' ;?>: <small>DDD + número (sem o 9° dígito)</small></label>
            <input name="mobile" type="text" class="form-control @error('mobile') is-invalid @enderror ls-mask-phone8_with_ddd" value="{{ old('mobile') }}" id="mobile" aria-describedby="mobileHelp" placeholder="DDD + 00000000" data-mask="0000000000" required>

            @error('mobile')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
    </div>
</div>
