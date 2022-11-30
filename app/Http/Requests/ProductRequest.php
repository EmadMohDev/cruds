<?php

namespace App\Http\Requests;

use App\Constants\ContentType;
use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {



        $validations['title'] = 'required';
        $validations['description'] = 'required';
        $validations['category_id'] = 'required|exists:categories,id';
        $validations['tags'] = 'required';

        if(isset($this['id']) && $this['id']!=""){
            $validations['image'] = 'nullable|image|mimes:png,jpg,jpeg';
        }else{
            $validations['image'] = 'required|image|mimes:png,jpg,jpeg';
        }


        return $validations;
    }
}
