@extends('layouts.app')

@section('title', $message->name . ' - ' . $message->designation)

@section('content')

    <div class="container my-5">
        <!-- Header Section -->
        <div class="card shadow-sm border-0 mb-4">
            <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
                <h3 class="mb-0 fw-bold" style="font-size: 1.2rem;">
                    <i class="fas fa-user-tie me-2"></i>
                    Message of the {{ ucfirst($message->type) }}
                </h3>
            </div>
        </div>

        <!-- Main Content Section -->
        <div class="card shadow-sm border-0">
            <div class="card-body p-4 p-md-5">
                <div class="row g-4">
                    <!-- Left Side - Image -->
                    <div class="col-md-4">
                        <div class="text-center">
                            <div class="position-relative d-inline-block">
                                <img src="{{ $message->image_url }}" alt="{{ $message->name }}"
                                    class="img-fluid rounded shadow"
                                    style="border: 4px solid var(--primary-color); max-width: 100%;"
                                    referrerpolicy="no-referrer">
                            </div>

                            <!-- Name and Designation -->
                            <div class="mt-4">
                                <h5 class="fw-bold mb-2" style="color: var(--primary-color);">
                                    {{ $message->name }}
                                </h5>
                                <p class="text-muted mb-0">
                                    <i class="fas fa-briefcase me-2"></i>{{ $message->designation }}
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Right Side - Message Content -->
                    <div class="col-md-8">
                        <div class="message-content" style="text-align: justify; line-height: 1.8; font-size: 1.05rem;">
                            {!! nl2br(e($message->message)) !!}
                        </div>

                        <!-- Signature/Footer (if needed) -->
                        <div class="mt-5 pt-4 border-top">
                            <div class="d-flex justify-content-between align-items-center flex-wrap">
                                <div>
                                    <p class="mb-1 fw-bold" style="color: var(--primary-color);">
                                        {{ $message->name }}
                                    </p>
                                    <p class="text-muted mb-0 small">{{ $message->designation }}</p>
                                </div>

                                <!-- Action Buttons -->
                                <div class="mt-3 mt-md-0">
                                    <a href="{{ url('/') }}" class="btn"
                                        style="background-color: var(--primary-color); color: white;">
                                        <i class="fas fa-home me-2"></i>Back to Home
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Print Styles -->
    <style>
        @media print {

            .btn,
            .navbar,
            .footer,
            .top-bar {
                display: none !important;
            }

            .card {
                box-shadow: none !important;
                border: 1px solid #ddd !important;
            }

            .message-content {
                font-size: 12pt !important;
            }
        }

        /* Message Content Styling */
        .message-content {
            color: var(--text-color);
        }

        .message-content p {
            margin-bottom: 1rem;
        }

        /* Responsive Image */
        @media (max-width: 768px) {
            .col-md-4 {
                text-align: center;
                margin-bottom: 2rem;
            }
        }
    </style>

@endsection