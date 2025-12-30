<?php
/**
 * Cache Clearer for Shared Hosting
 * 
 * This script clears Laravel caches when you don't have SSH access
 * Use this after updating your application or configuration files
 * 
 * SECURITY WARNING: Delete this file after use or protect it with a strong password!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after use!

// Change to Laravel root directory
chdir(__DIR__ . '/..');

$results = [];

// Clear config cache
try {
    exec('php artisan config:clear 2>&1', $output, $return);
    $results['Config Cache'] = ($return === 0) ? 'Cleared ✓' : 'Failed ✗';
} catch (Exception $e) {
    $results['Config Cache'] = 'Error: ' . $e->getMessage();
}

// Clear route cache
try {
    exec('php artisan route:clear 2>&1', $output, $return);
    $results['Route Cache'] = ($return === 0) ? 'Cleared ✓' : 'Failed ✗';
} catch (Exception $e) {
    $results['Route Cache'] = 'Error: ' . $e->getMessage();
}

// Clear view cache
try {
    exec('php artisan view:clear 2>&1', $output, $return);
    $results['View Cache'] = ($return === 0) ? 'Cleared ✓' : 'Failed ✗';
} catch (Exception $e) {
    $results['View Cache'] = 'Error: ' . $e->getMessage();
}

// Clear application cache
try {
    exec('php artisan cache:clear 2>&1', $output, $return);
    $results['Application Cache'] = ($return === 0) ? 'Cleared ✓' : 'Failed ✗';
} catch (Exception $e) {
    $results['Application Cache'] = 'Error: ' . $e->getMessage();
}

// Clear compiled classes
try {
    exec('php artisan clear-compiled 2>&1', $output, $return);
    $results['Compiled Classes'] = ($return === 0) ? 'Cleared ✓' : 'Failed ✗';
} catch (Exception $e) {
    $results['Compiled Classes'] = 'Error: ' . $e->getMessage();
}

// Display results
?>
<!DOCTYPE html>
<html>

<head>
    <title>Laravel Cache Clearer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
        }

        .success {
            background: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .warning {
            background: #fff3cd;
            color: #856404;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }

        .error {
            background: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="success">
        <h2>✓ Cache Clearing Complete</h2>
        <p>The following caches have been processed:</p>
    </div>

    <table>
        <thead>
            <tr>
                <th>Cache Type</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($results as $cache => $status): ?>
                <tr>
                    <td><?php echo htmlspecialchars($cache); ?></td>
                    <td><?php echo htmlspecialchars($status); ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <div class="warning">
        <strong>⚠ IMPORTANT:</strong> Please delete this file (clear_cache.php) immediately for security reasons!
    </div>

    <div class="error">
        <strong>Security Notice:</strong> This script should only be used temporarily. Never leave it on your production
        server.
    </div>
</body>

</html>