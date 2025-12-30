<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Create roles
        $superAdmin = Role::firstOrCreate(['name' => 'super_admin']);
        $panelUser = Role::firstOrCreate(['name' => 'panel_user']);

        // You can add permissions here if needed in the future
        // Example:
        // $permission = Permission::firstOrCreate(['name' => 'manage theme']);
        // $superAdmin->givePermissionTo($permission);
    }
}
