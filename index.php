php
<?php
// index.php - Gerbang Utama Aplikasi
session_start();

// Redirect otomatis ke halaman home di folder views/
header("Location: /views/home.php");
exit;
?>
