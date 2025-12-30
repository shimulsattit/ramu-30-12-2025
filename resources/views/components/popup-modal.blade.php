@if($popup)
    <div id="popup-modal-{{ $popup->id }}" class="popup-modal-overlay" data-popup-id="{{ $popup->id }}"
        data-show-once="{{ $popup->show_once_per_session ? 'true' : 'false' }}"
        data-auto-close="{{ $popup->auto_close_seconds ?? '' }}">

        <div class="popup-modal-container">
            <button class="popup-close-btn" aria-label="Close">&times;</button>

            @if($popup->image)
                <div class="popup-image">
                    <img src="{{ $popup->image }}" alt="{{ $popup->title }}" loading="lazy">
                </div>
            @endif

            <div class="popup-content">
                <h2 class="popup-title">{{ $popup->title }}</h2>

                @if($popup->content)
                    <div class="popup-body">
                        {!! $popup->content !!}
                    </div>
                @endif

                @if($popup->button_text && $popup->button_link)
                    <div class="popup-actions">
                        <a href="{{ $popup->button_link }}" class="popup-btn"
                            style="background-color: {{ $popup->button_bg_color ?? '#006a4e' }}; color: {{ $popup->button_text_color ?? '#ffffff' }};"
                            {{ Str::startsWith($popup->button_link, ['http://', 'https://']) ? 'target="_blank" rel="noopener noreferrer"' : '' }}>
                            {{ $popup->button_text }}
                        </a>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endif