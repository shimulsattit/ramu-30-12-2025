@php
    $tutorialLink = \App\Models\Setting::get('admin_tutorial_link');
@endphp

@if($tutorialLink)
    <div class="px-4 py-2 border-t border-gray-100 dark:border-gray-800">
        <a href="{{ $tutorialLink }}" target="_blank"
            class="flex items-center gap-3 px-3 py-2 text-sm font-medium text-white transition-all bg-red-600 rounded-lg hover:bg-red-700 group ring-1 ring-white/10"
            title="Watch Video Tutorial">
            <div
                class="flex items-center justify-center w-6 h-6 bg-white rounded-full bg-opacity-20 group-hover:bg-opacity-30">
                <svg class="w-4 h-4 text-white fill-current" viewBox="0 0 24 24">
                    <path
                        d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z" />
                </svg>
            </div>
            <span>Video Tutorial</span>
        </a>
    </div>
@endif