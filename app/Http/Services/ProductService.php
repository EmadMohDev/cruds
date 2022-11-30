<?php

namespace App\Http\Services;

use App\Models\Product;
use App\Traits\UploadFile;
use Exception;

class ProductService {
    use UploadFile;



    public function handle($request, $id = null)
    {
        try {

            if(isset($request['image'])) {
                $request['image'] = $this->uploadImage($request['image'], 'products');
            }


            return Product::updateOrCreate(['id' => $id],$request);

        } catch (Exception $e) {
            return $e->getMessage();
        }
    }
}
