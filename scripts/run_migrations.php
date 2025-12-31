<?php
/**
 * Database Migration Runner for Shared Hosting
 * 
 * This script runs pending database migrations when you don't have SSH access
 * 
 * CRITICAL SECURITY WARNING: 
 * - Delete this file immediately after use!
 * - Never leave this on a production server!
 * - Change the secret key before uploading!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after use!

// Additional confirmation required
if (!isset($_GET['confirm']) || $_GET['confirm'] !== 'yes') {
    ?>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Run Migrations - Confirmation Required</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                max-width: 800px;
                margin: 50px auto;
                padding: 20px;
            }

            .warning {
                background: #fff3cd;
                color: #856404;
                padding: 20px;
                border-radius: 5px;
                border-left: 5px solid #ffc107;
            }

            .danger {
                background: #f8d7da;
                color: #721c24;
                padding: 20px;
                border-radius: 5px;
                border-left: 5px solid #dc3545;
                margin-top: 20px;
            }

            .btn {
                display: inline-block;
                padding: 12px 24px;
                margin: 10px 5px;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
            }

            .btn-danger {
                background: #dc3545;
                color: white;
            }

            .btn-secondary {
                background: #6c757d;
                color: white;
            }
        </style>
    </head>

    <body>
        <div class="warning">
            <h2>⚠ Warning: Database Migration</h2>
            <p>You are about to run database migrations. This will modify your database structure.</p>
            <p><strong>Before proceeding:</strong></p>
            <ul>
                <li>Make sure you have a complete database backup</li>
                <li>Verify that your .env file has correct database credentials</li>
                <li>Ensure you're running this on the correct environment</li>
            </ul>
        </div>

        <div class="danger">
            <h3>🔴 Critical Security Notice</h3>
            <p>After running migrations, you MUST delete this file immediately!</p>
        </div>

        <div style="margin-top: 30px; text-align: center;">
            <a href="?key=<?php echo htmlspecialchars($secret_key); ?>&confirm=yes" class="btn btn-danger">
                Yes, Run Migrations
            </a>
            <a href="/" class="btn btn-secondary">
                Cancel
            </a>
        </div>
    </body>

    </html>
    <?php
    exit;
}

// Change to Laravel root directory
chdir(__DIR__ . '/..');

// Run migrations
?>
<!DOCTYPE html>
<html>

<head>
    <title>Migration Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background: #f5f5f5;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .success {
            background: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .error {
            background: #f8d7da;
            color: #721c24;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .output {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            border-left: 4px solid #007bff;
            font-family: 'Courier New', monospace;
            white-space: pre-wrap;
            margin: 20px 0;
        }

        .warning {
            background: #fff3cd;
            color: #856404;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Database Migration Results</h1>

        <?php
        try {
            // Run migrations
            exec('php artisan migrate --force 2>&1', $output, $return);

            if ($return === 0) {
                echo '<div class="success">';
                echo '<h2>✓ Migrations Completed Successfully</h2>';
                echo '</div>';
            } else {
                echo '<div class="error">';
                echo '<h2>✗ Migration Failed</h2>';
                echo '<p>There was an error running the migrations. Please check the output below.</p>';
                echo '</div>';
            }

            echo '<div class="output">';
            echo htmlspecialchars(implode("\n", $output));
            echo '</div>';

        } catch (Exception $e) {
            echo '<div class="error">';
            echo '<h2>✗ Exception Occurred</h2>';
            echo '<p>' . htmlspecialchars($e->getMessage()) . '</p>';
            echo '</div>';
        }
        ?>

        <div class="warning">
            <h3>🔴 CRITICAL: Delete This File Now!</h3>
            <p>For security reasons, you must delete <strong>run_migrations.php</strong> from your server immediately.
            </p>
            <p>Go to cPanel File Manager → public folder → Delete run_migrations.php</p>
        </div>
    </div>
</body>

</html>