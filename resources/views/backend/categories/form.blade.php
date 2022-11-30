<div class="row">
    <div class="col-md-8">

        <div class="form-group mb-5">
            <label class="required">@lang('inputs.name')</label>
            <div class="input-group mb-2">
                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                <input type="text" class="form-control" name="name" value="{{ $row->name  ?? old('name ') }}" placeholder="@lang('inputs.name ')" required>
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'name'])
        </div>






        {{-- START DEPARTMENT --}}
        <div class="form-group mb-5">
            <label >@lang('inputs.select-data', ['data' => trans('menu.category')])</label>
            <select class="form-control" data-control="select2" data-dropdown-parent="#load-form" name="parent_id" data-placeholder="--- @lang('inputs.select-data', ['data' => trans('menu.category')]) ---">
                <option value=" ">@lang('inputs.please-select')</option>
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}" @selected((isset($row) && $row->parent_id == $category->id) || $categories->count() == 1)>{{ $category->name }}</option>
                @endforeach
            </select>
            @include('layouts.includes.backend.validation_error', ['input' => 'parent_id'])
        </div>
        {{-- END DEPARTMENT --}}

    </div>




    <div class="form-group mb-5">
        <div>
            <div class="form-check form-switch form-check-custom">
                <label class="required" for="active">@lang('inputs.active')</label>
                <input type="checkbox" name="active" id="active" class="form-check-input cursor-pointer" value="1" @checked(isset($row) ? $row->active : true)>
            </div>
        </div>
        @include('layouts.includes.backend.validation_error', ['input' => 'active'])
    </div>


</div>
