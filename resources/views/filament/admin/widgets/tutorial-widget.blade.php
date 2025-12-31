<x-filament::widget>
    <x-filament::section>
        <x-slot name="heading">
            ওয়েবসাইট ব্যবহারের নির্দেশনা
        </x-slot>

        <div
            class="w-full h-[500px] rounded-lg overflow-hidden border border-gray-200 dark:border-gray-700 bg-gray-100 dark:bg-gray-800">
            @if($embedUrl)
                <iframe class="w-full h-full" src="{{ $embedUrl }}" title="Website Tutorial" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen>
                </iframe>
            @else
                <div class="flex items-center justify-center h-full text-gray-500">
                    Video URL format not recognized
                </div>
            @endif
        </div>
    </x-filament::section>
</x-filament::widget>