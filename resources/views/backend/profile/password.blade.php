<div class="row">
    {{-- START PASSWORD --}}
    <div class="col-md-4">
        <div class="form-group mb-5">
            <label class="required">@lang('inputs.password')</label>
            <div class="input-group mb-2">
                <span class="input-group-text show-password"> <i class="fas fa-lock"></i> </span>
                <input type="password" class="form-control" name="password" placeholder=" @lang('inputs.password')" >
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'password'])
        </div>
    </div>
    {{-- END PASSWORD --}}

    {{-- START NEW PASSWORD --}}
    <div class="col-md-4">
        <div class="form-group mb-5">
            <label class="required">@lang('inputs.new_password')</label>
            <div class="input-group mb-2">
                <span class="input-group-text show-password"> <i class="fas fa-lock"></i> </span>
                <input type="password" class="form-control" name="new_password" placeholder=" @lang('inputs.new_password')" >
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'new_password'])
        </div>
    </div>
    {{-- END NEW PASSWORD --}}

    {{-- START PASSWORD CONFIRMATION --}}
    <div class="col-md-4">
        <div class="form-group mb-5">
            <label class="required">@lang('inputs.password_confirmation')</label>
            <div class="input-group mb-2">
                <span class="input-group-text show-password"> <i class="fas fa-lock"></i> </span>
                <input type="password" class="form-control" name="password_confirmation" placeholder=" @lang('inputs.password_confirmation')" >
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'password_confirmation'])
        </div>
    </div>
    {{-- END PASSWORD CONFIRMATION --}}
</div>
