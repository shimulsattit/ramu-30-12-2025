<?php
/**
 * Laravel Error Log Viewer
 * 
 * This script displays the last errors from Laravel log file
 * Use this to diagnose 500 errors
 * 
 * SECURITY WARNING: Delete this file after use!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after viewing errors!

// Path to Laravel log file
$logFile = __DIR__ . '/../storage/logs/laravel.log';

?>
<!DOCTYPE html>
<html>

<head>
    <title>Laravel Error Log Viewer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: #f5f5f5;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            border-bottom: 3px solid #dc3545;
            padding-bottom: 10px;
        }

        .log-box {
            background: #1e1e1e;
            color: #d4d4d4;
            padding: 20px;
            border-radius: 5px;
            font-family: 'Courier New', monospace;
            font-size: 13px;
            overflow-x: auto;
            white-space: pre-wrap;
            word-wrap: break-word;
            max-height: 600px;
            overflow-y: auto;
        }

        .error {
            color: #f48771;
        }

        .warning {
            color: #dcdcaa;
        }

        .info {
            color: #4ec9b0;
        }

        .danger {
            background: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            border-left: 5px solid #dc3545;
        }

        .success {
            background: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            border-left: 5px solid #28a745;
        }

        .btn {
            background: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin: 10px 5px;
        }

        .btn:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>🔍 Laravel Error Log Viewer</h1>

        <?php if (file_exists($logFile)): ?>
            <?php
            // Read last 100 lines of log file
            $lines = file($logFile);
            $lastLines = array_slice($lines, -100);
            $logContent = implode('', $lastLines);
            ?>

            <div class="success">
                <strong>✓ Log file found!</strong><br>
                File: <?php echo $logFile; ?><br>
                Size: <?php echo number_format(filesize($logFile) / 1024, 2); ?> KB<br>
                Showing last 100 lines
            </div>

            <h3>Recent Errors:</h3>
            <div class="log-box"><?php echo htmlspecialchars($logContent); ?></div>

            <a href="?key=<?php echo htmlspecialchars($secret_key); ?>&download=1" class="btn">📥 Download Full Log</a>

            <?php
            if (isset($_GET['download'])) {
                header('Content-Type: text/plain');
                header('Content-Disposition: attachment; filename="laravel.log"');
                readfile($logFile);
                exit;
            }
            ?>

        <?php else: ?>
            <div class="danger">
                <strong>✗ Log file not found!</strong><br>
                Expected location: <?php echo $logFile; ?><br><br>

                <strong>Possible reasons:</strong>
                <ul>
                    <li>Laravel hasn't generated any logs yet</li>
                    <li>Storage folder permissions issue</li>
                    <li>Wrong file path</li>
                </ul>

                <strong>Check:</strong>
                <ul>
                    <li>Storage folder exists: <?php echo is_dir(__DIR__ . '/../storage') ? '✓ Yes' : '✗ No'; ?></li>
                    <li>Logs folder exists: <?php echo is_dir(__DIR__ . '/../storage/logs') ? '✓ Yes' : '✗ No'; ?></li>
                    <li>Storage writable: <?php echo is_writable(__DIR__ . '/../storage') ? '✓ Yes' : '✗ No'; ?></li>
                </ul>
            </div>
        <?php endif; ?>

        <div class="danger">
            <h3>🔴 CRITICAL: Delete This File Now!</h3>
            <p>After viewing the logs, you MUST delete <strong>view_errors.php</strong> from your server immediately for
                security reasons.</p>
        </div>
    </div>
</body>

</html>