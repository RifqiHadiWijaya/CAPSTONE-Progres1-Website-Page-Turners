<?php
session_start();
?>

<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Halaman Daftar</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="login-page">
    <header>
        <nav class="navbarr">
            <div class="logoatas">
                <img src="https://perpustakaankearsipan.samarindakota.go.id/storage/Template/logo.png" alt="Logo">
            </div>
        </nav>
    </header>

    <div class="container">
        <div class="left">
            <h2 style="margin-top: -25px;">Buat Akun</h2>

            <!-- Form -->
            <form action="register_process.php" method="post">
                <label for="name">Nama lengkap <span class="required">*</span></label>
                <input type="text" id="name" name="name" required />

                <label for="nik">NIK <span class="required">*</span></label>
                <input type="text" id="nik" name="nik" required />

                <label for="pekerjaan">Pekerjaan <span class="required">*</span></label>
                <input type="text" id="pekerjaan" name="pekerjaan" required />

                <label for="alamat">Alamat <span class="required">*</span></label>
                <input type="text" id="alamat" name="alamat" required />

                <label for="pendidikan_terakhir">Pendidikan Terakhir <span class="required">*</span></label>
                <input type="text" id="pendidikan_terakhir" name="pendidikan_terakhir" required />

                <label for="email">Email <span class="required">*</span></label>
                <input type="email" id="email" name="email" required />

                <label for="password">Kata Sandi <span class="required">*</span></label>
                <input type="password" id="password" name="password" required />

                <label for="confirm_password">Konfirmasi Kata Sandi <span class="required">*</span></label>
                <input type="password" id="confirm_password" name="confirm_password" required />

                <label>
                    <input type="checkbox" required />
                    Saya menyetujui syarat & ketentuan keanggotaan Perpustakaan Kota Samarinda.
                </label>

                <button type="submit" style="margin-top: 30px;">Daftar</button>
            </form>

            <div class="register">
                Sudah punya akun? <a href="login.php">Masuk</a>
            </div>
        </div>
    </div>

    <script>
        // Cek jika ada pesan error atau success yang diset di session
        <?php
        if (isset($_SESSION['register_error'])) {
            echo "alert('" . $_SESSION['register_error'] . "');";
            unset($_SESSION['register_error']);
        }
        if (isset($_SESSION['register_success'])) {
            echo "alert('" . $_SESSION['register_success'] . "');";
            unset($_SESSION['register_success']);
        }
        ?>
    </script>

</body>

</html>