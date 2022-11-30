<?php

namespace Tests\Feature;

use App\Models\Category;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\Response;
use Tests\TestCase;

class CategoryControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */


    public function test_categories_count()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get("dashboard/categories")
                ->assertStatus(200)
                ->assertSeeText(Category::count());
    }



    public function test_error_url()
    {
        $user = User::latest()->first();
        $this->actingAs($user)
                ->get("dashboard/error/route")
                ->assertStatus(404)
                ->assertSeeText("This Page Not Found");
    }

    public function test_categories_list()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get("dashboard/categories", array('HTTP_X-Requested-With' => 'XMLHttpRequest')) // This array is mean the request act as ajax
                ->assertStatus(200)
                ->assertViewIs('backend.includes.tables.table');
    }

    public function test_error_create_category()
    {
        $user = User::first();
        $data = [
          //  'name' => 'category_name',
        ];

        $this->actingAs($user)
                ->post('dashboard/categories', $data, array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasErrors(['name'])
                ->assertStatus(302);
    }

    public function test_create_category()
    {
        $user = User::first();
        $data = [
             'name' => 'tablet',
             'active' => 1,
          ];

        $this->actingAs($user)
                ->post('dashboard/categories', $data, array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }

    public function test_category_update_page()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get('dashboard/categories/2/edit')
                ->assertStatus(200);
    }

    public function test_error_category_update_page()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get('dashboard/categories/200/edit')
                ->assertStatus(500)
                ->assertSee("Something is wrong with this record!, Please refresh the page!");
    }



    public function test_category_update_data()
    {
        $user = User::first();
        $edit_category = Category::where('name','tablet')->first();
        $data = [
            'id' => $edit_category->id,
            'name' => 'tablet new',
            'active' =>0
        ];

        $this->actingAs($user)
                ->patch('dashboard/categories/'.$edit_category->id, $data)
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }

    public function test_category_delete()
    {
        $user = User::first();
        $category = Category::where('name','tablet new')->first();
        $this->actingAs($user)
                ->delete('dashboard/categories/'.$category->id, [], array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }


}
