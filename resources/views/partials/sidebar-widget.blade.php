<div class="card mb-3 shadow-sm border-0">
    <div class="card-header text-white text-center py-2" style="background-color: var(--primary-color);">
        <h6 class="mb-0 fw-bold">{{ $widget->title }}</h6>
    </div>
    <div class="card-body p-0 text-center bg-white">
        @if($widget->type == 'image_link')
            <a href="{{ $widget->link ?? '#' }}" target="_blank">
                <img src="{{ $widget->image_url }}" class="img-fluid w-100" alt="{{ $widget->title }}">
            </a>
        @elseif($widget->type == 'video')
            <div class="ratio ratio-16x9">
                <iframe src="{{ $widget->video_embed_url }}" title="{{ $widget->title }}" allowfullscreen></iframe>
            </div>
        @elseif($widget->type == 'text')
            <div class="p-3">
                {!! $widget->content !!}
            </div>
        @elseif($widget->type == 'calendar')
            @php
                $now = \Carbon\Carbon::now();
                $currentMonth = $now->format('F Y');
                $daysInMonth = $now->daysInMonth;
                $firstDayOfWeek = $now->copy()->startOfMonth()->dayOfWeek; // 0 (Sun) - 6 (Sat)
                $today = $now->day;
            @endphp
            <div class="p-3 bg-white">
                <h6 class="text-center fw-bold mb-3 border-bottom pb-2" style="color: var(--secondary-color);">
                    {{ $currentMonth }}</h6>
                <table class="table table-bordered table-sm text-center mb-0" style="font-size: 0.85rem;">
                    <!-- ... calendar table ... -->
                    <thead>
                        <tr class="bg-light">
                            <th class="text-danger">S</th>
                            <th>M</th>
                            <th>T</th>
                            <th>W</th>
                            <th>T</th>
                            <th>F</th>
                            <th>S</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            @php $cellCount = 0; @endphp
                            @for($i = 0; $i < $firstDayOfWeek; $i++)
                                <td></td>
                                @php $cellCount++; @endphp
                            @endfor

                            @for($day = 1; $day <= $daysInMonth; $day++)
                                @if($cellCount % 7 == 0 && $cellCount != 0)
                                    </tr>
                                    <tr>
                                @endif

                                <td class="{{ $day == $today ? 'text-white fw-bold' : '' }}"
                                    style="{{ $day == $today ? 'background-color: var(--secondary-color);' : '' }}">
                                    {{ $day }}
                                </td>
                                @php $cellCount++; @endphp
                            @endfor

                            @while($cellCount % 7 != 0)
                                <td></td>
                                @php $cellCount++; @endphp
                            @endwhile
                        </tr>
                    </tbody>
                </table>
            </div>
        @elseif($widget->type == 'link')
            <div class="p-3">
                <a href="{{ $widget->link }}" target="_blank"
                    class="text-decoration-none d-flex align-items-center justify-content-start"
                    style="color: var(--primary-color);">
                    <i class="fas fa-link me-2"></i>
                    <span>{{ $widget->content }}</span>
                </a>
            </div>
        @endif
    </div>
</div>