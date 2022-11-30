<div class="row">
    {{-- START CATEGORY --}}
    <div class="col-md-6">
        <div class="form-group mb-5">
            <label class="required">@lang('inputs.select-data', ['data' => trans('menu.category')])</label>
            <select class="form-control" data-control="select2" name="category_id" data-placeholder="--- @lang('inputs.select-data', ['data' => trans('menu.category')]) ---" >
                <option value="">@lang('inputs.please-select')</option>
                @foreach ($categories as $id => $category)
                    <option value="{{ $id }}" @selected(isset($row) && $row->category_id == $id || old('category_id') == $id || $categories->count() == 1)>{{ $category }}</option>
                @endforeach
            </select>
            @include('layouts.includes.backend.validation_error', ['input' => 'category_id'])
        </div>



        <div class="form-group mb-5">
            <label class="required">@lang('inputs.title')</label>
            <div class="input-group mb-2">
                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                <input type="text" class="form-control" name="title" value="{{ $row->title  ?? old('title ') }}" placeholder="@lang('inputs.title ')" required>
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'title'])
        </div>





        <div class="form-group mb-5">
            <label class="required">@lang('inputs.description')</label>
            <div class="input-group mb-2">
                <span class="input-group-text"> <i class="fa fa-id-card"></i> </span>
                <textarea class="form-control" cols="15" rows="10" class="ckeditor"  name="description"
                placeholder="@lang('inputs.description')"   required>
                {{ $row->description ?? old('description') }}</textarea>
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'description'])
        </div>



        <div class="form-group mb-5">
            <label class="required">@lang('inputs.tags')</label>
            <div class="input-group mb-2">
                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                <input type="text" class="form-control" name="tags" value="{{ $row->tags  ?? old('tags ') }}" placeholder="@lang('inputs.tags ')" required>
            </div>
            @include('layouts.includes.backend.validation_error', ['input' => 'tags'])
        </div>








        <div class="col-md-3">
            <label class="required">@lang('inputs.upload-image')</label>
            @include('backend.includes.forms.input-file', [ 'name' => 'image', 'image' => isset($row) && $row->image ? url($row->image) : null, 'alt' => $row->name ?? null])
        </div>




    </div>
    {{-- END CATEGORY --}}


</div>
