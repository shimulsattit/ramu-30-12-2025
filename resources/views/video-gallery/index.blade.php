@extends('layouts.app')

@section('title', 'Video Gallery')

@section('content')
    <div class="container my-5">
        {{-- Page Header --}}
        <div class="card shadow-sm border-0 mb-4">
            <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
                <h3 class="mb-0 fw-bold" style="font-size: 1.2rem;">
                    <i class="fas fa-video me-2"></i>
                    Video Gallery
                </h3>
            </div>
        </div>

        {{-- All Videos Grid --}}
        @php
            $hasVideos = false;
            foreach ($galleries as $gallery) {
                if ($gallery->videos && count($gallery->videos) > 0) {
                    $hasVideos = true;
                    break;
                }
            }
        @endphp

        @if($hasVideos)
            <div class="row g-4">
                @foreach($galleries as $gallery)
                    @if($gallery->videos && count($gallery->videos) > 0)
                        {{-- Gallery Title Section --}}
                        <div class="col-12">
                            <h5 class="fw-bold mb-3" style="color: var(--primary-color);">
                                <i class="fas fa-folder-open me-2"></i>
                                {{ $gallery->title }}
                            </h5>
                        </div>

                        {{-- Videos from this gallery --}}
                        @foreach($gallery->videos as $video)
                            @php
                                $youtubeId = null;

                                // Extract YouTube video ID from various URL formats
                                if (preg_match('/(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)([^&\?\/]+)/', $video['youtube_url'], $matches)) {
                                    $youtubeId = $matches[1];
                                }
                            @endphp

                            @if($youtubeId)
                                <div class="col-md-6 col-lg-4">
                                    <div class="card shadow-sm border-0 h-100">
                                        {{-- YouTube Embed --}}
                                        <div class="ratio ratio-16x9">
                                            <iframe src="https://www.youtube.com/embed/{{ $youtubeId }}" title="{{ $video['title'] }}"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen style="border-radius: 8px 8px 0 0;">
                                            </iframe>
                                        </div>

                                        {{-- Video Title --}}
                                        <div class="card-body">
                                            <h6 class="card-title fw-bold mb-2">{{ $video['title'] }}</h6>
                                            @if(!empty($video['info']))
                                                <p class="text-muted small mb-0">{{ $video['info'] }}</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach

                        {{-- Divider between galleries --}}
                        @if(!$loop->last)
                            <div class="col-12">
                                <hr class="my-4">
                            </div>
                        @endif
                    @endif
                @endforeach
            </div>
        @else
            <div class="alert alert-info text-center">
                <i class="fas fa-info-circle me-2"></i>
                No videos available yet.
            </div>
        @endif
    </div>
@endsection