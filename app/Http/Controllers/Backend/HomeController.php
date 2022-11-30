<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\ContentType;
use App\Models\Menu;
use App\Models\Product;
use App\Models\Route;
use App\Models\User;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class HomeController extends Controller
{
    public function index()
    {
        $tables['users']        = ['count' => User::count()];
        $tables['categories']        = ['count' => Category::count()];
        $tables['products']        = ['count' => Product::count()];
        $icons = Menu::select('icon', 'name->en as name')->pluck('icon', 'name');
        $colors = self::getColor();

        return view('backend.home.index', compact('tables', 'icons', 'colors'));
    }

    protected function getColor()
    {
        return [
            '#546E7A',
            '#004D40',
            '#FFA000',
            '#26A69A',
            '#0097A7',
            '#00E5FF',
            '#00B8D4',
            '#2979FF',
            '#FFAB00',
            '#00796B',
            '#42A5F5',
            '#1E88E5',
            '#00BFA5',
            '#4A148C',
            '#535BE2',
            '#EC407A',
            '#78909C',
            '#7D84EB',
            '#0FB365',
            '#FF80AB',
            '#FF6221',
            '#FF8942',
        ];
    }
}
