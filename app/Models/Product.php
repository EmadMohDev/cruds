<?php

namespace App\Models;

use App\Constants\ContentType as ConstantsContentType;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;


class Product extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = ['image','title','description','category_id', 'tags'];


    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }



    protected function data(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => $this->getData(),
        );
    }



    // public function slug()
    // {
    //     return $this->title;
    // }


    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => $value && file_exists('uploads/products/' . $value) ? "uploads/products/$value" : null,
        );
    }


    public function scopeFilter($query)
    {
        return $query->when(request('category'), function($query) {
                        $query->where('category_id', request('category'));
                    });
    }
}
