{{-- Sidebar Message Card Design 3: Modern Card with Border --}}
<div class="card mb-3 shadow border-0"
    style="border-left: 5px solid var(--primary-color) !important; background: #f8f9fa;">
    <div class="card-header py-2 text-center"
        style="background-color: white; color: var(--primary-color); border-bottom: 3px solid var(--primary-color);">
        <h6 class="mb-0 fw-bold">{{ $title }}</h6>
    </div>
    <div class="card-body text-center" style="background-color: white; padding: 1.5rem !important;">
        @if($message->image_url)
            <div class="text-center mb-3">
                <img src="{{ $message->image_url }}" alt="{{ $message->name }}" class="img-fluid"
                    style="width: 200px; height: 250px; object-fit: cover; border: none; border-radius: 10px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);"
                    referrerpolicy="no-referrer">
            </div>
        @endif
        <h6 class="mb-1 fw-bold" style="color: var(--primary-color); font-size: 1.1rem;">
            {{ $message->name }}
        </h6>
        <small class="d-block mb-3" style="color: #6c757d; font-size: 0.875rem;">{{ $message->designation }}</small>
        @if($message->slug)
            <a href="{{ route('message.show', $message->slug) }}" class="btn btn-sm rounded px-4 fw-bold"
                style="background-color: var(--primary-color); color: white; border: none;">Read Message</a>
        @endif
    </div>
</div>