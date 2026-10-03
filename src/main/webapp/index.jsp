<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>NexusShop - Online Shopping</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
    rel="stylesheet"
  >

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  >

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --nav-dark: #131921;
      --nav-light: #232f3e;
      --orange: #ff9900;
      --yellow: #febd69;
      --blue: #146eb4;
      --bg: #eaeded;
      --white: #ffffff;
      --text: #111111;
      --muted: #565959;
      --green: #007600;
      --border: #ddd;
      --danger: #b12704;
    }

    body {
      font-family: "Inter", Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
    }

    button,
    input,
    select {
      font-family: inherit;
    }

    button {
      cursor: pointer;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    /* =========================
       TOP NAVIGATION
    ========================= */

    .top-header {
      background: var(--nav-dark);
      color: white;
    }

    .header-main {
      min-height: 65px;
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 8px 20px;
    }

    .logo {
      min-width: 145px;
      font-size: 25px;
      font-weight: 800;
      letter-spacing: -1px;
      padding: 8px;
      cursor: pointer;
    }

    .logo span {
      color: var(--orange);
    }

    .location {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px;
      min-width: 150px;
      cursor: pointer;
    }

    .location i {
      font-size: 20px;
    }

    .location small {
      display: block;
      color: #ccc;
      font-size: 11px;
    }

    .location strong {
      font-size: 13px;
    }

    /* SEARCH */

    .search-box {
      flex: 1;
      display: flex;
      height: 42px;
      max-width: 850px;
      margin: 0 auto;
    }

    .search-category {
      width: 55px;
      border: 0;
      border-radius: 5px 0 0 5px;
      background: #e6e6e6;
      color: #333;
      padding: 0 8px;
      cursor: pointer;
    }

    .search-input {
      flex: 1;
      border: 0;
      outline: none;
      padding: 0 15px;
      font-size: 15px;
    }

    .search-button {
      width: 52px;
      border: 0;
      background: var(--orange);
      border-radius: 0 5px 5px 0;
      font-size: 19px;
      color: #111;
    }

    .search-button:hover {
      background: #f3a847;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .header-action {
      padding: 8px;
      color: white;
      min-width: 65px;
      cursor: pointer;
    }

    .header-action small {
      display: block;
      font-size: 11px;
      color: #ddd;
    }

    .header-action strong {
      font-size: 13px;
    }

    .cart-button {
      position: relative;
      padding: 8px;
      min-width: 70px;
      cursor: pointer;
    }

    .cart-button i {
      font-size: 29px;
    }

    .cart-count {
      position: absolute;
      top: 0;
      left: 25px;
      background: var(--orange);
      color: #111;
      font-weight: 800;
      font-size: 12px;
      border-radius: 20px;
      padding: 2px 6px;
    }

    /* =========================
       SECOND NAV
    ========================= */

    .sub-nav {
      background: var(--nav-light);
      color: white;
      display: flex;
      align-items: center;
      gap: 25px;
      padding: 10px 20px;
      font-size: 14px;
      overflow-x: auto;
      white-space: nowrap;
    }

    .sub-nav-item {
      cursor: pointer;
    }

    .sub-nav-item:hover {
      color: var(--yellow);
    }

    .hamburger {
      font-weight: 700;
    }

    /* =========================
       HERO
    ========================= */

    .hero {
      height: 390px;
      position: relative;
      overflow: hidden;
      background:
        linear-gradient(
          to bottom,
          rgba(0, 0, 0, 0.05),
          rgba(0, 0, 0, 0.75)
        ),
        url("https://images.unsplash.com/photo-1607082349566-187342175e2f?auto=format&fit=crop&w=1800&q=85")
        center / cover;
    }

    .hero-content {
      position: absolute;
      left: 7%;
      bottom: 50px;
      max-width: 550px;
      color: white;
    }

    .hero-tag {
      display: inline-block;
      background: var(--orange);
      color: #111;
      padding: 7px 13px;
      border-radius: 3px;
      font-weight: 800;
      font-size: 13px;
      margin-bottom: 15px;
    }

    .hero h1 {
      font-size: 44px;
      line-height: 1.1;
      margin-bottom: 15px;
    }

    .hero p {
      font-size: 17px;
      margin-bottom: 22px;
    }

    .hero-btn {
      border: none;
      background: #ffd814;
      padding: 12px 25px;
      border-radius: 25px;
      font-weight: 700;
      font-size: 14px;
    }

    .hero-btn:hover {
      background: #f7ca00;
    }

    /* =========================
       CATEGORY CARDS
    ========================= */

    .page-container {
      max-width: 1500px;
      margin: auto;
      padding: 0 20px 40px;
    }

    .category-section {
      margin-top: -70px;
      position: relative;
      z-index: 2;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .category-card {
      background: white;
      padding: 18px;
      min-height: 190px;
      box-shadow: 0 1px 4px rgba(0,0,0,.15);
      cursor: pointer;
      transition: .2s;
    }

    .category-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 5px 15px rgba(0,0,0,.2);
    }

    .category-card h3 {
      font-size: 18px;
      margin-bottom: 12px;
    }

    .category-card img {
      width: 100%;
      height: 115px;
      object-fit: contain;
      display: block;
    }

    .category-card span {
      color: var(--blue);
      font-size: 13px;
      display: inline-block;
      margin-top: 10px;
    }

    /* =========================
       DEALS
    ========================= */

    .section {
      background: white;
      margin-top: 25px;
      padding: 22px;
      box-shadow: 0 1px 4px rgba(0,0,0,.12);
    }

    .section-header {
      display: flex;
      align-items: center;
      gap: 20px;
      margin-bottom: 18px;
    }

    .section-header h2 {
      font-size: 25px;
    }

    .view-link {
      color: var(--blue);
      font-size: 14px;
    }

    .view-link:hover {
      text-decoration: underline;
    }

    .deal-banner {
      background: #cc0c39;
      color: white;
      padding: 14px 18px;
      display: flex;
      align-items: center;
      gap: 18px;
      margin-bottom: 20px;
      border-radius: 3px;
    }

    .deal-banner strong {
      font-size: 20px;
    }

    .countdown {
      background: #fff;
      color: #111;
      padding: 7px 12px;
      font-weight: 800;
      border-radius: 3px;
      font-size: 14px;
    }

    /* =========================
       PRODUCTS
    ========================= */

    .products-grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 18px;
    }

    .product-card {
      border: 1px solid #eee;
      padding: 15px;
      position: relative;
      background: white;
      transition: .2s;
      cursor: pointer;
    }

    .product-card:hover {
      box-shadow: 0 3px 12px rgba(0,0,0,.16);
    }

    .wishlist {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 35px;
      height: 35px;
      border-radius: 50%;
      background: white;
      border: 1px solid #ddd;
      z-index: 2;
    }

    .wishlist.active {
      color: #e53935;
    }

    .product-image {
      height: 200px;
      width: 100%;
      object-fit: contain;
      margin-bottom: 12px;
    }

    .product-category {
      color: #565959;
      font-size: 12px;
      margin-bottom: 6px;
    }

    .product-title {
      font-size: 15px;
      line-height: 1.4;
      min-height: 42px;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 7px;
      margin: 8px 0;
    }

    .stars {
      color: #de7921;
      letter-spacing: -2px;
    }

    .rating-count {
      color: var(--blue);
      font-size: 12px;
    }

    .price {
      font-size: 23px;
      font-weight: 700;
      margin: 8px 0;
    }

    .price span {
      font-size: 13px;
      vertical-align: top;
    }

    .old-price {
      color: #565959;
      font-size: 12px;
      text-decoration: line-through;
      margin-left: 6px;
    }

    .discount {
      background: #cc0c39;
      color: white;
      padding: 4px 7px;
      font-size: 11px;
      font-weight: 700;
      display: inline-block;
      margin-bottom: 8px;
    }

    .delivery {
      font-size: 12px;
      margin-bottom: 12px;
    }

    .delivery strong {
      color: var(--green);
    }

    .add-cart {
      width: 100%;
      background: #ffd814;
      border: 1px solid #fcd200;
      padding: 9px;
      border-radius: 18px;
      font-size: 13px;
      font-weight: 600;
    }

    .add-cart:hover {
      background: #f7ca00;
    }

    /* =========================
       FEATURE STRIP
    ========================= */

    .feature-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 15px;
    }

    .feature {
      border: 1px solid #ddd;
      padding: 20px;
      display: flex;
      align-items: center;
      gap: 15px;
    }

    .feature i {
      font-size: 30px;
      color: var(--blue);
    }

    .feature h3 {
      font-size: 15px;
      margin-bottom: 4px;
    }

    .feature p {
      color: #565959;
      font-size: 12px;
    }

    /* =========================
       NEWSLETTER
    ========================= */

    .newsletter {
      background: white;
      margin-top: 25px;
      padding: 40px;
      text-align: center;
      border: 1px solid #ddd;
    }

    .newsletter h2 {
      margin-bottom: 8px;
    }

    .newsletter p {
      color: #565959;
      margin-bottom: 18px;
    }

    .newsletter-form {
      display: flex;
      max-width: 600px;
      margin: auto;
    }

    .newsletter-form input {
      flex: 1;
      padding: 13px;
      border: 1px solid #888;
      outline: none;
    }

    .newsletter-form button {
      background: var(--orange);
      border: 0;
      padding: 0 25px;
      font-weight: 700;
    }

    /* =========================
       FOOTER
    ========================= */

    footer {
      margin-top: 35px;
      background: #131a22;
      color: white;
    }

    .back-top {
      text-align: center;
      background: #37475a;
      padding: 15px;
      cursor: pointer;
      font-size: 13px;
    }

    .back-top:hover {
      background: #485769;
    }

    .footer-main {
      max-width: 1200px;
      margin: auto;
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 40px;
      padding: 45px 20px;
    }

    .footer-column h3 {
      font-size: 16px;
      margin-bottom: 15px;
    }

    .footer-column a {
      display: block;
      color: #ddd;
      font-size: 13px;
      margin: 10px 0;
    }

    .footer-column a:hover {
      text-decoration: underline;
    }

    .footer-bottom {
      border-top: 1px solid #3a4553;
      text-align: center;
      padding: 25px;
      color: #bbb;
      font-size: 12px;
    }

    /* =========================
       CART DRAWER
    ========================= */

    .overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,.55);
      z-index: 100;
      display: none;
    }

    .overlay.show {
      display: block;
    }

    .cart-drawer {
      position: fixed;
      top: 0;
      right: -450px;
      width: 430px;
      max-width: 100%;
      height: 100vh;
      background: white;
      z-index: 101;
      transition: right .3s ease;
      display: flex;
      flex-direction: column;
    }

    .cart-drawer.open {
      right: 0;
    }

    .cart-header {
      background: var(--nav-light);
      color: white;
      padding: 18px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .cart-header button {
      border: 0;
      background: none;
      color: white;
      font-size: 22px;
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
      padding: 15px;
    }

    .cart-item {
      display: flex;
      gap: 12px;
      border-bottom: 1px solid #ddd;
      padding: 15px 0;
    }

    .cart-item img {
      width: 75px;
      height: 75px;
      object-fit: contain;
    }

    .cart-item-info {
      flex: 1;
    }

    .cart-item-title {
      font-size: 13px;
      line-height: 1.4;
      margin-bottom: 7px;
    }

    .cart-item-price {
      font-weight: 700;
      margin-bottom: 8px;
    }

    .quantity {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .quantity button {
      width: 28px;
      height: 28px;
      border: 1px solid #aaa;
      background: #f5f5f5;
      border-radius: 3px;
    }

    .remove-item {
      color: #b12704;
      border: 0;
      background: none;
      font-size: 12px;
      margin-top: 7px;
    }

    .cart-footer {
      padding: 20px;
      border-top: 1px solid #ddd;
    }

    .subtotal {
      display: flex;
      justify-content: space-between;
      font-size: 20px;
      font-weight: 700;
      margin-bottom: 15px;
    }

    .checkout {
      width: 100%;
      padding: 13px;
      border: 1px solid #fcd200;
      background: #ffd814;
      border-radius: 22px;
      font-weight: 700;
    }

    .empty-cart {
      text-align: center;
      padding: 60px 20px;
      color: #565959;
    }

    .empty-cart i {
      font-size: 50px;
      margin-bottom: 15px;
    }

    /* =========================
       TOAST
    ========================= */

    .toast {
      position: fixed;
      bottom: 25px;
      left: 50%;
      transform: translate(-50%, 100px);
      background: #111;
      color: white;
      padding: 13px 22px;
      border-radius: 5px;
      z-index: 300;
      opacity: 0;
      transition: .3s;
      font-size: 14px;
    }

    .toast.show {
      opacity: 1;
      transform: translate(-50%, 0);
    }

    /* =========================
       MOBILE
    ========================= */

    .mobile-menu-button {
      display: none;
      color: white;
      background: none;
      border: 0;
      font-size: 22px;
    }

    @media (max-width: 1100px) {
      .category-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .products-grid {
        grid-template-columns: repeat(4, 1fr);
      }

      .location {
        display: none;
      }
    }

    @media (max-width: 850px) {
      .header-main {
        flex-wrap: wrap;
      }

      .mobile-menu-button {
        display: block;
      }

      .logo {
        min-width: auto;
      }

      .search-box {
        order: 5;
        flex-basis: 100%;
        max-width: none;
      }

      .header-action {
        display: none;
      }

      .hero {
        height: 340px;
      }

      .hero h1 {
        font-size: 32px;
      }

      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .feature-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 600px) {
      .header-main {
        padding: 8px 10px;
      }

      .logo {
        font-size: 21px;
      }

      .sub-nav {
        gap: 15px;
        padding: 9px 12px;
      }

      .hero {
        height: 300px;
      }

      .hero-content {
        left: 20px;
        right: 20px;
        bottom: 30px;
      }

      .hero h1 {
        font-size: 28px;
      }

      .hero p {
        font-size: 13px;
      }

      .page-container {
        padding: 0 10px 30px;
      }

      .category-section {
        margin-top: -30px;
      }

      .category-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 10px;
      }

      .category-card {
        min-height: 150px;
        padding: 12px;
      }

      .category-card img {
        height: 90px;
      }

      .section {
        padding: 15px;
      }

      .section-header h2 {
        font-size: 20px;
      }

      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 10px;
      }

      .product-card {
        padding: 10px;
      }

      .product-image {
        height: 150px;
      }

      .product-title {
        font-size: 13px;
      }

      .price {
        font-size: 19px;
      }

      .feature-grid {
        grid-template-columns: 1fr;
      }

      .footer-main {
        grid-template-columns: repeat(2, 1fr);
        gap: 25px;
      }

      .newsletter {
        padding: 25px 15px;
      }

      .newsletter-form {
        flex-direction: column;
        gap: 8px;
      }

      .newsletter-form input,
      .newsletter-form button {
        min-height: 45px;
      }

      .deal-banner {
        flex-wrap: wrap;
      }
    }
  </style>
</head>

<body>

  <!-- =========================
       HEADER
  ========================== -->

  <header class="top-header">

    <div class="header-main">

      <button class="mobile-menu-button" onclick="toggleMobileMenu()">
        <i class="fa-solid fa-bars"></i>
      </button>

      <div class="logo" onclick="scrollToTop()">
        Nexus<span>Shop</span>
      </div>

      <div class="location">
        <i class="fa-solid fa-location-dot"></i>
        <div>
          <small>Deliver to</small>
          <strong>Hyderabad 500001</strong>
        </div>
      </div>

      <div class="search-box">

        <select class="search-category" id="searchCategory">
          <option value="all">All</option>
          <option value="Smartphones">Phones</option>
          <option value="Laptops">Laptops</option>
          <option value="Gadgets">Gadgets</option>
          <option value="Clothing">Clothing</option>
          <option value="Footwear">Footwear</option>
          <option value="Accessories">Accessories</option>
        </select>

        <input
          type="text"
          id="searchInput"
          class="search-input"
          placeholder="Search NexusShop"
          onkeyup="handleSearch(event)"
        >

        <button class="search-button" onclick="searchProducts()">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>

      </div>

      <div class="header-actions">

        <div class="header-action" onclick="showToast('Language options coming soon')">
          <small>Language</small>
          <strong>EN ▾</strong>
        </div>

        <div class="header-action" onclick="showToast('Hello! Account section coming soon')">
          <small>Hello, sign in</small>
          <strong>Account & Lists</strong>
        </div>

        <div class="header-action" onclick="showToast('Your orders will appear here')">
          <small>Returns</small>
          <strong>& Orders</strong>
        </div>

        <div class="cart-button" onclick="openCart()">
          <i class="fa-solid fa-cart-shopping"></i>
          <span class="cart-count" id="cartCount">0</span>
        </div>

      </div>

    </div>

    <nav class="sub-nav" id="subNav">

      <div class="sub-nav-item hamburger" onclick="toggleMobileMenu()">
        <i class="fa-solid fa-bars"></i>
        All
      </div>

      <div class="sub-nav-item" onclick="filterCategory('all')">
        Today's Deals
      </div>

      <div class="sub-nav-item" onclick="filterCategory('Smartphones')">
        Mobiles
      </div>

      <div class="sub-nav-item" onclick="filterCategory('Laptops')">
        Computers
      </div>

      <div class="sub-nav-item" onclick="filterCategory('Gadgets')">
        Electronics
      </div>

      <div class="sub-nav-item" onclick="filterCategory('Clothing')">
        Fashion
      </div>

      <div class="sub-nav-item" onclick="filterCategory('Footwear')">
        Footwear
      </div>

      <div class="sub-nav-item" onclick="showToast('Prime membership coming soon')">
        Prime
      </div>

      <div class="sub-nav-item" onclick="showToast('Customer Service')">
        Customer Service
      </div>

    </nav>

  </header>


  <!-- =========================
       HERO
  ========================== -->

  <section class="hero">

    <div class="hero-content">

      <div class="hero-tag">
        GREAT DEALS EVERY DAY
      </div>

      <h1>
        Shop smarter.<br>
        Live better.
      </h1>

      <p>
        Discover thousands of products at amazing prices.
      </p>

      <button class="hero-btn" onclick="scrollToProducts()">
        Shop Now
      </button>

    </div>

  </section>


  <main class="page-container">


    <!-- =========================
         CATEGORY CARDS
    ========================== -->

    <section class="category-section">

      <div class="category-grid">

        <div class="category-card" onclick="filterCategory('Smartphones')">
          <h3>Smartphones</h3>
          <img
            src="https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=500&q=80"
            alt="Smartphones"
          >
          <span>Shop now →</span>
        </div>

        <div class="category-card" onclick="filterCategory('Laptops')">
          <h3>Laptops</h3>
          <img
            src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80"
            alt="Laptops"
          >
          <span>Explore laptops →</span>
        </div>

        <div class="category-card" onclick="filterCategory('Gadgets')">
          <h3>Electronics</h3>
          <img
            src="https://images.unsplash.com/photo-1550009158-9ebf69173e03?auto=format&fit=crop&w=500&q=80"
            alt="Electronics"
          >
          <span>See more →</span>
        </div>

        <div class="category-card" onclick="filterCategory('Clothing')">
          <h3>Fashion</h3>
          <img
            src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=500&q=80"
            alt="Fashion"
          >
          <span>Shop fashion →</span>
        </div>

        <div class="category-card" onclick="filterCategory('Footwear')">
          <h3>Footwear</h3>
          <img
            src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80"
            alt="Footwear"
          >
          <span>Discover shoes →</span>
        </div>

        <div class="category-card" onclick="filterCategory('Accessories')">
          <h3>Accessories</h3>
          <img
            src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80"
            alt="Accessories"
          >
          <span>View collection →</span>
        </div>

      </div>

    </section>


    <!-- =========================
         DEAL SECTION
    ========================== -->

    <section class="section">

      <div class="deal-banner">

        <strong>⚡ Today's Deals</strong>

        <span>Limited-time offers</span>

        <div class="countdown" id="countdown">
          08h : 42m : 15s
        </div>

      </div>

      <div class="section-header">

        <h2>Deals of the Day</h2>

        <a href="#" class="view-link" onclick="showAllProducts(event)">
          See all deals
        </a>

      </div>

      <div class="products-grid" id="productsGrid"></div>

    </section>


    <!-- =========================
         FEATURES
    ========================== -->

    <section class="section">

      <div class="section-header">
        <h2>Why shop with NexusShop?</h2>
      </div>

      <div class="feature-grid">

        <div class="feature">
          <i class="fa-solid fa-truck-fast"></i>
          <div>
            <h3>Fast Delivery</h3>
            <p>Quick and reliable delivery.</p>
          </div>
        </div>

        <div class="feature">
          <i class="fa-solid fa-shield-halved"></i>
          <div>
            <h3>Secure Payments</h3>
            <p>Your transactions are protected.</p>
          </div>
        </div>

        <div class="feature">
          <i class="fa-solid fa-rotate-left"></i>
          <div>
            <h3>Easy Returns</h3>
            <p>Simple and convenient returns.</p>
          </div>
        </div>

        <div class="feature">
          <i class="fa-solid fa-headset"></i>
          <div>
            <h3>24/7 Support</h3>
            <p>We're here whenever you need us.</p>
          </div>
        </div>

      </div>

    </section>


    <!-- =========================
         NEWSLETTER
    ========================== -->

    <section class="newsletter">

      <h2>Stay updated with NexusShop</h2>

      <p>
        Subscribe to receive exclusive deals and new product alerts.
      </p>

      <form class="newsletter-form" onsubmit="subscribeNewsletter(event)">

        <input
          type="email"
          id="emailInput"
          placeholder="Enter your email address"
          required
        >

        <button type="submit">
          Subscribe
        </button>

      </form>

    </section>

  </main>


  <!-- =========================
       FOOTER
  ========================== -->

  <footer>

    <div class="back-top" onclick="scrollToTop()">
      Back to top
    </div>

    <div class="footer-main">

      <div class="footer-column">
        <h3>Get to Know Us</h3>
        <a href="#">About NexusShop</a>
        <a href="#">Careers</a>
        <a href="#">Press Releases</a>
        <a href="#">Our Technology</a>
      </div>

      <div class="footer-column">
        <h3>Make Money With Us</h3>
        <a href="#">Sell on NexusShop</a>
        <a href="#">Become an Affiliate</a>
        <a href="#">Advertise Products</a>
        <a href="#">Become a Partner</a>
      </div>

      <div class="footer-column">
        <h3>Customer Support</h3>
        <a href="#">Your Account</a>
        <a href="#">Returns Centre</a>
        <a href="#">Shipping Information</a>
        <a href="#">Help Centre</a>
      </div>

      <div class="footer-column">
        <h3>Connect With Us</h3>
        <a href="#"><i class="fa-brands fa-facebook"></i> Facebook</a>
        <a href="#"><i class="fa-brands fa-instagram"></i> Instagram</a>
        <a href="#"><i class="fa-brands fa-x-twitter"></i> X</a>
        <a href="#"><i class="fa-brands fa-youtube"></i> YouTube</a>
      </div>

    </div>

    <div class="footer-bottom">
      © <span id="year"></span> NexusShop. All rights reserved.
    </div>

  </footer>


  <!-- =========================
       CART
  ========================== -->

  <div class="overlay" id="overlay" onclick="closeCart()"></div>

  <aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

      <h2>
        <i class="fa-solid fa-cart-shopping"></i>
        Shopping Cart
      </h2>

      <button onclick="closeCart()">
        <i class="fa-solid fa-xmark"></i>
      </button>

    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

      <div class="subtotal">
        <span>Subtotal:</span>
        <span id="cartSubtotal">₹0</span>
      </div>

      <button class="checkout" onclick="checkout()">
        Proceed to Checkout
      </button>

    </div>

  </aside>


  <!-- =========================
       TOAST
  ========================== -->

  <div class="toast" id="toast"></div>


  <script>

    /* =========================
       PRODUCTS
    ========================== */

    const products = [

      {
        id: 1,
        title: "Apple iPhone 15 Pro Max 256GB",
        category: "Smartphones",
        price: 129999,
        oldPrice: 149999,
        discount: "13% off",
        rating: 4.7,
        reviews: 3245,
        image:
          "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 2,
        title: "Premium 14-inch Laptop with 16GB RAM",
        category: "Laptops",
        price: 74999,
        oldPrice: 89999,
        discount: "17% off",
        rating: 4.5,
        reviews: 1280,
        image:
          "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 3,
        title: "Smart Watch Series 8 with Fitness Tracking",
        category: "Gadgets",
        price: 6999,
        oldPrice: 9999,
        discount: "30% off",
        rating: 4.4,
        reviews: 2187,
        image:
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 4,
        title: "Wireless Noise Cancelling Headphones",
        category: "Gadgets",
        price: 24999,
        oldPrice: 34999,
        discount: "29% off",
        rating: 4.6,
        reviews: 5340,
        image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 5,
        title: "Running Shoes for Men",
        category: "Footwear",
        price: 3999,
        oldPrice: 5999,
        discount: "33% off",
        rating: 4.3,
        reviews: 1760,
        image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 6,
        title: "Premium Casual Jacket for Men",
        category: "Clothing",
        price: 2999,
        oldPrice: 4999,
        discount: "40% off",
        rating: 4.2,
        reviews: 842,
        image:
          "https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 7,
        title: "Professional Mirrorless Digital Camera",
        category: "Gadgets",
        price: 114999,
        oldPrice: 129999,
        discount: "12% off",
        rating: 4.8,
        reviews: 963,
        image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 8,
        title: "Travel Backpack 35L Water Resistant",
        category: "Accessories",
        price: 1899,
        oldPrice: 2999,
        discount: "37% off",
        rating: 4.5,
        reviews: 2180,
        image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 9,
        title: "Premium Men's Analog Watch",
        category: "Accessories",
        price: 4999,
        oldPrice: 7999,
        discount: "38% off",
        rating: 4.6,
        reviews: 1120,
        image:
          "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 10,
        title: "Women's Fashion Handbag",
        category: "Accessories",
        price: 2499,
        oldPrice: 3999,
        discount: "38% off",
        rating: 4.4,
        reviews: 760,
        image:
          "https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=700&q=85"
      }

    ];


    /* =========================
       STATE
    ========================== */

    let cart = JSON.parse(localStorage.getItem("nexusCart")) || [];

    let wishlist = JSON.parse(localStorage.getItem("nexusWishlist")) || [];

    let currentProducts = [...products];


    /* =========================
       FORMAT PRICE
    ========================== */

    function formatPrice(price) {

      return new Intl.NumberFormat("en-IN", {
        style: "currency",
        currency: "INR",
        maximumFractionDigits: 0
      }).format(price);

    }


    /* =========================
       RENDER PRODUCTS
    ========================== */

    function renderProducts(productList = products) {

      currentProducts = productList;

      const grid = document.getElementById("productsGrid");

      if (!productList.length) {

        grid.innerHTML = `
          <div style="grid-column:1/-1;text-align:center;padding:50px;">
            <i class="fa-solid fa-box-open"
               style="font-size:45px;color:#777;"></i>

            <h3 style="margin-top:15px;">
              No products found
            </h3>

            <p style="color:#666;margin-top:8px;">
              Try another search or category.
            </p>
          </div>
        `;

        return;
      }


      grid.innerHTML = productList.map(product => {

        const isWishlisted = wishlist.includes(product.id);

        const stars = getStars(product.rating);

        return `

          <article class="product-card">

            <button
              class="wishlist ${isWishlisted ? "active" : ""}"
              onclick="toggleWishlist(event, ${product.id})"
              aria-label="Wishlist"
            >
              <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>
            </button>

            <img
              class="product-image"
              src="${product.image}"
              alt="${product.title}"
              onclick="showProduct(${product.id})"
            >

            <div class="product-category">
              ${product.category}
            </div>

            <div
              class="product-title"
              onclick="showProduct(${product.id})"
            >
              ${product.title}
            </div>

            <div class="rating">

              <span class="stars">
                ${stars}
              </span>

              <span class="rating-count">
                ${product.reviews.toLocaleString("en-IN")}
              </span>

            </div>

            <div>
              <span class="discount">
                ${product.discount}
              </span>
            </div>

            <div class="price">
              <span>₹</span>${product.price.toLocaleString("en-IN")}
              <span class="old-price">
                ₹${product.oldPrice.toLocaleString("en-IN")}
              </span>
            </div>

            <div class="delivery">
              <strong>FREE delivery</strong>
              <br>
              Tomorrow
            </div>

            <button
              class="add-cart"
              onclick="addToCart(${product.id})"
            >
              Add to Cart
            </button>

          </article>

        `;

      }).join("");

    }


    /* =========================
       STAR RATING
    ========================== */

    function getStars(rating) {

      const fullStars = Math.floor(rating);

      let stars = "";

      for (let i = 0; i < 5; i++) {

        if (i < fullStars) {
          stars += "★";
        } else {
          stars += "☆";
        }

      }

      return stars;

    }


    /* =========================
       CATEGORY FILTER
    ========================== */

    function filterCategory(category) {

      if (category === "all") {

        renderProducts(products);

      } else {

        const filtered = products.filter(
          product => product.category === category
        );

        renderProducts(filtered);

      }

      scrollToProducts();

    }


    /* =========================
       SEARCH
    ========================== */

    function searchProducts() {

      const query =
        document.getElementById("searchInput").value
          .trim()
          .toLowerCase();

      const category =
        document.getElementById("searchCategory").value;


      let results = products;


      if (category !== "all") {

        results = results.filter(
          product => product.category === category
        );

      }


      if (query) {

        results = results.filter(product =>

          product.title.toLowerCase().includes(query) ||
          product.category.toLowerCase().includes(query)

        );

      }


      renderProducts(results);

      scrollToProducts();

    }


    function handleSearch(event) {

      if (event.key === "Enter") {
        searchProducts();
      }

    }


    /* =========================
       CART
    ========================== */

    function addToCart(productId) {

      const product = products.find(
        product => product.id === productId
      );

      if (!product) return;


      const existing = cart.find(
        item => item.id === productId
      );


      if (existing) {

        existing.quantity++;

      } else {

        cart.push({
          id: productId,
          quantity: 1
        });

      }


      saveCart();

      updateCart();

      showToast(`${product.title} added to cart`);

    }


    function saveCart() {

      localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
      );

    }


    function updateCart() {

      const count =
        cart.reduce(
          (total, item) => total + item.quantity,
          0
        );

      document.getElementById("cartCount").textContent = count;


      const cartItems =
        document.getElementById("cartItems");


      if (!cart.length) {

        cartItems.innerHTML = `

          <div class="empty-cart">

            <i class="fa-solid fa-cart-shopping"></i>

            <h3>Your cart is empty</h3>

            <p>
              Add some products to get started.
            </p>

          </div>

        `;

        document.getElementById("cartSubtotal").textContent = "₹0";

        return;

      }


      let subtotal = 0;


      cartItems.innerHTML = cart.map(item => {

        const product = products.find(
          product => product.id === item.id
        );

        if (!product) return "";


        subtotal += product.price * item.quantity;


        return `

          <div class="cart-item">

            <img
              src="${product.image}"
              alt="${product.title}"
            >

            <div class="cart-item-info">

              <div class="cart-item-title">
                ${product.title}
              </div>

              <div class="cart-item-price">
                ${formatPrice(product.price)}
              </div>

              <div class="quantity">

                <button
                  onclick="changeQuantity(${product.id}, -1)"
                >
                  −
                </button>

                <strong>
                  ${item.quantity}
                </strong>

                <button
                  onclick="changeQuantity(${product.id}, 1)"
                >
                  +
                </button>

              </div>

              <button
                class="remove-item"
                onclick="removeFromCart(${product.id})"
              >
                Remove
              </button>

            </div>

          </div>

        `;

      }).join("");


      document.getElementById("cartSubtotal").textContent =
        formatPrice(subtotal);

    }


    function changeQuantity(productId, change) {

      const item = cart.find(
        item => item.id === productId
      );

      if (!item) return;


      item.quantity += change;


      if (item.quantity <= 0) {

        cart = cart.filter(
          item => item.id !== productId
        );

      }


      saveCart();

      updateCart();

    }


    function removeFromCart(productId) {

      cart = cart.filter(
        item => item.id !== productId
      );

      saveCart();

      updateCart();

      showToast("Product removed from cart");

    }


    /* =========================
       CART DRAWER
    ========================== */

    function openCart() {

      document
        .getElementById("cartDrawer")
        .classList.add("open");

      document
        .getElementById("overlay")
        .classList.add("show");

      updateCart();

    }


    function closeCart() {

      document
        .getElementById("cartDrawer")
        .classList.remove("open");

      document
        .getElementById("overlay")
        .classList.remove("show");

    }


    /* =========================
       WISHLIST
    ========================== */

    function toggleWishlist(event, productId) {

      event.stopPropagation();


      if (wishlist.includes(productId)) {

        wishlist =
          wishlist.filter(id => id !== productId);

        showToast("Removed from wishlist");

      } else {

        wishlist.push(productId);

        showToast("Added to wishlist");

      }


      localStorage.setItem(
        "nexusWishlist",
        JSON.stringify(wishlist)
      );


      renderProducts(currentProducts);

    }


    /* =========================
       PRODUCT DETAILS
    ========================== */

    function showProduct(productId) {

      const product = products.find(
        product => product.id === productId
      );

      if (!product) return;


      showToast(
        `${product.title} — ${formatPrice(product.price)}`
      );

    }


    /* =========================
       CHECKOUT
    ========================== */

    function checkout() {

      if (!cart.length) {

        showToast("Your cart is empty");

        return;

      }


      showToast(
        "Checkout page will be available soon"
      );

    }


    /* =========================
       TOAST
    ========================== */

    let toastTimer;


    function showToast(message) {

      const toast =
        document.getElementById("toast");


      toast.textContent = message;

      toast.classList.add("show");


      clearTimeout(toastTimer);


      toastTimer = setTimeout(() => {

        toast.classList.remove("show");

      }, 2500);

    }


    /* =========================
       NEWSLETTER
    ========================== */

    function subscribeNewsletter(event) {

      event.preventDefault();


      const email =
        document.getElementById("emailInput").value;


      if (!email) return;


      showToast(
        "Thanks! You're subscribed to NexusShop."
      );


      document.getElementById("emailInput").value = "";

    }


    /* =========================
       COUNTDOWN
    ========================== */

    let dealSeconds =
      8 * 60 * 60 +
      42 * 60 +
      15;


    function updateCountdown() {

      if (dealSeconds <= 0) {

        dealSeconds =
          8 * 60 * 60 +
          42 * 60 +
          15;

      }


      const hours =
        Math.floor(dealSeconds / 3600);

      const minutes =
        Math.floor((dealSeconds % 3600) / 60);

      const seconds =
        dealSeconds % 60;


      document.getElementById("countdown").textContent =
        `${String(hours).padStart(2, "0")}h : ` +
        `${String(minutes).padStart(2, "0")}m : ` +
        `${String(seconds).padStart(2, "0")}s`;


      dealSeconds--;

    }


    setInterval(updateCountdown, 1000);


    /* =========================
       SCROLL
    ========================== */

    function scrollToProducts() {

      document
        .getElementById("productsGrid")
        .scrollIntoView({
          behavior: "smooth",
          block: "start"
        });

    }


    function scrollToTop() {

      window.scrollTo({
        top: 0,
        behavior: "smooth"
      });

    }


    /* =========================
       MOBILE MENU
    ========================== */

    function toggleMobileMenu() {

      const nav =
        document.getElementById("subNav");

      if (nav.style.display === "none") {

        nav.style.display = "flex";

      } else {

        nav.style.display = "flex";

      }

    }


    /* =========================
       SHOW ALL PRODUCTS
    ========================== */

    function showAllProducts(event) {

      if (event) {
        event.preventDefault();
      }

      renderProducts(products);

      scrollToProducts();

    }


    /* =========================
       INITIALIZE
    ========================== */

    document.getElementById("year").textContent =
      new Date().getFullYear();


    renderProducts(products);

    updateCart();

    updateCountdown();


  </script>

</body>
</html>
