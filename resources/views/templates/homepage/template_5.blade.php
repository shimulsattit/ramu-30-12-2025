@extends('layouts.app')

@section('title', 'Home - ' . (\App\Models\HeaderSetting::first()?->site_name ?? 'Barishal Cantonment Public School & College'))

@section('content')

    {{-- Template 5: Card-Based Modern Layout --}}

    {{-- Coming Soon: This template is under development --}}
    {{-- For now, it will use the default template structure --}}

    @include('templates.homepage.template_1')

@endsection