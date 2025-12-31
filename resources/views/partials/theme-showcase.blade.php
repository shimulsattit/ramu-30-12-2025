@php
    $themes = \App\Models\ThemeShowcase::where('is_active', true)->orderBy('sort_order')->get();
@endphp

@if($themes->count() > 0)
    <section class="py-5 theme-showcase-section" style="background-color: #f8f9fa;">
        <div class="container">
            <div class="row mb-5">
                <div class="col-12 text-center">
                    <h2 class="fw-bold text-uppercase position-relative d-inline-block pb-2"
                        style="color: #006a4e; border-bottom: 3px solid #006a4e;">
                        Our Templates
                    </h2>
                    <p class="text-muted mt-2">Explore our available website templates</p>
                </div>
            </div>
            <div class="row g-4 justify-content-center">
                @foreach($themes as $theme)
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100 shadow-sm border-0 template-card" style="transition: all 0.3s ease;">
                            <div class="position-relative overflow-hidden rounded-top">
                                <img src="{{ $theme->image }}" class="card-img-top" alt="{{ $theme->name }}"
                                    style="height: 250px; object-fit: cover; transition: transform 0.5s ease;">
                                <div class="card-overlay position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center"
                                    style="background: rgba(0, 106, 78, 0.8); opacity: 0; transition: opacity 0.3s ease;">
                                    <a href="{{ $theme->url }}" target="_blank"
                                        class="btn btn-light rounded-pill px-4 fw-bold shadow-sm transform-scale">
                                        <i class="fas fa-eye me-2"></i> Live Preview
                                    </a>
                                </div>
                            </div>
                            <div class="card-body text-center bg-white rounded-bottom border-top border-light">
                                <h5 class="card-title fw-bold mb-0 text-dark">{{ $theme->name }}</h5>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <style>
        .template-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 1rem 3rem rgba(0, 0, 0, .175) !important;
        }

        .template-card:hover .card-img-top {
            transform: scale(1.1);
        }

        .template-card:hover .card-overlay {
            opacity: 1 !important;
        }

        .transform-scale:hover {
            transform: scale(1.05);
        }
    </style>
@endif