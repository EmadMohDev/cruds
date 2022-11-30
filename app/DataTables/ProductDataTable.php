<?php

namespace App\DataTables;

use App\Models\Product;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class ProductDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()
            ->eloquent($query)
            ->editColumn('image', function(Product $product) {return view('backend.includes.tables.image', ['image' => $product->image, 'alt' => $product->name])->render();})
            ->filterColumn('category.name', function($query, $keywords) {
                return $query->whereHas('category', function($query) use($keywords) {
                    return $query->where('name', 'LIKE', "%$keywords%");
                });
            })

            ->addColumn('check', 'backend.includes.tables.checkbox')
            ->editColumn('action', 'backend.includes.buttons.table-buttons')
            ->rawColumns(['action', 'check', 'image']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Content $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Product $model)
    {
        return $model->with('category')->newQuery();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
                ->setTableId('product-table')
                ->columns($this->getColumns())
                ->setTableAttribute('class', 'table table-bordered table-striped table-sm w-100 dataTable')
                ->minifiedAjax()
                ->dom('Brtip')
                ->lengthMenu([[5, 10, 20, 25, 30, -1], [5, 10, 20, 25, 30, 'All']])
                ->pageLength(5)
                ->buttons([
                    Button::make()->text('<i class="fa fa-plus"></i>')->addClass('btn btn-info '. (canUser("products-create") ? "" : "remove-hidden-element"))->action("window.location.href = " . '"' . routeHelper('products.create'). '"')->titleAttr(trans('menu.create-row', ['model' => trans('menu.content')])),
                    Button::make()->text('<i class="fas fa-trash"></i>')->addClass('btn btn-danger multi-delete '. (canUser("products-multidelete") ? "" : "remove-hidden-element"))->titleAttr(trans('buttons.multi-delete')),
                    Button::make('pageLength')->text('<i class="fa fa-sort-numeric-up"></i>')->addClass('btn btn-light page-length')->titleAttr(trans('buttons.page-length'))
                ])
                ->responsive(true)
                ->parameters([
                    'initComplete' => " function () {
                        this.api().columns([2,3]).every(function () {
                            var column = this;
                            var input = document.createElement(\"input\");
                            $(input).appendTo($(column.header()))
                            .on('keyup', function () {
                                column.search($(this).val(), false, false, true).draw();
                            });
                        });
                    }",
                ])
                ->orderBy(0);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            Column::make('id')->hidden(),
            Column::make('check')->title('<label class="skin skin-square"><input data-color="red" type="checkbox" class="switchery" id="check-all"></label>')->exportable(false)->printable(false)->orderable(false)->searchable(false)->width(15)->addClass('text-center')->footer(trans('buttons.delete')),
            Column::make('title')->title(trans('inputs.title')),
            Column::make('category.name')->title(trans('menu.category')),
            Column::make('image')->title(trans('title.avatar'))->footer(trans('title.avatar'))->orderable(false),
            Column::computed('action')->exportable(false)->printable(false)->addClass('text-center')->footer(trans('inputs.action'))->title(trans('inputs.action')),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Product_' . date('YmdHis');
    }
}
