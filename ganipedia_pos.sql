-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 09:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ganipedia_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id` int(11) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jumlah_barang` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id`, `id_cabang`, `nama_cabang`, `alamat`, `jumlah_barang`, `created_at`, `updated_at`) VALUES
(1, 'CBIN01', 'Cabang Indramayu', 'Jl Dadap lama, Juntinyuat, Indramayu', 102, NULL, NULL),
(2, 'CBBDG01', 'Cabang Kota Bandung', 'Jl.Cigadung No.21, Cikutra, Bandunng', 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `Gambar`) VALUES
(1, 'bj.jpg'),
(3, 'celana.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fix_detail_order`
--

CREATE TABLE `fix_detail_order` (
  `id` int(11) NOT NULL,
  `id_transaction` int(11) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fix_detail_order`
--

INSERT INTO `fix_detail_order` (`id`, `id_transaction`, `id_barang`, `id_cabang`, `id_user`, `nama_barang`, `kategori`, `harga`, `jumlah`, `total`, `satuan`, `created_at`) VALUES
(242, 661, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-14 09:21:48'),
(243, 661, '2184300', 'CBG123', '1', 'Kecap', 'Makanan', 3000, 1, 3000, 'pcs', '2022-10-14 09:21:48'),
(244, 661, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-14 09:21:48'),
(245, 2859, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-15 06:46:23'),
(246, 2859, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-15 06:46:23'),
(247, 1415, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-15 07:51:04'),
(248, 1415, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-15 07:51:04'),
(249, 2910, '1478550', 'CBG123', '12', 'mie geprek pedas', 'Mie', 120000, 2, 240000, 'bks', '2023-06-22 06:38:59'),
(250, 2910, '1478550', 'CBG123', '12', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2023-06-22 06:38:59'),
(251, 9527, '1478550', 'CBG123', '13', 'mie geprek pedas', 'Mie', 120000, 3, 360000, 'bks', '2023-06-22 09:19:19'),
(252, 5475, '1478550', 'CBG123', '13', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2023-06-22 14:05:38'),
(253, 5157, '1840110', 'CBBDG01', '13', 'Bolu Susu Lembang', 'Makanan', 30000, 1, 30000, 'pcs', '2023-06-23 23:56:39'),
(254, 8791, '1840110', 'CBBDG01', '13', 'Bolu Susu Lembang', 'Makanan', 30000, 1, 30000, 'pcs', '2023-06-24 08:17:24'),
(255, 4078, '1840110', 'CBBDG01', '14', 'Bolu Susu Lembang', 'Makanan', 30000, 1, 30000, 'pcs', '2023-06-24 08:18:07'),
(256, 9276, '1840110', 'CBBDG01', '13', 'Bolu Susu Lembang', 'Makanan', 30000, 1, 30000, 'pcs', '2023-06-24 08:19:36'),
(257, 3931, '1909980', 'CBBDG01', '13', 'Telur Ayam 1 Kg', 'Sembako', 31000, 1, 31000, 'kg', '2023-06-25 01:31:00'),
(258, 6757, '2682060', 'CBBDG01', '13', 'Laptop Lenovo Ideapad 330', 'Elektronik', 7000000, 1, 7000000, 'bks', '2023-06-25 03:02:54'),
(259, 3386, '1909980', 'CBBDG01', '13', 'Telur Ayam 1 Kg', 'Sembako', 31000, 1, 31000, 'kg', '2023-06-25 03:05:29'),
(260, 349, '2288130', 'CBBDG01', '13', 'Bolu Susu Lembang', 'Makanan', 32000, 1, 32000, 'pcs', '2023-06-25 13:50:11'),
(261, 253, '2924850', 'CBIN01', '15', 'Detol Body Wash', 'Sabun', 37000, 1, 37000, 'pcs', '2023-06-25 13:51:43'),
(262, 8762, '1478550', 'CBIN01', '14', 'Indomie Aayam Geprek', 'Mie', 3000, 2, 6000, 'pcs', '2023-06-26 06:37:43'),
(263, 8762, '391290', 'CBIN01', '14', 'Aqua', 'Minuman', 3500, 2, 7000, 'btl', '2023-06-26 06:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
('KTG1110', 'Sampo', '2022-08-14 19:46:53', '2022-08-14 19:46:53'),
('KTG150', 'Mie', '2022-08-14 19:46:25', '2022-08-14 19:46:25'),
('KTG1530', 'Minuman', '2022-08-14 19:39:59', '2022-08-14 19:39:59'),
('KTG180', 'Rokok', '2023-06-24 08:29:08', '2023-06-24 08:29:08'),
('KTG2190', 'Sabun', '2022-08-14 19:47:09', '2022-08-14 19:47:09'),
('KTG2370', 'Sembako', '2023-06-24 08:27:37', '2023-06-24 08:27:37'),
('KTG2940', 'Elekteronik', '2022-08-14 19:46:03', '2022-08-14 19:46:03'),
('KTG2970', 'Makanan', '2023-06-24 08:21:14', '2023-06-24 08:21:14'),
('KTG990', 'Peralatan Sekolah', '2023-06-25 23:31:15', '2023-06-25 23:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_09_023529_create_sessions_table', 1),
(7, '2022_08_09_044527_create_products_table', 1),
(8, '2022_08_10_035731_create_kategoris_table', 1),
(9, '2022_08_11_071212_create_satuans_table', 1),
(10, '2022_08_11_080151_create_cabangs_table', 1),
(11, '2022_08_11_095506_create_supliers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_cabang` varchar(30) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ganyramadhan29@gmail.com', '$2y$10$5gI9KxoED/W7G5IK517ZKup5yXZb9Ejum1ReMcS1Q.AE4zHjg6rfi', '2023-06-22 01:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `id_suplier` varchar(20) NOT NULL,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `gambar`, `kategori`, `harga_beli`, `harga_jual`, `profit`, `stok`, `satuan`, `id_cabang`, `keterangan`, `id_suplier`, `kode_penjualan`, `kode_pembelian`, `created_at`, `updated_at`) VALUES
('1150530', 'Samsung J7 Prime', NULL, 'Elekteronik', 1800000, 19000000, 17200000, 5, 'Pilih Satuan', 'CBBDG01', 'Samsung J7 Prime', 'SPL1290', 'T01', 'B01', '2023-06-24 09:06:01', '2023-06-24 09:06:01'),
('1478550', 'Indomie Aayam Geprek', NULL, 'Mie', 2500, 3000, 500, 13, 'pcs', 'CBIN01', 'Mie Indomie Ayam Geprek', 'SPL1950', 'T01', 'B01', '2022-08-14 20:04:10', '2022-08-14 20:04:10'),
('1803030', 'Gatsby Eau de Parfum', NULL, 'Parfum', 23000, 28000, 5000, 8, 'btl', 'CBIN01', 'Gatsby Eau de Parfum, Parfum Pria Tahan Lama', 'SPL1290', 'T01', 'B01', '2023-06-25 07:06:12', '2023-06-25 07:06:12'),
('1909980', 'Telur Ayam 1 Kg', NULL, 'Sembako', 26000, 31000, 5000, 18, 'kg', 'CBBDG01', 'Telur Ayam Segar 1 Kilogram', 'SPL690', 'T01', 'B01', '2023-06-24 08:43:34', '2023-06-24 08:43:34'),
('2288130', 'Bolu Susu Lembang', NULL, 'Makanan', 25000, 32000, 7000, 14, 'pcs', 'CBBDG01', NULL, 'SPL1950', NULL, NULL, '2023-06-24 09:27:45', '2023-06-24 09:27:45'),
('2682060', 'Laptop Lenovo Ideapad 330', NULL, 'Elekteronik', 6000000, 7000000, 500000, 7, 'unit', 'CBBDG01', 'Laptop Lenovo Ideapad 330', 'SPL1290', 'T01', 'B01', '2023-06-24 09:04:28', '2023-06-24 09:04:28'),
('391290', 'Aqua', NULL, 'Minuman', 3000, 3500, 500, 18, 'btl', 'CBIN01', 'Testing', 'SPL1290', 'T01', 'B01', '2023-06-25 23:34:29', '2023-06-25 23:34:29'),
('815670', 'Le Minerale', NULL, 'Minuman', 27000, 32000, 5000, 20, 'btl', 'CBIN01', 'Air Minum Le Mineral', 'SPL690', 'T01', 'B01', '2023-06-24 09:13:11', '2023-06-24 09:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` varchar(20) NOT NULL,
  `nama_satuan` varchar(255) NOT NULL,
  `nama_asli` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `nama_satuan`, `nama_asli`, `created_at`, `updated_at`) VALUES
('STN1950', 'pcs', 'picis', '2022-08-14 19:52:01', '2022-08-14 19:52:01'),
('STN2910', 'ltr', 'liter', '2023-06-24 08:30:28', '2023-06-24 08:30:28'),
('STN2940', 'kg', 'Kilogram', '2023-06-24 08:32:34', '2023-06-24 08:32:34'),
('STN30', 'bks', 'Bungkus', '2022-08-14 19:51:32', '2022-08-14 19:51:32'),
('STN420', 'btl', 'Botol', '2022-08-14 19:53:04', '2022-08-14 19:53:04'),
('STN780', 'kds', 'Kardus', '2022-08-14 19:53:25', '2022-08-14 19:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RYyjhT7zZQUmetO38y4SdUkUawdweMG3HnBiEhHO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxObGdvaHRDSW1zRU9ZTWFDRnlnNnVBeXZSMHB5N0o0eWRmQlhUcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1687763396);

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_suplier` varchar(255) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL,
  `alamat_suplier` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`id`, `id_suplier`, `nama_suplier`, `alamat_suplier`, `tlp`, `created_at`, `updated_at`) VALUES
(8, 'SPL1290', 'Herlinda', 'Jl Musholla Nurul Huda, Dadap Baru, Juntinyuat, Indramayu', '083878624771', '2023-06-24 09:09:49', '2023-06-24 09:09:49'),
(9, 'SPL690', 'Feby', 'Jl.Cigadung No.21, Cikutra, Bandunng', '089882771882', '2023-06-25 06:57:32', '2023-06-25 06:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_transaction` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `cashback` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_transaction`, `id_cabang`, `id_user`, `total`, `cash`, `cashback`, `created_at`) VALUES
(1, '349', 'CBBDG01', '13', 32000, 35000, 3000, '2023-06-25 13:50:11'),
(2, '253', 'CBIN01', '15', 37000, 40000, 3000, '2023-06-25 13:51:43'),
(3, '8762', 'CBIN01', '14', 13000, 15000, 2000, '2023-06-26 06:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `id_cabang` varchar(20) DEFAULT NULL,
  `user_level` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `id_cabang`, `user_level`, `created_at`, `updated_at`) VALUES
(13, 'Admin', 'admin@main.com', 'L', NULL, '$2y$10$7sMVhwl26SlrnrLdZ/Cjt.QWWvB4GpBXTrhsSsVomhqjH2pRz0NjC', NULL, NULL, NULL, 'GtyRY5uJpr3o6QGZQYK5oLsFXeCwDtlARiHsp5a2EuLtPMrZIpI2ujT0wZNo', NULL, NULL, 'CBBDG01', '1', NULL, NULL),
(14, 'Kasir Bandung', 'kasirbdg@main.com', 'L', NULL, '$2y$10$r9jO/sp74PtK9ryJAiWD2.Y42S3bsuzqBr/yGtwwDFA3gNiWZWkjK', NULL, NULL, NULL, NULL, NULL, NULL, 'CBBDG01', '2', NULL, NULL),
(15, 'Kasir Indramayu', 'kasirind@gmail.com', 'L', NULL, '$2y$10$AZFcwvIpREDysIU/DDcEBORCYdp6E1YOFXCDdFFoWejm5fXkWyBlO', NULL, NULL, NULL, NULL, NULL, NULL, 'CBIN01', '2', '2023-06-22 01:53:35', '2023-06-22 01:53:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
