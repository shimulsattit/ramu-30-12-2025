<x-filament-panels::page>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
            <form wire:submit="save">
                {{ $this->form }}
                
                <div class="mt-4">
                    <x-filament::button type="submit">
                        Save Changes
                    </x-filament::button>
                </div>
            </form>
        </div>

        <div class="p-4 bg-gray-100 rounded-lg dark:bg-gray-800">
            <h3 class="text-lg font-bold mb-4 text-center dark:text-white">Live Preview</h3>
            
            <!-- Preview Card -->
            <div style="
                background-color: {{ $data['sidebar_body_bg'] ?? '#1a4d2e' }};
                border-radius: 0.375rem;
                overflow: hidden;
                box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
                max-width: 300px;
                margin: 0 auto;
            ">
                <div style="
                    background-color: {{ $data['sidebar_header_bg'] ?? '#0f3d3e' }};
                    color: white;
                    padding: 0.5rem;
                    text-align: center;
                    font-weight: bold;
                ">
                    Message of the Principal
                </div>
                <div style="padding: {{ $data['sidebar_card_padding'] ?? '1rem' }}; text-align: center;">
                    @php
                        $aspectRatio = $data['sidebar_aspect_ratio'] ?? '3/4';
                        $height = ($aspectRatio === 'custom') ? ($data['sidebar_image_height'] ?? 'auto') : 'auto';
                        $styleAspectRatio = ($aspectRatio !== 'custom' && $aspectRatio !== 'auto') ? $aspectRatio : 'auto';
                    @endphp
                    <img src="https://placehold.co/400x400/png" alt="Preview" style="
                        border: {{ $data['sidebar_border_width'] ?? '3px' }} solid {{ $data['sidebar_border_color'] ?? '#ffffff' }};
                        border-radius: {{ $data['sidebar_border_radius'] ?? '10px' }};
                        width: {{ $data['sidebar_image_width'] ?? '100%' }};
                        height: {{ $height }};
                        aspect-ratio: {{ $styleAspectRatio }};
                        object-fit: {{ $data['sidebar_image_fit'] ?? 'cover' }};
                        object-position: {{ $data['sidebar_image_position'] ?? 'top center' }};
                        margin-bottom: 0.5rem;
                        display: inline-block;
                    ">
                    <h4 style="color: {{ $data['sidebar_title_color'] ?? '#ffc107' }}; font-weight: bold; margin-bottom: 0.25rem; font-size: {{ $data['sidebar_title_font_size'] ?? '1.1rem' }};">
                        Maj Gen M Khair Uddin
                    </h4>
                    <p style="color: {{ $data['sidebar_text_color'] ?? '#ffffff' }}; font-size: {{ $data['sidebar_desig_font_size'] ?? '0.875rem' }}; margin-bottom: 1rem;">
                        SGP, ndc, afwc, psc
                    </p>
                    <button style="
                        background-color: {{ $data['sidebar_btn_bg'] ?? '#28a745' }};
                        color: {{ $data['sidebar_btn_text_color'] ?? '#ffffff' }};
                        border: none;
                        padding: 0.25rem 1.5rem;
                        border-radius: 9999px;
                        font-weight: bold;
                        cursor: pointer;
                    ">
                        Speech
                    </button>
                </div>
            </div>
            
            <!-- BCPSC Info Preview -->
            <div class="mt-6" style="
                background-color: white;
                border-radius: 0.375rem;
                overflow: hidden;
                box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
                max-width: 300px;
                margin: 1.5rem auto 0;
            ">
                <div style="
                    background-color: {{ $data['info_header_bg'] ?? '#0f3d3e' }};
                    color: white;
                    padding: 0.5rem;
                    font-weight: bold;
                    padding-left: 1rem;
                ">
                    BCPSC INFORMATION
                </div>
                <div style="background-color: {{ $data['info_body_bg'] ?? '#1a4d2e' }}; padding: 0;">
                    <div style="
                        padding: 0.75rem 1rem;
                        color: {{ $data['info_text_color'] ?? '#ffc107' }};
                        font-weight: bold;
                        border-bottom: 1px solid {{ $data['info_border_color'] ?? 'rgba(255, 193, 7, 0.3)' }};
                        display: flex;
                        align-items: center;
                    ">
                        <span style="margin-right: 0.5rem; color: {{ $data['info_icon_color'] ?? '#ffc107' }};">☘</span> At a glance
                    </div>
                    <div style="
                        padding: 0.75rem 1rem;
                        color: {{ $data['info_text_color'] ?? '#ffc107' }};
                        font-weight: bold;
                        border-bottom: 1px solid {{ $data['info_border_color'] ?? 'rgba(255, 193, 7, 0.3)' }};
                        display: flex;
                        align-items: center;
                    ">
                        <span style="margin-right: 0.5rem; color: {{ $data['info_icon_color'] ?? '#ffc107' }};">☘</span> Admission
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-filament-panels::page>
