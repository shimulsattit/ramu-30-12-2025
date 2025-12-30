<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Sliders
        \App\Models\Slider::create([
            'title' => 'Welcome to Our Campus',
            'image' => 'https://bacpsc.edu.bd/wp-content/uploads/2022/03/slider1.jpg',
            'order' => 1,
        ]);
        \App\Models\Slider::create([
            'image' => 'https://bacpsc.edu.bd/wp-content/uploads/2022/03/slider2.jpg',
            'order' => 2,
        ]);

        // Notices
        \App\Models\Notice::create(['title' => 'Class Routine Updated', 'published_at' => now()]);
        \App\Models\Notice::create(['title' => 'Annual Sports Day Notice', 'published_at' => now()->subDays(2)]);
        \App\Models\Notice::create(['title' => 'Parent Teacher Meeting', 'published_at' => now()->subDays(4)]);
        \App\Models\Notice::create(['title' => 'Holiday Announcement', 'published_at' => now()->subDays(7)]);

        // Messages
        \App\Models\Message::create([
            'name' => 'Lt. Col Mohammad Sharif Uzzaman',
            'designation' => 'Principal',
            'image' => 'https://bacpsc.edu.bd/wp-content/uploads/2020/01/principal.jpg',
            'message' => 'Education is the backbone of a nation. We are committed to providing quality education...',
            'order' => 1,
        ]);
        \App\Models\Message::create([
            'name' => 'Brig Gen Md Solmon Ibne A Rouf',
            'designation' => 'Chairman',
            'image' => 'https://bacpsc.edu.bd/wp-content/uploads/2020/01/chairman.jpg',
            'message' => 'We strive for excellence in every aspect of our students\' lives...',
            'order' => 2,
        ]);
        // Settings
        $settings = [
            'site_name' => 'Barishal Cantonment Public School & College',
            'site_tagline' => 'Discipline, Knowledge, Morality',
            'phone' => '+8801769026044',
            'email' => 'info@bacpsc.edu.bd',
            'address' => 'Barishal Cantonment, Barishal',
            'facebook' => '#',
            'youtube' => '#',
            'logo' => 'https://bacpsc.edu.bd/wp-content/uploads/2020/01/logo.png',
        ];

        foreach ($settings as $key => $value) {
            \App\Models\Setting::create(['key' => $key, 'value' => $value]);
        }
    }
}
