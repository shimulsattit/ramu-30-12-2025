{{-- Template 1: Icon Left (Default) --}}
<div class="col-md-6 col-lg-6">
    <div class="card shadow-sm border-0 h-100">
        {{-- Card Header with Title --}}
        <div class="card-header text-white py-3" style="background-color: var(--primary-color);">
            <h5 class="mb-0 fw-bold text-center">{{ $card->title }}</h5>
        </div>

        {{-- Card Body with Icon and Items --}}
        <div class="card-body p-4 d-flex align-items-start" style="background-color: var(--primary-color);">
            {{-- Left Side: Icon --}}
            <div class="flex-shrink-0 me-4">
                @if($card->icon)
                    <img src="{{ $card->icon }}" alt="{{ $card->title }}"
                        style="width: 70px; height: 70px; object-fit: contain;" referrerpolicy="no-referrer">
                @else
                    <div class="d-flex align-items-center justify-content-center bg-white bg-opacity-25 rounded"
                        style="width: 70px; height: 70px;">
                        <i class="fas fa-image fa-2x text-white opacity-50"></i>
                    </div>
                @endif
            </div>

            {{-- Right Side: Items List --}}
            <div class="flex-grow-1">
                @if($card->items->count() > 0)
                    <ul class="list-unstyled mb-0">
                        @foreach($card->items as $item)
                            <li class="mb-2">
                                <a href="{{ $item->item_url }}"
                                    class="text-white text-decoration-none d-flex align-items-start">
                                    <i class="fas fa-check-square me-2 mt-1" style="color: #90EE90;"></i>
                                    <span>{{ $item->title }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                @endif
            </div>
        </div>
    </div>
</div>