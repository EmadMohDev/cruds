<div class="d-flex justify-content-between mb-5">
    @if (canUser('products.index'))
        <a href="{{ routeHelper('products.index') }}" data-toggle="tooltip" data-bs-placement="top" data-bs-custom-class="tooltip-dark" title="@lang('buttons.list', ['model' => trans('menu.attachments')])" class="btn btn-success btn-sm">
            <i class="fas fa-list"></i> @lang('buttons.list', ['model' => trans('menu.product')])
        </a>
    @endif

    @if (canUser('products.create'))
        <a href="{{ routeHelper('products.create') }}" data-toggle="tooltip" data-bs-placement="top" data-bs-custom-class="tooltip-dark" title="@lang('menu.create-row', ['model' => trans('menu.products')])" class="btn btn-info btn-sm">
            <i class="fas fa-plus"></i> @lang('menu.create-row', ['model' => trans('menu.product')])
        </a>
    @endif

</div>


<div class="table-responsive mb-5">
    <table class="table table-striped border gy-5 gs-5 fs-6 bg-gray-300" style="border-collapse: separate">
        <tbody>
            <tr>
                <td style="width: 25%"> <b> # </b> </td>
                <td> {{ $row->id }} </td>
            </tr>

            <tr>
                <td style="width: 25%"> <b> @lang('inputs.title') </b> </td>
                <td> {{ $row->title }} </td>
            </tr>

            <tr>
                <td style="width: 25%"> <b> @lang('inputs.description')  </b> </td>
                <td> {{ $row->description }} </td>
            </tr>

            <tr>
                <td> <b> @lang('inputs.tags') </b> </td>
                <td> {{ $row->tags }} </td>
            </tr>




            <tr>
                <td> <b> @lang('inputs.image') </b> </td>
                <td>
                    <img src="{{ asset($row->image) }}" class="img-thumbnail w-50">
                </td>
            </tr>



                <tr>
                    <td> <b> @lang('inputs.created_at') </b> </td>
                    <td>{{ $row->created_at }}</td>
                </tr>
                <tr>
                    <td> <b> @lang('inputs.updated_at') </b> </td>
                    <td>{{ $row->updated_at }}</td>
                </tr>


        </tbody>
    </table>
</div>

