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
                            <div class="position-relative overflow-hidden rounded-top image-wrapper">
                                <img src="{{ $theme->image }}" class="card-img-top" alt="{{ $theme->name }}"
                                    data-full-image="{{ $theme->image }}">
                                <div
                                    class="card-overlay position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center gap-2">
                                    <button type="button"
                                        class="btn btn-light rounded-circle shadow-sm transform-scale p-0 zoom-btn"
                                        style="width: 45px; height: 45px; display: flex; align-items: center; justify-content: center;"
                                        title="Zoom Image">
                                        <i class="fas fa-search-plus"></i>
                                    </button>
                                    <a href="{{ $theme->url ? $theme->url : route('home', ['theme_preview' => $theme->theme_key]) }}"
                                        target="{{ $theme->url ? '_blank' : '_self' }}"
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

    <!-- Image Zoom Modal -->
    <div class="modal fade" id="imageZoomModal" tabindex="-1" aria-labelledby="imageZoomModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <div class="modal-content bg-transparent border-0 shadow-none">
                <div class="modal-body p-0 position-relative text-center">
                    <button type="button"
                        class="btn-close btn-close-white position-absolute top-0 end-0 m-3 z-3 bg-white opacity-100"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    <img src="" id="modalZoomImage" class="img-fluid rounded shadow-lg" alt="Theme Preview"
                        style="max-height: 90vh;">
                </div>
            </div>
        </div>
    </div>

    <style>
        .template-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 1rem 3rem rgba(0, 0, 0, .175) !important;
        }

        .image-wrapper {
            height: 250px;
            /* Height of the viewable area */
            width: 100%;
            position: relative;
            background-color: #eee;
        }

        .card-img-top {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 4s ease-in-out;
            /* Adjust speed as needed */
            object-fit: cover;
            object-position: top;
        }

        .template-card:hover .card-img-top {
            transform: translateY(calc(-100% + 250px));
            /* Scroll to bottom */
        }

        .card-overlay {
            background: rgba(0, 106, 78, 0.4);
            /* Lighter overlay to see image */
            opacity: 0;
            transition: opacity 0.3s ease;
            backdrop-filter: blur(2px);
        }

        .template-card:hover .card-overlay {
            opacity: 1;
        }

        .transform-scale:hover {
            transform: scale(1.05);
        }
    </style>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var zoomBtns = document.querySelectorAll('.zoom-btn');
            var zoomModal = new bootstrap.Modal(document.getElementById('imageZoomModal'));
            var modalImage = document.getElementById('modalZoomImage');

            zoomBtns.forEach(function (btn) {
                btn.addEventListener('click', function (e) {
                    e.preventDefault();
                    // Find the image within the same card wrapper
                    var cardWrapper = this.closest('.image-wrapper');
                    var img = cardWrapper.querySelector('.card-img-top');
                    var imgSrc = img.getAttribute('data-full-image');

                    modalImage.src = imgSrc;
                    zoomModal.show();
                });
            });
        });
    </script>
@endif