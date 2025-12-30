# 📋 Deployment Checklist

## Pre-Deployment (Local)
- [ ] Test all features locally
- [ ] Update `.env.production.example` with correct values
- [ ] Run `composer install --optimize-autoloader --no-dev`
- [ ] Run `npm run build` (if using Vite)
- [ ] Create project ZIP file

## Server Setup
- [ ] cPanel access verified
- [ ] Database created
- [ ] Database user created with ALL PRIVILEGES
- [ ] Domain/subdomain configured

## File Upload
- [ ] All project files uploaded to server
- [ ] Files extracted in correct location
- [ ] `public` folder contents moved to `public_html` (if needed)
- [ ] Root `.htaccess` file in place
- [ ] Public `.htaccess` file in place

## Configuration
- [ ] `.env` file created from `.env.production.example`
- [ ] Database credentials updated in `.env`
- [ ] `APP_URL` updated in `.env`
- [ ] `APP_DEBUG=false` set in `.env`

## Helper Scripts Execution
Run these in order:

1. [ ] `check_requirements.php` - All green ✅
2. [ ] `generate_app_key.php` - APP_KEY generated ✅
3. [ ] `run_migrations.php` - Tables created ✅
4. [ ] `link_storage.php` - Storage linked ✅
5. [ ] `create_super_admin.php` - Admin created ✅
6. [ ] `clear_cache.php` - Cache cleared ✅

## Verification
- [ ] Can access homepage: `https://yourdomain.com`
- [ ] Can access admin login: `https://yourdomain.com/admin/login`
- [ ] Can login with Super Admin credentials
- [ ] Theme Settings visible in navigation
- [ ] Can upload images
- [ ] All pages loading correctly
- [ ] No 500 errors
- [ ] No missing CSS/JS

## Security
- [ ] Delete `create_super_admin.php`
- [ ] Delete `generate_app_key.php`
- [ ] Delete `run_migrations.php`
- [ ] `.env` file permissions set to 644
- [ ] `APP_DEBUG=false` confirmed
- [ ] Strong password for Super Admin

## Post-Deployment
- [ ] Test all major features
- [ ] Check error logs: `view_errors.php`
- [ ] Monitor performance
- [ ] Setup backups
- [ ] Document admin credentials securely

---

## Quick Commands Reference

### If you have SSH access:

```bash
# Clear all caches
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Optimize for production
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Fix permissions
chmod -R 755 storage bootstrap/cache
chmod -R 644 .env
```

### Without SSH (use helper scripts):

- Clear cache: `clear_cache.php`
- Fix permissions: `fix_permissions.php`
- View errors: `view_errors.php`

---

## Common Issues & Solutions

### 500 Error
1. Check `.env` file
2. Run `view_errors.php`
3. Run `fix_permissions.php`
4. Run `clear_cache.php`

### Database Connection Failed
1. Verify database credentials in `.env`
2. Check database exists in cPanel
3. Verify user has permissions
4. Confirm `DB_HOST=localhost`

### Images Not Uploading
1. Run `link_storage.php`
2. Run `fix_permissions.php`
3. Check `storage` folder exists

### CSS/JS Not Loading
1. Check `.htaccess` files
2. Verify `APP_URL` in `.env`
3. Clear browser cache

---

## Support

For detailed instructions, see: `DEPLOYMENT_GUIDE_BENGALI.md`

For errors, check: `view_errors.php`
