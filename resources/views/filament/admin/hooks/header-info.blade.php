<style>
    /* Force Green Header */
    .fi-header,
    .fi-topbar {
        background-color: #006a4e !important;
        /* BCPSC Green */
        color: #ffffff !important;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1) !important;
    }

    /* Ensure text and icons in header are white */
    .fi-topbar .fi-icon-btn {
        color: rgba(255, 255, 255, 0.9) !important;
    }

    .fi-topbar .fi-icon-btn:hover {
        background-color: rgba(0, 0, 0, 0.1) !important;
    }

    /* User menu adjustments */
    .fi-user-menu-trigger {
        color: white !important;
    }

    /* Mobile sidebar toggle */
    .fi-topbar button[aria-label="Open sidebar"] {
        color: white !important;
    }

    /* Adjust injected info text colors */
    .admin-header-info {
        color: white !important;
    }

    .admin-header-info .text-gray-500,
    .admin-header-info .text-gray-400 {
        color: rgba(255, 255, 255, 0.9) !important;
    }

    .admin-header-info .border-gray-300 {
        border-color: rgba(255, 255, 255, 0.3) !important;
    }
</style>

<div class="admin-header-info flex items-center gap-4 text-sm font-medium text-gray-500 dark:text-gray-400">
    <div class="hidden sm:flex items-center gap-2">
        <x-heroicon-o-building-library class="w-4 h-4" />
        <span>{{ \App\Models\HeaderSetting::first()?->site_name ?? 'Barishal Cantonment Public School & College' }}</span>
    </div>
    <div class="hidden sm:flex items-center gap-2 border-l border-gray-300 dark:border-gray-600 pl-4"
        x-data="{ time: new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true }) }"
        x-init="setInterval(() => time = new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true }), 1000)">
        <x-heroicon-o-clock class="w-4 h-4" />
        <span x-text="time"></span>
        <span class="hidden md:inline text-gray-400">|</span>
        <span class="hidden md:inline">{{ now()->format('l, d M Y') }}</span>
    </div>
</div>