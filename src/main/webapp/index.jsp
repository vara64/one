<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="NexusShop — Modern shopping experience">
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          crossorigin="anonymous">

    <style>
        /* =========================================================
           DESIGN SYSTEM
        ========================================================= */

        :root {
            --bg: #f7f8fa;
            --surface: #ffffff;
            --surface-2: #f1f3f5;
            --surface-3: #e9edf2;

            --text: #17191c;
            --text-2: #515861;
            --text-3: #8b929b;

            --primary: #635bff;
            --primary-dark: #5148ed;
            --primary-soft: #eeecff;

            --orange: #ff6b35;
            --green: #12a474;
            --red: #ef4444;
            --yellow: #f5b942;

            --border: #e5e7eb;

            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;
            --radius-sm: 10px;

            --shadow-sm: 0 2px 10px rgba(15, 23, 42, .04);
            --shadow: 0 8px 30px rgba(15, 23, 42, .07);
            --shadow-lg: 0 20px 55px rgba(15, 23, 42, .12);

            --container: 1280px;

            --transition: .22s ease;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
            font: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin-inline: auto;
        }

        .hidden {
            display: none !important;
        }

        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border: 0;
        }

        /* =========================================================
           ANNOUNCEMENT BAR
        ========================================================= */

        .announcement {
            background: #17191c;
            color: #fff;
            min-height: 38px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            padding: 8px 20px;
        }

        .announcement-content {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            text-align: center;
        }

        .announcement strong {
            color: #fff;
        }

        .announcement i {
            color: #a9a4ff;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, .92);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(229, 231, 235, .8);
        }

        .header-main {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            flex-shrink: 0;
        }

        .logo-mark {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            background: var(--primary);
            color: #fff;
            display: grid;
            place-items: center;
            box-shadow: 0 7px 18px rgba(99, 91, 255, .25);
        }

        .logo-text {
            font-family: "Manrope", sans-serif;
            font-size: 20px;
            font-weight: 800;
            letter-spacing: -.7px;
        }

        .logo-text span {
            color: var(--primary);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .desktop-nav a {
            color: var(--text-2);
            padding: 9px 13px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            transition: var(--transition);
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            color: var(--primary);
            background: var(--primary-soft);
        }

        .header-search {
            margin-left: auto;
            width: min(330px, 30vw);
            position: relative;
        }

        .header-search input {
            width: 100%;
            height: 42px;
            padding: 0 44px 0 16px;
            border: 1px solid var(--border);
            background: var(--surface-2);
            border-radius: 999px;
            outline: none;
            color: var(--text);
            transition: var(--transition);
            font-size: 13px;
        }

        .header-search input:focus {
            border-color: var(--primary);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(99, 91, 255, .08);
        }

        .header-search button {
            position: absolute;
            right: 5px;
            top: 5px;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            background: transparent;
            color: var(--text-3);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .icon-button {
            width: 42px;
            height: 42px;
            border-radius: 12px;
            background: transparent;
            color: var(--text-2);
            position: relative;
            display: grid;
            place-items: center;
            font-size: 17px;
            transition: var(--transition);
        }

        .icon-button:hover {
            background: var(--surface-2);
            color: var(--primary);
        }

        .count {
            position: absolute;
            top: -2px;
            right: -2px;
            min-width: 18px;
            height: 18px;
            padding: 0 4px;
            border-radius: 999px;
            background: var(--orange);
            border: 2px solid #fff;
            color: #fff;
            font-size: 9px;
            font-weight: 800;
            display: grid;
            place-items: center;
        }

        .menu-button {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 12px;
            background: var(--surface-2);
            color: var(--text);
        }

        /* =========================================================
           MOBILE MENU
        ========================================================= */

        .mobile-menu {
            display: none;
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 14px 0 20px;
        }

        .mobile-menu.open {
            display: block;
        }

        .mobile-search {
            position: relative;
            margin-bottom: 14px;
        }

        .mobile-search input {
            width: 100%;
            height: 44px;
            border: 1px solid var(--border);
            border-radius: 12px;
            padding: 0 45px 0 14px;
            outline: none;
        }

        .mobile-search button {
            position: absolute;
            right: 5px;
            top: 5px;
            width: 34px;
            height: 34px;
            border-radius: 8px;
            background: var(--primary);
            color: #fff;
        }

        .mobile-links {
            display: grid;
            gap: 5px;
        }

        .mobile-links a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px;
            border-radius: 10px;
            color: var(--text-2);
            font-weight: 600;
            font-size: 14px;
        }

        .mobile-links a:hover {
            background: var(--surface-2);
            color: var(--primary);
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 26px 0 0;
        }

        .hero-card {
            min-height: 470px;
            border-radius: var(--radius-xl);
            overflow: hidden;
            position: relative;
            background:
                linear-gradient(100deg,
                rgba(14, 17, 28, .96) 0%,
                rgba(24, 28, 45, .90) 50%,
                rgba(24, 28, 45, .42) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
                center / cover;
            display: flex;
            align-items: center;
        }

        .hero-content {
            padding: 55px;
            max-width: 700px;
            color: #fff;
            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            padding: 7px 12px;
            border-radius: 999px;
            background: rgba(255, 255, 255, .12);
            border: 1px solid rgba(255, 255, 255, .16);
            color: #ddd9ff;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-family: "Manrope", sans-serif;
            font-size: clamp(38px, 5vw, 66px);
            line-height: 1.04;
            letter-spacing: -2.8px;
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: #a9a4ff;
        }

        .hero p {
            max-width: 550px;
            color: rgba(255,255,255,.72);
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 28px;
        }

        .hero-actions {
            display: flex;
            align-items: center;
            gap: 11px;
            flex-wrap: wrap;
        }

        .btn {
            min-height: 44px;
            padding: 0 19px;
            border-radius: 11px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--primary);
            color: #fff;
            box-shadow: 0 10px 25px rgba(99,91,255,.25);
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-white {
            background: #fff;
            color: var(--text);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow);
        }

        .btn-light {
            background: var(--surface-2);
            color: var(--text);
        }

        .btn-light:hover {
            background: var(--surface-3);
        }

        /* =========================================================
           TRUST BAR
        ========================================================= */

        .trust-bar {
            margin-top: 20px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-sm);
            overflow: hidden;
        }

        .trust-item {
            min-height: 82px;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            gap: 13px;
            border-right: 1px solid var(--border);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-icon {
            width: 40px;
            height: 40px;
            border-radius: 11px;
            background: var(--primary-soft);
            color: var(--primary);
            display: grid;
            place-items: center;
            flex-shrink: 0;
        }

        .trust-item strong {
            display: block;
            font-size: 13px;
            margin-bottom: 2px;
        }

        .trust-item span {
            color: var(--text-3);
            font-size: 11px;
        }

        /* =========================================================
           SECTION HEADERS
        ========================================================= */

        .section {
            padding: 72px 0 0;
        }

        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 24px;
        }

        .section-title small {
            color: var(--primary);
            text-transform: uppercase;
            letter-spacing: 1.4px;
            font-size: 10px;
            font-weight: 800;
        }

        .section-title h2 {
            font-family: "Manrope", sans-serif;
            font-size: 29px;
            letter-spacing: -1px;
            margin-top: 4px;
        }

        .section-title p {
            color: var(--text-2);
            font-size: 13px;
            margin-top: 4px;
        }

        .view-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: var(--primary);
            font-size: 13px;
            font-weight: 700;
            white-space: nowrap;
        }

        .view-link:hover {
            gap: 10px;
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 13px;
        }

        .category-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 21px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .category-card:hover {
            transform: translateY(-4px);
            border-color: #d5d2ff;
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 56px;
            height: 56px;
            border-radius: 17px;
            background: var(--primary-soft);
            color: var(--primary);
            display: grid;
            place-items: center;
            font-size: 21px;
            margin: 0 auto 13px;
        }

        .category-card h3 {
            font-size: 13px;
            font-weight: 700;
        }

        .category-card p {
            margin-top: 3px;
            color: var(--text-3);
            font-size: 11px;
        }

        /* =========================================================
           PRODUCT TOOLBAR
        ========================================================= */

        .product-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            margin-bottom: 18px;
        }

        .result-count {
            color: var(--text-2);
            font-size: 13px;
        }

        .filters {
            display: flex;
            gap: 7px;
            overflow-x: auto;
            scrollbar-width: none;
        }

        .filters::-webkit-scrollbar {
            display: none;
        }

        .filter-btn {
            flex-shrink: 0;
            height: 34px;
            padding: 0 13px;
            border-radius: 999px;
            border: 1px solid var(--border);
            background: #fff;
            color: var(--text-2);
            font-size: 11px;
            font-weight: 700;
            transition: var(--transition);
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 17px;
        }

        .product-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: var(--transition);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
            border-color: #dddafc;
        }

        .product-image {
            position: relative;
            aspect-ratio: 1 / .92;
            background: #f3f4f6;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .35s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.045);
        }

        .product-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            z-index: 2;
            padding: 5px 9px;
            border-radius: 7px;
            background: var(--primary);
            color: #fff;
            font-size: 9px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .product-badge.sale {
            background: var(--orange);
        }

        .wishlist-btn {
            position: absolute;
            right: 11px;
            top: 11px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: var(--text-2);
            display: grid;
            place-items: center;
            z-index: 3;
            box-shadow: 0 3px 12px rgba(0,0,0,.08);
            transition: var(--transition);
        }

        .wishlist-btn:hover,
        .wishlist-btn.active {
            color: var(--red);
            background: #fff;
        }

        .product-info {
            padding: 15px;
        }

        .product-category {
            color: var(--text-3);
            text-transform: uppercase;
            font-size: 9px;
            font-weight: 800;
            letter-spacing: .8px;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 14px;
            font-weight: 700;
            line-height: 1.35;
            min-height: 38px;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 5px;
            margin-top: 9px;
            font-size: 11px;
        }

        .stars {
            color: var(--yellow);
            letter-spacing: 1px;
        }

        .review-count {
            color: var(--text-3);
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
            margin-top: 13px;
        }

        .price {
            font-family: "Manrope", sans-serif;
            font-size: 17px;
            font-weight: 800;
        }

        .old-price {
            color: var(--text-3);
            font-size: 11px;
            text-decoration: line-through;
            margin-left: 4px;
        }

        .add-cart {
            width: 36px;
            height: 36px;
            border-radius: 10px;
            background: var(--text);
            color: #fff;
            display: grid;
            place-items: center;
            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--primary);
            transform: scale(1.06);
        }

        .add-cart.added {
            background: var(--green);
        }

        .no-results {
            grid-column: 1 / -1;
            padding: 60px 20px;
            text-align: center;
            background: #fff;
            border: 1px dashed var(--border);
            border-radius: var(--radius-lg);
            color: var(--text-2);
        }

        .no-results i {
            font-size: 32px;
            color: var(--text-3);
            margin-bottom: 12px;
        }

        /* =========================================================
           PROMO
        ========================================================= */

        .promo-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr;
            gap: 17px;
        }

        .promo-card {
            min-height: 280px;
            border-radius: var(--radius-xl);
            overflow: hidden;
            position: relative;
            color: #fff;
            display: flex;
            align-items: flex-end;
        }

        .promo-main {
            background:
                linear-gradient(100deg, rgba(28,28,39,.95), rgba(28,28,39,.42)),
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
                center / cover;
        }

        .promo-side {
            background:
                linear-gradient(120deg, rgba(99,91,255,.95), rgba(99,91,255,.65)),
                url("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85")
                center / cover;
        }

        .promo-content {
            padding: 28px;
            width: 100%;
        }

        .promo-tag {
            display: inline-flex;
            padding: 5px 9px;
            background: rgba(255,255,255,.14);
            border: 1px solid rgba(255,255,255,.18);
            border-radius: 999px;
            font-size: 9px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: .8px;
            margin-bottom: 10px;
        }

        .promo-card h3 {
            font-family: "Manrope", sans-serif;
            font-size: 26px;
            letter-spacing: -.7px;
            margin-bottom: 6px;
        }

        .promo-card p {
            max-width: 420px;
            color: rgba(255,255,255,.72);
            font-size: 12px;
            margin-bottom: 15px;
        }

        .promo-price {
            font-family: "Manrope", sans-serif;
            font-size: 25px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .promo-price del {
            font-family: "DM Sans";
            font-size: 13px;
            font-weight: 400;
            color: rgba(255,255,255,.5);
            margin-left: 5px;
        }

        .timer {
            display: flex;
            gap: 6px;
            margin-bottom: 16px;
        }

        .timer-box {
            min-width: 51px;
            padding: 7px 8px;
            border-radius: 9px;
            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.1);
            text-align: center;
        }

        .timer-box strong {
            display: block;
            font-size: 16px;
        }

        .timer-box span {
            color: rgba(255,255,255,.55);
            text-transform: uppercase;
            font-size: 8px;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
        }

        .review-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 22px;
        }

        .review-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 14px;
        }

        .verified {
            color: var(--green);
            font-size: 10px;
            font-weight: 700;
        }

        .review-text {
            font-size: 13px;
            line-height: 1.7;
            color: var(--text-2);
            min-height: 66px;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 18px;
        }

        .review-avatar {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-user strong {
            display: block;
            font-size: 12px;
        }

        .review-user span {
            color: var(--text-3);
            font-size: 10px;
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            margin-top: 72px;
            padding: 40px;
            border-radius: var(--radius-xl);
            background: linear-gradient(120deg, #181a21, #282b38);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .newsletter-content {
            max-width: 520px;
        }

        .newsletter-content small {
            color: #aaa6ff;
            text-transform: uppercase;
            letter-spacing: 1.2px;
            font-size: 9px;
            font-weight: 800;
        }

        .newsletter-content h2 {
            font-family: "Manrope", sans-serif;
            font-size: 27px;
            margin: 5px 0 5px;
        }

        .newsletter-content p {
            color: rgba(255,255,255,.6);
            font-size: 12px;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
            width: min(430px, 100%);
        }

        .newsletter-form input {
            min-width: 0;
            flex: 1;
            height: 46px;
            border-radius: 11px;
            border: 1px solid rgba(255,255,255,.12);
            background: rgba(255,255,255,.08);
            color: #fff;
            padding: 0 14px;
            outline: none;
            font-size: 12px;
        }

        .newsletter-form input::placeholder {
            color: rgba(255,255,255,.4);
        }

        .newsletter-message {
            font-size: 11px;
            margin-top: 8px;
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        .footer {
            margin-top: 70px;
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 45px 0 22px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3, 1fr);
            gap: 45px;
        }

        .footer-brand p {
            max-width: 300px;
            color: var(--text-2);
            font-size: 12px;
            line-height: 1.7;
            margin-top: 12px;
        }

        .socials {
            display: flex;
            gap: 7px;
            margin-top: 16px;
        }

        .social {
            width: 34px;
            height: 34px;
            border-radius: 9px;
            background: var(--surface-2);
            display: grid;
            place-items: center;
            color: var(--text-2);
            font-size: 13px;
            transition: var(--transition);
        }

        .social:hover {
            background: var(--primary);
            color: #fff;
        }

        .footer-column h4 {
            font-size: 12px;
            margin-bottom: 13px;
        }

        .footer-column ul {
            list-style: none;
            display: grid;
            gap: 8px;
        }

        .footer-column a {
            color: var(--text-2);
            font-size: 11px;
        }

        .footer-column a:hover {
            color: var(--primary);
        }

        .footer-bottom {
            margin-top: 35px;
            padding-top: 18px;
            border-top: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            gap: 15px;
            color: var(--text-3);
            font-size: 10px;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, .42);
            z-index: 2000;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: min(420px, 100%);
            height: 100%;
            background: #fff;
            z-index: 2001;
            transform: translateX(100%);
            transition: .3s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.open {
            transform: translateX(0);
        }

        .cart-header {
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: "Manrope", sans-serif;
            font-size: 17px;
        }

        .close-cart {
            width: 36px;
            height: 36px;
            border-radius: 9px;
            background: var(--surface-2);
            color: var(--text-2);
        }

        .cart-body {
            flex: 1;
            overflow-y: auto;
            padding: 18px;
        }

        .empty-cart {
            height: 100%;
            display: grid;
            place-items: center;
            text-align: center;
            color: var(--text-3);
        }

        .empty-cart i {
            font-size: 40px;
            margin-bottom: 12px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            object-fit: cover;
            background: var(--surface-2);
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-title {
            font-size: 12px;
            font-weight: 700;
        }

        .cart-item-category {
            color: var(--text-3);
            font-size: 10px;
            margin-top: 2px;
        }

        .cart-item-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 9px;
        }

        .cart-item-price {
            font-size: 12px;
            font-weight: 800;
        }

        .remove-cart-item {
            color: var(--red);
            font-size: 11px;
            background: transparent;
        }

        .cart-footer {
            padding: 18px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 13px;
        }

        .cart-total span {
            color: var(--text-2);
            font-size: 12px;
        }

        .cart-total strong {
            font-family: "Manrope", sans-serif;
            font-size: 19px;
        }

        .checkout-btn {
            width: 100%;
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;
            left: 50%;
            bottom: 25px;
            transform: translate(-50%, 30px);
            background: #17191c;
            color: #fff;
            padding: 12px 17px;
            border-radius: 11px;
            font-size: 12px;
            font-weight: 600;
            z-index: 3000;
            opacity: 0;
            pointer-events: none;
            transition: .25s ease;
            box-shadow: var(--shadow-lg);
        }

        .toast.show {
            opacity: 1;
            transform: translate(-50%, 0);
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1100px) {
            .desktop-nav {
                display: none;
            }

            .menu-button {
                display: grid;
                place-items: center;
            }

            .header-search {
                width: min(330px, 40vw);
            }

            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media (max-width: 800px) {
            .container {
                width: min(var(--container), calc(100% - 28px));
            }

            .header-main {
                gap: 9px;
            }

            .header-search {
                display: none;
            }

            .header-actions {
                margin-left: auto;
            }

            .hero-card {
                min-height: 440px;
            }

            .hero-content {
                padding: 35px;
            }

            .trust-bar {
                grid-template-columns: repeat(2, 1fr);
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .trust-item:nth-child(-n+2) {
                border-bottom: 1px solid var(--border);
            }

            .promo-grid {
                grid-template-columns: 1fr;
            }

            .reviews-grid {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
            }

            .newsletter-form {
                width: 100%;
            }
        }

        @media (max-width: 600px) {
            .announcement {
                font-size: 11px;
            }

            .logo-text {
                font-size: 17px;
            }

            .logo-mark {
                width: 35px;
                height: 35px;
                border-radius: 10px;
            }

            .header-main {
                min-height: 65px;
            }

            .icon-button {
                width: 36px;
                height: 36px;
                font-size: 15px;
            }

            .hero {
                padding-top: 12px;
            }

            .hero-card {
                min-height: 500px;
                border-radius: 20px;
                align-items: flex-end;
            }

            .hero-content {
                padding: 26px 21px;
            }

            .hero h1 {
                font-size: 39px;
                letter-spacing: -1.8px;
            }

            .hero p {
                font-size: 13px;
            }

            .section {
                padding-top: 48px;
            }

            .section-header {
                align-items: flex-start;
                flex-direction: column;
                margin-bottom: 17px;
            }

            .section-title h2 {
                font-size: 24px;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 9px;
            }

            .category-card {
                padding: 17px 8px;
            }

            .product-toolbar {
                align-items: flex-start;
                flex-direction: column;
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 9px;
            }

            .product-info {
                padding: 11px;
            }

            .product-title {
                font-size: 12px;
                min-height: 34px;
            }

            .product-rating {
                font-size: 9px;
            }

            .stars {
                letter-spacing: 0;
            }

            .price {
                font-size: 14px;
            }

            .old-price {
                display: none;
            }

            .add-cart {
                width: 32px;
                height: 32px;
                font-size: 11px;
            }

            .promo-card {
                min-height: 320px;
            }

            .promo-card h3 {
                font-size: 23px;
            }

            .newsletter {
                padding: 27px 20px;
                border-radius: 20px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input,
            .newsletter-form .btn {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 30px 20px;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }

            .footer-bottom {
                flex-direction: column;
            }
        }

        @media (max-width: 380px) {
            .product-grid {
                gap: 7px;
            }

            .product-info {
                padding: 9px;
            }

            .product-title {
                font-size: 11px;
            }

            .category-icon {
                width: 48px;
                height: 48px;
            }

            .hero h1 {
                font-size: 34px;
            }
        }
    </style>
</head>

<body>

<!-- =========================================================
     ANNOUNCEMENT
========================================================= -->

<div class="announcement">
    <div class="announcement-content">
        <i class="fa-solid fa-truck-fast"></i>
        <span><strong>Free shipping</strong> on orders over $50 · Easy 30-day returns</span>
    </div>
</div>

<!-- =========================================================
     HEADER
========================================================= -->

<header class="header">
    <div class="container header-main">

        <button class="menu-button" id="menuButton" aria-label="Open menu">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-mark">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>

            <div class="logo-text">
                Nexus<span>Shop</span>
            </div>
        </a>

        <nav class="desktop-nav">
            <a href="#home" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shop</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="header-search">
            <input
                type="search"
                id="desktopSearch"
                placeholder="Search products..."
                aria-label="Search products"
            >

            <button id="desktopSearchButton" aria-label="Search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </div>

        <div class="header-actions">

            <button class="icon-button" id="accountButton" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="icon-button" id="wishlistButton" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
                <span class="count" id="wishlistCount">0</span>
            </button>

            <button class="icon-button" id="cartButton" title="Shopping cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="count" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <!-- Mobile menu -->
    <div class="mobile-menu" id="mobileMenu">
        <div class="container">

            <div class="mobile-search">
                <input
                    type="search"
                    id="mobileSearch"
                    placeholder="Search products..."
                    aria-label="Search products"
                >

                <button id="mobileSearchButton">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>

            <nav class="mobile-links">
                <a href="#home"><i class="fa-solid fa-house"></i> Home</a>
                <a href="#categories"><i class="fa-solid fa-grid-2"></i> Categories</a>
                <a href="#products"><i class="fa-solid fa-bag-shopping"></i> Shop</a>
                <a href="#deals"><i class="fa-solid fa-bolt"></i> Deals</a>
                <a href="#reviews"><i class="fa-solid fa-star"></i> Reviews</a>
            </nav>

        </div>
    </div>
</header>

<main>

<!-- =========================================================
     HERO
========================================================= -->

<section class="hero" id="home">
    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-label">
                    <i class="fa-solid fa-sparkles"></i>
                    New season · 2026 collection
                </div>

                <h1>
                    Better products.<br>
                    <span>Better everyday.</span>
                </h1>

                <p>
                    Discover thoughtfully selected tech, fashion and accessories
                    designed to make everyday life simpler and more enjoyable.
                </p>

                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopButton">
                        Shop now
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-white" id="dealButton">
                        <i class="fa-solid fa-bolt"></i>
                        Today's deals
                    </button>
                </div>

            </div>

        </div>

        <!-- Trust -->
        <div class="trust-bar">

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>

                <div>
                    <strong>Free shipping</strong>
                    <span>Orders over $50</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>

                <div>
                    <strong>Easy returns</strong>
                    <span>30-day return policy</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>

                <div>
                    <strong>Secure payment</strong>
                    <span>100% protected checkout</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>

                <div>
                    <strong>Customer support</strong>
                    <span>We're here to help</span>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">

            <div class="section-title">
                <small>Explore</small>
                <h2>Shop by category</h2>
                <p>Find what you need without the endless scrolling.</p>
            </div>

            <a href="#products" class="view-link">
                View all
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div class="category-grid" id="categoryGrid"></div>

    </div>

</section>

<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">

            <div class="section-title">
                <small>Popular right now</small>
                <h2>Trending products</h2>
                <p>Customer favorites worth checking out.</p>
            </div>

        </div>

        <div class="product-toolbar">

            <div class="result-count" id="resultCount">
                Showing 8 products
            </div>

            <div class="filters">

                <button class="filter-btn active" data-filter="all">
                    All
                </button>

                <button class="filter-btn" data-filter="Smartphones">
                    Smartphones
                </button>

                <button class="filter-btn" data-filter="Laptops">
                    Laptops
                </button>

                <button class="filter-btn" data-filter="Gadgets">
                    Gadgets
                </button>

                <button class="filter-btn" data-filter="Footwear">
                    Footwear
                </button>

                <button class="filter-btn" data-filter="Accessories">
                    Accessories
                </button>

            </div>

        </div>

        <div class="product-grid" id="productGrid"></div>

    </div>

</section>

<!-- =========================================================
     DEALS
========================================================= -->

<section class="section" id="deals">

    <div class="container">

        <div class="section-header">

            <div class="section-title">
                <small>Limited time</small>
                <h2>Special offers</h2>
                <p>Grab today's deals before they're gone.</p>
            </div>

        </div>

        <div class="promo-grid">

            <div class="promo-card promo-main">

                <div class="promo-content">

                    <span class="promo-tag">
                        <i class="fa-solid fa-bolt"></i>
                        Flash deal
                    </span>

                    <h3>MacBook Air M2</h3>

                    <p>
                        Powerful performance in an incredibly thin and lightweight
                        design. Limited stock available.
                    </p>

                    <div class="promo-price">
                        $999
                        <del>$1,199</del>
                    </div>

                    <div class="timer">

                        <div class="timer-box">
                            <strong id="days">00</strong>
                            <span>Days</span>
                        </div>

                        <div class="timer-box">
                            <strong id="hours">00</strong>
                            <span>Hours</span>
                        </div>

                        <div class="timer-box">
                            <strong id="minutes">00</strong>
                            <span>Mins</span>
                        </div>

                        <div class="timer-box">
                            <strong id="seconds">00</strong>
                            <span>Secs</span>
                        </div>

                    </div>

                    <button class="btn btn-white" id="dealCartButton">
                        Add to cart
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                </div>

            </div>

            <div class="promo-card promo-side">

                <div class="promo-content">

                    <span class="promo-tag">
                        Weekend offer
                    </span>

                    <h3>Premium audio</h3>

                    <p>
                        Upgrade your listening experience with selected headphones.
                    </p>

                    <button class="btn btn-white" id="audioButton">
                        Shop audio
                        <i class="fa-solid fa-headphones"></i>
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-header">

            <div class="section-title">
                <small>Customer stories</small>
                <h2>Loved by shoppers</h2>
                <p>See what customers have to say about NexusShop.</p>
            </div>

        </div>

        <div class="reviews-grid" id="reviewsGrid"></div>

    </div>

</section>

<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="container">

    <div class="newsletter">

        <div class="newsletter-content">
            <small>Stay updated</small>

            <h2>Get the good stuff first.</h2>

            <p>
                New arrivals, exclusive discounts and useful shopping updates.
                No unnecessary emails.
            </p>
        </div>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="newsletterEmail"
                placeholder="Your email address"
                required
            >

            <button class="btn btn-primary" type="submit">
                Subscribe
            </button>

        </form>

        <div class="newsletter-message" id="newsletterMessage"></div>

    </div>

</section>

</main>

<!-- =========================================================
     FOOTER
========================================================= -->

<footer class="footer">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">

                    <div class="logo-mark">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>

                    <div class="logo-text">
                        Nexus<span>Shop</span>
                    </div>

                </a>

                <p>
                    A cleaner, simpler way to discover products you'll actually
                    want to use.
                </p>

                <div class="socials">
                    <a href="#" class="social"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#" class="social"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#" class="social"><i class="fa-brands fa-youtube"></i></a>
                </div>

            </div>

            <div class="footer-column">

                <h4>Shop</h4>

                <ul>
                    <li><a href="#products">All products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#products">New arrivals</a></li>
                </ul>

            </div>

            <div class="footer-column">

                <h4>Support</h4>

                <ul>
                    <li><a href="#">Help center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact us</a></li>
                </ul>

            </div>

            <div class="footer-column">

                <h4>Company</h4>

                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>

            </div>

        </div>

        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NexusShop. All rights reserved.
            </span>

            <span>
                Made for a better shopping experience.
            </span>

        </div>

    </div>

</footer>

<!-- =========================================================
     CART OVERLAY
========================================================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>
            Your cart
            <span id="cartHeaderCount">(0)</span>
        </h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-body" id="cartBody">

        <div class="empty-cart">
            <div>
                <i class="fa-solid fa-bag-shopping"></i>
                <p>Your cart is empty.</p>
            </div>
        </div>

    </div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <strong id="cartTotal">$0</strong>
        </div>

        <button class="btn btn-primary checkout-btn" id="checkoutButton">
            Proceed to checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<!-- =========================================================
     TOAST
========================================================= -->

<div class="toast" id="toast"></div>

<script>
/* =============================================================
   DATA
============================================================= */

const CATEGORIES = [
    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button",
        count: 24
    },
    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },
    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt",
        count: 42
    },
    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones",
        count: 31
    },
    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },
    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch",
        count: 39
    }
];

const PRODUCTS = [
    {
        id: 1,
        title: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 2,
        title: "MacBook Pro 14",
        category: "Laptops",
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "",
        image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 3,
        title: "Apple Watch Series 8",
        category: "Accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 4,
        title: "Nike Air Max 270",
        category: "Footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 5,
        title: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 6,
        title: "Premium Fragrance",
        category: "Accessories",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 7,
        title: "Travel Backpack",
        category: "Accessories",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 8,
        title: "Sony WH-1000XM5",
        category: "Gadgets",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    }
];

const REVIEWS = [
    {
        name: "Ava Martin",
        role: "Verified buyer",
        text: "The whole experience was incredibly smooth. Delivery was quick and the product arrived exactly as expected.",
        rating: 5,
        image: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
    },
    {
        name: "Michael Lee",
        role: "Frequent shopper",
        text: "I really like how easy it is to browse products. Checkout was straightforward and there were no surprises.",
        rating: 5,
        image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
    },
    {
        name: "Sophia Chen",
        role: "Designer",
        text: "Beautiful packaging, great quality and a very clean shopping experience. I'll definitely come back.",
        rating: 5,
        image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
    }
];

/* =============================================================
   STATE
============================================================= */

let cart = [];
let wishlist = [];
let currentFilter = "all";

/* =============================================================
   DOM
============================================================= */

const categoryGrid = document.getElementById("categoryGrid");
const productGrid = document.getElementById("productGrid");
const resultCount = document.getElementById("resultCount");

const cartButton = document.getElementById("cartButton");
const cartDrawer = document.getElementById("cartDrawer");
const cartBody = document.getElementById("cartBody");
const cartCount = document.getElementById("cartCount");
const cartHeaderCount = document.getElementById("cartHeaderCount");
const cartTotal = document.getElementById("cartTotal");
const closeCart = document.getElementById("closeCart");
const overlay = document.getElementById("overlay");

const wishlistCount = document.getElementById("wishlistCount");

const toast = document.getElementById("toast");

const menuButton = document.getElementById("menuButton");
const mobileMenu = document.getElementById("mobileMenu");

/* =============================================================
   HELPERS
============================================================= */

function escapeHTML(value) {
    return String(value).replace(/[&<>"']/g, char => ({
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#039;"
    })[char]);
}

function money(value) {
    return "$" + Number(value).toLocaleString();
}

function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");

    clearTimeout(showToast.timer);

    showToast.timer = setTimeout(() => {
        toast.classList.remove("show");
    }, 2200);
}

/* =============================================================
   CATEGORIES
============================================================= */

function renderCategories() {

    categoryGrid.innerHTML = CATEGORIES.map(category => `
        <button class="category-card" data-category="${escapeHTML(category.name)}">

            <div class="category-icon">
                <i class="fa-solid ${category.icon}"></i>
            </div>

            <h3>${escapeHTML(category.name)}</h3>

            <p>${category.count} products</p>

        </button>
    `).join("");

    categoryGrid.querySelectorAll(".category-card").forEach(button => {

        button.addEventListener("click", () => {

            const category = button.dataset.category;

            currentFilter = category;

            document.querySelectorAll(".filter-btn").forEach(btn => {
                btn.classList.toggle(
                    "active",
                    btn.dataset.filter === category
                );
            });

            renderProducts();

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth",
                    block: "start"
                });
        });
    });
}

/* =============================================================
   PRODUCTS
============================================================= */

function getVisibleProducts() {

    let products = [...PRODUCTS];

    if (currentFilter !== "all") {
        products = products.filter(
            product => product.category === currentFilter
        );
    }

    const search =
        document.getElementById("desktopSearch").value.trim().toLowerCase();

    const mobileSearch =
        document.getElementById("mobileSearch").value.trim().toLowerCase();

    const query = search || mobileSearch;

    if (query) {
        products = products.filter(product =>
            product.title.toLowerCase().includes(query) ||
            product.category.toLowerCase().includes(query)
        );
    }

    return products;
}

function renderProducts() {

    const products = getVisibleProducts();

    resultCount.textContent =
        `Showing ${products.length} product${products.length !== 1 ? "s" : ""}`;

    if (!products.length) {

        productGrid.innerHTML = `
            <div class="no-results">

                <i class="fa-solid fa-magnifying-glass"></i>

                <h3>No products found</h3>

                <p>
                    Try another search or choose a different category.
                </p>

            </div>
        `;

        return;
    }

    productGrid.innerHTML = products.map(product => {

        const isWishlisted = wishlist.includes(product.id);

        const stars =
            "★".repeat(Math.round(product.rating)) +
            "☆".repeat(5 - Math.round(product.rating));

        return `
            <article class="product-card">

                <div class="product-image">

                    <img
                        src="${product.image}"
                        alt="${escapeHTML(product.title)}"
                        loading="lazy"
                    >

                    ${
                        product.badge
                        ? `
                            <span class="product-badge ${product.badge === "Sale" ? "sale" : ""}">
                                ${product.badge}
                            </span>
                        `
                        : ""
                    }

                    <button
                        class="wishlist-btn ${isWishlisted ? "active" : ""}"
                        data-wishlist="${product.id}"
                        aria-label="Add ${escapeHTML(product.title)} to wishlist"
                    >
                        <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-category">
                        ${escapeHTML(product.category)}
                    </div>

                    <h3 class="product-title">
                        ${escapeHTML(product.title)}
                    </h3>

                    <div class="product-rating">

                        <span class="stars">${stars}</span>

                        <span class="review-count">
                            (${product.reviews})
                        </span>

                    </div>

                    <div class="product-bottom">

                        <div>
                            <span class="price">
                                ${money(product.price)}
                            </span>

                            ${
                                product.oldPrice
                                ? `
                                    <span class="old-price">
                                        ${money(product.oldPrice)}
                                    </span>
                                `
                                : ""
                            }
                        </div>

                        <button
                            class="add-cart"
                            data-cart="${product.id}"
                            aria-label="Add ${escapeHTML(product.title)} to cart"
                        >
                            <i class="fa-solid fa-plus"></i>
                        </button>

                    </div>

                </div>

            </article>
        `;

    }).join("");

    bindProductActions();
}

/* =============================================================
   PRODUCT ACTIONS
============================================================= */

function bindProductActions() {

    document.querySelectorAll("[data-cart]").forEach(button => {

        button.addEventListener("click", () => {

            const productId = Number(button.dataset.cart);

            addToCart(productId);

            button.classList.add("added");

            button.innerHTML =
                '<i class="fa-solid fa-check"></i>';

            setTimeout(() => {
                button.classList.remove("added");
                button.innerHTML =
                    '<i class="fa-solid fa-plus"></i>';
            }, 1000);
        });
    });

    document.querySelectorAll("[data-wishlist]").forEach(button => {

        button.addEventListener("click", () => {

            const productId = Number(button.dataset.wishlist);

            toggleWishlist(productId);
        });
    });
}

/* =============================================================
   CART
============================================================= */

function addToCart(productId) {

    const product = PRODUCTS.find(
        item => item.id === productId
    );

    if (!product) return;

    const existing = cart.find(
        item => item.id === productId
    );

    if (existing) {
        existing.quantity++;
    } else {
        cart.push({
            ...product,
            quantity: 1
        });
    }

    updateCartUI();

    showToast(`${product.title} added to your cart`);
}

function removeFromCart(productId) {

    cart = cart.filter(
        item => item.id !== productId
    );

    updateCartUI();
}

function updateCartUI() {

    const quantity = cart.reduce(
        (total, item) => total + item.quantity,
        0
    );

    const total = cart.reduce(
        (sum, item) => sum + item.price * item.quantity,
        0
    );

    cartCount.textContent = quantity;
    cartHeaderCount.textContent = `(${quantity})`;
    cartTotal.textContent = money(total);

    if (!cart.length) {

        cartBody.innerHTML = `
            <div class="empty-cart">

                <div>

                    <i class="fa-solid fa-bag-shopping"></i>

                    <p>Your cart is empty.</p>

                </div>

            </div>
        `;

        return;
    }

    cartBody.innerHTML = cart.map(item => `
        <div class="cart-item">

            <img
                src="${item.image}"
                alt="${escapeHTML(item.title)}"
            >

            <div class="cart-item-info">

                <div class="cart-item-title">
                    ${escapeHTML(item.title)}
                </div>

                <div class="cart-item-category">
                    ${escapeHTML(item.category)}
                    · Qty ${item.quantity}
                </div>

                <div class="cart-item-bottom">

                    <span class="cart-item-price">
                        ${money(item.price * item.quantity)}
                    </span>

                    <button
                        class="remove-cart-item"
                        data-remove="${item.id}"
                    >
                        Remove
                    </button>

                </div>

            </div>

        </div>
    `).join("");

    cartBody.querySelectorAll("[data-remove]").forEach(button => {

        button.addEventListener("click", () => {

            removeFromCart(
                Number(button.dataset.remove)
            );

            showToast("Item removed from cart");
        });
    });
}

/* =============================================================
   CART DRAWER
============================================================= */

function openCart() {

    cartDrawer.classList.add("open");
    overlay.classList.add("show");

    document.body.classList.add("no-scroll");
}

function closeCartDrawer() {

    cartDrawer.classList.remove("open");
    overlay.classList.remove("show");

    document.body.classList.remove("no-scroll");
}

cartButton.addEventListener("click", openCart);

closeCart.addEventListener("click", closeCartDrawer);

overlay.addEventListener("click", closeCartDrawer);

/* =============================================================
   WISHLIST
============================================================= */

function toggleWishlist(productId) {

    const product = PRODUCTS.find(
        item => item.id === productId
    );

    if (!product) return;

    const index = wishlist.indexOf(productId);

    if (index === -1) {

        wishlist.push(productId);

        showToast(`${product.title} saved to wishlist`);

    } else {

        wishlist.splice(index, 1);

        showToast("Removed from wishlist");
    }

    wishlistCount.textContent = wishlist.length;

    renderProducts();
}

/* =============================================================
   FILTERS
============================================================= */

document.querySelectorAll(".filter-btn").forEach(button => {

    button.addEventListener("click", () => {

        currentFilter = button.dataset.filter;

        document.querySelectorAll(".filter-btn").forEach(btn => {
            btn.classList.remove("active");
        });

        button.classList.add("active");

        renderProducts();
    });
});

/* =============================================================
   SEARCH
============================================================= */

function performSearch(inputId) {

    const input = document.getElementById(inputId);

    const value = input.value.trim();

    document.getElementById("desktopSearch").value = value;
    document.getElementById("mobileSearch").value = value;

    currentFilter = "all";

    document.querySelectorAll(".filter-btn").forEach(button => {
        button.classList.toggle(
            "active",
            button.dataset.filter === "all"
        );
    });

    renderProducts();

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth",
            block: "start"
        });
}

document
    .getElementById("desktopSearchButton")
    .addEventListener("click", () => {
        performSearch("desktopSearch");
    });

document
    .getElementById("mobileSearchButton")
    .addEventListener("click", () => {
        performSearch("mobileSearch");
    });

document
    .getElementById("desktopSearch")
    .addEventListener("keydown", event => {

        if (event.key === "Enter") {
            performSearch("desktopSearch");
        }
    });

document
    .getElementById("mobileSearch")
    .addEventListener("keydown", event => {

        if (event.key === "Enter") {
            performSearch("mobileSearch");
        }
    });

/* =============================================================
   MOBILE MENU
============================================================= */

menuButton.addEventListener("click", () => {

    mobileMenu.classList.toggle("open");

    const open = mobileMenu.classList.contains("open");

    menuButton.innerHTML = open
        ? '<i class="fa-solid fa-xmark"></i>'
        : '<i class="fa-solid fa-bars"></i>';
});

document.querySelectorAll(".mobile-links a").forEach(link => {

    link.addEventListener("click", () => {

        mobileMenu.classList.remove("open");

        menuButton.innerHTML =
            '<i class="fa-solid fa-bars"></i>';
    });
});

/* =============================================================
   HERO BUTTONS
============================================================= */

document
    .getElementById("shopButton")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });
    });

document
    .getElementById("dealButton")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });
    });

document
    .getElementById("audioButton")
    .addEventListener("click", () => {

        currentFilter = "Gadgets";

        document.querySelectorAll(".filter-btn").forEach(button => {

            button.classList.toggle(
                "active",
                button.dataset.filter === "Gadgets"
            );

        });

        renderProducts();

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });
    });

/* =============================================================
   FLASH DEAL
============================================================= */

const dealTarget =
    Date.now() +
    (1 * 24 * 60 * 60 * 1000) +
    (6 * 60 * 60 * 1000) +
    (36 * 60 * 1000);

function updateTimer() {

    const remaining =
        Math.max(0, dealTarget - Date.now());

    const days =
        Math.floor(
            remaining / (1000 * 60 * 60 * 24)
        );

    const hours =
        Math.floor(
            (remaining / (1000 * 60 * 60)) % 24
        );

    const minutes =
        Math.floor(
            (remaining / (1000 * 60)) % 60
        );

    const seconds =
        Math.floor(
            (remaining / 1000) % 60
        );

    document.getElementById("days").textContent =
        String(days).padStart(2, "0");

    document.getElementById("hours").textContent =
        String(hours).padStart(2, "0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2, "0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2, "0");
}

updateTimer();

setInterval(updateTimer, 1000);

/* =============================================================
   DEAL CART
============================================================= */

document
    .getElementById("dealCartButton")
    .addEventListener("click", () => {

        addToCart(2);

        openCart();
    });

/* =============================================================
   REVIEWS
============================================================= */

function renderReviews() {

    const reviewsGrid =
        document.getElementById("reviewsGrid");

    reviewsGrid.innerHTML = REVIEWS.map(review => {

        const stars =
            "★".repeat(review.rating) +
            "☆".repeat(5 - review.rating);

        return `
            <article class="review-card">

                <div class="review-top">

                    <div class="stars">
                        ${stars}
                    </div>

                    <span class="verified">
                        <i class="fa-solid fa-circle-check"></i>
                        Verified
                    </span>

                </div>

                <p class="review-text">
                    “${escapeHTML(review.text)}”
                </p>

                <div class="review-user">

                    <img
                        class="review-avatar"
                        src="${review.image}"
                        alt="${escapeHTML(review.name)}"
                    >

                    <div>
                        <strong>${escapeHTML(review.name)}</strong>
                        <span>${escapeHTML(review.role)}</span>
                    </div>

                </div>

            </article>
        `;

    }).join("");
}

/* =============================================================
   NEWSLETTER
============================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();

        const email =
            document
                .getElementById("newsletterEmail")
                .value
                .trim();

        const message =
            document.getElementById("newsletterMessage");

        if (!email || !email.includes("@")) {

            message.textContent =
                "Please enter a valid email address.";

            message.style.color = "#ff9f9f";

            return;
        }

        message.textContent =
            "You're subscribed! Welcome to NexusShop.";

        message.style.color = "#7ee2b8";

        document
            .getElementById("newsletterEmail")
            .value = "";

        showToast("You're subscribed!");
    });

/* =============================================================
   ACCOUNT
============================================================= */

document
    .getElementById("accountButton")
    .addEventListener("click", () => {

        showToast("Account area coming soon");
    });

document
    .getElementById("wishlistButton")
    .addEventListener("click", () => {

        if (!wishlist.length) {

            showToast("Your wishlist is empty");

            return;
        }

        showToast(
            `${wishlist.length} item${wishlist.length > 1 ? "s" : ""} saved`
        );
    });

/* =============================================================
   CHECKOUT
============================================================= */

document
    .getElementById("checkoutButton")
    .addEventListener("click", () => {

        if (!cart.length) {

            showToast("Your cart is empty");

            return;
        }

        showToast("Checkout is ready for integration");

    });

/* =============================================================
   YEAR
============================================================= */

document.getElementById("year").textContent =
    new Date().getFullYear();

/* =============================================================
   INITIALIZE
============================================================= */

renderCategories();
renderProducts();
renderReviews();
updateCartUI();

</script>

</body>
</html>
