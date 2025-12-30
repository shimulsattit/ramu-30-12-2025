{{-- Location Map Section --}}
@php
    $locationMap = \App\Models\LocationMap::where('is_active', true)->first();
@endphp

@if($locationMap)
    <div class="card shadow-sm border-0 mb-4">
        <div class="card-header text-white" style="background-color: var(--primary-color);">
            <h5 class="mb-0">
                <i class="fas fa-map-marker-alt me-2"></i>{{ $locationMap->title }}
            </h5>
        </div>
        <div class="card-body p-0">
            @if($locationMap->embed_url)
                <div class="ratio ratio-16x9" style="height: {{ $locationMap->height ?? '400' }}px;">
                    <iframe src="{{ $locationMap->embed_url }}" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>
            @endif
        </div>
    </div>
@endif