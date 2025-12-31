<?php
/**
 * Storage Link Creator for Shared Hosting
 * 
 * This script creates a symbolic link from public/storage to storage/app/public
 * Use this when you don't have SSH access to run 'php artisan storage:link'
 * 
 * SECURITY WARNING: Delete this file after running it successfully!
 */

// Security check disabled for easy deployment
// IMPORTANT: Delete this file after use!

// Define paths
$targetPath = __DIR__ . '/../storage/app/public';
$linkPath = __DIR__ . '/storage';

// Check if target directory exists
if (!is_dir($targetPath)) {
    die("Error: Target directory does not exist: {$targetPath}");
}

// Remove existing link/directory if it exists
if (file_exists($linkPath)) {
    if (is_link($linkPath)) {
        unlink($linkPath);
        echo "Existing symbolic link removed.<br>";
    } else {
        die("Error: A file or directory named 'storage' already exists in the public folder. Please remove it manually first.");
    }
}

// Create the symbolic link
try {
    if (symlink($targetPath, $linkPath)) {
        echo "<div style='background: #d4edda; color: #155724; padding: 20px; border-radius: 5px; font-family: Arial;'>";
        echo "<h2>✓ Success!</h2>";
        echo "<p>Storage link created successfully!</p>";
        echo "<p><strong>Target:</strong> {$targetPath}</p>";
        echo "<p><strong>Link:</strong> {$linkPath}</p>";
        echo "<hr>";
        echo "<p style='color: #721c24; background: #f8d7da; padding: 10px; border-radius: 3px;'>";
        echo "<strong>IMPORTANT:</strong> Please delete this file (link_storage.php) immediately for security reasons!";
        echo "</p>";
        echo "</div>";
    } else {
        echo "<div style='background: #f8d7da; color: #721c24; padding: 20px; border-radius: 5px; font-family: Arial;'>";
        echo "<h2>✗ Error</h2>";
        echo "<p>Failed to create symbolic link. This could be because:</p>";
        echo "<ul>";
        echo "<li>Your hosting provider doesn't allow symbolic links</li>";
        echo "<li>PHP doesn't have permission to create symbolic links</li>";
        echo "</ul>";
        echo "<p>Please contact your hosting provider or use an alternative method.</p>";
        echo "</div>";
    }
} catch (Exception $e) {
    echo "<div style='background: #f8d7da; color: #721c24; padding: 20px; border-radius: 5px; font-family: Arial;'>";
    echo "<h2>✗ Exception</h2>";
    echo "<p>Error: " . htmlspecialchars($e->getMessage()) . "</p>";
    echo "</div>";
}
?>