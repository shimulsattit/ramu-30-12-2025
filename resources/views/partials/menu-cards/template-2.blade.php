{{-- Template 2: Outlined Design (Icon Left) --}}
<div class="col-md-6 col-lg-6">
    <div class="card shadow-sm h-100" style="border: 2px solid var(--primary-color); background-color: white;">
        {{-- Card Header with Title --}}
        <div class="card-header py-3" style="background-color: white; border-bottom: 2px solid #e8e8e8;">
            <h5 class="mb-0 fw-bold text-center" style="color: var(--primary-color);">{{ $card->title }}</h5>
        </div>

        {{-- Card Body with Icon and Items --}}
        <div class="card-body p-4 d-flex align-items-start" style="background-color: white;">
            {{-- Left Side: Icon --}}
            <div class="flex-shrink-0 me-4">
                @if($card->icon)
                    <img src="{{ $card->icon }}" alt="{{ $card->title }}"
                        style="width: 70px; height: 70px; object-fit: contain;" referrerpolicy="no-referrer">
                @else
                    <div class="d-flex align-items-center justify-content-center rounded"
                        style="width: 70px; height: 70px; border: 2px dashed var(--primary-color);">
                        <i class="fas fa-image fa-2x opacity-25" style="color: var(--primary-color);"></i>
                    </div>
                @endif
            </div>

            {{-- Right Side: Items List --}}
            <div class="flex-grow-1">
                @if($card->items->count() > 0)
                    <ul class="list-unstyled mb-0">
                        @foreach($card->items as $item)
                            <li class="mb-2">
                                <a href="{{ $item->item_url }}" class="text-decoration-none d-flex align-items-start"
                                    style="color: var(--primary-color);">
                                    <i class="fas fa-check-square me-2 mt-1" style="color: var(--secondary-color);"></i>
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