<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\ProductDataTable;
use App\Http\Controllers\BackendController;
use App\Http\Requests\ProductRequest;
use App\Http\Services\ProductService;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends BackendController
{
    public $use_form_ajax = true;

    public function __construct(ProductDataTable $dataTable, Product $product)
    {
        parent::__construct($dataTable, $product, true);
    }

    public function store(ProductRequest $request, ProductService $ProductService)
    {
        $product = $ProductService->handle($request->validated());
        if (is_string($product)) return $this->throwException($product);
        return $this->redirect(trans('flash.row created', ['model' => trans('menu.product')]));
    }

    public function update(ProductRequest $request, ProductService $ProductService, $id)
    {
        $product = $ProductService->handle($request->validated(), $id);
        if (is_string($product)) return $this->throwException($product);
        return $this->redirect(trans('flash.row updated', ['model' => trans('menu.product')]), routeHelper("products.show", $product));
    }



    public function append()
    {
        return [
            'categories' => Category::when(request()->category, function($query) {
                return $query->where('id', request()->category);
            })->pluck('name', 'id')
        ];
    }

    public function query($id) :object|null
    {
        return $this->model::with(['category'])->findOrFail($id);
    }
}
