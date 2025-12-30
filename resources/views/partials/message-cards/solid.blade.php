{{-- Message Card Design 1: Solid Color (Default) --}}
<div class="col-md-4">
    <div class="card h-100 shadow-sm border-0">
        <div class="card-header py-2 text-center"
            style="background-color: {{ $settings['card_header_color'] ?? 'var(--primary-color)' }}; color: white;">
            <h6 class="mb-0 fw-bold">{{ $title }}</h6>
        </div>
        <div class="card-body text-center"
            style="background-color: var(--header-bg-color); color: white; padding: 1rem !important;">
            @if($message->image_url)
                <div class="text-center mb-3">
                    <img src="{{ $message->image_url }}" alt="{{ $message->name }}" class="img-fluid"
                        style="width: 150px; height: 180px; object-fit: cover; border: 3px solid {{ $settings['card_image_border_color'] ?? 'white' }}; border-radius: 15px;"
                        referrerpolicy="no-referrer">
                </div>
            @endif
            <h6 class="mb-1 fw-bold"
                style="color: {{ $settings['card_name_text_color'] ?? 'var(--accent-color)' }}; font-size: 1rem;">
                {{ $message->name }}
            </h6>
            <small class="d-block mb-3"
                style="color: {{ $settings['card_designation_text_color'] ?? 'white' }}; font-size: 0.875rem;">{{ $message->designation }}</small>
            @if($message->slug)
                <a href="{{ route('message.show', $message->slug) }}" class="btn btn-sm rounded-pill px-4 fw-bold"
                    style="background-color: {{ $settings['card_button_bg_color'] ?? 'var(--secondary-color)' }}; color: {{ $settings['card_button_text_color'] ?? 'white' }}; border: none;">Read
                    Message</a>
            @endif
        </div>
    </div>
</div>