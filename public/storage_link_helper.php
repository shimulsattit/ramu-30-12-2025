<?php
/**
 * Advanced Helper script to fix storage link and debug server issues
 */
error_reporting(E_ALL);
ini_set('display_errors', 1);

$publicPath = __DIR__;
$storagePath = __DIR__ . "/../storage/app/public";
$linkPath = __DIR__ . "/storage";

echo "<html><head><title>System Diagnostics & Fixer</title><style>
    body { font-family: sans-serif; line-height: 1.6; padding: 20px; max-width: 800px; margin: 0 auto; color: #333; }
    h1 { color: #2c3e50; border-bottom: 2px solid #eee; padding-bottom: 10px; }
    h3 { color: #e67e22; margin-top: 30px; }
    h4 { color: #2980b9; margin-bottom: 5px; }
    ul { background: #f9f9f9; padding: 15px 40px; border-radius: 5px; border: 1px solid #ddd; }
    code { background: #eee; padding: 2px 5px; border-radius: 3px; }
    .status-ok { color: green; font-weight: bold; }
    .status-fail { color: red; font-weight: bold; }
    .warning { background: #fff3cd; border: 1px solid #ffeeba; padding: 10px; border-radius: 5px; color: #856404; }
    pre { background: #2c3e50; color: #ecf0f1; padding: 15px; border-radius: 5px; overflow-x: auto; }
</style></head><body>";

echo "<h1>System Diagnostics & Fixer</h1>";

// 1. Storage Link Fix
echo "<h3>1. Storage Link Status</h3>";
if (is_link($linkPath)) {
    echo "<p>Storage link already exists. Recreating to ensure correctness...</p>";
    PHP_OS_FAMILY === 'Windows' ? exec("rmdir \"$linkPath\"") : unlink($linkPath);
} elseif (file_exists($linkPath)) {
    echo "<p class='status-fail'>Conflict: A file or directory exists at $linkPath. Deleting it...</p>";
    is_dir($linkPath) ? exec(PHP_OS_FAMILY === 'Windows' ? 'rd /s /q "' . $linkPath . '"' : 'rm -rf "' . $linkPath . '"') : unlink($linkPath);
}

if (symlink($storagePath, $linkPath)) {
    echo "<p class='status-ok'>✅ Storage link successfully created!</p>";
} else {
    echo "<p class='status-fail'>❌ Failed to create storage link. Please run <code>php artisan storage:link</code> via SSH if possible.</p>";
}

// 2. PHP Environment
echo "<h3>2. PHP Environment</h3>";
$exts = ['intl', 'mbstring', 'fileinfo', 'dom', 'curl', 'gd', 'exif'];
echo "<h4>Required Extensions:</h4><ul>";
foreach ($exts as $ext) {
    echo "<li>$ext: " . (extension_loaded($ext) ? "<span class='status-ok'>Enabled</span>" : "<span class='status-fail'>DISABLED</span>") . "</li>";
}
echo "</ul>";
echo "<p>PHP Version: <strong>" . PHP_VERSION . "</strong></p>";

// 3. Laravel Diagnostics
echo "<h3>3. Laravel & Database Diagnostics</h3>";
try {
    require __DIR__ . '/../vendor/autoload.php';
    $app = require_once __DIR__ . '/../bootstrap/app.php';
    $kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);
    // Don't handle full request, just boot
    $app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

    echo "<h4>Application Config:</h4><ul>";
    echo "<li>APP_ENV: <strong>" . config('app.env') . "</strong></li>";
    echo "<li>APP_DEBUG: <strong>" . (config('app.debug') ? 'true' : 'false') . "</strong></li>";
    echo "<li>Database Driver: <strong>" . config('database.default') . "</strong></li>";
    echo "</ul>";

    echo "<h4>Data Checks:</h4><ul>";
    $menuCount = \App\Models\Menu::count();
    $activeMenuCount = \App\Models\Menu::where('is_active', true)->count();
    $topLevelMenusNull = \App\Models\Menu::whereNull('parent_id')->count();
    $topLevelMenusZero = \App\Models\Menu::where('parent_id', 0)->count();
    $theme = \App\Models\ThemeSetting::first();

    echo "<li>Menus (Total): <strong>$menuCount</strong></li>";
    echo "<li>Menus (Active): <strong>$activeMenuCount</strong></li>";
    echo "<li>Top-level Menus (parent_id IS NULL): <strong>$topLevelMenusNull</strong></li>";
    echo "<li>Top-level Menus (parent_id IS 0): <strong>$topLevelMenusZero</strong></li>";
    echo "<li>Selected Template: <strong>" . ($theme->homepage_template ?? 'template_1') . "</strong></li>";
    echo "<li>Navbar Color: <strong>" . ($theme->navbar_bg_color ?? 'N/A') . "</strong></li>";
    echo "</ul>";

    if ($menuCount == 0) {
        echo "<div class='warning'>⚠️ <strong>Warning:</strong> No menu items found. The navbar will only show fallbacks.</div>";
    }
} catch (\Exception $e) {
    echo "<p class='status-fail'>❌ Laravel Boot Error: " . $e->getMessage() . "</p>";
}

// 4. Cache Clearing
echo "<h3>4. System Optimization</h3>";
$commands = ['config:clear', 'route:clear', 'view:clear', 'cache:clear'];
foreach ($commands as $cmd) {
    echo "Running <code>php artisan $cmd</code>... ";
    $output = [];
    $code = 0;
    exec("php " . __DIR__ . "/../artisan $cmd 2>&1", $output, $code);
    echo ($code === 0) ? "<span class='status-ok'>Success</span><br>" : "<span class='status-fail'>Failed: " . implode(' ', $output) . "</span><br>";
}

// 5. Cleanup
echo "<h3>5. Maintenance</h3>";
$hotFile = __DIR__ . '/hot';
if (file_exists($hotFile)) {
    echo "<p class='status-fail'>Vite 'hot' file found! Deleting it for production...</p>";
    unlink($hotFile);
} else {
    echo "<p class='status-ok'>Vite 'hot' file check: Clean</p>";
}

echo "<hr><p><strong><a href='/'>Go to Homepage</a></strong> | <strong><a href='/admin/menus'>Go to Admin Menus</a></strong></p>";
echo "</body></html>";
