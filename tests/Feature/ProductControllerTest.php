<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\User;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Response;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ProductControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */


    public function test_products_count()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get("dashboard/products")
                ->assertStatus(200)
                ->assertSeeText(Product::count());
    }



    public function test_error_url()
    {
        $user = User::latest()->first();
        $this->actingAs($user)
                ->get("dashboard/error/route")
                ->assertStatus(404)
                ->assertSeeText("This Page Not Found");
    }

    public function test_products_list()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get("dashboard/products", array('HTTP_X-Requested-With' => 'XMLHttpRequest')) // This array is mean the request act as ajax
                ->assertStatus(200)
                ->assertViewIs('backend.includes.tables.table');
    }

    public function test_error_create_category()
    {
        $user = User::first();
        $data = [
          //  'title' => 'product',
            'description' => 'test',
            'category_id ' => Category::first()->id,
            'tags' => 'tag1,tag2,tag3',
            'image' => 'imag.png',

        ];

        $this->actingAs($user)
                ->post('dashboard/products', $data, array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasErrors(['title'])
                ->assertStatus(302);
    }

    public function test_create_product()
    {
        $user = User::first();

        Storage::fake('avatars');

        $file = UploadedFile::fake()->image('avatar.jpg');


        $data = [
              'title' => 'product1_test',
              'description' => 'description for product 1',
              'category_id' => Category::first()->id,
              'tags' => 'tag1,tag2,tag3',
              'image' =>  $file ,

          ];

        $this->actingAs($user)
                ->post('dashboard/products', $data, array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }

    public function test_product_update_page()
    {
      $user = User::first();
     $productID =    Product::where('title','product1_test')->first()->id ;

        $this->actingAs($user)
                ->get("dashboard/products/$productID/edit")
                ->assertStatus(200);
    }

    public function test_error_product_update_page()
    {
        $user = User::first();
        $this->actingAs($user)
                ->get('dashboard/products/200/edit')
                ->assertStatus(500)
                ->assertSee("No query results for model");
    }


    public function test_category_update_data()
    {
        $user = User::first();
        $productID =    Product::where('title','product1_test')->first()->id ;


        $data = [
            'id' => $productID,
            'title' => 'product1_test_edit',
            'description' => 'description for product 1 edit',
            'category_id' => Category::first()->id,
            'tags' => 'tag1,tag2',

        ];

        $this->actingAs($user)
                ->patch('dashboard/products/'.$productID, $data)
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }

    public function test_product_delete()
    {
        $user = User::first();
        $productID =    Product::where('title','product1_test_edit')->first()->id ;
        $this->actingAs($user)
                ->delete('dashboard/products/'.$productID, [], array('HTTP_X-Requested-With' => 'XMLHttpRequest'))
                ->assertSessionHasNoErrors()
                ->assertStatus(200);
    }


}
