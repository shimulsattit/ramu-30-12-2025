# 🚀 Shared Hosting Deployment Guide (Bengali)

## সূচীপত্র
1. [প্রয়োজনীয় জিনিসপত্র](#প্রয়োজনীয়-জিনিসপত্র)
2. [Deployment পদ্ধতি](#deployment-পদ্ধতি)
3. [Helper Scripts ব্যবহার](#helper-scripts-ব্যবহার)
4. [Troubleshooting](#troubleshooting)

---

## প্রয়োজনীয় জিনিসপত্র

### Server Requirements
- PHP >= 8.1
- MySQL/MariaDB Database
- Composer (optional, files already included)
- cPanel Access

### আপনার কাছে থাকতে হবে
- ✅ cPanel login credentials
- ✅ Database name, username, password
- ✅ FTP/File Manager access
- ✅ Domain name

---

## Deployment পদ্ধতি

### পদ্ধতি ১: File Manager দিয়ে (সহজ)

#### ধাপ ১: Project Files Upload করুন

1. **Project এর সব files ZIP করুন**
   - আপনার local project folder থেকে সব files select করুন
   - একটি ZIP file তৈরি করুন (যেমন: `barishal-project.zip`)

2. **cPanel এ Login করুন**
   - আপনার hosting provider এর cPanel এ যান
   - File Manager open করুন

3. **public_html এ Upload করুন**
   - `public_html` folder এ যান
   - ZIP file upload করুন
   - Upload সম্পন্ন হলে ZIP file extract করুন

#### ধাপ ২: Files সঠিক জায়গায় রাখুন

**গুরুত্বপূর্ণ:** Laravel project এর structure এভাবে হতে হবে:

```
public_html/
├── .htaccess          (root .htaccess)
├── app/
├── bootstrap/
├── config/
├── database/
├── public/            (এখানে সব public files)
│   ├── index.php
│   ├── .htaccess
│   ├── css/
│   └── js/
├── resources/
├── routes/
├── storage/
└── vendor/
```

**যদি আপনার files এভাবে না থাকে:**

1. `public` folder এর সব contents `public_html` এ move করুন
2. বাকি সব folders (app, bootstrap, config, etc.) `public_html` এ রাখুন
3. `public` folder delete করুন

#### ধাপ ৩: Database তৈরি করুন

1. **cPanel MySQL Databases এ যান**
2. **নতুন Database তৈরি করুন**
   - Database Name: `username_barishal` (example)
   - Create Database button এ click করুন

3. **Database User তৈরি করুন**
   - Username: `username_admin` (example)
   - Strong password দিন
   - Create User button এ click করুন

4. **User কে Database এ Add করুন**
   - User select করুন
   - Database select করুন
   - ALL PRIVILEGES দিন
   - Add button এ click করুন

#### ধাপ ৪: .env File Configure করুন

1. `.env.production.example` file টি copy করুন
2. নাম পরিবর্তন করে `.env` করুন
3. নিচের তথ্য update করুন:

```env
APP_NAME="Barishal Cantonment Public School & College"
APP_ENV=production
APP_KEY=                    # পরে generate করবেন
APP_DEBUG=false
APP_URL=https://yourdomain.com

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=username_barishal      # আপনার database name
DB_USERNAME=username_admin         # আপনার database user
DB_PASSWORD=your_password          # আপনার database password
```

#### ধাপ ৫: .htaccess Files Setup করুন

**Root .htaccess** (`public_html/.htaccess`):
```apache
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteRule ^(.*)$ public/$1 [L]
</IfModule>
```

**Public .htaccess** (`public_html/public/.htaccess` অথবা `public_html/.htaccess` যদি public folder move করে থাকেন):
```apache
<IfModule mod_rewrite.c>
    <IfModule mod_negotiation.c>
        Options -MultiViews -Indexes
    </IfModule>

    RewriteEngine On

    # Handle Authorization Header
    RewriteCond %{HTTP:Authorization} .
    RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]

    # Redirect Trailing Slashes If Not A Folder...
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_URI} (.+)/$
    RewriteRule ^ %1 [L,R=301]

    # Send Requests To Front Controller...
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
</IfModule>
```

---

### ধাপ ৬: Helper Scripts চালান

এখন browser এ গিয়ে নিচের scripts গুলো একে একে চালান:

#### ১. Check Requirements
```
https://yourdomain.com/check_requirements.php
```
- Server requirements check করবে
- সব green হলে পরের step এ যান

#### ২. Generate APP_KEY
```
https://yourdomain.com/generate_app_key.php
```
- Automatically `.env` file এ APP_KEY generate করবে

#### ৩. Run Migrations
```
https://yourdomain.com/run_migrations.php
```
- Database tables তৈরি করবে
- Roles seed করবে

#### ৪. Link Storage
```
https://yourdomain.com/link_storage.php
```
- Storage folder এর symlink তৈরি করবে

#### ৫. Create Super Admin
```
https://yourdomain.com/create_super_admin.php
```
- আপনার Super Admin account তৈরি করুন
- Name, Email, Password দিন
- Submit করুন

#### ৬. Clear Cache
```
https://yourdomain.com/clear_cache.php
```
- সব cache clear করবে

---

### ধাপ ৭: Admin Panel এ Login করুন

1. যান: `https://yourdomain.com/admin/login`
2. আপনার Super Admin email এবং password দিয়ে login করুন
3. সব features access করতে পারবেন

---

## পদ্ধতি ২: Git দিয়ে (Advanced)

যদি আপনার hosting এ SSH access থাকে:

```bash
# 1. Repository clone করুন
git clone https://github.com/yourusername/barishal.git

# 2. Dependencies install করুন
composer install --optimize-autoloader --no-dev

# 3. .env file তৈরি করুন
cp .env.production.example .env

# 4. APP_KEY generate করুন
php artisan key:generate

# 5. Database migrate করুন
php artisan migrate --seed

# 6. Storage link করুন
php artisan storage:link

# 7. Cache optimize করুন
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

---

## Helper Scripts বিস্তারিত

### 1. check_requirements.php
**কাজ:** Server requirements check করে

**ব্যবহার:**
- Browser এ open করুন
- সব requirements green দেখাবে
- যদি কোন red দেখায়, hosting provider কে contact করুন

### 2. generate_app_key.php
**কাজ:** APP_KEY generate করে এবং `.env` file এ save করে

**ব্যবহার:**
- একবার চালালেই হবে
- Automatically `.env` update হবে

### 3. run_migrations.php
**কাজ:** Database tables তৈরি করে এবং roles seed করে

**ব্যবহার:**
- Database credentials সঠিক থাকতে হবে
- একবার চালালেই হবে

### 4. link_storage.php
**কাজ:** `storage/app/public` এর symlink তৈরি করে

**ব্যবহার:**
- Image upload এর জন্য প্রয়োজন
- একবার চালালেই হবে

### 5. create_super_admin.php
**কাজ:** Super Admin user তৈরি করে

**ব্যবহার:**
- Form fill করুন
- Submit করুন
- Setup complete হলে file delete করুন

### 6. clear_cache.php
**কাজ:** সব cache clear করে

**ব্যবহার:**
- যখনই `.env` বা config change করবেন
- Performance issue হলে

### 7. fix_permissions.php
**কাজ:** File permissions ঠিক করে

**ব্যবহার:**
- যদি permission error আসে

### 8. view_errors.php
**কাজ:** Laravel error logs দেখায়

**ব্যবহার:**
- যদি কোন error হয়
- Debugging এর জন্য

---

## Troubleshooting

### ❌ 500 Internal Server Error

**সমাধান:**
1. `.env` file check করুন
2. `view_errors.php` দিয়ে error দেখুন
3. `fix_permissions.php` চালান
4. `clear_cache.php` চালান

### ❌ Database Connection Error

**সমাধান:**
1. `.env` এ database credentials check করুন
2. Database name format: `username_dbname`
3. DB_HOST সবসময় `localhost`
4. cPanel এ database user এর permissions check করুন

### ❌ Images Upload হয় না

**সমাধান:**
1. `link_storage.php` চালান
2. `storage` folder এর permissions check করুন
3. `fix_permissions.php` চালান

### ❌ CSS/JS Load হয় না

**সমাধান:**
1. `.htaccess` file check করুন
2. `APP_URL` সঠিক আছে কিনা দেখুন
3. Browser cache clear করুন

### ❌ Admin Panel এ Login করতে পারছি না

**সমাধান:**
1. Email এবং password সঠিক আছে কিনা check করুন
2. `create_super_admin.php` আবার চালান
3. Database এ `users` table check করুন

---

## নিরাপত্তা (Security)

### Setup সম্পন্ন হওয়ার পর:

1. **Helper Scripts Delete করুন:**
   ```
   - create_super_admin.php
   - generate_app_key.php
   - run_migrations.php
   ```

2. **`.env` File Protect করুন:**
   - File permissions: 644
   - Web access block করুন

3. **APP_DEBUG=false রাখুন:**
   - Production এ কখনো true করবেন না

4. **Strong Password ব্যবহার করুন:**
   - Super Admin account এর জন্য

---

## Post-Deployment Checklist

- [ ] সব helper scripts successfully চলেছে
- [ ] Super Admin account তৈরি হয়েছে
- [ ] Admin Panel এ login করতে পারছি
- [ ] Theme Settings access করতে পারছি
- [ ] Images upload করতে পারছি
- [ ] Frontend site সঠিকভাবে দেখাচ্ছে
- [ ] Unnecessary helper scripts delete করেছি
- [ ] `.env` file secure করেছি
- [ ] APP_DEBUG=false set করেছি

---

## সাহায্যের জন্য

যদি কোন সমস্যা হয়:

1. `view_errors.php` দিয়ে error log দেখুন
2. `check_requirements.php` দিয়ে server check করুন
3. এই guide আবার পড়ুন
4. Hosting provider এর support এ যোগাযোগ করুন

---

**🎉 সফল Deployment এর জন্য শুভকামনা!**
