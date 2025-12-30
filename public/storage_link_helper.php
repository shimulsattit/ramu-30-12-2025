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
echo "<hr><h3>System Optimization & Cache Clearing</h3>";

$commands = [
    'config:clear' => 'Configuration cache',
    'route:clear' => 'Route cache',
    'view:clear' => 'View cache',
    'cache:clear' => 'Application cache',
];

foreach ($commands as $command => $label) {
    echo "<p>Running: <code>php artisan $command</code>... ";
    $output = [];
    $resultCode = 0;
    exec("php " . __DIR__ . "/../artisan $command 2>&1", $output, $resultCode);
    if ($resultCode === 0) {
        echo "<span style='color: green;'>Success</span>";
    } else {
        echo "<span style='color: orange;'>Warning: " . implode(' ', $output) . "</span>";
    }
    echo "</p>";
}

// Check for public/hot file
$hotFile = __DIR__ . '/hot';
if (file_exists($hotFile)) {
    echo "<p style='color: red; font-weight: bold;'>Found 'public/hot' file! Deleting it...</p>";
    unlink($hotFile);
}

echo "<hr><p>Return to <a href='/'>Homepage</a> | <a href='/gallery'>Gallery</a></p>";

