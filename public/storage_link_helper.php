<?php
/**
 * Helper script to fix storage link on shared hosting
 */
$publicPath = __DIR__;
$storagePath = __DIR__ . "/../storage/app/public";
$linkPath = __DIR__ . "/storage";
echo "<h1>Storage Link Fixer</h1>";
if (is_link($linkPath)) {
    echo "<p style='color: orange;'>Storage link already exists. Deleting it to recreate...</p>";
    if (PHP_OS_FAMILY === 'Windows') {
        exec("rmdir \"$linkPath\"");
    } else {
        unlink($linkPath);
    }
} elseif (file_exists($linkPath)) {
    echo "<p style='color: red;'>A file or directory exists at $linkPath but it's not a symlink. Deleting it...</p>";
    if (is_dir($linkPath)) {
        exec(PHP_OS_FAMILY === 'Windows' ? 'rd /s /q \"$linkPath\"' : 'rm -rf \"$linkPath\"');
    } else {
        unlink($linkPath);
    }
}
$status = symlink($storagePath, $linkPath);
if ($status) {
    echo "<p style='color: green; font-weight: bold;'>Successfully created storage link!</p>";
    echo "<p>Link: $linkPath -> $storagePath</p>";
} else {
    echo "<p style='color: red; font-weight: bold;'>Failed to create storage link.</p>";
    echo "<p>Please try running this command via SSH: <code>ln -s $storagePath $linkPath</code></p>";
}
echo "<hr><p>Return to <a href='/gallery'>Gallery</a></p>";
