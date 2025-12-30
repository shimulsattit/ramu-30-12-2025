<?php

namespace App\Helpers;

class GoogleDriveHelper
{
    /**
     * Convert Google Drive share link to direct image URL
     * 
     * Supported formats:
     * - https://drive.google.com/file/d/{FILE_ID}/view
     * - https://drive.google.com/open?id={FILE_ID}
     * - https://drive.google.com/uc?id={FILE_ID}
     * 
     * @param string|null $url
     * @return string|null
     */
    public static function getDirectUrl(?string $url): ?string
    {
        if (empty($url)) {
            return null;
        }

        // If it's already a direct Google Drive URL, return as is
        if (str_contains($url, 'drive.google.com/uc?export=view')) {
            return $url;
        }

        // If it's not a Google Drive URL, return as is
        if (!str_contains($url, 'drive.google.com')) {
            return $url;
        }

        // Extract file ID from various Google Drive URL formats
        $fileId = self::extractFileId($url);

        if ($fileId) {
            // Use thumbnail endpoint with large size for reliable image embedding
            // This bypasses virus scan warnings and loads faster
            return "https://drive.google.com/thumbnail?id={$fileId}&sz=w1920";
        }

        // If we couldn't extract the file ID, return the original URL
        return $url;
    }

    /**
     * Extract file ID from Google Drive URL or ID string
     * 
     * @param string $url
     * @return string|null
     */
    public static function extractFileId(string $url): ?string
    {
        if (empty($url))
            return null;

        // Clean whitespaces
        $url = trim($url);

        // Pattern 1: Full URL with /file/d/{FILE_ID}/view
        if (preg_match('/\/file\/d\/([a-zA-Z0-9_-]{25,})/', $url, $matches)) {
            return $matches[1];
        }

        // Pattern 2: Fragment like /ID/view or /ID
        if (preg_match('/\/([a-zA-Z0-9_-]{25,})/', $url, $matches)) {
            return $matches[1];
        }

        // Pattern 3: URL parameters like id={FILE_ID}
        if (preg_match('/[?&]id=([a-zA-Z0-9_-]{25,})/', $url, $matches)) {
            return $matches[1];
        }

        // Pattern 4: Pure ID if it matches the length and character set
        if (preg_match('/^([a-zA-Z0-9_-]{25,})$/', $url, $matches)) {
            return $matches[1];
        }

        return null;
    }

    /**
     * Check if URL is a Google Drive URL
     * 
     * @param string|null $url
     * @return bool
     */
    public static function isGoogleDriveUrl(?string $url): bool
    {
        if (empty($url)) {
            return false;
        }

        return str_contains($url, 'drive.google.com');
    }

    /**
     * Get thumbnail URL for Google Drive file
     * 
     * @param string|null $url
     * @param int $size Thumbnail size (default: 200)
     * @return string|null
     */
    public static function getThumbnailUrl(?string $url, int $size = 200): ?string
    {
        if (empty($url)) {
            return null;
        }

        $fileId = self::extractFileId($url);

        if ($fileId) {
            return "https://drive.google.com/thumbnail?id={$fileId}&sz=w{$size}";
        }

        return $url;
    }

    /**
     * Get all images from a Google Drive folder
     * 
     * @param string $folderUrl Google Drive folder share URL
     * @return array Array of direct image URLs
     */
    public static function getFolderImages($folderUrl)
    {
        if (empty($folderUrl)) {
            return [];
        }

        // Extract folder ID from various Google Drive folder URL formats
        $folderId = null;

        // Format: https://drive.google.com/drive/folders/FOLDER_ID
        if (preg_match('/\/folders\/([a-zA-Z0-9_-]+)/', $folderUrl, $matches)) {
            $folderId = $matches[1];
        }
        // Format: https://drive.google.com/drive/u/0/folders/FOLDER_ID
        elseif (preg_match('/\/u\/\d+\/folders\/([a-zA-Z0-9_-]+)/', $folderUrl, $matches)) {
            $folderId = $matches[1];
        }

        if (!$folderId) {
            return [];
        }

        // Note: This is a placeholder implementation
        // In a real scenario, you would need to:
        // 1. Use Google Drive API with proper authentication
        // 2. List all files in the folder
        // 3. Filter for image files
        // 4. Return direct URLs

        // For now, return empty array
        // The folder link will be stored in database for future implementation
        return [];
    }
}
