<?php

namespace Database\Seeders;

use App\Models\ContentType;
use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $rows = [
            [
                'key' => 'logo',
                'value' => 'samples/images/img.jpg',
                'content_type_id' => ContentType::where('name', 'LIKE', '%Image%')->first()->id,
                'system' => true,
            ], [
                'key' => 'site_name',
                'value' => 'App',
                'content_type_id' => ContentType::where('name', 'LIKE', '%Normal Text%')->first()->id,
                'system' => true,
            ], [
                'key' => 'success_audio',
                'value' => 'samples/audios/success.mp3',
                'content_type_id' => ContentType::where('name', 'LIKE', '%Audio%')->first()->id,
                'system' => true,
            ], [
                'key' => 'warrning_audio',
                'value' => 'samples/audios/warrning.mp3',
                'content_type_id' => ContentType::where('name', 'LIKE', '%Audio%')->first()->id,
                'system' => true,
            ], [
                'key' => 'default_lang',
                'value' => 'ar',
                'content_type_id' => ContentType::where('name', 'LIKE', '%Languages%')->first()->id,
                'system' => true,
            ], [
                'key' => 'run_pusher',
                'value' => true,
                'content_type_id' => ContentType::where('name', 'LIKE', '%Selector%')->first()->id,
                'system' => true,
            ]
        ];

        foreach ($rows as $row) {
            Setting::updateOrCreate(['key' => $row['key']], $row);
        }
    }
}
