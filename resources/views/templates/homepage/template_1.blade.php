@extends('layouts.app')

@section('title', 'Home - ' . (\App\Models\HeaderSetting::first()?->site_name ?? 'Barishal Cantonment Public School & College'))

@section('content')

    {{-- Slider Section - Inside Container (Template 1 Style) --}}
    <div class="container my-4">
        <div id="heroCarousel" class="carousel slide carousel-fade shadow-sm" data-bs-ride="carousel"
            data-bs-interval="5000">
            <div class="carousel-inner">
                @forelse($sliders as $key => $slider)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                        @if($slider->link)
                            <a href="{{ $slider->link }}" target="_blank">
                                <img src="{{ $slider->image_url }}" class="d-block w-100 slider-img"
                                    alt="{{ $slider->title ?? 'Slider Image' }}" referrerpolicy="no-referrer">
                            </a>
                        @else
                            <img src="{{ $slider->image_url }}" class="d-block w-100 slider-img"
                                alt="{{ $slider->title ?? 'Slider Image' }}" referrerpolicy="no-referrer">
                        @endif
                        @if($slider->title)
                            <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 p-2 rounded">
                                <h5>{{ $slider->title }}</h5>
                            </div>
                        @endif
                    </div>
                @empty
                    <div class="carousel-item active">
                        <div class="d-flex align-items-center justify-content-center bg-light slider-img">
                            <div class="text-center text-muted">
                                <i class="fas fa-image fa-4x mb-3"></i>
                                <p>No sliders available.</p>
                            </div>
                        </div>
                    </div>
                @endforelse
            </div>
            @if($sliders->count() > 1)
                <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            @endif
        </div>

        {{-- News Ticker / Scrolling Bar (Template 1 - Below Slider) --}}
        @if($headerSettings->show_notice_ticker ?? true)
            <div class="row mt-4 mb-3">
                <div class="col-12">
                    <div class="d-flex align-items-stretch"
                        style="box-shadow: 0 2px 4px rgba(0,0,0,0.1); border-radius: 5px; overflow: hidden;">
                        {{-- LATEST NEWS Label --}}
                        <div class="d-none d-md-flex align-items-center justify-content-center px-4"
                            style="background: color-mix(in srgb, var(--ticker-bg-color) 70%, black); color: white; font-weight: 600; font-size: 0.95rem; white-space: nowrap; min-width: 150px;">
                            <i class="fas fa-newspaper me-2"></i>
                            LATEST NEWS
                        </div>

                        {{-- Scrolling Ticker --}}
                        <div class="flex-grow-1" style="background-color: var(--ticker-bg-color); padding: 8px 15px;">
                            <marquee onmouseover="this.stop();" onmouseout="this.start();"
                                style="font-weight: 500; font-size: 0.95rem; color: var(--ticker-text-color);">
                                @php
                                    $tickerNotices = \App\Models\Notice::where('published_at', '<=', now())
                                        ->orderBy('published_at', 'desc')
                                        ->limit($headerSettings->notice_ticker_limit ?? 10)
                                        ->get();
                                @endphp
                                @if(isset($tickerNotices) && $tickerNotices->count() > 0)
                                    @foreach($tickerNotices as $notice)
                                        <a href="{{ $notice->link_url }}" class="text-decoration-none me-5"
                                            style="transition: all 0.3s ease; font-size: 0.95rem; color: var(--ticker-text-color);">
                                            <i class="fas fa-bell"
                                                style="margin-right: 8px; font-size: 0.85rem; background: linear-gradient(135deg, #FFD700, #FFA500); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;"></i>
                                            <strong>{{ $notice->title }}</strong>
                                        </a>
                                    @endforeach
                                @else
                                    <i class="fas fa-circle" style="font-size: 6px; vertical-align: middle; opacity: 0.7;"></i>
                                    <span style="margin-left: 8px;">Welcome to Barishal Cantonment Public School & College
                                        website.</span>
                                    <span style="margin: 0 15px;">•</span>
                                    <i class="fas fa-circle" style="font-size: 6px; vertical-align: middle; opacity: 0.7;"></i>
                                    <span style="margin-left: 8px;">Admission is going on for Session 2025.</span>
                                @endif
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>

    <div class="container my-3">
        <div class="row">
            <!-- Main Content Column -->
            <div class="col-lg-9">

                <!-- Info & Notices Row -->
                <div class="row">
                    <!-- BCPSC Information -->
                    <div class="col-md-4 mb-4">
                        <div class="card shadow-sm h-100 border-0">
                            <div class="card-header py-2" style="background-color: var(--primary-color); color: white;">
                                <h5 class="mb-0 fs-6 fw-bold">{{ $theme->sidebar_title ?? 'BCPSC INFORMATION' }}</h5>
                            </div>
                            <div class="list-group list-group-flush" style="background-color: var(--header-bg-color);">
                                @if(isset($importantLinks))
                                    @foreach($importantLinks as $link)
                                        <a href="{{ $link->url }}"
                                            class="list-group-item list-group-item-action bg-transparent fw-bold d-flex align-items-center"
                                            style="color: var(--accent-color); border-bottom: 1px solid rgba(255, 255, 255, 0.1);">
                                            <span class="me-2" style="color: var(--accent-color); font-size: 1.2em;">☘</span>
                                            {{ $link->title }}
                                        </a>
                                    @endforeach
                                @else
                                    <div class="p-3 text-center text-muted">No links available</div>
                                @endif
                            </div>
                        </div>
                    </div>

                    <!-- Notice Board -->
                    <div class="col-md-8 mb-4">
                        <div class="card shadow-sm h-100 border-0">
                            <div class="card-header py-2" style="background-color: var(--primary-color); color: white;">
                                <h5 class="mb-0 fs-6 fw-bold">{{ $theme->all_notices_title ?? 'ALL PUBLISHED NOTICE' }}</h5>
                            </div>
                            <div class="card-body p-0" style="background-color: var(--accent-color);">
                                <div class="list-group list-group-flush">
                                    @if(isset($notices) && $notices->count() > 0)
                                        @foreach($notices as $notice)
                                            @php
                                                // Use page URL if available, otherwise use link or file
                                                $noticeUrl = $notice->page_id && $notice->page
                                                    ? '/' . $notice->page->slug
                                                    : ($notice->link ?? ($notice->file_url ? $notice->file_url : '#'));
                                            @endphp
                                            <a href="{{ $noticeUrl }}" target="{{ $notice->page_id ? '_self' : '_blank' }}"
                                                class="list-group-item list-group-item-action py-1 border-bottom d-flex align-items-center"
                                                style="background-color: var(--accent-color); padding-left: 5px; padding-right: 5px;">

                                                {{-- Date Box - Two Part Design --}}
                                                <div class="me-3 d-flex flex-column rounded overflow-hidden shadow-sm"
                                                    style="width: 50px; flex-shrink: 0;">
                                                    {{-- Month (Primary Color Background) --}}
                                                    <div class="text-white text-center py-1"
                                                        style="background-color: var(--primary-color); font-size: 0.6rem; font-weight: 600; letter-spacing: 0.5px;">
                                                        {{ strtoupper($notice->published_at->format('M')) }}
                                                    </div>
                                                    {{-- Date (White Background) --}}
                                                    <div class="bg-white text-center py-1"
                                                        style="color: #333; font-size: 1.1rem; font-weight: 700; line-height: 1.2;">
                                                        {{ $notice->published_at->format('d') }}
                                                    </div>
                                                </div>

                                                <div class="flex-grow-1">
                                                    <div class="fw-bold mb-0"
                                                        style="color: var(--primary-color); font-size: .9rem;">
                                                        {{ $notice->title }}
                                                        @if($notice->file_url)
                                                            <i class="fas fa-file-pdf ms-2 text-danger"></i>
                                                        @endif
                                                        @if($notice->page_id)
                                                            <i class="fas fa-file-alt ms-2 text-success"
                                                                title="Full page available"></i>
                                                        @endif
                                                    </div>
                                                </div>
                                            </a>
                                            @if(!$loop->last)
                                                <div style="border-bottom: 1px solid rgba(0,0,0,0.05); margin: 0 10px;"></div>
                                            @endif
                                        @endforeach
                                    @else
                                        <div class="p-4 text-center text-muted">
                                            <i class="fas fa-inbox fa-3x mb-3 d-block"></i>
                                            <p>No notices published yet.</p>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="card-footer text-center border-top-0 pb-3"
                                style="background-color: var(--accent-color);">
                                <a href="{{ route('notices.index') }}" class="btn btn-sm px-4"
                                    style="background-color: var(--secondary-color); color: white; border: none;">All
                                    Notice</a>
                            </div>
                        </div>
                    </div>
                </div>

                {{-- Welcome To BCPSC Section --}}
                @if(isset($welcomeSection) && $welcomeSection && $welcomeSection->is_active)
                    <div class="row mt-4">
                        <div class="col-12">
                            <div class="card shadow-sm border-0">
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
                                        <div class="mt-3 text-end">
                                            <a href="{{ route('welcome.show') }}" class="btn btn-sm px-4"
                                                style="background-color: var(--primary-color); color: white; border: none;">
                                                Details
                                            </a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

                {{-- Menu Cards Section --}}
                @if(\App\Models\Setting::get('menu_cards_active', true) && isset($menuCards) && $menuCards->count() > 0)
                    @php
                        $globalTemplate = $settings['menu_card_template'] ?? 'template_1';
                    @endphp
                    <div class="row mt-4 g-3">
                        @foreach($menuCards as $card)
                            @if($globalTemplate === 'template_2')
                                @include('partials.menu-cards.template-2', ['card' => $card])
                            @elseif($globalTemplate === 'template_3')
                                @include('partials.menu-cards.template-3', ['card' => $card])
                            @else
                                @include('partials.menu-cards.template-1', ['card' => $card])
                            @endif
                        @endforeach
                    </div>
                @endif

                {{-- News and Events Section --}}
                @if(isset($newsEvents) && $newsEvents->count() > 0)
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="card shadow-sm border-0">
                                <div class="card-header text-white d-flex justify-content-between align-items-center"
                                    style="background-color: var(--primary-color);">
                                    <h5 class="mb-0">{{ $theme->news_events_title ?? 'NEWS AND EVENTS' }}</h5>
                                    <a href="{{ route('news.index') }}" class="text-white text-decoration-none small"
                                        style="background-color: var(--secondary-color); padding: 6px 16px; border-radius: 4px;">
                                        View All <i class="fas fa-arrow-right ms-1"></i>
                                    </a>
                                </div>
                                <div class="card-body p-4">
                                    <div class="row g-4">
                                        @foreach($newsEvents as $news)
                                            <div class="col-12 col-lg-4">
                                                <div class="card h-100 border-0 shadow-sm">
                                                    @if($news->image)
                                                        @php
                                                            $optimizedImage = \App\Helpers\GoogleDriveHelper::getDirectUrl($news->image, 400);
                                                        @endphp
                                                        <img src="{{ $optimizedImage }}" class="card-img-top" alt="{{ $news->title }}"
                                                            style="height: 200px; object-fit: cover;" loading="lazy"
                                                            referrerpolicy="no-referrer">
                                                    @endif
                                                    <div class="card-body d-flex flex-column">
                                                        <h6 class="card-title fw-bold">{{ Str::words($news->title, 7, '...') }}</h6>
                                                        <div class="text-muted small mb-2">
                                                            <i class="far fa-calendar-alt me-1"></i>
                                                            {{ $news->published_at->format('M d, Y') }}
                                                        </div>
                                                        @if($news->excerpt)
                                                            <p class="card-text text-muted small">{{ Str::limit($news->excerpt, 80) }}
                                                            </p>
                                                        @endif
                                                        <a href="{{ route('news.show', $news->slug) }}" class="btn btn-sm mt-auto"
                                                            style="background-color: transparent; color: var(--secondary-color); border: 1px solid var(--secondary-color);">
                                                            READ MORE
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

                {{-- ACHIEVEMENTS Section --}}
                @if(isset($achievements) && $achievements->count() > 0)
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="card shadow-sm border-0">
                                <div class="card-header text-white d-flex justify-content-between align-items-center"
                                    style="background-color: var(--primary-color);">
                                    <h5 class="mb-0">{{ $theme->achievements_title ?? 'ACHIEVEMENTS' }}</h5>
                                    <a href="{{ route('achievements.index') }}" class="text-white text-decoration-none small"
                                        style="background-color: var(--secondary-color); padding: 6px 16px; border-radius: 4px;">
                                        View All <i class="fas fa-arrow-right ms-1"></i>
                                    </a>
                                </div>
                                <div class="card-body p-4">
                                    <div class="row g-4">
                                        <div class="col-12">
                                            <div class="row g-4">
                                                @foreach($achievements as $achievement)
                                                    <div class="col-12 col-lg-4">
                                                        <div class="card h-100 shadow-sm border-0">
                                                            @if($achievement->image)
                                                                @php
                                                                    $optimizedImage = \App\Helpers\GoogleDriveHelper::getDirectUrl($achievement->image, 400);
                                                                @endphp
                                                                <img src="{{ $optimizedImage }}" class="card-img-top"
                                                                    alt="{{ $achievement->title }}"
                                                                    style="height: 200px; object-fit: cover;" loading="lazy"
                                                                    referrerpolicy="no-referrer">
                                                            @endif
                                                            <div class="card-body d-flex flex-column">
                                                                <h6 class="card-title fw-bold">
                                                                    {{ Str::words($achievement->title, 7, '...') }}
                                                                </h6>
                                                                <div class="text-muted small mb-2">
                                                                    <i class="far fa-calendar-alt me-1"></i>
                                                                    {{ $achievement->published_at->format('M d, Y') }}
                                                                </div>
                                                                @if($achievement->excerpt)
                                                                    <p class="card-text text-muted small">
                                                                        {{ Str::limit($achievement->excerpt, 80) }}
                                                                    </p>
                                                                @endif
                                                                <a href="{{ route('achievement.show', $achievement->slug) }}"
                                                                    class="btn btn-sm mt-auto"
                                                                    style="background-color: transparent; color: var(--secondary-color); border: 1px solid var(--secondary-color);">
                                                                    READ MORE
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

                {{-- Location Map Section --}}
                @if(isset($locationMap) && $locationMap && $locationMap->is_active)
                    <div class="row mt-5">
                        <div class="col-12">
                            <div class="card shadow-sm border-0">
                                <div class="card-header text-white" style="background-color: var(--primary-color);">
                                    <h5 class="mb-0">{{ $locationMap->title }}</h5>
                                </div>
                                <div class="card-body p-0">
                                    <iframe src="{{ $locationMap->embed_url }}" width="100%" height="{{ $locationMap->height }}"
                                        style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade">
                                    </iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

                {{-- Theme Showcase Section --}}
                @include('partials.theme-showcase')
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-3">
                <!-- Chief Patron -->
                @if(isset($chiefPatron) && $chiefPatron)
                    @include('partials.sidebar-message', ['message' => $chiefPatron, 'title' => 'Message of the Chief Patron'])
                @endif

                <!-- Chairman -->
                @if(isset($chairman) && $chairman)
                    @include('partials.sidebar-message', ['message' => $chairman, 'title' => 'Message of the Chairman'])
                @endif

                <!-- Principal -->
                @if(isset($principal) && $principal)
                    @include('partials.sidebar-message', ['message' => $principal, 'title' => 'Message of the Principal'])
                @endif

                <!-- Sidebar Widgets -->
                @if(isset($sidebarWidgets))
                    @foreach($sidebarWidgets as $widget)
                        @include('partials.sidebar-widget', ['widget' => $widget])
                    @endforeach
                @endif
            </div>
        </div>
    </div>

@endsection