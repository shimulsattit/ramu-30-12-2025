@php
    // Get the selected homepage template from settings
    $homepageTemplate = $settings['homepage_template'] ?? 'template_1';

    // Validate template exists, fallback to template_1 if not
    $templatePath = "templates.homepage.{$homepageTemplate}";
    if (!view()->exists($templatePath)) {
        $templatePath = 'templates.homepage.template_1';
    }
@endphp

@include($templatePath)