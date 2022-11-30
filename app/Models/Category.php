<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Category extends Model
{
    use HasFactory;

    protected $table = 'categories';

    protected $fillable = ['name','active', 'parent_id'];



    public function parent()
    {
        return $this->belongsTo(self::class, 'parent_id', 'id');
    }

    public function subs()
    {
        return $this->hasMany(self::class, 'parent_id', 'id');
    }




    public function slug()
    {
        return $this->name;
    }

    public function scopeFilter($query)
    {
        $query->where('parent_id', request()->category);
        return $query;
    }
}
