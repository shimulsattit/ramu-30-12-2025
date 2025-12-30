<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class CreateAdminUser extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'admin:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create a new admin user';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $name = $this->ask('Enter admin name', 'Admin');
        $email = $this->ask('Enter admin email', 'admin@bacpsc.edu.bd');
        $password = $this->secret('Enter admin password');

        // Check if user already exists
        $existingUser = User::where('email', $email)->first();

        if ($existingUser) {
            if ($this->confirm('User already exists. Update password?')) {
                $existingUser->password = $password; // Will be auto-hashed
                $existingUser->save();
                $this->info('Admin password updated successfully!');
                $this->info('Email: ' . $email);
                return Command::SUCCESS;
            }
            return Command::FAILURE;
        }

        // Create new user
        $user = User::create([
            'name' => $name,
            'email' => $email,
            'password' => $password, // Will be auto-hashed by the 'hashed' cast
        ]);

        $this->info('Admin user created successfully!');
        $this->info('Email: ' . $email);

        return Command::SUCCESS;
    }
}
