@extends('layouts.app')

@section('title', $gallery->title . ' - Photo Gallery')

@section('content')
    <div class="container py-5">
        <!-- Header -->
        <div class="row mb-4">
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('gallery.index') }}">Photo Gallery</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ $gallery->title }}</li>
                    </ol>
                </nav>
                <h2 class="fw-bold fs-2 mt-3" style="color: var(--primary-color);">{{ $gallery->title }}</h2>
                <p class="text-muted"><i
                        class="far fa-calendar-alt me-2"></i>{{ $gallery->published_at ? $gallery->published_at->format('F d, Y') : '' }}
                </p>
            </div>
        </div>

        <!-- Google Drive Folder Embed -->
        @if($gallery->google_drive_folder_link)
            @php
                // Extract folder ID from Google Drive link
                preg_match('/folders\/([a-zA-Z0-9_-]+)/', $gallery->google_drive_folder_link, $matches);
                $folderId = $matches[1] ?? null;
            @endphp

            @if($folderId)
                <div class="card shadow-sm border-0 mb-4">
                    <div class="card-body p-0">
                        <iframe src="https://drive.google.com/embeddedfolderview?id={{ $folderId }}#grid"
                            style="width:100%; height:800px; border:0;" frameborder="0">
                        </iframe>
                    </div>
                </div>

                <div class="alert alert-info">
                    <i class="fas fa-info-circle me-2"></i>
                    <strong>View Full Folder:</strong>
                    <a href="{{ $gallery->google_drive_folder_link }}" target="_blank" class="alert-link">
                        Open in Google Drive <i class="fas fa-external-link-alt ms-1"></i>
                    </a>
                </div>
            @else
                <div class="alert alert-warning">
                    <i class="fas fa-exclamation-triangle me-2"></i>
                    Invalid Google Drive folder link.
                </div>
            @endif
        @else
            <div class="text-center py-5">
                <h4 class="text-muted">No folder link provided for this album.</h4>
            </div>
        @endif
    </div>
@endsection