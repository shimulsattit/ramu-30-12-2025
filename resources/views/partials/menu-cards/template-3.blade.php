{{-- Template 3: Minimal (Text Only) --}}
<div class="col-md-6 col-lg-6">
    <div class="card shadow-sm border-0 h-100">
        {{-- Card Header with Title --}}
        <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
            <h5 class="mb-0 fw-bold text-center">{{ $card->title }}</h5>
        </div>

        {{-- Card Body with Items Only --}}
        <div class="card-body p-4" style="background-color: var(--primary-color);">
            @if($card->items->count() > 0)
                <ul class="list-unstyled mb-0">
                    @foreach($card->items as $item)
                        <li class="mb-2">
                            <a href="{{ $item->item_url }}" class="text-white text-decoration-none d-flex align-items-start">
                                <i class="fas fa-check-square me-2 mt-1" style="color: #90EE90;"></i>
                                <span>{{ $item->title }}</span>
                            </a>
                        </li>
                    @endforeach
                </ul>
            @else
                <p class="text-white text-center mb-0 opacity-75">No items available</p>
            @endif
        </div>
    </div>
</div>