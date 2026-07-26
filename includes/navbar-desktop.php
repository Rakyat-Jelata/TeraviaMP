<?php
// includes/navbar-desktop.php
// Navigasi khusus tampilan Desktop (Header atas)
?>
<header class="desktop-navbar">
    <div class="logo">
        <a href="/views/home.php">🏢 **PropMarket.AI**</a>
    </div>
    <nav class="desktop-menu">
        <a href="/views/home.php">Beranda</a>
        <a href="/views/search.php">Cari Properti</a>
        <a href="/views/membership.php">Paket Membership</a>
    </nav>
    <div class="desktop-auth">
        <a href="/views/post-property.php" class="btn-primary">Pasang Iklan</a>
        <?php if (!empty($_SESSION['user_id'])): ?>
            <span style="margin-left:15px; font-weight:500;">👤 <?= htmlspecialchars($_SESSION['user_nama']) ?></span>
            <a href="/controllers/auth-process.php?action=logout" class="btn-outline">Keluar</a>
        <?php else: ?>
            <a href="/views/login.php" class="btn-outline">Masuk</a>
        <?php endif; ?>
    </div>
</header>

