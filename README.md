# Barishal Cantonment Public School & College

A comprehensive school management system built with Laravel and Filament.

## 🚀 Quick Start

### Local Development

```bash
# Install dependencies
composer install
npm install

# Setup environment
cp .env.example .env
php artisan key:generate

# Run migrations
php artisan migrate --seed

# Link storage
php artisan storage:link

# Start development server
php artisan serve
npm run dev
```

### Production Deployment (Shared Hosting)

**📖 For detailed Bengali deployment guide, see: [DEPLOYMENT_GUIDE_BENGALI.md](DEPLOYMENT_GUIDE_BENGALI.md)**

**Quick Steps:**

1. Upload all files to server
2. Create database in cPanel
3. Configure `.env` file
4. Run helper scripts in order:
   - `check_requirements.php`
   - `generate_app_key.php`
   - `run_migrations.php`
   - `link_storage.php`
   - `create_super_admin.php`
   - `clear_cache.php`
5. Login to admin panel

**📋 Deployment Checklist: [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md)**

## 🔧 Helper Scripts

Located in `public/` directory:

- `check_requirements.php` - Check server requirements
- `generate_app_key.php` - Generate APP_KEY
- `run_migrations.php` - Run database migrations
- `link_storage.php` - Create storage symlink
- `create_super_admin.php` - Create super admin user
- `clear_cache.php` - Clear all caches
- `fix_permissions.php` - Fix file permissions
- `view_errors.php` - View error logs

## 📚 Features

### User Management
- Role-based access control (Super Admin, Regular User)
- Super Admin has full access to all features
- Regular users restricted from Theme Settings

### Content Management
- Homepage Templates (5 different layouts)
- Welcome Section with auto-truncation
- News & Events
- Achievements
- Notices
- Photo Gallery
- Messages (Chief Patron, Chairman, Principal)

### Theme Customization
- Multiple color presets
- Custom color picker
- Message card designs
- Menu card templates
- Sidebar design options

### Additional Features
- Google Drive integration for images
- Multi-language support (Bengali/English)
- Responsive design
- SEO optimized

## 🔐 Default Credentials

After running `create_super_admin.php`, use your created credentials.

For testing (created by seeder):
- **Super Admin:** admin@test.com / password
- **Regular User:** user@test.com / password

## 📁 Project Structure

```
barishal/
├── app/                    # Application code
├── config/                 # Configuration files
├── database/              # Migrations & seeders
├── public/                # Public assets & helper scripts
├── resources/             # Views, CSS, JS
├── routes/                # Route definitions
├── storage/               # File storage
└── vendor/                # Dependencies
```

## 🛠️ Tech Stack

- **Framework:** Laravel 11
- **Admin Panel:** Filament 3
- **Database:** MySQL
- **Frontend:** Blade, Bootstrap 5
- **Authentication:** Laravel Breeze
- **Permissions:** Spatie Laravel Permission

## 📝 License

This project is proprietary software developed for Barishal Cantonment Public School & College.

## 🆘 Support

For deployment issues:
1. Check `DEPLOYMENT_GUIDE_BENGALI.md`
2. Run `view_errors.php` to see error logs
3. Check `DEPLOYMENT_CHECKLIST.md`

For development:
- Laravel Documentation: https://laravel.com/docs
- Filament Documentation: https://filamentphp.com/docs

---

**Developed with ❤️ for Barishal Cantonment Public School & College**
