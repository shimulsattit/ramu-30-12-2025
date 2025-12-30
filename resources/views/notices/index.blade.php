@extends('layouts.app')

@section('title', 'All Notices')

@section('content')
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card shadow-sm border-0">
                    <div class="card-header text-white" style="background-color: var(--primary-color);">
                        <h4 class="mb-0"><i class="fas fa-bullhorn me-2"></i> সকল নোটিশ</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <thead class="table-light">
                                    <tr>
                                        <th style="width: 15%">Date</th>
                                        <th style="width: 75%">Title</th>
                                        <th style="width: 10%">Download</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($notices as $notice)
                                        <tr>
                                            <td>
                                                @if($notice->published_at)
                                                    <div class="d-flex flex-column align-items-center justify-content-center text-white rounded p-1"
                                                        style="background-color: var(--primary-color); width: 70px; text-align: center;">
                                                        <span
                                                            class="fw-bold fs-4 lh-1">{{ $notice->published_at->format('d') }}</span>
                                                        <small class="text-uppercase"
                                                            style="font-size: 0.65rem; letter-spacing: 1px;">
                                                            {{ $notice->published_at->format('M -Y') }}
                                                        </small>
                                                    </div>
                                                @else
                                                    N/A
                                                @endif
                                            </td>
                                            <td class="align-middle">
                                                @if($notice->page_id)
                                                    <a href="{{ route('page.show', $notice->page->slug) }}"
                                                        class="text-decoration-none text-dark fw-bold fs-6">
                                                        {{ $notice->title }}
                                                    </a>
                                                @else
                                                    <span class="fw-bold fs-6">{{ $notice->title }}</span>
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if($notice->file)
                                                    <a href="{{ $notice->file_url }}" target="_blank"
                                                        class="btn btn-sm btn-outline-primary rounded-circle"
                                                        style="width: 35px; height: 35px; display: inline-flex; align-items: center; justify-content: center;"
                                                        title="Download File">
                                                        <i class="fas fa-download"></i>
                                                    </a>
                                                @elseif($notice->link)
                                                    <a href="{{ $notice->link }}" target="_blank"
                                                        class="btn btn-sm btn-outline-info rounded-circle"
                                                        style="width: 35px; height: 35px; display: inline-flex; align-items: center; justify-content: center;"
                                                        title="External Link">
                                                        <i class="fas fa-link"></i>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3" class="text-center py-4">
                                                <p class="text-muted mb-0">No notices found.</p>
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>

                        <div class="d-flex justify-content-center mt-4">
                            {{ $notices->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection