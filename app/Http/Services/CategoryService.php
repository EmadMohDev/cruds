<?php

namespace App\Http\Services;

use App\Models\Category;
use App\Traits\UploadFile;
use Exception;

class CategoryService {
    use UploadFile;

    public function handle($request, $id = null)
    {
        try {

            return Category::updateOrCreate(['id' => $id],$request);
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }
}
