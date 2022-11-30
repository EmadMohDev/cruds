<?php

namespace Database\Seeders;

use App\Models\Menu;
use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menus = [
            1 => [
                'name' => ["en" => "Dashboard", "ar" => "لوحة التحكم"],
                'route' => "/",
                'icon' => "fas fa-home",
                'parent_id' => null
            ],
            2 => [
                'name' => ["en" => "Configurations", "ar" => "التكوينات"],
                'route' => null,
                'icon' => "fas fa-cogs",
                'parent_id' => null
            ],
            3 => [
                'name' => ["en" => "Settings", "ar" => "الإعدادات"],
                'route' => "settings.index",
                'icon' => "fas fa-tools",
                'parent_id' => 2
            ],
            4 => [
                'name' => ["en" => "Menus", "ar" => "القوائم"],
                'route' => "menus.index",
                'icon' => "fa fa-bars",
                'parent_id' => 2
            ],
            5 => [
                'name' => ["en" => "Image Tools", "ar" => "أدوات الصور"],
                'route' => null,
                'icon' => "fa fa-image",
                'parent_id' => 2
            ],
            6 => [
                'name' => ["en" => "Routes", "ar" => "المسارات"],
                'route' => null,
                'icon' => "fa fa-anchor",
                'parent_id' => null
            ],
            7 => [
                'name' => ["en" => "List Routes", "ar" => "عرض المسارات"],
                'route' => "routes.index",
                'icon' => "fa fa-list",
                'parent_id' => 6
            ],
            8 => [
                'name' => ["en" => "Assign Roles", "ar" => "تمكين صلاحيات"],
                'route' => "routes.assign",
                'icon' => "fa fa-link",
                'parent_id' => 6
            ],
            9 => [
                'name' => ["en" => "Roles", "ar" => "الأدوار"],
                'route' => "roles.index",
                'icon' => "fa fa-shield-virus",
                'parent_id' => null
            ],
            10 => [
                'name' => ["en" => "Permissions", "ar" => "الأذونات"],
                'route' => "permissions.index",
                'icon' => "fas fa-hand-paper",
                'parent_id' => null
            ],
            11 => [
                'name' => ["en" => "Users", "ar" => "المستخدمين"],
                'route' => null,
                'icon' => "fa fa-users",
                'parent_id' => null
            ],
            12 => [
                'name' => ["en" => "List Users", "ar" => "عرض المستخدمين"],
                'route' => "users.index",
                'icon' => "fa fa-list",
                'parent_id' => 11
            ],
            13 => [
                'name' => ["en" => "Create Users", "ar" => "إنشاء مستخدم"],
                'route' => "users.create",
                'icon' => "fa fa-plus",
                'parent_id' => 11
            ],

            14 => [
                'name' => ["en" => "Content Types", "ar" =>"أنواع المحتوي"],
                'route' => "content_types.index",
                'icon' => "fa fa-folder",
                'parent_id' => 2
            ],

            15 => [
                'name' => ["en" => "Categories", "ar" => "التصنيفات"],
                'route' => null,
                'icon' => "fa fa-share",
                'parent_id' => null
            ],
            16 => [
                'name' => ["en" => "List Categories", "ar" => "عرض التصنيفات"],
                'route' => "categories.index",
                'icon' => "fa fa-list",
                'parent_id' => 15
            ],
            17 => [
                'name' => ["en" => "Create Category", "ar" => "إنشاء تصنيف"],
                'route' => "categories.create",
                'icon' => "fa fa-plus",
                'parent_id' => 15
            ],



            18 => [
                'name' => ["en" => "Products", "ar" => "المنتجات"],
                'route' => null,
                'icon' => "fa fa-share",
                'parent_id' => null
            ],
            19 => [
                'name' => ["en" => "List Products", "ar" => "عرض المنتجات"],
                'route' => "products.index",
                'icon' => "fa fa-list",
                'parent_id' => 18
            ],
            20 => [
                'name' => ["en" => "Create Product", "ar" => "إنشاء منتج"],
                'route' => "products.create",
                'icon' => "fa fa-plus",
                'parent_id' => 18
            ],

        ];

        foreach ($menus as $menu) {
            Menu::firstOrCreate(['route' => $menu['route'], 'name->en' => $menu['name']['en']], $menu);
        }
    }
}
