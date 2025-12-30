{{-- Welcome Section --}}
@if(isset($welcomeSection) && $welcomeSection && $welcomeSection->is_active)
    <div class="card shadow-sm border-0 mb-4">
        <div class="card-header text-white" style="background-color: var(--primary-color);">
            <h5 class="mb-0">{{ $welcomeSection->title }}</h5>
        </div>
        <div class="card-body p-4">
            @if($welcomeSection->image)
                <img src="{{ $welcomeSection->image }}" alt="{{ $welcomeSection->title }}"
                    class="img-fluid rounded shadow-sm mb-3 welcome-image" referrerpolicy="no-referrer">
                <style>
                    .welcome-image {
                        float: left;
                        margin-right: 20px;
                        margin-bottom: 15px;
                        max-width: 350px;
                    }

                    @media (max-width: 768px) {
                        .welcome-image {
                            float: none;
                            display: block;
                            margin: 0 auto 15px auto;
                            max-width: 100%;
                            width: 100%;
                        }
                    }
                </style>
            @endif

            @php
                // Reference content: ~1450 characters
                // Show Read More if content exceeds this length
                $content = strip_tags($welcomeSection->content);
                $contentLength = strlen($content);
                $showReadMore = $contentLength > 1500;

                if ($showReadMore) {
                    // Show first 1200 characters
                    $limitedContent = substr($content, 0, 1200);
                    // Find last complete word to avoid cutting mid-word
                    $lastSpace = strrpos($limitedContent, ' ');
                    if ($lastSpace !== false) {
                        $limitedContent = substr($limitedContent, 0, $lastSpace);
                    }
                } else {
                    $limitedContent = $content;
                }
            @endphp

            <div class="welcome-content" style="text-align: justify; line-height: 1.8;">
                {!! nl2br(e($limitedContent)) !!}
                @if($showReadMore)
                    <span>...</span>
                @endif
            </div>
            <div style="clear: both;"></div>

            @if($showReadMore)
                <div class="mt-3 text-center">
                    <a href="{{ route('welcome.show') }}" class="btn btn-sm px-4"
                        style="background-color: var(--primary-color); color: white; border: none;">
                        <i class="fas fa-book-open me-2"></i>Read More Details
                    </a>
                </div>
            @endif
        </div>
    </div>
@endif