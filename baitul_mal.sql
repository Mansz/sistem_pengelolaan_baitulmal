-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Okt 2023 pada 08.49
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baitulmal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Profile Baitul Mal Desa Klangenan', 'Baitul Mal Masjid Besar Miftahul Jannah Klangenan merupakan sebuah unit lembaga di bawah naungan DKMB Masjid Besar Miftahul Jannah Desa Klangenan yang berwenang dalam menghimpun dan menyalurkan Zakat, Infak, Shodaqoh (ZIS). Baitul Mal Desa Klangenan didirikan bertempat pada awal bulan puasa Ramadhan 11 Januari 1997 M / 1417 H. Baitul Mal memiliki peran dan tugas melakukan pengumpulan ZIS dari warga masyarakat yang memungkinkan sesuai dengan domisili / wilayah masing – masing kepala dusun, ketua RW, ketua RT dan tokoh masyarakat. Kemudian menyetorkan dan melaporkan hasil pengumpulan ZIS kepada pengurus Baitul Mal Desa Klangenan paling lambat 10 hari sebelum hari Raya Idul Fitri.', '2023-08-24 08:43:18', '2023-08-24 08:43:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `approvals`
--

CREATE TABLE `approvals` (
  `id` bigint UNSIGNED NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `number_people` double NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `approvals`
--

INSERT INTO `approvals` (`id`, `rw`, `date`, `number_people`, `amount`, `created_at`, `updated_at`) VALUES
(1, '01', '2021-02-04', 37, 5255000, '2023-08-31 14:44:32', '2023-08-31 14:44:32'),
(2, '02', '2021-03-19', 43, 23175000, '2023-08-31 14:44:32', '2023-08-31 14:44:32'),
(3, '03', '2021-03-30', 11, 5250000, '2023-08-31 14:44:32', '2023-08-31 14:44:32'),
(4, '04', '2021-04-23', 24, 9700000, '2023-08-31 14:44:32', '2023-08-31 14:44:32'),
(5, '05', '2021-05-22', 18, 2410000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(6, '07', '2021-07-01', 30, 4560000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(7, '01', '2023-03-23', 31, 5760500, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(8, '02', '2023-03-24', 45, 21600000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(9, '03', '2023-03-25', 10, 4150000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(10, '04', '2023-03-26', 26, 24200000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(11, '05', '2023-03-28', 26, 2800000, '2023-08-31 14:44:33', '2023-08-31 14:44:33'),
(12, '07', '2023-03-28', 29, 13150000, '2023-08-31 14:44:34', '2023-08-31 14:44:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Masjid Besar Miftahul Jannah, Kecamatan Klangenan, Kabupaten Cirebon, Jawa Barat, 45156', '089522972970', 'bmklangenan@mail.com', '2023-08-20 07:15:20', '2023-08-28 13:35:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint UNSIGNED NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priode` date NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `distributors`
--

INSERT INTO `distributors` (`id`, `rw`, `priode`, `amount`, `created_at`, `updated_at`) VALUES
(1, '1', '2021-01-01', 1200, '2023-08-20 07:15:19', '2023-08-20 07:15:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenditures`
--

CREATE TABLE `expenditures` (
  `id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `expenditures`
--

INSERT INTO `expenditures` (`id`, `description`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(7, 'Kegiatan Rutin', '2023-01-03', 3400000, '2023-08-20 09:35:54', '2023-08-20 09:35:54'),
(8, 'Kegiatan Jum\'atan', '2023-01-04', 800000, '2023-08-20 09:36:19', '2023-08-20 09:36:19'),
(9, 'Kesejahteraan Petugas Masjid', '2023-01-16', 4520000, '2023-08-20 09:36:56', '2023-08-20 09:36:56'),
(10, 'Pembelian Kesed Masjid', '2023-01-10', 680000, '2023-08-20 09:37:40', '2023-08-20 09:37:40'),
(11, 'Listrik dan PDAM', '2023-01-04', 563000, '2023-08-20 09:38:23', '2023-08-20 09:38:23'),
(12, 'Penggantian Lampu dan Perbaikan TOA', '2023-01-18', 958000, '2023-08-20 09:39:08', '2023-08-20 09:39:08'),
(13, 'Pembelian Pelampung dan Sambungan', '2023-01-11', 100000, '2023-08-20 09:39:43', '2023-08-20 09:39:43'),
(14, 'Pembelian Alat Kebersihan', '2023-01-24', 650000, '2023-08-20 09:40:15', '2023-08-20 09:40:15'),
(15, 'Acara Rajaban dan Sunatan Masal', '2023-01-26', 17300000, '2023-08-20 09:40:47', '2023-08-20 09:40:47'),
(16, 'Kegiatan Rutin', '2023-02-07', 3800000, '2023-08-20 09:41:53', '2023-08-20 09:41:53'),
(17, 'Kegiatan Jum\'atan', '2023-02-08', 800000, '2023-08-20 09:42:23', '2023-08-20 09:42:23'),
(18, 'Kesejahteraan Petugas Masjid', '2023-02-09', 4520000, '2023-08-20 09:43:12', '2023-08-20 09:43:12'),
(19, 'Listrik dan PDAM', '2023-02-10', 579000, '2023-08-20 09:43:39', '2023-08-20 09:43:39'),
(20, 'Penggantian Lampu', '2023-02-15', 665000, '2023-08-20 09:44:20', '2023-08-20 09:44:20'),
(21, 'Pembelian Alat Kebersihan', '2023-02-16', 300000, '2023-08-20 09:44:54', '2023-08-20 09:44:54'),
(22, 'Pembelian Buku Tahlil', '2023-02-18', 200000, '2023-08-20 09:45:25', '2023-08-20 09:45:25'),
(23, 'Kegiatan Rutin', '2023-03-02', 6080000, '2023-08-20 09:46:26', '2023-08-20 09:46:26'),
(24, 'Kegiatan Jum\'atan', '2023-03-04', 1000000, '2023-08-20 09:47:07', '2023-08-20 09:47:07'),
(25, 'Kesejahteraan Petugas Masjid', '2023-03-05', 5075000, '2023-08-20 09:47:48', '2023-08-20 09:47:48'),
(26, 'Listrik dan PDAM', '2023-03-06', 536000, '2023-08-20 09:48:23', '2023-08-20 09:48:23'),
(27, 'Penggantian Lampu dan Peralatan Listrik', '2023-03-07', 2460000, '2023-08-20 09:49:00', '2023-08-20 09:49:00'),
(28, 'Pembelian Alat Kebersihan', '2023-03-08', 365000, '2023-08-20 09:49:37', '2023-08-20 09:49:37'),
(29, 'Pembelian 3 unit Kipas Angin', '2023-03-09', 750000, '2023-08-20 09:50:39', '2023-08-20 09:50:39'),
(30, 'Perbaikan dan Pembersihan AC', '2023-03-10', 825000, '2023-08-20 09:51:12', '2023-08-20 09:51:12'),
(31, 'Pembuatan Spanduk', '2023-03-11', 200000, '2023-08-20 09:51:45', '2023-08-20 09:51:45'),
(32, 'Pembelian Air Minerial', '2023-03-12', 240000, '2023-08-20 09:52:18', '2023-08-20 09:52:18'),
(33, 'Pembelian 4 PCS Kursi Lipat Untuk Sholat', '2023-03-13', 600000, '2023-08-20 09:52:51', '2023-08-20 09:52:51'),
(34, 'Pembuatan 2 set Taman', '2023-03-14', 2100000, '2023-08-20 09:53:39', '2023-08-20 09:53:39'),
(35, 'Perbaikan Kanopi, pintu Almunium dan Pengecatan Tralis', '2023-03-15', 12000000, '2023-08-20 09:54:29', '2023-08-20 09:54:29'),
(36, 'Pembelian Kesed', '2023-03-17', 690000, '2023-08-20 09:55:08', '2023-08-20 09:55:08'),
(37, 'Kegiatan Ramadhan (tadarus dan taraweh)', '2023-03-18', 800000, '2023-08-20 09:56:00', '2023-08-20 09:56:00'),
(38, 'Kegiatan Rutin', '2023-04-01', 2350000, '2023-08-20 09:56:46', '2023-08-20 09:56:46'),
(39, 'Kegiatan Jum\'atan', '2023-04-02', 800000, '2023-08-20 09:57:29', '2023-08-20 09:57:29'),
(40, 'Kesejateraan Petugas Masjid', '2023-04-03', 7620000, '2023-08-20 09:58:06', '2023-08-20 09:58:06'),
(41, 'Listrik dan PDAM', '2023-04-05', 558000, '2023-08-20 09:58:35', '2023-08-20 09:58:35'),
(42, 'Penggantian Lampu dan Peralatan Listrik', '2023-04-06', 550000, '2023-08-20 09:59:09', '2023-08-20 09:59:09'),
(43, 'Pembelian Alat Kebersihan', '2023-04-07', 275000, '2023-08-20 09:59:39', '2023-08-20 09:59:39'),
(44, 'Kegiatan Bulan Ramadhan', '2023-04-11', 986000, '2023-08-20 10:00:22', '2023-08-20 10:00:22'),
(45, 'Kegiatan Idul fitri', '2023-04-13', 1037000, '2023-08-20 10:00:53', '2023-08-20 10:00:53'),
(46, 'Kegiatan Rutin', '2023-05-09', 3650000, '2023-08-20 10:37:37', '2023-08-20 10:37:37'),
(47, 'Kegiatan Jum\'atan', '2023-05-16', 800000, '2023-08-24 09:03:28', '2023-08-24 09:03:28'),
(49, 'Kesejahteraan Petugas Masjid', '2023-05-15', 4520000, '2023-08-24 09:06:07', '2023-08-24 09:06:07'),
(50, 'Pembayaran Listrik dan PDAM', '2023-05-18', 574000, '2023-08-24 09:07:23', '2023-08-24 09:07:23'),
(51, 'Penggantian Lampu', '2023-05-19', 378000, '2023-08-24 09:08:07', '2023-08-24 09:08:07'),
(52, 'Pembelian Alat Kebersihan', '2023-05-20', 250000, '2023-08-24 09:08:40', '2023-08-24 09:08:40'),
(53, 'Pembelian Karpet Dipengimaman', '2023-05-21', 3500000, '2023-08-24 09:09:25', '2023-08-24 09:09:25'),
(54, 'Pembelian Spanduk', '2023-05-22', 75000, '2023-08-24 09:09:58', '2023-08-24 09:09:58'),
(55, 'Pembelian Mixer Amplifier', '2023-05-22', 1000000, '2023-08-24 09:10:41', '2023-08-24 09:10:41'),
(56, 'Kegiatan Rutin', '2023-06-01', 4790000, '2023-08-24 09:12:19', '2023-08-24 09:12:19'),
(57, 'Kegiatan Jum\'atan', '2023-06-02', 1000000, '2023-08-24 09:12:56', '2023-08-24 09:12:56'),
(58, 'Kesejahteraan Petugas Masjid', '2023-06-03', 5075000, '2023-08-24 09:13:30', '2023-08-24 09:13:30'),
(59, 'Pembayaran Listrik dan PDAM', '2023-06-04', 818000, '2023-08-24 09:14:10', '2023-08-24 09:14:10'),
(60, 'Penggantian Lampu', '2023-06-05', 450000, '2023-08-24 09:14:39', '2023-08-24 09:14:39'),
(61, 'Pembelian Alat Kebersihan', '2023-06-06', 350000, '2023-08-24 09:15:20', '2023-08-24 09:15:20'),
(62, 'Pembelian Air Mineral', '2023-06-07', 425000, '2023-08-24 09:15:59', '2023-08-24 09:15:59'),
(63, 'Perbaikan Vakum Cleaner', '2023-06-07', 200000, '2023-08-24 09:16:35', '2023-08-24 09:16:35'),
(64, 'Pembuatan Patok Untuk Hewan Qurban', '2023-06-24', 1700000, '2023-08-24 09:17:31', '2023-08-24 09:17:31'),
(65, 'Perbaikan Amplifier', '2023-06-09', 150000, '2023-08-24 09:18:22', '2023-08-24 09:18:22'),
(66, 'Kegiatan Sholat Idul Adha', '2023-06-14', 800000, '2023-08-24 09:18:50', '2023-08-24 09:18:50'),
(67, 'Kegiatan Rutin', '2023-07-01', 4050000, '2023-08-24 09:19:55', '2023-08-24 09:19:55'),
(68, 'Kegiatan Jum\'atan', '2023-07-02', 800000, '2023-08-24 09:20:23', '2023-08-24 09:20:23'),
(69, 'Kesejahteraan Petugas Masjid', '2023-07-03', 4540000, '2023-08-24 09:20:58', '2023-08-24 09:20:58'),
(70, 'Pembayaran Listrik dan PDAM', '2023-07-04', 710000, '2023-08-24 09:21:26', '2023-08-24 09:21:26'),
(71, 'Pembelian Alat Kebersihan', '2023-07-05', 250000, '2023-08-24 09:22:07', '2023-08-24 09:22:07'),
(72, 'Pembelian Air Mineral', '2023-07-06', 255000, '2023-08-24 09:22:34', '2023-08-24 09:22:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenditure_mal`
--

CREATE TABLE `expenditure_mal` (
  `id` bigint UNSIGNED NOT NULL,
  `priode` date NOT NULL,
  `amount` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `expenditure_mal`
--

INSERT INTO `expenditure_mal` (`id`, `priode`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(3, '2023-04-20', 73700000, 'Distribusi Mustahik Zakat Pada 7 RW', '2023-09-12 15:09:41', '2023-09-12 15:09:41'),
(4, '2023-04-20', 1700000, 'Biaya ATK', '2023-09-12 15:10:11', '2023-09-12 15:10:11'),
(5, '2023-04-20', 6000000, 'Guru Ngaji dan Imam Mushola', '2023-09-12 15:10:45', '2023-09-12 15:10:45'),
(6, '2023-04-20', 950000, 'Transportasi dan Akomodasi', '2023-09-12 15:11:22', '2023-09-12 15:11:22'),
(7, '2023-04-20', 4000000, 'Amilin', '2023-09-12 15:11:48', '2023-09-12 15:11:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guidelines`
--

CREATE TABLE `guidelines` (
  `id` bigint UNSIGNED NOT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guidelines`
--

INSERT INTO `guidelines` (`id`, `pdf`, `created_at`, `updated_at`) VALUES
(1, '1692866044.pdf', '2023-08-24 08:34:04', '2023-08-24 08:34:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `incomes`
--

INSERT INTO `incomes` (`id`, `description`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(12, 'Infaq Jum\'at 1', '2023-01-06', 2660000, '2023-08-20 09:09:26', '2023-08-20 09:09:26'),
(13, 'INFAQ JUMAT 2', '2023-01-13', 2950000, '2023-08-20 09:10:45', '2023-08-20 09:10:45'),
(14, 'Infaq Jum\'at 3', '2023-01-20', 2870000, '2023-08-20 09:11:19', '2023-08-20 09:11:19'),
(15, 'Infaq Jum\'at 4', '2023-01-27', 2680000, '2023-08-20 09:11:49', '2023-08-20 09:11:49'),
(16, 'Para Donatur Acara Rajaban dan Sunatan Masal', '2023-01-25', 10400000, '2023-08-20 09:12:58', '2023-08-20 09:12:58'),
(17, 'Infaq Jum\'at 1', '2023-02-03', 2920000, '2023-08-20 09:13:53', '2023-08-20 09:13:53'),
(18, 'Infaq Jum\'at 2', '2023-02-10', 2680000, '2023-08-20 09:14:18', '2023-08-20 09:14:18'),
(19, 'Infaq Jum\'at 3', '2023-02-17', 2500000, '2023-08-20 09:14:39', '2023-08-20 09:15:45'),
(20, 'Infaq Jum\'at 4', '2023-02-24', 2340000, '2023-08-20 09:15:18', '2023-08-20 09:15:18'),
(21, 'Infaq Jum\'at 1', '2023-03-03', 2550000, '2023-08-20 09:16:55', '2023-08-20 09:16:55'),
(22, 'Infaq Jum\'at 2', '2023-03-10', 2560000, '2023-08-20 09:17:34', '2023-08-20 09:17:34'),
(23, 'Infaq Jum\'at 3', '2023-03-17', 2890000, '2023-08-20 09:18:09', '2023-08-20 09:18:09'),
(24, 'Infaq Jum\'at 4', '2023-03-24', 2840000, '2023-08-20 09:18:51', '2023-08-20 09:18:51'),
(25, 'Infaq Jum\'at 5', '2023-03-31', 2800000, '2023-08-20 09:19:18', '2023-08-20 09:19:18'),
(26, 'Infaq Jum\'at 1', '2023-04-07', 3540000, '2023-08-20 09:20:00', '2023-08-20 09:20:00'),
(27, 'Infaq Jum\'at 2', '2023-04-14', 3020000, '2023-08-20 09:20:25', '2023-08-20 09:20:25'),
(28, 'Infaq Jum\'at 3', '2023-04-21', 4950000, '2023-08-20 09:21:17', '2023-08-20 09:21:17'),
(29, 'Infaq Jum\'at 4', '2023-04-28', 3310000, '2023-08-20 09:21:50', '2023-08-20 09:21:50'),
(30, 'Infaq Sholat Idul Fitri', '2023-04-22', 6550000, '2023-08-20 09:23:27', '2023-08-20 09:23:27'),
(31, 'Infaq Kotak Amal Di toko Mas Damai', '2023-04-25', 2500000, '2023-08-20 09:24:06', '2023-08-20 09:24:06'),
(32, 'Infaq Obrog BTN Abri', '2023-04-27', 500000, '2023-08-20 09:24:37', '2023-08-20 09:24:37'),
(33, 'Infaq Kuliah Subuh', '2023-04-28', 1865000, '2023-08-20 09:25:12', '2023-08-20 09:25:12'),
(34, 'Infaq Jum\'at 1', '2023-05-05', 2835000, '2023-08-20 09:26:03', '2023-08-20 09:26:03'),
(35, 'Infaq Jum\'at 2', '2023-05-12', 2700000, '2023-08-20 09:26:29', '2023-08-20 09:26:29'),
(36, 'Infaq Jum\'at 3', '2023-05-19', 2210000, '2023-08-20 09:26:54', '2023-08-20 09:26:54'),
(37, 'Infaq Jum\'at 4', '2023-05-26', 2640000, '2023-08-20 09:27:20', '2023-08-20 09:27:20'),
(38, 'Infaq Hamba Allah', '2023-05-31', 500000, '2023-08-20 09:27:58', '2023-08-20 09:27:58'),
(39, 'Infaq Jum\'at 1', '2023-06-02', 2840000, '2023-08-20 09:28:28', '2023-08-20 09:28:28'),
(40, 'Infaq Jum\'at 2', '2023-06-09', 2620000, '2023-08-20 09:28:56', '2023-08-20 09:28:56'),
(41, 'Infaq Jum\'at 3', '2023-06-16', 2115000, '2023-08-20 09:29:24', '2023-08-20 09:29:24'),
(42, 'Infaq Jum\'at 4', '2023-06-23', 2340000, '2023-08-20 09:29:51', '2023-08-20 09:29:51'),
(43, 'Infaq Jum\'at 5', '2023-06-30', 2340000, '2023-08-20 09:30:18', '2023-08-20 09:30:18'),
(44, 'Infaq Sholat Idul Adha', '2023-06-28', 3950000, '2023-08-20 09:31:03', '2023-08-20 09:31:03'),
(45, 'Infaq Jum\'at 1', '2023-07-07', 2620000, '2023-08-20 09:31:44', '2023-08-20 09:31:44'),
(46, 'Infaq Jum\'at 2', '2023-07-14', 2590000, '2023-08-20 09:32:09', '2023-08-20 09:32:09'),
(47, 'Infaq Jum\'at 3', '2023-07-21', 2570000, '2023-08-20 09:32:38', '2023-08-20 09:32:38'),
(48, 'Infaq Jum\'at 4', '2023-07-28', 3090000, '2023-08-20 09:33:04', '2023-08-20 09:33:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_14_185852_create_incomes_table', 1),
(7, '2023_08_15_014822_create_expenditures_table', 1),
(8, '2023_08_15_020408_create_muzakis_table', 1),
(9, '2023_08_15_024003_create_mustahiks_table', 1),
(10, '2023_08_15_034337_create_receptions_table', 1),
(11, '2023_08_15_035933_create_distributors_table', 1),
(12, '2023_08_15_040816_create_expenditure_mals_table', 1),
(13, '2023_08_15_071330_create_slides_table', 1),
(14, '2023_08_15_072437_create_news_table', 1),
(15, '2023_08_16_053428_create_abouts_table', 1),
(16, '2023_08_17_011210_create_guidelines_table', 1),
(17, '2023_08_17_022105_create_organizations_table', 1),
(18, '2023_08_17_041654_create_contacts_table', 1),
(19, '2023_08_31_205154_create_approvals_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mustahik`
--

CREATE TABLE `mustahik` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mustahik`
--

INSERT INTO `mustahik` (`id`, `name`, `rt`, `rw`, `address`, `type`, `photo`, `amount`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Aman', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:17:28', '2023-08-25 08:17:28'),
(3, 'Ruslani', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:18:17', '2023-08-25 08:18:17'),
(4, 'Masripun', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:19:25', '2023-08-25 08:19:25'),
(5, 'Bunawar', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:20:04', '2023-08-25 08:20:04'),
(6, 'Hadi Mulyono', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:20:44', '2023-08-25 08:20:44'),
(7, 'Rusmi', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:21:19', '2023-08-25 08:21:19'),
(8, 'Sumini', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:21:57', '2023-08-25 08:21:57'),
(9, 'Alima', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:22:41', '2023-08-25 08:22:41'),
(10, 'Hayati', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:23:15', '2023-08-25 08:23:15'),
(11, 'Keni', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:23:52', '2023-08-25 08:23:52'),
(12, 'Samini', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:24:26', '2023-08-25 08:24:26'),
(13, 'Yani Andriyani', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:25:13', '2023-08-25 08:25:13'),
(14, 'Sukarta', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:25:56', '2023-08-25 08:25:56'),
(15, 'Sunami', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:26:33', '2023-08-25 08:26:33'),
(16, 'Sumi', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:27:08', '2023-08-25 08:27:08'),
(17, 'Seniri', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:28:20', '2023-08-25 08:28:20'),
(18, 'Jureni', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:29:03', '2023-08-25 08:29:03'),
(19, 'Kamsari', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:29:53', '2023-08-25 08:29:53'),
(20, 'Edo', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:30:28', '2023-08-25 08:30:28'),
(21, 'Nenti', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:31:03', '2023-08-25 08:31:03'),
(22, 'Amin', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:31:39', '2023-08-25 08:31:39'),
(23, 'Mumung', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:32:22', '2023-08-25 08:32:22'),
(24, 'Hadija', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:32:58', '2023-08-25 08:32:58'),
(25, 'Asneri', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:33:38', '2023-08-25 08:33:38'),
(26, 'Nurhasih', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:34:13', '2023-08-25 08:34:13'),
(27, 'Warseni', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:34:58', '2023-08-25 08:34:58'),
(28, 'Odah', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:35:43', '2023-08-25 08:35:43'),
(29, 'Kameri', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:36:15', '2023-08-25 08:36:15'),
(30, 'A. Tiniawati', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:37:05', '2023-08-25 08:37:05'),
(31, 'Kursila Reek', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:37:49', '2023-08-25 08:37:49'),
(32, 'Syafii', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:38:21', '2023-08-25 08:38:21'),
(33, 'Fariyah', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:38:57', '2023-08-25 08:38:57'),
(34, 'M. Karina', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:39:34', '2023-08-25 08:39:34'),
(35, 'Asiah', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:40:09', '2023-08-25 08:40:09'),
(36, 'Siti Mulyati', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:40:44', '2023-08-25 08:40:44'),
(37, 'Sofiyah', '03', '01', 'Wanagiri', 'fakir', NULL, 70000, '2023-03-23', '2023-08-25 08:41:19', '2023-08-25 08:41:19'),
(38, 'Ibu Yati', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:42:08', '2023-08-25 08:42:08'),
(39, 'Sopiyah', '03', '01', 'Wanagiri', 'miskin', NULL, 70000, '2023-03-23', '2023-08-25 08:42:38', '2023-08-25 08:42:38'),
(40, 'Kusnadi', '01', '02', 'Klangenan', 'budak', NULL, 70000, '2023-03-24', '2023-08-25 08:44:57', '2023-08-25 08:44:57'),
(41, 'Hadiya Saputra', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:45:50', '2023-08-25 08:45:50'),
(42, 'Hadi Santoso', '01', '02', 'Klangenan', 'miskin', NULL, 700000, '2023-03-24', '2023-08-25 08:46:32', '2023-08-25 08:46:32'),
(43, 'Ani Sumarni', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:47:12', '2023-08-25 08:47:12'),
(44, 'Halimah', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:47:50', '2023-08-25 08:47:50'),
(45, 'Suyati', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:48:25', '2023-08-25 08:48:25'),
(46, 'Budi Santoso', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:49:00', '2023-08-25 08:49:00'),
(47, 'Sunarto', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:49:46', '2023-08-25 08:49:46'),
(48, 'Yenni Nurhasanah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:50:29', '2023-08-25 08:50:29'),
(49, 'Turiah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:51:03', '2023-08-25 08:51:03'),
(50, 'Darma Setia', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:51:39', '2023-08-25 08:51:39'),
(51, 'Istiati', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:52:10', '2023-08-25 08:52:10'),
(52, 'Muinah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:52:47', '2023-08-25 08:52:47'),
(53, 'Kursiyana', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:53:23', '2023-08-25 08:53:23'),
(54, 'Nasduri', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:55:56', '2023-08-25 08:55:56'),
(55, 'Saripah', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 08:56:30', '2023-08-25 08:56:30'),
(56, 'Samtoni Firmansyah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:57:15', '2023-08-25 08:57:15'),
(57, 'Lilik Arsinah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:57:48', '2023-08-25 08:57:48'),
(58, 'Jamadi', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:58:32', '2023-08-25 08:58:32'),
(59, 'Karini', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:59:04', '2023-08-25 08:59:04'),
(60, 'Dulmanan', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 08:59:34', '2023-08-25 08:59:34'),
(61, 'Indra Kurniawan', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:00:10', '2023-08-25 09:00:10'),
(62, 'siti', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:00:37', '2023-08-25 09:00:37'),
(63, 'Kartika', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:01:08', '2023-08-25 09:01:08'),
(64, 'Muniah', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:01:44', '2023-08-25 09:01:44'),
(65, 'Maerah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:02:12', '2023-08-25 09:02:12'),
(66, 'Atin Supriyatin', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:02:51', '2023-08-25 09:02:51'),
(67, 'Yustiyani', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:03:30', '2023-08-25 09:03:30'),
(68, 'Kadmina', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:04:08', '2023-08-25 09:04:08'),
(69, 'Maryana', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:04:39', '2023-08-25 09:04:39'),
(70, 'Muniri', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:05:13', '2023-08-25 09:05:13'),
(71, 'Rinto', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:05:47', '2023-08-25 09:05:47'),
(72, 'Oyib Adang Suparman', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:06:27', '2023-08-25 09:06:27'),
(73, 'Mariya', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:06:59', '2023-08-25 09:06:59'),
(74, 'Sukarta', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:07:36', '2023-08-25 09:07:36'),
(75, 'Akna Suganda', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:08:10', '2023-08-25 09:08:10'),
(76, 'Lilis Suciati', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:08:43', '2023-08-25 09:08:43'),
(77, 'Ina Yuliani', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:09:35', '2023-08-25 09:09:35'),
(78, 'Tina Ratinah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:11:40', '2023-08-25 09:11:40'),
(79, 'Nursami', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:12:24', '2023-08-25 09:12:24'),
(80, 'Kasini', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:12:59', '2023-08-25 09:12:59'),
(81, 'Patimah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:13:45', '2023-08-25 09:13:45'),
(82, 'Rika Damayanti', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:14:20', '2023-08-25 09:14:20'),
(83, 'Karsiti', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:15:44', '2023-08-25 09:15:44'),
(84, 'Sunaenah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:16:52', '2023-08-25 09:16:52'),
(85, 'Afandi', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:17:36', '2023-08-25 09:17:36'),
(86, 'Sukirman', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:20:08', '2023-08-25 09:20:08'),
(87, 'Mastiri', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:20:42', '2023-08-25 09:20:42'),
(88, 'Sutiah', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:21:19', '2023-08-25 09:21:19'),
(89, 'Kusyanto Nasution', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:22:17', '2023-08-25 09:22:17'),
(90, 'Frenky Endi Budiman', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:23:10', '2023-08-25 09:23:10'),
(91, 'Sartimi', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:23:48', '2023-08-25 09:23:48'),
(92, 'Indah Kumala Dewi', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:24:27', '2023-08-25 09:24:27'),
(93, 'Sudarham', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:25:20', '2023-08-25 09:25:20'),
(94, 'Wastia', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:25:51', '2023-08-25 09:25:51'),
(95, 'Abdul Rajak', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:27:23', '2023-08-25 09:27:23'),
(96, 'Sarifin', '01', '02', 'Klangenan', 'miskin', NULL, 70000, '2023-03-24', '2023-08-25 09:28:02', '2023-08-25 09:28:02'),
(97, 'Ato', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:28:30', '2023-08-25 09:28:30'),
(98, 'Robiah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:29:05', '2023-08-25 09:29:05'),
(99, 'Siti Nurjanah', '01', '02', 'Klangenan', 'fakir', NULL, 70000, '2023-03-24', '2023-08-25 09:29:46', '2023-08-25 09:29:46'),
(100, 'Ahmad Fauzi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:43:09', '2023-08-25 11:43:09'),
(101, 'Andi Jasmani Sampan', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:44:04', '2023-08-25 11:44:04'),
(102, 'Ani Nursaeni', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:44:46', '2023-08-25 11:44:46'),
(103, 'Asiah', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:46:56', '2023-08-25 11:46:56'),
(104, 'Badriah', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 11:47:34', '2023-08-25 11:47:34'),
(105, 'Buang', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:48:11', '2023-08-25 11:48:11'),
(106, 'Dodo Sugiarto', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:48:46', '2023-08-25 11:48:46'),
(107, 'Emi Supriasih', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:49:23', '2023-08-25 11:49:23'),
(108, 'Encon Sutisna', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:50:01', '2023-08-25 11:50:01'),
(109, 'Hadiyanto', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:50:33', '2023-08-25 11:50:33'),
(110, 'Halimah', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:51:06', '2023-08-25 11:51:06'),
(111, 'Ina Sri Laksonawati', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:51:45', '2023-08-25 11:51:45'),
(112, 'Jarim', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:52:17', '2023-08-25 11:52:17'),
(113, 'Jayadi Sanjaya', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:53:02', '2023-08-25 11:53:02'),
(114, 'Kadmina', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:53:36', '2023-08-25 11:53:36'),
(115, 'Karnadi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:54:12', '2023-08-25 11:54:12'),
(116, 'Karnewi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:58:10', '2023-08-25 11:58:10'),
(117, 'Kemira', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 11:58:47', '2023-08-25 11:58:47'),
(118, 'Khasanah', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:15:13', '2023-08-25 12:15:13'),
(119, 'Kusnan', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:15:47', '2023-08-25 12:15:47'),
(120, 'Lina', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:16:18', '2023-08-25 12:16:18'),
(121, 'Lisajidin', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:16:53', '2023-08-25 12:16:53'),
(122, 'Maemanah', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:17:34', '2023-08-25 12:17:34'),
(123, 'Mardiah', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:18:05', '2023-08-25 12:18:05'),
(124, 'Marsadi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:18:40', '2023-08-25 12:18:40'),
(125, 'Miskani', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:19:16', '2023-08-25 12:19:16'),
(126, 'Muhammad Fathoni', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:19:53', '2023-08-25 12:19:53'),
(127, 'Mukamad', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:20:28', '2023-08-25 12:20:28'),
(128, 'Mulus', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:21:02', '2023-08-25 12:21:02'),
(129, 'Santoso', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:21:36', '2023-08-25 12:21:36'),
(130, 'Siti Nuriswati', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:22:48', '2023-08-25 12:22:48'),
(131, 'Siti Rulani', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:23:45', '2023-08-25 12:23:45'),
(132, 'Sobri', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:24:19', '2023-08-25 12:24:19'),
(133, 'Sri Yatni', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:24:54', '2023-08-25 12:24:54'),
(134, 'Sri Yuliyati', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:25:28', '2023-08-25 12:25:28'),
(135, 'Suherman', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:26:13', '2023-08-25 12:26:13'),
(136, 'Sukanta Efendi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:27:12', '2023-08-25 12:27:12'),
(137, 'Surip', '01', '03', 'Blok Pengkolan Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:27:46', '2023-08-25 12:27:46'),
(138, 'Sutopo', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:28:18', '2023-08-25 12:28:18'),
(139, 'Turni', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:28:53', '2023-08-25 12:28:53'),
(140, 'Uci Sanusi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:29:58', '2023-08-25 12:29:58'),
(141, 'Ujang Supangat', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:30:37', '2023-08-25 12:30:37'),
(142, 'Usman Riyadi', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:31:20', '2023-08-25 12:31:20'),
(143, 'Warsita', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:32:05', '2023-08-25 12:32:05'),
(144, 'Yatimah', '01', '03', 'Blok Pengkolan Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:32:37', '2023-08-25 12:32:37'),
(145, 'Kanapi', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:33:31', '2023-08-25 12:33:31'),
(146, 'Embar hadi', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:34:07', '2023-08-25 12:34:07'),
(147, 'Rokyati', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:34:40', '2023-08-25 12:34:40'),
(148, 'Karini', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:35:26', '2023-08-25 12:35:26'),
(149, 'Yurami', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:35:58', '2023-08-25 12:35:58'),
(150, 'Yutini', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:36:29', '2023-08-25 12:36:29'),
(151, 'Ratini', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:37:04', '2023-08-25 12:37:04'),
(152, 'Omesi', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:37:33', '2023-08-25 12:37:33'),
(153, 'Jasa', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:38:05', '2023-08-25 12:38:05'),
(154, 'Aal', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:38:39', '2023-08-25 12:38:39'),
(155, 'Bude Entin', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:39:16', '2023-08-25 12:39:16'),
(156, 'Dede Nia', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:40:04', '2023-08-25 12:40:04'),
(157, 'Bi Asiya', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:40:34', '2023-08-25 12:40:34'),
(158, 'Muin', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:41:01', '2023-08-25 12:41:01'),
(159, 'Mang Yadi Kuncen', '03', '03', 'Blok Telkom Klangenan', 'budak', NULL, 70000, '2023-03-25', '2023-08-25 12:41:52', '2023-08-25 12:41:52'),
(160, 'Yutiah', '03', '03', 'Blok Telkom Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:42:25', '2023-08-25 12:42:25'),
(161, 'Andi', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:42:56', '2023-08-25 12:42:56'),
(162, 'Saerah', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:43:48', '2023-08-25 12:43:48'),
(163, 'Oo Bambang', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:44:25', '2023-08-25 12:44:25'),
(164, 'Asiya', '03', '03', 'Blok Telkom Klangenan', 'miskin', NULL, 70000, '2023-03-25', '2023-08-25 12:45:27', '2023-08-25 12:45:27'),
(165, 'Ani', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:45:56', '2023-08-25 12:45:56'),
(166, 'Gali', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:46:35', '2023-08-25 12:46:35'),
(167, 'Yu Tuti', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:47:07', '2023-08-25 12:47:07'),
(168, 'Ela', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:47:41', '2023-08-25 12:47:41'),
(169, 'Nendi', '03', '03', 'Blok Telkom Klangenan', 'fakir', NULL, 70000, '2023-03-25', '2023-08-25 12:48:12', '2023-08-25 12:48:12'),
(170, 'Siti Alinah', '01', '04', 'Blok BTN Abri Klangenan', 'amil', NULL, 70000, '2023-03-26', '2023-08-25 15:13:47', '2023-08-25 15:14:52'),
(171, 'Lina Rahmawati', '01', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:15:32', '2023-08-25 15:15:32'),
(172, 'Munirah', '02', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:16:11', '2023-08-25 15:16:11'),
(173, 'Een Rimawati', '02', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:16:49', '2023-08-25 15:16:49'),
(174, 'Ikah', '02', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:17:21', '2023-08-25 15:17:21'),
(175, 'Grestina', '02', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:18:03', '2023-08-25 15:18:03'),
(176, 'Herawati', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:18:47', '2023-08-25 15:18:47'),
(177, 'Charliyah', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:19:28', '2023-08-25 15:19:28'),
(178, 'Toini', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:20:06', '2023-08-25 15:20:06'),
(179, 'Ilham', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:20:46', '2023-08-25 15:20:46'),
(180, 'Ida Suaedah', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:21:27', '2023-08-25 15:21:27'),
(181, 'Susi Haryanti', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:22:02', '2023-08-25 15:22:02'),
(182, 'Susi Haryanti', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:22:03', '2023-08-25 15:22:03'),
(183, 'Reza', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:22:33', '2023-08-25 15:22:33'),
(184, 'Rita', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:23:06', '2023-08-25 15:23:06'),
(185, 'Tono', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:24:53', '2023-08-25 15:24:53'),
(186, 'Roni', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:25:36', '2023-08-25 15:25:36'),
(187, 'Endah', '03', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:26:21', '2023-08-25 15:26:21'),
(188, 'Rurwanto', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:27:19', '2023-08-25 15:27:19'),
(189, 'Teguh', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:27:53', '2023-08-25 15:27:53'),
(190, 'Cicih Sutarsih', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:28:36', '2023-08-25 15:28:36'),
(191, 'Dini', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:29:12', '2023-08-25 15:29:12'),
(192, 'Chandra', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:29:45', '2023-08-25 15:29:45'),
(193, 'Indra', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:30:24', '2023-08-25 15:30:24'),
(194, 'Agus Sutendi', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:31:00', '2023-08-25 15:31:00'),
(195, 'Kanti', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:31:31', '2023-08-25 15:31:31'),
(196, 'Eri Kusnaeri', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:32:12', '2023-08-25 15:32:12'),
(197, 'Kastari', '04', '04', 'Blok BTN Abri Klangenan', 'fakir', NULL, 70000, '2023-03-26', '2023-08-25 15:32:45', '2023-08-25 15:32:45'),
(198, 'Taryami', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:13:35', '2023-08-27 01:13:35'),
(199, 'Sarni', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:14:13', '2023-08-27 01:14:13'),
(200, 'Saniti', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:14:43', '2023-08-27 01:14:43'),
(201, 'Asmadi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:15:17', '2023-08-27 01:15:17'),
(202, 'Baenah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:15:58', '2023-08-27 01:15:58'),
(203, 'Sarti', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:16:27', '2023-08-27 01:16:27'),
(204, 'Jamilah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:16:56', '2023-08-27 01:16:56'),
(205, 'Tarini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:17:25', '2023-08-27 01:17:25'),
(206, 'Maskona', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:17:57', '2023-08-27 01:17:57'),
(207, 'Sanggrek', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:18:30', '2023-08-27 01:18:30'),
(208, 'Bayinah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:18:59', '2023-08-27 01:18:59'),
(209, 'Yunia', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:19:27', '2023-08-27 01:19:27'),
(210, 'Tarimi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:20:00', '2023-08-27 01:20:00'),
(211, 'Amari', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:20:29', '2023-08-27 01:20:29'),
(212, 'Usman Efendi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:21:01', '2023-08-27 01:21:01'),
(213, 'Juwandi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:21:33', '2023-08-27 01:21:33'),
(214, 'Sadi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:22:01', '2023-08-27 01:22:01'),
(215, 'Surtana', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:22:31', '2023-08-27 01:22:31'),
(216, 'Sarjono', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:23:31', '2023-08-27 01:23:31'),
(217, 'Supri', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:24:06', '2023-08-27 01:24:06'),
(218, 'Bondan', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:24:41', '2023-08-27 01:24:41'),
(219, 'Sapiya', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:25:14', '2023-08-27 01:25:14'),
(220, 'Julaeheny', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:25:45', '2023-08-27 01:25:45'),
(221, 'Wardisi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:26:12', '2023-08-27 01:26:12'),
(222, 'Tarmin', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:26:47', '2023-08-27 01:26:47'),
(223, 'Nursan', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:27:22', '2023-08-27 01:27:22'),
(224, 'Iwan', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:29:38', '2023-08-27 01:29:38'),
(225, 'Basoleh', '01', '05', 'Wanagiri Klangenan', 'miskin', NULL, 70000, '2023-03-27', '2023-08-27 01:30:16', '2023-08-27 01:30:16'),
(226, 'Runali', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:31:55', '2023-08-27 01:31:55'),
(227, 'Karsini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:32:27', '2023-08-27 01:32:27'),
(228, 'Sati', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:32:57', '2023-08-27 01:32:57'),
(229, 'Mulya', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:33:25', '2023-08-27 01:33:25'),
(230, 'Suma', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:33:54', '2023-08-27 01:33:54'),
(231, 'Een Maryati', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:34:54', '2023-08-27 01:34:54'),
(232, 'Heni', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:35:22', '2023-08-27 01:35:22'),
(233, 'Ela Nurlaelah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:35:56', '2023-08-27 01:35:56'),
(234, 'Surina', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:36:38', '2023-08-27 01:36:38'),
(235, 'Asmirih', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:37:15', '2023-08-27 01:37:15'),
(236, 'Siti Alpiah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:37:51', '2023-08-27 01:37:51'),
(237, 'Suherni', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:38:28', '2023-08-27 01:38:28'),
(238, 'Samira', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:38:57', '2023-08-27 01:38:57'),
(239, 'Anisa', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:39:23', '2023-08-27 01:39:23'),
(240, 'Entis Sutisna', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:39:53', '2023-08-27 01:39:53'),
(241, 'Pandi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:42:42', '2023-08-27 01:42:42'),
(242, 'Rawita', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:43:13', '2023-08-27 01:43:13'),
(243, 'Jueli', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:43:53', '2023-08-27 01:43:53'),
(244, 'Ani', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:44:25', '2023-08-27 01:44:25'),
(245, 'Nemi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:44:53', '2023-08-27 01:44:53'),
(246, 'Renti', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:47:06', '2023-08-27 01:47:06'),
(247, 'Tasmika', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:47:42', '2023-08-27 01:47:42'),
(248, 'Naisah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:48:15', '2023-08-27 01:48:15'),
(249, 'Dewi Handayani', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:49:24', '2023-08-27 01:49:24'),
(250, 'Sarmi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:49:57', '2023-08-27 01:49:57'),
(251, 'Nurnani Agustin', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:50:29', '2023-08-27 01:50:29'),
(252, 'Suneli', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:50:58', '2023-08-27 01:50:58'),
(253, 'Mutiah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:51:27', '2023-08-27 01:51:27'),
(254, 'Roniah', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:51:55', '2023-08-27 01:51:55'),
(255, 'Tini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:52:29', '2023-08-27 01:52:29'),
(256, 'Wartini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:52:58', '2023-08-27 01:52:58'),
(257, 'Irma', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:53:23', '2023-08-27 01:53:23'),
(258, 'Rasini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:53:52', '2023-08-27 01:53:52'),
(259, 'Rokena', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:54:25', '2023-08-27 01:54:25'),
(260, 'Hasan Mustopa', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:55:04', '2023-08-27 01:55:04'),
(261, 'Tumini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:55:34', '2023-08-27 01:55:34'),
(262, 'Wastini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:56:02', '2023-08-27 01:56:02'),
(263, 'Dini', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:56:33', '2023-08-27 01:56:33'),
(264, 'Yatim', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:57:00', '2023-08-27 01:57:00'),
(265, 'Ronadi', '01', '05', 'Wanagiri Klangenan', 'fakir', NULL, 70000, '2023-03-27', '2023-08-27 01:57:47', '2023-08-27 01:57:47'),
(266, 'Ibu Samsudin', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:01:37', '2023-08-27 02:01:37'),
(267, 'Ruaedah', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'miskin', NULL, 70000, '2023-03-28', '2023-08-27 02:02:16', '2023-08-27 02:02:16'),
(268, 'Ramini', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'miskin', NULL, 70000, '2023-03-28', '2023-08-27 02:02:58', '2023-08-27 02:02:58'),
(269, 'Hamini', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:03:37', '2023-08-27 02:03:37'),
(270, 'Ibu Usman', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:04:10', '2023-08-27 02:04:10'),
(271, 'Munira', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:04:54', '2023-08-27 02:04:54'),
(272, 'Ibu Nandang', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:05:56', '2023-08-27 02:05:56'),
(273, 'Euis', '01', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:07:06', '2023-08-27 02:07:06'),
(274, 'Maemunah', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'amil', NULL, 70000, '2023-03-28', '2023-08-27 02:07:49', '2023-08-27 02:08:19'),
(275, 'Emalia', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:09:25', '2023-08-27 02:09:25'),
(276, 'Ibu Hj. Juni', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'fisabilillah', NULL, 70000, '2023-03-28', '2023-08-27 02:10:45', '2023-08-27 02:10:45'),
(277, 'Yati', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:11:20', '2023-08-27 02:11:20'),
(278, 'Casri\'ah', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:12:02', '2023-08-27 02:12:02'),
(279, 'Ibu Haris', '02', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:12:40', '2023-08-27 02:12:40'),
(280, 'Warsiam', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:13:34', '2023-08-27 02:13:34'),
(281, 'Popon', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:14:06', '2023-08-27 02:14:06'),
(282, 'Maerah', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:14:43', '2023-08-27 02:14:43'),
(283, 'Nani', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:15:20', '2023-08-27 02:15:20'),
(284, 'Aliyah', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:15:56', '2023-08-27 02:15:56'),
(285, 'De Nining', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:16:41', '2023-08-27 02:16:41'),
(286, 'Sulistianingsih', '03', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:17:31', '2023-08-27 02:17:31'),
(287, 'Asia', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:18:01', '2023-08-27 02:18:01'),
(288, 'Dhea', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:18:39', '2023-08-27 02:18:39'),
(289, 'Sarinah', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:19:33', '2023-08-27 02:19:33'),
(290, 'Saijah', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:20:06', '2023-08-27 02:20:06'),
(291, 'Ibu Suad', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:20:47', '2023-08-27 02:20:47'),
(292, 'Tati', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:21:24', '2023-08-27 02:21:24'),
(293, 'Wiwin', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:21:55', '2023-08-27 02:21:55'),
(294, 'Ibu Kartono', '04', '06', 'Blok Perumahan Indogriya Klangenan', 'fakir', NULL, 70000, '2023-03-28', '2023-08-27 02:22:41', '2023-08-27 02:22:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `muzaki`
--

CREATE TABLE `muzaki` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `muzaki`
--

INSERT INTO `muzaki` (`id`, `name`, `rt`, `rw`, `address`, `type`, `amount`, `date`, `created_at`, `updated_at`) VALUES
(2, 'Agus Sugiono', '01', '01', 'Klangenan', 'infaq', 500000, '2021-01-18', '2023-08-24 13:47:16', '2023-08-24 13:47:16'),
(3, 'H.Supriono', '01', '01', 'Klangenan', 'infaq', 200000, '2021-01-02', '2023-08-24 13:47:57', '2023-08-24 13:47:57'),
(4, 'H. Tarmulya', '01', '01', 'Klangenan', 'zakat', 100000, '2021-01-03', '2023-08-24 13:48:46', '2023-08-24 13:48:46'),
(5, 'Sukaisih', '02', '01', 'Klangenan', 'shodaqoh', 100000, '2021-01-04', '2023-08-24 13:49:41', '2023-08-24 13:49:41'),
(6, 'Rahyudi', '02', '01', 'Klangenan', 'shodaqoh', 100000, '2021-01-05', '2023-08-24 13:50:36', '2023-08-24 13:50:36'),
(7, 'Hamba Allah', '02', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-06', '2023-08-24 13:51:14', '2023-08-24 13:51:14'),
(8, 'Sujono', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-07', '2023-08-24 13:52:36', '2023-08-24 13:52:36'),
(9, 'Istana Susu', '03', '01', 'Klangenan', 'shodaqoh', 20000, '2021-01-08', '2023-08-24 13:53:30', '2023-08-24 13:53:30'),
(10, 'Apotek Nabila', '02', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-16', '2023-08-24 13:54:28', '2023-08-24 13:54:28'),
(11, 'Salman', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-09', '2023-08-24 13:55:28', '2023-08-24 13:55:28'),
(12, 'Hj. Jumi\'ah', '03', '01', 'Blok wanagiri', 'shodaqoh', 100000, '2021-01-10', '2023-08-24 13:56:17', '2023-08-24 13:56:17'),
(13, 'Bapak Tetep', '03', '01', 'wanagiri', 'shodaqoh', 100000, '2021-01-11', '2023-08-24 13:58:40', '2023-08-24 13:58:40'),
(14, 'Bapak Budi', '03', '01', 'wanagiri', 'shodaqoh', 25000, '2021-01-12', '2023-08-24 13:59:30', '2023-08-24 13:59:30'),
(15, 'Sri', '03', '01', 'wanagiri', 'shodaqoh', 150000, '2021-01-13', '2023-08-24 14:00:38', '2023-08-24 14:00:38'),
(16, 'Kenji', '03', '01', 'Wanagiri', 'shodaqoh', 100000, '2021-01-13', '2023-08-24 14:01:27', '2023-08-24 14:01:27'),
(17, 'Suryadi', '03', '01', 'wanigiri', 'shodaqoh', 100000, '2021-01-14', '2023-08-24 14:02:41', '2023-08-24 14:02:41'),
(18, 'Nono S', '04', '01', 'Klangenan, blok BTN Abri', 'shodaqoh', 150000, '2021-01-14', '2023-08-24 14:03:46', '2023-08-24 14:04:30'),
(19, 'Saefudin', '04', '01', 'Klangenan, blok BTN Abri', 'shodaqoh', 100000, '2021-01-15', '2023-08-24 14:05:48', '2023-08-24 14:05:48'),
(20, 'Yuli', '04', '01', 'Klangenan, Blok BTN Abri', 'shodaqoh', 200000, '2021-01-16', '2023-08-24 14:06:41', '2023-08-24 14:06:41'),
(21, 'Heri', '04', '01', 'Klangenan, blok BTN Abri', 'shodaqoh', 20000, '2021-01-17', '2023-08-24 14:07:28', '2023-08-24 14:07:28'),
(22, 'Ratim', '03', '01', 'Klangenan', 'shodaqoh', 100000, '2021-01-18', '2023-08-24 14:08:42', '2023-08-24 14:08:42'),
(23, 'Asmad', '03', '01', 'Klangenan', 'zakat', 100000, '2021-01-20', '2023-08-24 14:10:35', '2023-08-24 14:10:35'),
(24, 'Uum', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-21', '2023-08-24 14:11:33', '2023-08-24 14:11:33'),
(25, 'Pegadaian', '03', '01', 'Klangenan', 'shodaqoh', 25000, '2021-01-21', '2023-08-24 14:14:58', '2023-08-24 14:14:58'),
(26, 'Bapak Sukrim', '03', '01', 'Klangenan', 'shodaqoh', 100000, '2021-01-21', '2023-08-24 14:15:45', '2023-08-24 14:15:45'),
(27, 'Koperasi Sejahtera', '03', '01', 'Klangenan', 'shodaqoh', 40000, '2021-01-23', '2023-08-24 14:16:40', '2023-08-24 14:16:40'),
(28, 'Ibadilah', '03', '01', 'Klangenan', 'zakat', 50000, '2021-01-23', '2023-08-24 14:21:28', '2023-08-24 14:21:28'),
(29, 'P. Rajawali', '03', '01', 'Klangenan', 'shodaqoh', 200000, '2021-01-23', '2023-08-24 14:25:21', '2023-08-24 14:25:21'),
(30, 'Hamba Allah', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-25', '2023-08-24 14:26:51', '2023-08-24 14:26:51'),
(31, 'Kayan', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-26', '2023-08-24 14:31:00', '2023-08-24 14:31:00'),
(32, 'Aksani', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-26', '2023-08-24 14:31:49', '2023-08-24 14:31:49'),
(33, 'Mely', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-01-27', '2023-08-24 14:32:35', '2023-08-24 14:32:35'),
(34, 'Hari', '03', '01', 'Klangenan', 'shodaqoh', 25000, '2021-02-01', '2023-08-24 14:33:59', '2023-08-24 14:33:59'),
(35, 'Eli', '03', '01', 'Klangenan', 'shodaqoh', 50000, '2021-02-02', '2023-08-24 14:34:46', '2023-08-24 14:34:46'),
(36, 'Lukman', '03', '01', 'Klangenan', 'shodaqoh', 300000, '2021-02-02', '2023-08-24 14:35:46', '2023-08-24 14:35:46'),
(37, 'Ibu Fuji', '03', '01', 'Klangenan', 'shodaqoh', 750000, '2021-02-03', '2023-08-24 14:36:39', '2023-08-24 14:36:39'),
(38, 'Sugeng', '03', '01', 'Klangenan', 'shodaqoh', 1000000, '2021-02-04', '2023-08-24 14:37:26', '2023-08-24 14:37:26'),
(40, 'Bapak Ucok', '01', '02', 'Blok Pengkolan', 'shodaqoh', 50000, '2021-02-02', '2023-08-24 14:58:38', '2023-08-24 14:58:38'),
(41, 'H. Sukardi', '01', '02', 'Blok Pengkolan', 'shodaqoh', 2000000, '2021-02-03', '2023-08-24 14:59:28', '2023-08-24 14:59:28'),
(42, 'Neneng', '01', '02', 'Blok Pengkolan', 'shodaqoh', 30000, '2021-02-04', '2023-08-24 15:00:11', '2023-08-24 15:00:11'),
(43, 'H. Yakub', '01', '02', 'Blok Pengkolan', 'shodaqoh', 250000, '2021-02-04', '2023-08-24 15:00:52', '2023-08-24 15:00:52'),
(44, 'Darto', '01', '02', 'Blok Pengkolan', 'shodaqoh', 50000, '2021-02-06', '2023-08-24 15:01:39', '2023-08-24 15:01:39'),
(45, 'Sunarto', '01', '02', 'Blok Pengkolan', 'shodaqoh', 50000, '2021-02-07', '2023-08-24 15:02:19', '2023-08-24 15:02:19'),
(46, 'Bapak Yoyon', '01', '02', 'Blok Pengkolan', 'shodaqoh', 50000, '2021-02-08', '2023-08-24 15:03:16', '2023-08-24 15:03:16'),
(47, 'H. Hadi', '01', '02', 'Blok Pengkolan', 'shodaqoh', 100000, '2021-02-09', '2023-08-24 15:04:08', '2023-08-24 15:04:08'),
(48, 'M. Akbar', '01', '02', 'Blok Pengkolan', 'shodaqoh', 100000, '2021-02-11', '2023-08-24 15:04:56', '2023-08-24 15:04:56'),
(49, 'Hamba Allah', '01', '02', 'Blok pengkolan', 'shodaqoh', 150000, '2021-02-09', '2023-08-24 15:05:43', '2023-08-24 15:05:43'),
(50, 'Hj. Nani', '01', '02', 'Blok Pengkolan', 'shodaqoh', 100000, '2021-02-11', '2023-08-24 15:06:32', '2023-08-24 15:06:32'),
(51, 'Yuli', '01', '02', 'Blok pengkolan', 'infaq', 270000, '2021-02-12', '2023-08-24 15:07:16', '2023-08-24 15:07:16'),
(52, 'Sri . S', '01', '02', 'Blok Pengkolan', 'shodaqoh', 100000, '2021-02-12', '2023-08-24 15:07:56', '2023-08-24 15:07:56'),
(53, 'Hamba allah', '01', '02', 'Blok Pengkolan', 'infaq', 100000, '2021-02-13', '2023-08-24 15:09:04', '2023-08-24 15:09:04'),
(54, 'Hj. Sumini', '01', '02', 'Blok Pengkolan', 'infaq', 300000, '2021-02-14', '2023-08-24 15:09:57', '2023-08-24 15:09:57'),
(55, 'Supendi', '01', '02', 'Blok Pengkolan', 'infaq', 50000, '2021-02-14', '2023-08-24 15:10:41', '2023-08-24 15:10:41'),
(56, 'Hj. Sopiyah', '01', '02', 'Blok pengkolan', 'shodaqoh', 200000, '2021-02-15', '2023-08-24 15:11:49', '2023-08-24 15:11:49'),
(57, 'Rayhan', '01', '02', 'Blok Pengkolan', 'shodaqoh', 200000, '2021-02-16', '2023-08-24 15:12:38', '2023-08-24 15:12:38'),
(59, 'Mohammad Tartib', '02', '02', 'Blok pejagalan', 'zakat', 100000, '2021-02-17', '2023-08-24 15:20:20', '2023-08-24 15:20:20'),
(60, 'Hamba Allah', '02', '02', 'Blok pejagalan', 'shodaqoh', 100000, '2021-02-18', '2023-08-24 15:21:04', '2023-08-24 15:21:04'),
(61, 'H. Mitro', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-02-19', '2023-08-24 15:22:09', '2023-08-24 15:22:09'),
(62, 'Ayi', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-02-19', '2023-08-24 15:22:50', '2023-08-24 15:22:50'),
(63, 'Bapak Temu', '02', '02', 'Blok Pejagalan', 'shodaqoh', 50000, '2021-02-20', '2023-08-24 15:23:30', '2023-08-24 15:23:30'),
(64, 'Yayu Nur', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-02-21', '2023-08-24 15:24:15', '2023-08-24 15:24:15'),
(65, 'Uci', '02', '02', 'Blok Pejagalan', 'shodaqoh', 50000, '2021-02-22', '2023-08-24 15:25:02', '2023-08-24 15:25:02'),
(66, 'Bapak Turba', '02', '02', 'Blok Pejagalan', 'shodaqoh', 500000, '2021-02-23', '2023-08-24 15:26:07', '2023-08-24 15:26:07'),
(67, 'Hj. Miah', '02', '02', 'Blok Pejagalan', 'zakat', 2000000, '2021-02-24', '2023-08-24 15:27:12', '2023-08-24 15:27:12'),
(68, 'H. Ade Sutardi', '02', '02', 'Blok Pejagalan', 'shodaqoh', 250000, '2021-02-25', '2023-08-24 15:27:57', '2023-08-24 15:27:57'),
(69, 'H. Jaruki', '02', '02', 'Blok pejagalan', 'shodaqoh', 300000, '2021-02-26', '2023-08-24 15:28:42', '2023-08-24 15:28:42'),
(70, 'Hj. Wiwin', '02', '02', 'Blok Pejagalan', 'shodaqoh', 150000, '2021-02-27', '2023-08-24 15:29:19', '2023-08-24 15:29:19'),
(71, 'H. Endi', '02', '02', 'Blok pejagalan', 'zakat', 1000000, '2021-02-28', '2023-08-24 15:30:03', '2023-08-24 15:30:03'),
(72, 'Asep', '02', '02', 'Blok Pejagalan', 'shodaqoh', 25000, '2021-03-01', '2023-08-24 15:30:49', '2023-08-24 15:30:49'),
(73, 'Kusdiman', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-03-02', '2023-08-24 15:31:31', '2023-08-24 15:31:31'),
(74, 'H. Yoyon', '02', '02', 'Blok Pejagalan', 'zakat', 1500000, '2021-03-03', '2023-08-24 15:32:16', '2023-08-24 15:32:16'),
(75, 'Ibu Ros', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-03-04', '2023-08-24 15:32:59', '2023-08-24 15:32:59'),
(76, 'Mulyana', '02', '02', 'Blok Pejagalan', 'zakat', 1000000, '2021-03-05', '2023-08-24 15:33:43', '2023-08-24 15:33:43'),
(77, 'Abas', '02', '02', 'Blok Pejagalan', 'shodaqoh', 100000, '2021-03-07', '2023-08-24 15:34:29', '2023-08-24 15:34:29'),
(78, 'H. sukija', '02', '02', 'Blok pejagalan', 'shodaqoh', 200000, '2021-03-08', '2023-08-24 15:35:17', '2023-08-24 15:35:17'),
(79, 'H. Rudi', '03', '02', 'Blok Mawar Klangenan', 'zakat', 3000000, '2021-03-09', '2023-08-24 15:36:54', '2023-08-24 15:36:54'),
(80, 'H. Dadang', '03', '02', 'Blok Mawar Klangenan', 'shodaqoh', 200000, '2021-03-10', '2023-08-24 15:37:33', '2023-08-24 15:37:33'),
(81, 'Adetiya', '03', '02', 'Blok Mawar Klangenan', 'zakat', 1000000, '2021-03-11', '2023-08-24 15:38:20', '2023-08-24 15:38:20'),
(82, 'Hj. Eni Muhammad', '03', '02', 'Blok Mawar Klangenan', 'zakat', 5000000, '2021-03-18', '2023-08-24 15:40:07', '2023-08-24 15:40:07'),
(83, 'H.Jamal', '03', '02', 'Blok Mawar Klangenan', 'zakat', 2000000, '2021-03-19', '2023-08-24 15:40:52', '2023-08-24 15:40:52'),
(84, 'Surya Batu Alam', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 200000, '2021-03-21', '2023-08-24 15:43:45', '2023-08-24 15:44:59'),
(85, 'H. Darsa', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 100000, '2021-03-21', '2023-08-24 15:46:39', '2023-08-24 15:46:39'),
(86, 'Jarot', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 150000, '2021-03-22', '2023-08-24 15:47:17', '2023-08-24 15:47:17'),
(87, 'Suhendi', '01', '03', 'Blok pengampon Klangenan', 'shodaqoh', 100000, '2021-03-23', '2023-08-24 15:48:06', '2023-08-24 15:48:06'),
(88, 'Lia', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 100000, '2021-03-23', '2023-08-24 15:48:54', '2023-08-24 15:48:54'),
(89, 'Arip Sugandi', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 200000, '2021-03-25', '2023-08-24 15:49:50', '2023-08-24 15:49:50'),
(90, 'Adun', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 100000, '2021-03-27', '2023-08-24 15:50:45', '2023-08-24 15:50:45'),
(91, 'Hj. Nah', '01', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 200000, '2021-03-28', '2023-08-24 15:51:37', '2023-08-24 15:51:37'),
(92, 'Sudarso', '01', '03', 'Blok Pengampon Klangenan', 'zakat', 3000000, '2021-03-29', '2023-08-24 15:52:29', '2023-08-24 15:52:29'),
(93, 'H. Samsul', '02', '03', 'Blok Pengampon Klangenan', 'zakat', 1000000, '2021-03-29', '2023-08-24 15:53:16', '2023-08-24 15:53:16'),
(94, 'BRI Klangenan', '02', '03', 'Blok Pengampon Klangenan', 'shodaqoh', 100000, '2021-03-30', '2023-08-24 15:54:00', '2023-08-24 15:54:00'),
(95, 'Hamba Allah', '01', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-01', '2023-08-24 15:59:24', '2023-08-24 15:59:24'),
(96, 'Ibu Emi Zen', '01', '04', 'Klangenan', 'shodaqoh', 250000, '2021-04-02', '2023-08-24 16:00:12', '2023-08-24 16:00:12'),
(97, 'Mulyono', '01', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-02', '2023-08-24 16:00:56', '2023-08-24 16:00:56'),
(98, 'Hamba Allah', '01', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-04', '2023-08-24 16:01:43', '2023-08-24 16:01:43'),
(99, 'Siswono', '02', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-06', '2023-08-24 16:02:34', '2023-08-24 16:02:34'),
(100, 'H. Ma\'aruf', '02', '04', 'Klangenan', 'zakat', 500000, '2021-04-11', '2023-08-24 16:03:33', '2023-08-24 16:03:33'),
(101, 'H. Yoyon', '02', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-12', '2023-08-24 16:04:16', '2023-08-24 16:04:16'),
(102, 'H. Mulyono', '02', '04', 'Klangenan', 'shodaqoh', 300000, '2021-04-13', '2023-08-24 16:04:55', '2023-08-24 16:04:55'),
(103, 'H. Supandi', '02', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-12', '2023-08-24 16:05:52', '2023-08-24 16:05:52'),
(104, 'Hannun R', '02', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-13', '2023-08-24 16:06:46', '2023-08-24 16:06:46'),
(105, 'Bapak nandi', '02', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-14', '2023-08-24 16:07:22', '2023-08-24 16:07:22'),
(106, 'Cecep Saturi', '02', '04', 'Klangenan', 'zakat', 2500000, '2021-04-14', '2023-08-24 16:08:24', '2023-08-24 16:08:24'),
(107, 'Hambali', '02', '04', 'Klangenan', 'zakat', 1200000, '2021-04-15', '2023-08-24 16:09:16', '2023-08-24 16:09:16'),
(108, 'Naryadi', '03', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-18', '2023-08-24 16:10:13', '2023-08-24 16:10:13'),
(109, 'H. Sahli', '03', '04', 'Klangenan', 'shodaqoh', 300000, '2021-04-20', '2023-08-24 16:11:11', '2023-08-24 16:11:11'),
(110, 'Topik', '03', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-21', '2023-08-24 16:11:47', '2023-08-24 16:11:47'),
(111, 'Ery. S', '03', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-26', '2023-08-24 16:39:47', '2023-08-24 16:39:47'),
(112, 'Wiwin', '03', '04', 'Klangenan', 'shodaqoh', 150000, '2021-04-28', '2023-08-24 16:40:28', '2023-08-24 16:40:28'),
(113, 'Bapak Hermanto', '03', '04', 'Klangenan', 'zakat', 1500000, '2021-04-29', '2023-08-24 16:41:20', '2023-08-24 16:41:20'),
(114, 'Hamba Allah', '01', '04', 'Klangenan', 'shodaqoh', 300000, '2021-04-29', '2023-08-24 16:42:26', '2023-08-24 16:44:58'),
(115, 'Kasyana', '01', '04', 'Klangenan', 'shodaqoh', 200000, '2021-04-30', '2023-08-24 16:43:08', '2023-08-24 16:45:22'),
(116, 'H. Tukiman', '03', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-27', '2023-08-24 16:43:56', '2023-08-24 16:45:36'),
(117, 'H. Toto', '03', '04', 'Klangenan', 'shodaqoh', 500000, '2021-04-22', '2023-08-24 16:46:24', '2023-08-24 16:46:24'),
(118, 'Herman', '03', '04', 'Klangenan', 'shodaqoh', 100000, '2021-04-23', '2023-08-24 16:47:03', '2023-08-24 16:47:03'),
(119, 'Eris', '01', '05', 'Klangenan', 'shodaqoh', 150000, '2021-05-01', '2023-08-24 16:48:54', '2023-08-24 16:54:08'),
(120, 'Diding', '01', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-02', '2023-08-24 16:49:55', '2023-08-24 16:54:37'),
(122, 'Sukarya', '02', '05', 'Klangenan', 'shodaqoh', 50000, '2021-05-04', '2023-08-24 16:52:17', '2023-08-24 16:54:25'),
(123, 'Encum Kulsum', '02', '05', 'Klangenan', 'zakat', 250000, '2021-05-03', '2023-08-24 16:53:39', '2023-08-24 16:53:39'),
(124, 'Hamba Allah', '03', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-04', '2023-08-24 16:55:58', '2023-08-24 16:55:58'),
(125, 'Parjo', '01', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-05', '2023-08-24 16:56:37', '2023-08-24 16:56:37'),
(126, 'Agus', '01', '05', 'Klangenan', 'shodaqoh', 50000, '2021-05-05', '2023-08-24 16:57:24', '2023-08-24 16:57:24'),
(127, 'Hamba allah', '02', '05', 'Klangenan', 'shodaqoh', 250000, '2021-05-12', '2023-08-24 16:58:46', '2023-08-24 16:58:46'),
(128, 'Ibu Eny', '02', '05', 'Klangenan', 'shodaqoh', 160000, '2021-05-09', '2023-08-24 16:59:51', '2023-08-24 16:59:51'),
(129, 'Basuri', '03', '05', 'Klangenan', 'shodaqoh', 200000, '2021-05-11', '2023-08-24 17:00:34', '2023-08-24 17:00:34'),
(130, 'Ima', '03', '05', 'Klangenan', 'shodaqoh', 50000, '2021-05-11', '2023-08-24 17:01:30', '2023-08-24 17:01:30'),
(131, 'Muktari', '04', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-20', '2023-08-24 17:02:23', '2023-08-24 17:02:23'),
(132, 'Sulis', '03', '05', 'Klangenan', 'shodaqoh', 300000, '2021-05-19', '2023-08-24 17:03:23', '2023-08-24 17:03:23'),
(133, 'Ibu Entik', '02', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-19', '2023-08-24 17:04:16', '2023-08-24 17:04:16'),
(134, 'H. Rojak', '02', '05', 'Klangenan', 'zakat', 100000, '2021-05-21', '2023-08-24 17:11:58', '2023-08-24 17:11:58'),
(135, 'Firman', '02', '05', 'Klangenan', 'shodaqoh', 100000, '2021-05-20', '2023-08-24 17:12:43', '2023-08-24 17:12:43'),
(136, 'Aziz', '03', '05', 'Klangenan', 'shodaqoh', 50000, '2021-05-21', '2023-08-24 17:13:22', '2023-08-24 17:13:22'),
(137, 'supandi. M', '03', '05', 'Klangenan', 'shodaqoh', 200000, '2021-05-22', '2023-08-24 17:14:03', '2023-08-24 17:14:03'),
(138, 'Rachmat', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-01', '2023-08-24 17:16:12', '2023-08-24 17:16:12'),
(139, 'Mujur', '01', '07', 'Blok Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-02', '2023-08-24 17:16:59', '2023-08-24 17:16:59'),
(140, 'H. Jajim', '01', '07', 'Blok Indogriya Klangenan', 'shodaqoh', 150000, '2021-06-03', '2023-08-24 17:17:51', '2023-08-24 17:17:51'),
(141, 'H. Taryono', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-04', '2023-08-24 17:20:06', '2023-08-24 17:20:06'),
(142, 'H. Darno', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-05', '2023-08-24 17:21:45', '2023-08-24 17:21:45'),
(143, 'H. sidiq', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-06', '2023-08-24 17:22:50', '2023-08-24 17:22:50'),
(144, 'Gogo', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 1000000, '2021-06-06', '2023-08-24 17:23:53', '2023-08-24 17:23:53'),
(145, 'H. Kaswito', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-07', '2023-08-24 17:24:45', '2023-08-24 17:24:45'),
(146, 'H. Agus', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 50000, '2021-06-08', '2023-08-24 17:25:44', '2023-08-24 17:25:44'),
(147, 'H. Kudori', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 50000, '2021-06-09', '2023-08-24 17:26:36', '2023-08-24 17:26:36'),
(148, 'Adiek', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2021-06-10', '2023-08-24 17:27:46', '2023-08-24 17:27:46'),
(149, 'Nurhidayat', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 40000, '2021-06-11', '2023-08-24 17:28:58', '2023-08-24 17:28:58'),
(150, 'Fuad hasyim', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2021-06-12', '2023-08-24 17:30:05', '2023-08-24 17:30:05'),
(151, 'Zaenuri', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-06', '2023-08-24 17:31:02', '2023-08-24 17:31:02'),
(152, 'H. Bowo', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-07', '2023-08-24 17:31:59', '2023-08-24 17:31:59'),
(153, 'A. Rafiudin', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-16', '2023-08-24 17:33:02', '2023-08-24 17:33:02'),
(154, 'H. Suherman', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-17', '2023-08-24 17:33:55', '2023-08-24 17:33:55'),
(155, 'Rino', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-19', '2023-08-24 17:34:42', '2023-08-24 17:34:42'),
(156, 'Ade', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 20000, '2021-06-19', '2023-08-24 17:35:29', '2023-08-24 17:35:29'),
(157, 'Rohimin', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2021-06-20', '2023-08-24 17:36:33', '2023-08-24 17:36:33'),
(158, 'Ibu Sumini', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-21', '2023-08-24 17:37:23', '2023-08-24 17:37:23'),
(159, 'Jamal', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-22', '2023-08-24 17:38:17', '2023-08-24 17:38:17'),
(160, 'H. Darto', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-23', '2023-08-24 17:39:05', '2023-08-24 17:39:05'),
(161, 'Jaja', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2021-06-25', '2023-08-24 17:40:01', '2023-08-24 17:40:01'),
(162, 'H. Agus', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-26', '2023-08-24 17:40:51', '2023-08-24 17:40:51'),
(163, 'H. Budi', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 50000, '2021-06-27', '2023-08-24 17:41:45', '2023-08-24 17:41:45'),
(164, 'Slamet', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 200000, '2021-06-29', '2023-08-24 17:42:41', '2023-08-24 17:42:41'),
(165, 'A. Udin', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 200000, '2021-06-28', '2023-08-24 17:43:36', '2023-08-24 17:43:36'),
(166, 'Syafrizal', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2021-06-30', '2023-08-24 17:44:29', '2023-08-24 17:44:29'),
(167, 'Hj. Munsiri', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 1000000, '2021-07-01', '2023-08-24 17:45:27', '2023-08-24 17:45:27'),
(168, 'Suheriyanto', '01', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:15:39', '2023-08-27 14:15:39'),
(169, 'Bapak Jono', '01', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:16:10', '2023-08-27 14:16:10'),
(170, 'Apotek Klangenan', '01', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:16:44', '2023-08-27 14:16:44'),
(171, 'Koperasi Sejahtera', '01', '01', 'Klangenan', 'infaq', 2000000, '2023-03-23', '2023-08-27 14:17:28', '2023-08-27 14:17:28'),
(172, 'Bapak H. Mul', '01', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:26:08', '2023-08-27 14:26:08'),
(173, 'Bapak Kayan', '01', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:26:47', '2023-08-27 14:26:47'),
(174, 'Ibu Mius', '01', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:27:27', '2023-08-27 14:27:27'),
(175, 'Ibu Hj. Annah', '01', '01', 'Klangenan', 'infaq', 50500, '2023-03-23', '2023-08-27 14:28:08', '2023-08-27 14:28:08'),
(176, 'Bapak H. Rahyudi', '01', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:28:48', '2023-08-27 14:28:48'),
(177, 'Bapak Yayan', '01', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:29:17', '2023-08-27 14:29:17'),
(178, 'Bapak Ucu', '01', '01', 'Klangenan', 'infaq', 20000, '2023-03-23', '2023-08-27 14:29:51', '2023-08-27 14:29:51'),
(179, 'Bapak Dendi', '01', '01', 'Klangenan', 'infaq', 150000, '2023-03-23', '2023-08-27 14:30:23', '2023-08-27 14:30:23'),
(180, 'Mas Rully', '01', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:31:09', '2023-08-27 14:31:09'),
(181, 'Pintawa Jawa', '01', '01', 'Klangenan', 'infaq', 400000, '2023-03-23', '2023-08-27 14:31:47', '2023-08-27 14:31:47'),
(182, 'PT Rajawali', '01', '01', 'Klangenan', 'infaq', 250000, '2023-03-23', '2023-08-27 14:32:18', '2023-08-27 14:32:18'),
(183, 'Muslim', '01', '01', 'Klangenan', 'infaq', 250000, '2023-03-23', '2023-08-27 14:32:46', '2023-08-27 14:32:46'),
(184, 'Bapak Hardi', '02', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:34:21', '2023-08-27 14:34:21'),
(185, 'Ibu Desi', '02', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:35:10', '2023-08-27 14:35:10'),
(186, 'Ibu Hj. Asiri', '02', '01', 'Klangenan', 'shodaqoh', 100000, '2023-03-23', '2023-08-27 14:35:48', '2023-08-27 14:35:48'),
(187, 'Bapak Asmad', '02', '01', 'Klangenan', 'shodaqoh', 100000, '2023-03-23', '2023-08-27 14:36:18', '2023-08-27 14:36:18'),
(188, 'Bapak H. Supriono', '02', '01', 'Klangenan', 'shodaqoh', 150000, '2023-03-23', '2023-08-27 14:36:52', '2023-08-27 14:36:52'),
(189, 'Ibu Hj. Armi', '02', '01', 'Klangenan', 'shodaqoh', 100000, '2023-03-23', '2023-08-27 14:37:29', '2023-08-27 14:37:29'),
(190, 'Ibu Hj. Fuyi', '02', '01', 'Klangenan', 'infaq', 500000, '2023-03-23', '2023-08-27 14:38:06', '2023-08-27 14:38:06'),
(191, 'Bapak Budi Handuk', '02', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:38:40', '2023-08-27 14:38:40'),
(192, 'Bapak Ust. Lukman', '02', '01', 'Klangenan', 'infaq', 300000, '2023-03-23', '2023-08-27 14:39:18', '2023-08-27 14:39:18'),
(193, 'Bapak Suryadi', '02', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:39:50', '2023-08-27 14:39:50'),
(194, 'Bapak H. Ono', '02', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:40:19', '2023-08-27 14:40:19'),
(195, 'Bapak Sukrim', '02', '01', 'Klangenan', 'infaq', 100000, '2023-03-23', '2023-08-27 14:40:48', '2023-08-27 14:40:48'),
(196, 'Ibu Fuji', '02', '01', 'Klangenan', 'infaq', 40000, '2023-03-23', '2023-08-27 14:41:22', '2023-08-27 14:41:22'),
(197, 'Ibu Ratim', '02', '01', 'Klangenan', 'infaq', 50000, '2023-03-23', '2023-08-27 14:41:50', '2023-08-27 14:41:50'),
(198, 'Ibu Yuli', '02', '01', 'Klangenan', 'infaq', 200000, '2023-03-23', '2023-08-27 14:42:23', '2023-08-27 14:42:23'),
(199, 'Bapak Mulyana', '01', '02', 'Klangenan', 'zakat', 1000000, '2023-03-24', '2023-08-27 14:43:27', '2023-08-27 14:43:27'),
(200, 'H. Mitro', '01', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:43:56', '2023-08-27 14:43:56'),
(201, 'Muhadi', '01', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:44:27', '2023-08-27 14:44:27'),
(202, 'Bapak Basoni', '01', '02', 'Klangenan', 'zakat', 100000, '2023-03-24', '2023-08-27 14:45:08', '2023-08-27 14:45:08'),
(203, 'Ayi Nawijaya', '01', '02', 'Klangenan', 'shodaqoh', 150000, '2023-03-24', '2023-08-27 14:45:46', '2023-08-27 14:45:46'),
(204, 'M. Fathani', '01', '02', 'Klangenan', 'zakat', 300000, '2023-03-24', '2023-08-27 14:46:28', '2023-08-27 14:46:28'),
(205, 'H. Ade Sutardi', '01', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:47:02', '2023-08-27 14:47:02'),
(206, 'H. Tarmadi', '01', '02', 'Klangenan', 'zakat', 3000000, '2023-03-24', '2023-08-27 14:47:31', '2023-08-27 14:47:31'),
(207, 'Abiyan', '01', '02', 'Klangenan', 'zakat', 1000000, '2023-03-24', '2023-08-27 14:48:02', '2023-08-27 14:48:02'),
(208, 'Nanolang. R', '01', '02', 'Klangenan', 'shodaqoh', 300000, '2023-03-24', '2023-08-27 14:48:48', '2023-08-27 14:48:48'),
(209, 'Ade Dwi Irawan', '01', '02', 'Klangenan', 'zakat', 300000, '2023-03-24', '2023-08-27 14:49:23', '2023-08-27 14:49:23'),
(210, 'Pipin', '01', '02', 'Klangenan', 'zakat', 500000, '2023-03-24', '2023-08-27 14:49:53', '2023-08-27 14:49:53'),
(211, 'H. Jamal', '01', '02', 'Klangenan', 'zakat', 1000000, '2023-03-24', '2023-08-27 14:50:20', '2023-08-27 14:50:20'),
(212, 'H. Sumiati', '01', '02', 'Klangenan', 'zakat', 3000000, '2023-03-24', '2023-08-27 14:51:05', '2023-08-27 14:51:05'),
(213, 'Showrom', '01', '02', 'Klangenan', 'zakat', 100000, '2023-03-24', '2023-08-27 14:51:38', '2023-08-27 14:51:38'),
(214, 'Ero Samtoso', '02', '02', 'Klangenan', 'zakat', 400000, '2023-03-24', '2023-08-27 14:52:26', '2023-08-27 14:52:26'),
(215, 'Muhtadi', '02', '02', 'Klangenan', 'zakat', 50000, '2023-03-24', '2023-08-27 14:53:01', '2023-08-27 14:53:01'),
(216, 'Hamba Allah', '02', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:53:35', '2023-08-27 14:53:35'),
(217, 'H. Yoyon', '02', '02', 'Klangenan', 'zakat', 3000000, '2023-03-24', '2023-08-27 14:54:25', '2023-08-27 14:54:25'),
(218, 'H. Endi', '02', '02', 'Klangenan', 'zakat', 1000000, '2023-03-24', '2023-08-27 14:54:52', '2023-08-27 14:54:52'),
(219, 'Hamba Allah', '02', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:55:25', '2023-08-27 14:55:25'),
(220, 'Samsudin', '02', '02', 'Klangenan', 'shodaqoh', 200000, '2023-03-24', '2023-08-27 14:57:00', '2023-08-27 14:57:00'),
(221, 'Premono', '02', '02', 'Klangenan', 'shodaqoh', 50000, '2023-03-24', '2023-08-27 14:57:37', '2023-08-27 14:57:37'),
(222, 'H. Sukija', '01', '02', 'Klangenan', 'shodaqoh', 150000, '2023-03-24', '2023-08-27 14:58:21', '2023-08-27 14:58:21'),
(223, 'H. Toto', '02', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 14:58:58', '2023-08-27 14:58:58'),
(224, 'Samsul', '02', '02', 'Klangenan', 'shodaqoh', 200000, '2023-03-24', '2023-08-27 14:59:33', '2023-08-27 14:59:33'),
(225, 'Mi\'ah', '02', '02', 'Klangenan', 'zakat', 2000000, '2023-03-24', '2023-08-27 15:00:08', '2023-08-27 15:00:08'),
(226, 'H. M. Taufik', '02', '02', 'Klangenan', 'zakat', 400000, '2023-03-24', '2023-08-27 15:00:42', '2023-08-27 15:00:42'),
(227, 'Bapak Ayip', '02', '02', 'Klangenan', 'zakat', 200000, '2023-03-24', '2023-08-27 15:01:11', '2023-08-27 15:01:11'),
(228, 'Iyan', '02', '02', 'Klangenan', 'zakat', 100000, '2023-03-24', '2023-08-27 15:01:47', '2023-08-27 15:01:47'),
(229, 'H. Mohammad Yohardi', '03', '02', 'Klangenan', 'shodaqoh', 300000, '2023-03-24', '2023-08-27 15:04:46', '2023-08-27 15:04:46'),
(230, 'Hj. Nani', '03', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 15:05:24', '2023-08-27 15:05:24'),
(231, 'Hj. Sumarni', '03', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 15:06:07', '2023-08-27 15:06:07'),
(232, 'Ibu Iskak', '03', '02', 'Klangenan', 'zakat', 100000, '2023-03-24', '2023-08-27 15:06:43', '2023-08-27 15:06:43'),
(233, 'H. Endang', '03', '02', 'Klangenan', 'infaq', 100000, '2023-03-24', '2023-08-27 15:07:21', '2023-08-27 15:07:21'),
(234, 'Hj. Sumeni', '03', '02', 'Klangenan', 'zakat', 250000, '2023-03-24', '2023-08-27 15:07:56', '2023-08-27 15:07:56'),
(235, 'Bapak Darto', '03', '02', 'Klangenan', 'shodaqoh', 200000, '2023-03-24', '2023-08-27 15:08:28', '2023-08-27 15:08:28'),
(236, 'Ibu Sri', '03', '02', 'Klangenan', 'shodaqoh', 50000, '2023-03-24', '2023-08-27 15:09:00', '2023-08-27 15:09:00'),
(237, 'Yakub', '03', '02', 'Klangenan', 'zakat', 200000, '2023-03-24', '2023-08-27 15:09:31', '2023-08-27 15:09:31'),
(238, 'Ibu Tartib', '03', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 15:10:07', '2023-08-27 15:10:07'),
(239, 'Bapak Turba Binjari', '03', '02', 'Klangenan', 'shodaqoh', 500000, '2023-03-24', '2023-08-27 15:10:46', '2023-08-27 15:10:46'),
(240, 'Bapak Ibnu', '03', '02', 'Klangenan', 'shodaqoh', 100000, '2023-03-24', '2023-08-27 15:11:14', '2023-08-27 15:11:14'),
(241, 'Bapak Odang', '03', '02', 'Klangenan', 'shodaqoh', 200000, '2023-03-24', '2023-08-27 15:11:43', '2023-08-27 15:11:43'),
(242, 'Bapak H. Sukardi', '03', '02', 'Klangenan', 'shodaqoh', 150000, '2023-03-24', '2023-08-27 15:12:16', '2023-08-27 15:12:16'),
(243, 'Bapak Edi', '03', '02', 'Klangenan', 'shodaqoh', 50000, '2023-03-24', '2023-08-27 15:12:48', '2023-08-27 15:12:48'),
(244, 'Suhendi', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 100000, '2023-03-25', '2023-08-27 15:14:21', '2023-08-27 15:14:21'),
(245, 'Ibu Lis', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 50000, '2023-03-25', '2023-08-27 15:14:56', '2023-08-27 15:14:56'),
(246, 'Worohijab', '01', '03', 'Klangenan', 'shodaqoh', 50000, '2023-03-25', '2023-08-27 15:15:46', '2023-08-27 15:15:46'),
(247, 'Arif. S', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 100000, '2023-03-25', '2023-08-27 15:16:17', '2023-08-27 15:16:17'),
(248, 'Adun. M', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 100000, '2023-03-25', '2023-08-27 15:16:48', '2023-08-27 15:16:48'),
(249, 'Hj. Siti Namirah', '01', '03', 'Blok Pengkolan Klangenan', 'zakat', 1000000, '2023-03-25', '2023-08-27 15:17:30', '2023-08-27 15:17:30'),
(250, 'Sudarso', '01', '03', 'Blok Pengkolan Klangenan', 'zakat', 2000000, '2023-03-25', '2023-08-27 15:18:03', '2023-08-27 15:18:03'),
(251, 'Hj. Enah', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 200000, '2023-03-25', '2023-08-27 15:18:46', '2023-08-27 15:18:46'),
(252, 'Udin Batualam', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 250000, '2023-03-25', '2023-08-27 15:19:24', '2023-08-27 15:19:24'),
(253, 'A. Raist', '01', '03', 'Blok Pengkolan Klangenan', 'shodaqoh', 300000, '2023-03-25', '2023-08-27 15:20:12', '2023-08-27 15:20:12'),
(254, 'Hamba Allah', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 250000, '2023-03-26', '2023-08-27 15:22:39', '2023-08-27 15:22:39'),
(255, 'Mulyono', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 300000, '2023-03-26', '2023-08-27 15:23:17', '2023-08-27 15:23:17'),
(256, 'Bapak Agus', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:24:00', '2023-08-27 15:24:00'),
(257, 'Gendut Sulasno', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 350000, '2023-03-26', '2023-08-27 15:24:41', '2023-08-27 15:24:41'),
(258, 'Bapak Siswanto', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 150000, '2023-03-26', '2023-08-27 15:25:39', '2023-08-27 15:25:39'),
(259, 'H. Ma\'ruf', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 500000, '2023-03-26', '2023-08-27 15:26:19', '2023-08-27 15:26:19'),
(260, 'Hj. Halimah', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 150000, '2023-03-26', '2023-08-27 15:26:57', '2023-08-27 15:26:57'),
(261, 'H. Mulyono', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 300000, '2023-03-26', '2023-08-27 15:27:54', '2023-08-27 15:27:54'),
(262, 'H. Toto', '01', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 500000, '2023-03-26', '2023-08-27 15:28:30', '2023-08-27 15:28:30'),
(263, 'Hj. Tamini', '01', '04', 'Blok BTN Abri Klangenan', 'infaq', 300000, '2023-03-26', '2023-08-27 15:29:03', '2023-08-27 15:29:03'),
(264, 'Bapak Cecep Sapturi', '01', '04', 'Blok BTN Abri Klangenan', 'zakat', 3000000, '2023-03-26', '2023-08-27 15:29:46', '2023-08-27 15:29:46'),
(265, 'Hamba Allah', '02', '04', 'Blok BTN Abri Klangenan', 'zakat', 2500000, '2023-03-26', '2023-08-27 15:30:22', '2023-08-27 15:30:22'),
(266, 'Bapak Kasyana', '02', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:30:59', '2023-08-27 15:30:59'),
(267, 'Pariyah Takiman', '02', '04', 'Blok BTN Abri Klangenan', 'zakat', 1500000, '2023-03-26', '2023-08-27 15:31:41', '2023-08-27 15:31:41'),
(268, 'Suhada', '02', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:32:18', '2023-08-27 15:32:18'),
(269, 'Ery Susepto', '02', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 250000, '2023-03-26', '2023-08-27 15:33:30', '2023-08-27 15:33:30'),
(270, 'Adi Hari . S', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 300000, '2023-03-26', '2023-08-27 15:34:35', '2023-08-27 15:34:35'),
(271, 'H. Sahli', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:35:16', '2023-08-27 15:35:16'),
(272, 'H. Hambali', '03', '04', 'Blok BTN Abri Klangenan', 'zakat', 2000000, '2023-03-26', '2023-08-27 15:35:53', '2023-08-27 15:35:53'),
(273, 'Bapak Yano', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 100000, '2023-03-26', '2023-08-27 15:36:29', '2023-08-27 15:36:29'),
(274, 'H. Supandi', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 100000, '2023-03-26', '2023-08-27 15:37:25', '2023-08-27 15:37:25'),
(275, 'H. Yoyo. S', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:38:08', '2023-08-27 15:38:08'),
(276, 'Gogo Edi Suyanto Bin Tukiman', '03', '04', 'Blok BTN Abri Klangenan', 'zakat', 10000000, '2023-03-26', '2023-08-27 15:39:06', '2023-08-27 15:39:06'),
(277, 'Bapak Achyadi', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:39:49', '2023-08-27 15:39:49'),
(278, 'Bapak H. Topik', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 250000, '2023-03-26', '2023-08-27 15:40:28', '2023-08-27 15:40:28'),
(279, 'H. Oyon', '03', '04', 'Blok BTN Abri Klangenan', 'shodaqoh', 200000, '2023-03-26', '2023-08-27 15:40:57', '2023-08-27 15:40:57'),
(280, 'Suparjo', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:12:12', '2023-08-27 16:12:12'),
(281, 'Ridwan', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:12:45', '2023-08-27 16:12:45'),
(282, 'Riyan', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:13:18', '2023-08-27 16:13:18'),
(283, 'Hj. Encum', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:14:22', '2023-08-27 16:14:22'),
(284, 'Maman', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:15:43', '2023-08-27 16:15:43'),
(285, 'Eris', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:16:30', '2023-08-27 16:16:30'),
(286, 'Munaji. R', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:17:11', '2023-08-27 16:17:11'),
(287, 'Sukarjo', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:18:05', '2023-08-27 16:18:05'),
(288, 'Agus', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:18:42', '2023-08-27 16:18:42'),
(289, 'Basuni Sarmanah', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 200000, '2023-03-27', '2023-08-27 16:19:56', '2023-08-27 16:19:56'),
(290, 'Ibu Eny', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 200000, '2023-03-27', '2023-08-27 16:20:33', '2023-08-27 16:20:33'),
(291, 'Ibu Irma', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:21:08', '2023-08-27 16:21:08'),
(292, 'Edy', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 20000, '2023-03-27', '2023-08-27 16:21:43', '2023-08-27 16:21:43'),
(293, 'Siti Amidah', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 200000, '2023-03-27', '2023-08-27 16:22:34', '2023-08-27 16:22:34'),
(294, 'M. Nawawi', '01', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:23:24', '2023-08-27 16:23:24'),
(295, 'Bapak Supendi', '02', '05', 'Blok Wanagiri Klangenan', 'zakat', 250000, '2023-03-27', '2023-08-27 16:24:24', '2023-08-27 16:24:24'),
(296, 'Sudirman', '02', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:25:00', '2023-08-27 16:25:00'),
(297, 'Asep Jaelani', '02', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 30000, '2023-03-27', '2023-08-27 16:25:38', '2023-08-27 16:25:38'),
(298, 'Agus', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:26:18', '2023-08-27 16:26:18'),
(299, 'Bapak Kadira', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:26:59', '2023-08-27 16:26:59'),
(300, 'Sudari', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:27:33', '2023-08-27 16:27:33'),
(301, 'Eris', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:28:08', '2023-08-27 16:28:08'),
(302, 'Diyana', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 100000, '2023-03-27', '2023-08-27 16:28:50', '2023-08-27 16:28:50'),
(303, 'Marsono', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 50000, '2023-03-27', '2023-08-27 16:29:21', '2023-08-27 16:29:21'),
(304, 'H. Didi', '03', '05', 'Blok Wanagiri Klangenan', 'shodaqoh', 400000, '2023-03-27', '2023-08-27 16:30:05', '2023-08-27 16:30:05'),
(305, 'Rachmat. A', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:31:02', '2023-08-27 16:31:02'),
(306, 'H. Mujur', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:31:35', '2023-08-27 16:31:35'),
(307, 'H. Sutaryo', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:32:12', '2023-08-27 16:32:12'),
(308, 'H. Kudori', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2023-03-28', '2023-08-27 16:32:52', '2023-08-27 16:32:52'),
(309, 'Pak RT. Udin', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:33:32', '2023-08-27 16:33:32'),
(310, 'H. Suherman', '01', '05', 'Blok Perumahan Indogriya Klangenan', 'zakat', 150000, '2023-03-28', '2023-08-27 16:34:40', '2023-08-27 16:34:40'),
(311, 'Rohimin', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:35:40', '2023-08-27 16:35:40'),
(312, 'Sumini', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:36:16', '2023-08-27 16:36:16'),
(313, 'H. jajim', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 200000, '2023-03-28', '2023-08-27 16:36:57', '2023-08-27 16:36:57'),
(314, 'Jamal', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:37:32', '2023-08-27 16:37:32'),
(315, 'Eti Jamal', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:38:09', '2023-08-27 16:38:09'),
(316, 'Afrizal', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:38:47', '2023-08-27 16:38:47'),
(317, 'Ibu M. Rafi', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2023-03-28', '2023-08-27 16:39:31', '2023-08-27 16:39:31'),
(318, 'H. Agus', '02', '07', 'Blok Perumahan indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:40:15', '2023-08-27 16:40:15'),
(319, 'Bapak Sukardi', '02', '07', 'Blok Perumahan indogriya Klangenan', 'shodaqoh', 50000, '2023-03-28', '2023-08-27 16:40:57', '2023-08-27 16:40:57'),
(320, 'Suwondo', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:41:45', '2023-08-27 16:41:45'),
(321, 'H. Kaswinto', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:42:27', '2023-08-27 16:42:27'),
(322, 'Yasrizal', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 150000, '2023-03-28', '2023-08-27 16:43:06', '2023-08-27 16:43:06'),
(323, 'Sudarno', '01', '07', 'Blok Perumahan indogriya Klangenan', 'shodaqoh', 150000, '2023-03-28', '2023-08-27 16:43:49', '2023-08-27 16:43:49'),
(324, 'Nurhidayat', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2023-03-28', '2023-08-27 16:44:40', '2023-08-27 16:44:40'),
(325, 'Suwardi. H', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:45:21', '2023-08-27 16:45:21'),
(326, 'H. Sunika', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:46:04', '2023-08-27 16:46:04'),
(327, 'H. Didi Hartono', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:46:53', '2023-08-27 16:46:53'),
(328, 'H. Slamet', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 250000, '2023-03-28', '2023-08-27 16:47:31', '2023-08-27 16:47:31'),
(329, 'Tono', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 50000, '2023-03-28', '2023-08-27 16:48:50', '2023-08-27 16:48:50'),
(330, 'H. Teguh Budiono', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:49:38', '2023-08-27 16:49:38'),
(331, 'H. Taryono', '01', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 100000, '2023-03-28', '2023-08-27 16:50:18', '2023-08-27 16:50:18'),
(332, 'Murta', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 250000, '2023-03-28', '2023-08-27 16:50:57', '2023-08-27 16:50:57'),
(333, 'Gogo', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'zakat', 10000000, '2023-03-28', '2023-08-27 16:51:58', '2023-08-27 16:51:58'),
(334, 'Udin Syaefudin', '02', '07', 'Blok Perumahan Indogriya Klangenan', 'shodaqoh', 200000, '2023-03-28', '2023-08-27 16:52:48', '2023-08-27 16:52:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `photo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Berita Sismal ini telah terselenggarakan pada tanggal 22 juli 2023, peringatan 1 Muharrom tahun baru Hijriah 1445', '1692866186.png', 'kegiatan ini pembacaan Maulid Al Barzanji dan tausyiah, di hadiri oleh pengurus dan tokoh masyarakat setiap musholla Desa Klangenan.', '2023-08-24 08:36:26', '2023-08-24 08:36:26'),
(2, 'Kunjungan Pengurus DKM, Niliki mentas Hajji.', '1692866243.png', 'Bapak Hj. Jamal Al Budairi, S.Pd., M.Pd, selaku ketua DKMB Masjid Besar Miftahul Jannah beserta keluargannya telah sampai kembali di Indonesia pada tanggal 22 Juli 2023 dengan keadaan selamat, semoga menjadi Hajji yang mabrur dan diterima amal kebaikan nya.', '2023-08-24 08:37:23', '2023-08-24 08:37:23'),
(3, 'mengadakan Pendemsioneran Pengurus Masjid DKMB Masjid Besar Miftahul Jannah Desa Klangenan masa khidmat periode 2020-2023 dan pemilihan Pengurus masa khidmat 2023-2026.', '1692866662.png', 'Yang di hadiri oleh tokoh Masyarakat desa klangenan setiap blok RW 01-07, alhamdulillah berjalan dengan lancar. Kemudian untuk peresmian ke pengurusan akan dilaksanakan di acara memperingati Maulid Nabi Muhammad SAW 1445 H pada tanggal 10 Oktober 2023.', '2023-08-24 08:44:22', '2023-08-24 08:44:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint UNSIGNED NOT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `organizations`
--

INSERT INTO `organizations` (`id`, `pdf`, `created_at`, `updated_at`) VALUES
(1, '1692866070.pdf', '2023-08-24 08:34:30', '2023-08-24 08:34:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `receptions`
--

CREATE TABLE `receptions` (
  `id` bigint UNSIGNED NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priode` date NOT NULL,
  `number_people` double NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `receptions`
--

INSERT INTO `receptions` (`id`, `rw`, `priode`, `number_people`, `amount`, `created_at`, `updated_at`) VALUES
(2, '01', '2023-03-23', 38, 2660000, '2023-08-25 08:43:04', '2023-08-25 08:43:04'),
(3, '02', '2023-03-24', 60, 4830000, '2023-08-25 09:31:51', '2023-08-25 09:31:51'),
(4, '03', '2023-03-25', 70, 4900000, '2023-08-25 12:48:50', '2023-08-25 12:48:50'),
(5, '04', '2023-03-26', 28, 1960000, '2023-08-25 15:33:03', '2023-08-25 15:33:03'),
(6, '05', '2023-03-27', 68, 4760000, '2023-08-27 01:58:00', '2023-08-27 01:58:00'),
(7, '06', '2023-03-28', 29, 2030000, '2023-08-27 02:22:50', '2023-08-27 02:22:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`id`, `photo`, `is_active`, `created_at`, `updated_at`) VALUES
(2, '1692865745.png', 1, '2023-08-24 08:29:05', '2023-08-24 08:29:05'),
(3, '1692865981.jpg', 1, '2023-08-24 08:33:01', '2023-08-24 08:33:01'),
(4, '1692866003.jpg', 0, '2023-08-24 08:33:23', '2023-08-28 22:36:59'),
(5, '1693229808.jpg', 0, '2023-08-28 13:36:48', '2023-08-28 22:37:24'),
(6, '1693229828.jpg', 0, '2023-08-28 13:37:08', '2023-08-28 22:38:16'),
(7, '1693229839.jpg', 0, '2023-08-28 13:37:19', '2023-08-28 22:39:29'),
(8, '1693229857.jpg', 1, '2023-08-28 13:37:37', '2023-08-28 13:37:37'),
(9, '1693229869.jpg', 1, '2023-08-28 13:37:49', '2023-08-28 13:37:49'),
(10, '1693229887.jpg', 1, '2023-08-28 13:38:07', '2023-08-28 13:38:07'),
(11, '1693229913.jpg', 1, '2023-08-28 13:38:33', '2023-08-28 13:38:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahman', 'admin@mail.com', '2023-08-20 07:15:19', '$2y$10$yVY.XhYRD5Au.9QOoY7Y7e3aZRV33OFT9V0Fw8QnJG7X9WIQcC.vC', 'admin', '1rBkSdTTuimB74e6qacRlO0YacxF8r7kVKrqMl7hEHeVuFnNUzIZY3BpI2wU', '2023-08-20 07:15:19', '2023-08-24 09:26:40'),
(2, 'Petugas', 'user@mail.com', '2023-08-20 07:15:19', '$2y$10$FQG5d4HIiIVvxiObAfIzKuFMNajNgu50fA.7VlN26lxsgxLKLxCqe', 'user', '3yurChKqFsMn7yLu9rccYjk3cSXFTuDcyseTUfHUrBUVuvLUCy2LT5sFMMwI', '2023-08-20 07:15:19', '2023-08-24 09:27:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expenditure_mal`
--
ALTER TABLE `expenditure_mal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `guidelines`
--
ALTER TABLE `guidelines`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mustahik`
--
ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `muzaki`
--
ALTER TABLE `muzaki`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `receptions`
--
ALTER TABLE `receptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `approvals`
--
ALTER TABLE `approvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `expenditure_mal`
--
ALTER TABLE `expenditure_mal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guidelines`
--
ALTER TABLE `guidelines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `mustahik`
--
ALTER TABLE `mustahik`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT untuk tabel `muzaki`
--
ALTER TABLE `muzaki`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `receptions`
--
ALTER TABLE `receptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
