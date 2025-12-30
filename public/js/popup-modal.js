/**
 * Popup Modal JavaScript
 * Handles popup display, session control, and auto-close functionality
 */

document.addEventListener('DOMContentLoaded', function() {
    const popupOverlay = document.querySelector('.popup-modal-overlay');
    
    if (!popupOverlay) {
        return; // No popup on this page
    }

    const popupId = popupOverlay.dataset.popupId;
    const showOnce = popupOverlay.dataset.showOnce === 'true';
    const autoClose = parseInt(popupOverlay.dataset.autoClose);
    const closeBtn = popupOverlay.querySelector('.popup-close-btn');
    const storageKey = `popup_viewed_${popupId}`;

    // Check if popup was already viewed in this session
    if (showOnce && sessionStorage.getItem(storageKey)) {
        return; // Don't show popup
    }

    // Show popup with animation
    setTimeout(() => {
        popupOverlay.classList.add('show');
    }, 500); // Delay 500ms before showing

    // Mark as viewed in session storage
    if (showOnce) {
        sessionStorage.setItem(storageKey, 'true');
    }

    // Auto-close functionality
    if (autoClose && autoClose > 0) {
        setTimeout(() => {
            closePopup();
        }, autoClose * 1000);
    }

    // Close button click
    if (closeBtn) {
        closeBtn.addEventListener('click', closePopup);
    }

    // Close on overlay click (outside modal)
    popupOverlay.addEventListener('click', function(e) {
        if (e.target === popupOverlay) {
            closePopup();
        }
    });

    // Close on Escape key
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape' && popupOverlay.classList.contains('show')) {
            closePopup();
        }
    });

    // Close popup function
    function closePopup() {
        popupOverlay.classList.remove('show');
        
        // Remove from DOM after animation completes
        setTimeout(() => {
            popupOverlay.style.display = 'none';
        }, 300);
    }
});
