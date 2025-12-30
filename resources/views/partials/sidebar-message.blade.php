@php
    // Get selected message card design from settings
    $messageCardDesign = $settings['message_card_design'] ?? 'solid';
@endphp

@if($messageCardDesign === 'image')
    @include('partials.sidebar-message-cards.image', ['message' => $message, 'title' => $title])
@elseif($messageCardDesign === 'modern')
    @include('partials.sidebar-message-cards.modern', ['message' => $message, 'title' => $title])
@else
    @include('partials.sidebar-message-cards.solid', ['message' => $message, 'title' => $title])
@endif