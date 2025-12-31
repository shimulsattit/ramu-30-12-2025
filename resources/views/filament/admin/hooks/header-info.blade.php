<style>
    /* Reset Topbar Background to Default (White/Dark) */
    .fi-topbar {
        background-color: white !important;
        border-bottom: 1px solid #e5e7eb !important;
    }

    .dark .fi-topbar {
        background-color: #111827 !important;
        border-bottom-color: #374151 !important;
    }

    /* Style School Name and Time with Primary Color */
    .admin-header-info {
        color: #006a4e !important;
        /* BCPSC Green */
    }

    .school-name-text {
        color: #006a4e !important;
        font-weight: 700 !important;
        font-size: 1.1rem;
    }

    .admin-header-info .text-gray-500,
    .admin-header-info .text-gray-400 {
        color: #006a4e !important;
    }

    /* Adjust icons color */
    .admin-header-info svg {
        color: #006a4e !important;
    }

    /* Adjust separator color */
    .admin-header-info .border-gray-300 {
        border-color: rgba(0, 106, 78, 0.3) !important;
    }

    /* Reset standard filament topbar items color to gray/default */
    .fi-topbar .fi-icon-btn {
        color: #6b7280 !important;
    }

    .fi-topbar .fi-icon-btn:hover {
        background-color: #f3f4f6 !important;
    }

    .dark .fi-topbar .fi-icon-btn {
        color: #9ca3af !important;
    }

    .dark .fi-topbar .fi-icon-btn:hover {
        background-color: #374151 !important;
    }

    /* User menu text color reset */
    .fi-user-menu-trigger,
    .fi-user-menu-trigger span {
        color: inherit !important;
    }

    /* Mobile sidebar toggle reset */
    .fi-topbar button[aria-label="Open sidebar"] {
        color: inherit !important;
    }
</style>

<div class="admin-header-info flex items-center gap-4 text-sm font-medium">
    <div class="hidden sm:flex items-center gap-2">
        <x-heroicon-o-building-library class="w-5 h-5" />
        <span
            class="school-name-text">{{ \App\Models\HeaderSetting::first()?->site_name ?? 'Barishal Cantonment Public School & College' }}</span>
    </div>
    <div class="hidden sm:flex items-center gap-2 border-l border-gray-300 pl-4"
        x-data="{ time: new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true }) }"
        x-init="setInterval(() => time = new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true }), 1000)">
        <x-heroicon-o-clock class="w-4 h-4" />
        <span x-text="time"></span>
        <span class="hidden md:inline text-gray-400">|</span>
        <span class="hidden md:inline">{{ now()->format('l, d M Y') }}</span>
    </div>
</div>