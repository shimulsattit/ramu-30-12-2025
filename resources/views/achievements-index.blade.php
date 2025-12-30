@extends('layouts.app')

@section('title', 'Achievements - ' . (\App\Models\HeaderSetting::first()?->site_name ?? 'Barishal Cantonment Public School & College'))

@section('content')
    <div class="container my-5">
        {{-- Page Header --}}
        <div class="card shadow-sm border-0 mb-4">
            <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
                <h3 class="mb-0 fw-bold" style="font-size: 1.2rem;">
                    <i class="fas fa-trophy me-2"></i>
                    ACHIEVEMENTS
                </h3>
            </div>
        </div>

        {{-- Achievements List --}}
        @if($achievements->count() > 0)
            @foreach($achievements as $achievement)
                <div class="card shadow-sm border-0 mb-4">
                    <div class="row g-0">
                        {{-- Image Column --}}
                        <div class="col-md-3">
                            @if($achievement->image)
                                <img src="{{ $achievement->image }}" class="img-fluid rounded-start" alt="{{ $achievement->title }}"
                                    style="height: 100%; width: 100%; object-fit: cover; min-height: 200px;"
                                    referrerpolicy="no-referrer">
                            @else
                                <div class="d-flex align-items-center justify-content-center bg-light rounded-start"
                                    style="height: 100%; min-height: 200px;">
                                    <i class="fas fa-image fa-3x text-muted"></i>
                                </div>
                            @endif
                        </div>

                        {{-- Content Column --}}
                        <div class="col-md-9">
                            <div class="card-body p-4">
                                <h5 class="card-title fw-bold mb-3">
                                    <a href="{{ route('achievement.show', $achievement->slug) }}" class="text-decoration-none"
                                        style="color: var(--primary-color);">
                                        {{ $achievement->title }}
                                    </a>
                                </h5>

                                <div class="text-muted small mb-3">
                                    <i class="far fa-calendar-alt me-1"></i>
                                    {{ $achievement->published_at->format('F j, Y') }}
                                </div>

                                @if($achievement->excerpt)
                                    <p class="card-text text-muted mb-3">
                                        {{ Str::limit($achievement->excerpt, 200) }}
                                    </p>
                                @endif

                                <a href="{{ route('achievement.show', $achievement->slug) }}" class="btn btn-sm"
                                    style="background-color: transparent; color: var(--secondary-color); border: 1px solid var(--secondary-color);">
                                    Read more
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

            {{-- Pagination --}}
            @if($achievements->hasPages())
                <div class="d-flex justify-content-center mt-4">
                    {{ $achievements->links() }}
                </div>
            @endif
        @else
            <div class="card shadow-sm border-0">
                <div class="card-body p-5 text-center">
                    <i class="fas fa-inbox fa-4x text-muted mb-3"></i>
                    <p class="text-muted">No achievements available at the moment.</p>
                </div>
            </div>
        @endif
    </div>

    <style>
        /* Responsive adjustments */
        @media (max-width: 768px) {

            .card .row .col-md-3 img,
            .card .row .col-md-3>div {
                min-height: 150px !important;
            }
        }
    </style>
@endsection