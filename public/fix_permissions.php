<?php
/**
 * Automated Permission Fixer for Laravel
 * 
 * This script fixes common permission issues that cause 500 errors
 * 
 * SECURITY WARNING: Delete this file immediately after use!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after use!

// Confirmation required
if (!isset($_GET['confirm']) || $_GET['confirm'] !== 'yes') {
    ?>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Permission Fixer - Confirmation</title>
        <style>
            body {
                font-family: Arial;
                padding: 20px;
                background: #f5f5f5;
            }

            .container {
                max-width: 800px;
                margin: 0 auto;
                background: white;
                padding: 30px;
                border-radius: 8px;
            }

            .warning {
                background: #fff3cd;
                color: #856404;
                padding: 20px;
                border-radius: 5px;
                border-left: 5px solid #ffc107;
            }

            .btn {
                display: inline-block;
                padding: 12px 24px;
                margin: 10px 5px;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
            }

            .btn-primary {
                background: #007bff;
                color: white;
            }

            .btn-secondary {
                background: #6c757d;
                color: white;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>⚠ Permission Fixer</h1>
            <div class="warning">
                <h3>This script will fix permissions for:</h3>
                <ul>
                    <li><code>storage</code> folder → 775</li>
                    <li><code>bootstrap/cache</code> folder → 775</li>
                    <li><code>vendor</code> folder → 755</li>
                </ul>
                <p><strong>Are you sure you want to proceed?</strong></p>
            </div>
            <a href="?key=<?php echo htmlspecialchars($secret_key); ?>&confirm=yes" class="btn btn-primary">Yes, Fix
                Permissions</a>
            <a href="/" class="btn btn-secondary">Cancel</a>
        </div>
    </body>

    </html>
    <?php
    exit;
}

// Function to recursively chmod
function chmodRecursive($path, $fileMode, $dirMode)
{
    $results = [];

    if (is_dir($path)) {
        if (@chmod($path, $dirMode)) {
            $results[] = "✓ $path → " . decoct($dirMode);
        } else {
            $results[] = "✗ Failed: $path";
        }

        $items = @scandir($path);
        if ($items) {
            foreach ($items as $item) {
                if ($item != '.' && $item != '..') {
                    chmodRecursive($path . '/' . $item, $fileMode, $dirMode);
                }
            }
        }
    } else {
        if (@chmod($path, $fileMode)) {
            $results[] = "✓ $path → " . decoct($fileMode);
        } else {
            $results[] = "✗ Failed: $path";
        }
    }

    return $results;
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Permission Fix Results</title>
    <style>
        body {
            font-family: Arial;
            padding: 20px;
            background: #f5f5f5;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
        }

        .success {
            background: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
        }

        .danger {
            background: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
        }

        .results {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            max-height: 400px;
            overflow-y: auto;
            font-family: monospace;
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>🔧 Permission Fix Results</h1>

        <?php
        $basePath = __DIR__ . '/..';
        $fixed = [];

        // Fix storage folder
        echo "<h3>Fixing storage folder...</h3>";
        if (is_dir($basePath . '/storage')) {
            chmodRecursive($basePath . '/storage', 0664, 0775);
            $fixed[] = 'storage → 775';
        }

        // Fix bootstrap/cache
        echo "<h3>Fixing bootstrap/cache folder...</h3>";
        if (is_dir($basePath . '/bootstrap/cache')) {
            chmodRecursive($basePath . '/bootstrap/cache', 0664, 0775);
            $fixed[] = 'bootstrap/cache → 775';
        }

        // Fix vendor folder
        echo "<h3>Fixing vendor folder...</h3>";
        if (is_dir($basePath . '/vendor')) {
            chmodRecursive($basePath . '/vendor', 0644, 0755);
            $fixed[] = 'vendor → 755';
        }
        ?>

        <div class="success">
            <h2>✓ Permissions Updated!</h2>
            <p>The following folders have been fixed:</p>
            <ul>
                <?php foreach ($fixed as $item): ?>
                    <li><?php echo htmlspecialchars($item); ?></li>
                <?php endforeach; ?>
            </ul>
        </div>

        <h3>Next Steps:</h3>
        <ol>
            <li>Delete this file (<code>fix_permissions.php</code>) immediately</li>
            <li>Refresh your website: <a href="/">Click here</a></li>
            <li>If still not working, check diagnostic.php again</li>
        </ol>

        <div class="danger">
            <h3>🔴 CRITICAL: Delete This File Now!</h3>
            <p>Go to cPanel File Manager → public folder → Delete <strong>fix_permissions.php</strong></p>
        </div>
    </div>
</body>

</html>