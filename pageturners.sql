-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2025 pada 07.41
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pageturners`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nip` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `jam_operasional` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nip`, `nama_lengkap`, `email`, `jabatan`, `nomor_telepon`, `jam_operasional`, `foto`, `password`) VALUES
(9116002, 'arini', 'arini@gmail.com', 'admin', '0999', '9-9', 'pp.png', '1'),
(9116018, 'nanda', 'nanda@gmail.com', 'admin', '9999', '9-9', 'pp.png', '1'),
(9116019, 'widia', 'widia@gmail.com', 'admin', '0000', '9-9', 'pp.png', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ADMIN_nip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `penulis`, `tanggal`, `deskripsi`, `foto`, `ADMIN_nip`) VALUES
(2, 'd', 'd', '2025-05-14', 'd', 'donasi.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` char(4) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `ADMIN_nip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `isbn`, `kategori`, `jumlah_halaman`, `jumlah_buku`, `foto`, `deskripsi`, `ADMIN_nip`) VALUES
(1, 'Rusak Saja Buku Ini', 'Sony Adams', 'GagasMedia', '2016', '9789797808706', 'Fiksi, Sastra Indonesia', 180, 5, 'rusak saja buku ini.png', 'Buku ini adalah kumpulan tulisan reflektif Windy Ariestanty yang mengajak pembaca untuk berani mengalami hidup secara utuh—termasuk patah, luka, dan kehilangan. Ditulis dengan gaya yang intim dan jujur, \"Rusak Saja Buku Ini\" menyentuh sisi paling manusiawi dari perjalanan kehidupan.', 9116019),
(2, 'Mitologi Yunani', 'Suryo Hadi Kusumo', 'Gramedia Pustaka Utama', '2021', '9786020649581', 'Sejarah, Budaya, Mitologi', 260, 3, 'mitologi yunani.png', 'Buku ini menyajikan kisah-kisah mitologi Yunani dengan pendekatan yang mendalam dan terstruktur. Suryo Hadi Kusumo mengupas asal-usul para dewa, pahlawan, serta bagaimana mitos membentuk budaya dan filsafat Yunani Kuno. Disertai dengan analisis naratif yang menarik, buku ini cocok bagi pecinta sejarah dan budaya klasik.', 9116019),
(3, 'Master Coding', 'Aef Saeful', 'Informatika Press', '2022', '9786021234567', 'Teknologi, Pemrograman', 320, 4, 'master coding.png', 'Master Coding karya Aef Saeful adalah panduan lengkap untuk memahami dasar-dasar pemrograman hingga ke tahap profesional. Buku ini membahas bahasa populer seperti Python, JavaScript, dan PHP dengan pendekatan studi kasus nyata, cocok untuk pelajar, mahasiswa, maupun praktisi IT.', 9116019),
(4, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', '9789793062792', 'Novel', 529, 10, 'laskar pelangi.png', 'Kisah inspiratif tentang perjuangan anak-anak Belitung dalam meraih pendidikan.', 9116019),
(5, 'Atomic Habits', 'James Clear', 'Gramedia', '2020', '9786020635842', 'Motivasi', 352, 8, 'atomic habits.png', 'Cara membentuk kebiasaan kecil untuk perubahan besar dan berkelanjutan.', 9116019),
(6, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', '2015', '9780062316110', 'Sejarah', 498, 4, 'sapiens.jpg', 'Buku ini membahas sejarah umat manusia dari zaman purba hingga modern dengan sudut pandang antropologis dan filosofis.', 9116019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(11) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `kondisi_buku` varchar(255) NOT NULL,
  `catatan_tambahan` varchar(255) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `ADMIN_nip` int(11) DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `PENGUNJUNG_nik` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `judul_buku`, `penulis`, `kategori`, `jumlah_buku`, `kondisi_buku`, `catatan_tambahan`, `foto`, `ADMIN_nip`, `nik`, `status`, `PENGUNJUNG_nik`) VALUES
(6, 'pppppppp', '111', 'ooooooooo', 2, 'ooooooo', '2', 'uploads/1747026259_donasi.jpg', NULL, 3, 'Diterima', NULL),
(7, 'ww', 'w', 'w', 2, 'd', 'd', 'uploads/1747027357_donasi.jpg', NULL, 3, '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ADMIN_nip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`, `foto`, `ADMIN_nip`) VALUES
(1, 'buku', 'fasilitas1.png', 9116018);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `nik` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`nik`, `email`, `nama_lengkap`, `pendidikan_terakhir`, `pekerjaan`, `alamat`, `foto`, `password`) VALUES
(2, 'd@gmail.com', 'd', 'd', 'd', 'd', '', '2'),
(3, '3@gmail.com', '3', '3', '3', '33', '', '3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `ARTIKEL_ADMIN_FK` (`ADMIN_nip`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `BUKU_ADMIN_FK` (`ADMIN_nip`);

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`),
  ADD KEY `DONASI_ADMIN_FK` (`ADMIN_nip`),
  ADD KEY `DONASI_PENGUNJUNG_FK` (`PENGUNJUNG_nik`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `FASILITAS_ADMIN_FK` (`ADMIN_nip`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `ARTIKEL_ADMIN_FK` FOREIGN KEY (`ADMIN_nip`) REFERENCES `admin` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `BUKU_ADMIN_FK` FOREIGN KEY (`ADMIN_nip`) REFERENCES `admin` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD CONSTRAINT `DONASI_ADMIN_FK` FOREIGN KEY (`ADMIN_nip`) REFERENCES `admin` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `DONASI_PENGUNJUNG_FK` FOREIGN KEY (`PENGUNJUNG_nik`) REFERENCES `pengunjung` (`nik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD CONSTRAINT `FASILITAS_ADMIN_FK` FOREIGN KEY (`ADMIN_nip`) REFERENCES `admin` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
