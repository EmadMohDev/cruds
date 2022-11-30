<?php

namespace Database\Seeders;

use App\Models\User;
use App\Traits\UploadFile;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;

class SuperadminSeeder extends Seeder
{
    use UploadFile;

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Storage::fake('avatars');

        $file = UploadedFile::fake()->image('avatar.jpg');


        $data = [
            'name'                  => 'super_admin',
            'email'                 => 'admin@admin.com',
            'password'              => 123456,
            'email_verified_at'     => now(),
            'remember_token'        => Str::random(10),
            'image'                 => $file
        ];

        $user = User::firstOrCreate(['email' => $data['email']], $data);

        $user->assignRole('Super Admin');

    }
}
