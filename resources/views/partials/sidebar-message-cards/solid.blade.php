{{-- Sidebar Message Card Design 1: Solid Color (Default) --}}
@php
    // Use theme CSS variables instead of settings array
    $borderRadius = $settings['sidebar_border_radius'] ?? '10px';
    $borderWidth = $settings['sidebar_border_width'] ?? '3px';

    $imageWidth = $settings['sidebar_image_width'] ?? '100%';

    $aspectRatio = $settings['sidebar_aspect_ratio'] ?? '3/4';
    $imageHeight = ($aspectRatio === 'custom') ? ($settings['sidebar_image_height'] ?? 'auto') : 'auto';
    $styleAspectRatio = ($aspectRatio !== 'custom' && $aspectRatio !== 'auto') ? $aspectRatio : 'auto';

    $imagePosition = $settings['sidebar_image_position'] ?? 'top center';
    $imageFit = $settings['sidebar_image_fit'] ?? 'cover';

    $titleFontSize = $settings['sidebar_title_font_size'] ?? '1.1rem';
    $desigFontSize = $settings['sidebar_desig_font_size'] ?? '0.875rem';
    $cardPadding = $settings['sidebar_card_padding'] ?? '1rem';
@endphp

<div class="card mb-3 shadow-sm border-0">
    <div class="card-header py-2 text-center" style="background-color: var(--primary-color); color: white;">
        <h6 class="mb-0 fw-bold">{{ $title }}</h6>
    </div>
    <div class="card-body text-center"
        style="background-color: var(--header-bg-color); color: white; padding: {{ $cardPadding }} !important;">
        @if($message->image_url)
            <div class="text-center mb-3">
                <img src="{{ $message->image_url }}" alt="{{ $message->name }}" class="img-fluid"
                    style="width: 200px; height: 250px; object-fit: cover; border: 3px solid white; border-radius: 15px;"
                    referrerpolicy="no-referrer">
            </div>
        @endif
        <h6 class="mb-1 fw-bold" style="color: var(--accent-color); font-size: {{ $titleFontSize }};">
            {{ $message->name }}
        </h6>
        <small class="d-block mb-3"
            style="color: white; font-size: {{ $desigFontSize }};">{{ $message->designation }}</small>
        @if($message->slug)
            <a href="{{ route('message.show', $message->slug) }}" class="btn btn-sm rounded-pill px-4 fw-bold"
                style="background-color: var(--secondary-color); color: white; border: none;">Read Message</a>
        @endif
    </div>
</div>