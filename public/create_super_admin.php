<?php
/**
 * Super Admin Creation Script
 * 
 * This script creates a super admin user for the application.
 * Run this AFTER running migrations and seeding roles.
 * 
 * Usage: Navigate to https://yourdomain.com/create_super_admin.php
 */

// Prevent direct access in production after setup
$setupCompleted = file_exists(__DIR__ . '/.setup_completed');
if ($setupCompleted) {
    die('Setup already completed. Delete .setup_completed file to run again.');
}

require __DIR__ . '/../vendor/autoload.php';

$app = require_once __DIR__ . '/../bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

?>
<!DOCTYPE html>
<html lang="bn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Admin তৈরি করুন</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            padding: 40px;
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
            font-size: 24px;
        }

        .subtitle {
            color: #666;
            margin-bottom: 30px;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: 500;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #667eea;
        }

        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s;
        }

        button:hover {
            transform: translateY(-2px);
        }

        .success {
            background: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .error {
            background: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .info {
            background: #d1ecf1;
            border: 1px solid #bee5eb;
            color: #0c5460;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 13px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>🔐 Super Admin তৈরি করুন</h1>
        <p class="subtitle">আপনার application এর জন্য একটি Super Admin account তৈরি করুন</p>

        <?php
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            try {
                $name = trim($_POST['name']);
                $email = trim($_POST['email']);
                $password = $_POST['password'];

                // Validation
                if (empty($name) || empty($email) || empty($password)) {
                    throw new Exception('সব field পূরণ করুন');
                }

                if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    throw new Exception('সঠিক email address দিন');
                }

                if (strlen($password) < 8) {
                    throw new Exception('Password কমপক্ষে ৮ অক্ষরের হতে হবে');
                }

                // Check if user already exists
                $existingUser = \App\Models\User::where('email', $email)->first();
                if ($existingUser) {
                    throw new Exception('এই email দিয়ে ইতিমধ্যে একটি user আছে');
                }

                // Create user
                $user = \App\Models\User::create([
                    'name' => $name,
                    'email' => $email,
                    'password' => bcrypt($password)
                ]);

                // Assign super_admin role
                $user->assignRole('super_admin');

                // Mark setup as completed
                file_put_contents(__DIR__ . '/.setup_completed', date('Y-m-d H:i:s'));

                echo '<div class="success">';
                echo '<strong>✅ সফলভাবে তৈরি হয়েছে!</strong><br><br>';
                echo '<strong>Name:</strong> ' . htmlspecialchars($name) . '<br>';
                echo '<strong>Email:</strong> ' . htmlspecialchars($email) . '<br>';
                echo '<strong>Role:</strong> Super Admin<br><br>';
                echo 'এখন আপনি <a href="/admin/login">Admin Panel</a> এ login করতে পারবেন।<br><br>';
                echo '<small>⚠️ নিরাপত্তার জন্য এই file টি server থেকে delete করুন।</small>';
                echo '</div>';

            } catch (Exception $e) {
                echo '<div class="error">';
                echo '<strong>❌ Error:</strong> ' . htmlspecialchars($e->getMessage());
                echo '</div>';
            }
        }
        ?>

        <div class="info">
            <strong>📝 নির্দেশনা:</strong><br>
            • একটি শক্তিশালী password ব্যবহার করুন<br>
            • Setup সম্পন্ন হলে এই file টি delete করুন<br>
            • Super Admin সব feature access করতে পারবে
        </div>

        <form method="POST">
            <div class="form-group">
                <label for="name">নাম *</label>
                <input type="text" id="name" name="name" required placeholder="আপনার নাম লিখুন">
            </div>

            <div class="form-group">
                <label for="email">Email Address *</label>
                <input type="email" id="email" name="email" required placeholder="admin@example.com">
            </div>

            <div class="form-group">
                <label for="password">Password *</label>
                <input type="password" id="password" name="password" required placeholder="কমপক্ষে ৮ অক্ষর">
            </div>

            <button type="submit">Super Admin তৈরি করুন</button>
        </form>
    </div>
</body>

</html>