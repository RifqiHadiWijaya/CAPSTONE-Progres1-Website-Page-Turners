<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "pageturners";

// Hanya untuk development - debugging
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    $conn = new mysqli($host, $user, $pass, $db);
    $conn->set_charset("utf8mb4"); // Set charset yang aman
} catch (Exception $e) {
    error_log($e->getMessage()); // Log kesalahan
    exit("Terjadi kesalahan koneksi ke database."); // Pesan umum, tidak bocorkan detail
}
