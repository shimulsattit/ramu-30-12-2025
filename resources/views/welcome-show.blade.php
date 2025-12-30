@extends('layouts.app')

@section('title', $welcomeSection->title ?? 'Welcome')

@section('content')
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-lg-11">
                <div class="card shadow-sm border-0">
                    <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
                        <h3 class="mb-0" style="font-size: 1.2rem; font-weight: 700;">
                            <i class="fas fa-info-circle me-2"></i>{{ $welcomeSection->title }}
                        </h3>
                    </div>
                    <div class="card-body p-4">
                        <div class="row">
                            {{-- Left Side: Image --}}
                            @if($welcomeSection->image)
                                <div class="col-lg-4 mb-4 mb-lg-0">
                                    <img src="{{ $welcomeSection->image }}" alt="{{ $welcomeSection->title }}"
                                        class="img-fluid rounded shadow-sm sticky-top" style="top: 20px;"
                                        referrerpolicy="no-referrer">
                                </div>
                            @endif

                            {{-- Right Side: Content --}}
                            <div class="{{ $welcomeSection->image ? 'col-lg-8' : 'col-lg-12' }}">
                                <div class="welcome-full-content"
                                    style="text-align: justify; line-height: 1.8; font-size: 1.05rem;">
                                    {!! nl2br(e($welcomeSection->content)) !!}
                                </div>
                            </div>
                        </div>

                        <div class="mt-4 text-center border-top pt-4">
                            <a href="{{ url('/') }}" class="btn px-5 py-2"
                                style="background-color: var(--primary-color); color: white; border: none;">
                                <i class="fas fa-home me-2"></i>Back to Home
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection