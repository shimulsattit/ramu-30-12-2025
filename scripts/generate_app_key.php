<?php
/**
 * Laravel APP_KEY Generator
 * 
 * This script generates a secure APP_KEY for your Laravel application
 * Use this when you don't have SSH access to run 'php artisan key:generate'
 * 
 * SECURITY WARNING: Delete this file immediately after use!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after generating the APP_KEY!

// Generate a random 32-byte key
$key = base64_encode(random_bytes(32));

?>
<!DOCTYPE html>
<html>

<head>
    <title>Laravel APP_KEY Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
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
            border-left: 5px solid #28a745;
        }

        .key-box {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 5px;
            border: 2px solid #007bff;
            font-family: 'Courier New', monospace;
            font-size: 14px;
            word-break: break-all;
            margin: 20px 0;
        }

        .warning {
            background: #fff3cd;
            color: #856404;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
            border-left: 5px solid #ffc107;
        }

        .danger {
            background: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin-top: 20px;
            border-left: 5px solid #dc3545;
        }

        .copy-btn {
            background: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin-top: 10px;
        }

        .copy-btn:hover {
            background: #0056b3;
        }

        .steps {
            background: #e7f3ff;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }

        .steps ol {
            margin: 10px 0;
            padding-left: 20px;
        }

        .steps li {
            margin: 8px 0;
        }

        code {
            background: #f8f9fa;
            padding: 2px 6px;
            border-radius: 3px;
            font-family: 'Courier New', monospace;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>🔑 Laravel APP_KEY Generated!</h1>

        <div class="success">
            <h2>✓ Success!</h2>
            <p>Your new Laravel APP_KEY has been generated successfully.</p>
        </div>

        <h3>Your APP_KEY:</h3>
        <div class="key-box" id="appKey">base64:<?php echo $key; ?></div>

        <button class="copy-btn" onclick="copyKey()">📋 Copy to Clipboard</button>

        <div class="steps">
            <h3>📝 Next Steps:</h3>
            <ol>
                <li>Copy the APP_KEY above (click the button)</li>
                <li>Go to cPanel File Manager</li>
                <li>Find <code>.env.production.example</code> file</li>
                <li>Copy it and rename to <code>.env</code></li>
                <li>Edit <code>.env</code> file</li>
                <li>Find the line: <code>APP_KEY=</code></li>
                <li>Replace with: <code>APP_KEY=base64:<?php echo substr($key, 0, 20); ?>...</code></li>
                <li>Also update:
                    <ul>
                        <li><code>APP_URL=https://ghatail.aivecadetcoaching.com</code></li>
                        <li><code>APP_ENV=production</code></li>
                        <li><code>APP_DEBUG=false</code></li>
                        <li>Database credentials (DB_DATABASE, DB_USERNAME, DB_PASSWORD)</li>
                    </ul>
                </li>
                <li>Save the <code>.env</code> file</li>
                <li>Refresh your website</li>
            </ol>
        </div>

        <div class="warning">
            <strong>⚠ Important:</strong> Make sure to set proper folder permissions:
            <ul>
                <li><code>storage</code> folder → 775</li>
                <li><code>bootstrap/cache</code> folder → 775</li>
            </ul>
        </div>

        <div class="danger">
            <h3>🔴 CRITICAL: Delete This File Now!</h3>
            <p>After copying the APP_KEY, you MUST delete <strong>generate_app_key.php</strong> from your server
                immediately for security reasons.</p>
            <p>Go to cPanel File Manager → public folder → Delete generate_app_key.php</p>
        </div>
    </div>

    <script>
        function copyKey() {
            const keyText = document.getElementById('appKey').textContent;
            navigator.clipboard.writeText(keyText).then(function () {
                alert('✓ APP_KEY copied to clipboard!');
            }, function () {
                // Fallback for older browsers
                const textArea = document.createElement('textarea');
                textArea.value = keyText;
                document.body.appendChild(textArea);
                textArea.select();
                document.execCommand('copy');
                document.body.removeChild(textArea);
                alert('✓ APP_KEY copied to clipboard!');
            });
        }
    </script>
</body>

</html>