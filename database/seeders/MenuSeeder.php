<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Menu;

class MenuSeeder extends Seeder
{
    public function run(): void
    {
        $menus = [
            ['title' => 'Home', 'url' => '/', 'order' => 1],
            ['title' => 'About', 'url' => null, 'order' => 2],
            ['title' => 'Academic', 'url' => null, 'order' => 3],
            ['title' => 'Administration', 'url' => null, 'order' => 4],
            ['title' => 'Notice', 'url' => '/notices', 'order' => 5],
            ['title' => 'Admission', 'url' => null, 'order' => 6],
            ['title' => 'Facilities', 'url' => null, 'order' => 7],
            ['title' => 'Co-curricular', 'url' => null, 'order' => 8],
            ['title' => 'Clubs', 'url' => null, 'order' => 9],
            ['title' => 'Gallery', 'url' => '/gallery', 'order' => 10],
            ['title' => 'Login', 'url' => '/admin', 'order' => 11],
        ];

        foreach ($menus as $menu) {
            Menu::create($menu);
        }
    }
}
