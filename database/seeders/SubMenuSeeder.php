<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Menu;

class SubMenuSeeder extends Seeder
{
    public function run(): void
    {
        // About submenus
        $about = Menu::where('title', 'About')->first();
        if ($about) {
            Menu::create(['title' => 'History', 'url' => '/about/history', 'parent_id' => $about->id, 'order' => 1]);
            Menu::create(['title' => 'Vision & Mission', 'url' => '/about/vision', 'parent_id' => $about->id, 'order' => 2]);
            Menu::create(['title' => 'Facilities', 'url' => '/about/facilities', 'parent_id' => $about->id, 'order' => 3]);
        }

        // Academic submenus
        $academic = Menu::where('title', 'Academic')->first();
        if ($academic) {
            Menu::create(['title' => 'Curriculum', 'url' => '/academic/curriculum', 'parent_id' => $academic->id, 'order' => 1]);
            Menu::create(['title' => 'Class Routine', 'url' => '/academic/routine', 'parent_id' => $academic->id, 'order' => 2]);
            Menu::create(['title' => 'Syllabus', 'url' => '/academic/syllabus', 'parent_id' => $academic->id, 'order' => 3]);
        }

        // Administration submenus
        $admin = Menu::where('title', 'Administration')->first();
        if ($admin) {
            Menu::create(['title' => 'Principal', 'url' => '/administration/principal', 'parent_id' => $admin->id, 'order' => 1]);
            Menu::create(['title' => 'Teachers', 'url' => '/administration/teachers', 'parent_id' => $admin->id, 'order' => 2]);
            Menu::create(['title' => 'Staff', 'url' => '/administration/staff', 'parent_id' => $admin->id, 'order' => 3]);
        }

        // Admission submenus
        $admission = Menu::where('title', 'Admission')->first();
        if ($admission) {
            Menu::create(['title' => 'Admission Process', 'url' => '/admission/process', 'parent_id' => $admission->id, 'order' => 1]);
            Menu::create(['title' => 'Admission Form', 'url' => '/admission/form', 'parent_id' => $admission->id, 'order' => 2]);
        }

        // Facilities submenus
        $facilities = Menu::where('title', 'Facilities')->first();
        if ($facilities) {
            Menu::create(['title' => 'Library', 'url' => '/facilities/library', 'parent_id' => $facilities->id, 'order' => 1]);
            Menu::create(['title' => 'Lab', 'url' => '/facilities/lab', 'parent_id' => $facilities->id, 'order' => 2]);
            Menu::create(['title' => 'Sports', 'url' => '/facilities/sports', 'parent_id' => $facilities->id, 'order' => 3]);
        }
    }
}
