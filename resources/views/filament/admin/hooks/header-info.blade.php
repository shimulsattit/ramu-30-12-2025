<div class="flex items-center gap-4 text-sm font-medium text-gray-500 dark:text-gray-400">
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