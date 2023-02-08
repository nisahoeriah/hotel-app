-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2022 pada 14.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$SdXQZBaPWf9qn5SPnzWA1.hD47C.578pL/rbsw5e5rhGqlpADTNg6', NULL, '2022-04-15 17:57:49', '2022-04-15 17:57:49'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$fKjLlcvmXMT5tSYr.QStbuikvJyRIIWREC1Cj413JByJG0yNlwllK', NULL, '2022-04-15 17:57:49', '2022-04-15 17:57:49'),
(3, 'Hayabusa', 'haya', 'resepsionis', '$2y$10$vGSxwa3Tto69FMzQ6uZhau0SmByQaJ.8fP3nuHrnBu5a9ZljLw/Ba', NULL, '2022-04-15 17:57:49', '2022-04-15 17:57:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', '370_1650078961.jpg', 'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.'),
(2, 'Restoran', NULL, 'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.'),
(3, 'Parkir Luas', NULL, 'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.'),
(4, 'Sarapan Pagi Gratis', NULL, 'Sed cursus vitae tellus at maximus. Phasellus eleifend laoreet odio, sit amet volutpat erat accumsan a. Suspendisse id lacinia sem, at cursus nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam ac nisi in urna laoreet dignissim. Sed malesuada blandit ligula a fermentum. Curabitur ullamcorper vulputate finibus. Maecenas hendrerit varius lacinia. Duis id nunc a dolor vehicula faucibus et non ante. In dui erat, facilisis sed ultricies sit amet, egestas vitae neque. Suspendisse bibendum posuere consectetur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ac euismod nulla. Sed non lacus id felis malesuada vehicula sit amet ac ipsum. Integer sem nulla, viverra ut faucibus ut, porttitor nec mauris.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_kamars`
--

INSERT INTO `fasilitas_kamars` (`id`, `kamar_id`, `nama_fasilitas_kamar`) VALUES
(1, 1, 'TV'),
(2, 1, 'AC'),
(3, 2, 'TV'),
(4, 2, 'AC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'DeluxeRoom', '64_1650078887.jpg', 10, 603340, 'Dolore provident quas et sequi sed harum asperiores reprehenderit. Ducimus ut temporibus ea dolore libero voluptas quia illo.'),
(2, 'possimus', NULL, 5, 321623, 'Tempora reprehenderit sed quos voluptatem inventore doloribus iste voluptatem. Maxime expedita asperiores est eaque. Consectetur nesciunt illo ut qui vel ab.'),
(3, 'fuga', NULL, 5, 583705, 'Optio alias animi rerum omnis. Est est et similique illo vero molestiae. Ab enim voluptatem voluptatem omnis.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_07_135443_create_admins_table', 1),
(3, '2022_04_10_231710_create_kamars_table', 1),
(4, '2022_04_13_152732_create_fasilitas_kamars_table', 1),
(5, '2022_04_14_054257_create_fasilitas_hotels_table', 1),
(6, '2022_04_14_134914_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `kamar_id`, `tgl_checkin`, `tgl_checkout`, `jum_kamar_dipesan`, `nama_pemesan`, `email_pemesan`, `no_hp`, `nama_tamu`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-04-15', '2022-04-16', 2, 'Casper Fisher PhD', 'jon.volkman@gmail.com', '+1.954.264.0992', 'Mrs. Nicole Pollich PhD', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(2, 2, '2022-04-16', '2022-04-18', 1, 'Brittany Bruen DVM', 'donnie.tremblay@gmail.com', '+1.206.274.4925', 'Gabriella Legros', 'pesan', '2022-04-14 17:00:00', '2022-04-14 17:00:00'),
(3, 2, '2022-04-15', '2022-04-16', 1, 'Ms. Shanel Glover', 'reyes.romaguera@gmail.com', '765.886.8918', 'Connor Gorczany', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(4, 1, '2022-04-12', '2022-04-14', 2, 'Daisha Goldner', 'yundt.linda@gmail.com', '928.630.8919', 'Ms. Heather Von Jr.', 'pesan', '2022-04-08 17:00:00', '2022-04-08 17:00:00'),
(5, 3, '2022-04-15', '2022-04-17', 1, 'Jacquelyn Johns', 'caleigh.gorczany@yahoo.com', '+1-346-247-6702', 'Fabiola Kohler', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(6, 1, '2022-04-15', '2022-04-17', 2, 'Mrs. Blanche Olson', 'logan.mcclure@gmail.com', '+1 (440) 420-6362', 'Elissa Ratke', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(7, 3, '2022-04-21', '2022-04-23', 1, 'Billie Koss', 'colleen.marks@yahoo.com', '325-678-3998', 'Seamus Purdy', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(8, 1, '2022-04-21', '2022-04-24', 1, 'Wendy Gibson DDS', 'kuhlman.elda@hotmail.com', '1-940-342-7233', 'Mrs. Jazmin Howell', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(9, 2, '2022-04-21', '2022-04-22', 2, 'Dr. Mallory Leuschke Jr.', 'izaiah.wolff@yahoo.com', '608-281-6837', 'Chet King Jr.', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(10, 1, '2022-04-22', '2022-04-23', 2, 'Mrs. Lois Hintz', 'robert.hudson@gmail.com', '(240) 294-3863', 'Bertram Lehner DDS', 'pesan', '2022-04-20 17:00:00', '2022-04-20 17:00:00'),
(11, 3, '2022-04-17', '2022-04-18', 2, 'Queen Feest', 'simeon.mertz@yahoo.com', '(475) 974-8047', 'Prof. Christiana Dibbert DVM', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(12, 1, '2022-04-21', '2022-04-23', 2, 'Genoveva Collins', 'bednar.nathanial@gmail.com', '+18328674975', 'Breanne Tillman', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(13, 1, '2022-04-21', '2022-04-23', 1, 'Dr. Gardner Mante', 'demetrius09@hotmail.com', '(480) 576-6217', 'Clinton Nienow', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(14, 1, '2022-04-17', '2022-04-20', 2, 'Mr. Cade Shields', 'ora.tremblay@yahoo.com', '(808) 532-9040', 'Caterina Kihn', 'pesan', '2022-04-14 17:00:00', '2022-04-14 17:00:00'),
(15, 3, '2022-04-14', '2022-04-17', 2, 'Will Ryan', 'hollie94@gmail.com', '(980) 566-3531', 'Dr. Clair Bosco IV', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(16, 1, '2022-04-16', '2022-04-17', 1, 'Caesar Moen', 'river.schamberger@gmail.com', '+1-484-337-1653', 'Eladio Rau', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(17, 3, '2022-04-22', '2022-04-25', 1, 'Verdie Treutel', 'edythe41@yahoo.com', '1-630-590-8442', 'Blake Lind', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(18, 2, '2022-04-17', '2022-04-20', 1, 'Lenna Dooley', 'godfrey.smitham@gmail.com', '331.702.3477', 'Prof. Flossie Corwin MD', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(19, 3, '2022-04-22', '2022-04-23', 1, 'Tyrell Parisian', 'rogers38@hotmail.com', '+1 (828) 948-4695', 'Miss Alberta Rau I', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(20, 3, '2022-04-21', '2022-04-22', 2, 'Prof. Keon Rowe DVM', 'bvandervort@gmail.com', '650.749.1486', 'Noemy Prosacco', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(21, 2, '2022-04-13', '2022-04-15', 2, 'Mr. Rowland Greenholt I', 'mschaden@hotmail.com', '+1 (754) 598-0317', 'Mr. Barney Hermann Jr.', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(22, 1, '2022-04-11', '2022-04-14', 1, 'Mr. Trace Gleichner II', 'connelly.ceasar@gmail.com', '1-201-935-3532', 'Ford Koss', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(23, 3, '2022-04-11', '2022-04-12', 2, 'Lydia Champlin', 'bernhard85@yahoo.com', '351-666-5442', 'Prof. Martine Schuppe DDS', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(24, 1, '2022-04-14', '2022-04-17', 2, 'Jeromy Powlowski', 'kelton.walter@hotmail.com', '+1.947.458.4913', 'Dortha Brakus', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(25, 2, '2022-04-21', '2022-04-22', 1, 'Bertha Greenholt', 'casper.birdie@yahoo.com', '541.693.5791', 'Mckenna O\'Kon', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(26, 1, '2022-04-14', '2022-04-15', 1, 'Prof. Jamel Smith', 'mya.greenfelder@yahoo.com', '1-754-992-4056', 'Rhoda Bradtke', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(27, 2, '2022-04-12', '2022-04-15', 1, 'Elta DuBuque', 'sandrine.herman@hotmail.com', '+1-678-355-2091', 'Eldred Orn', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(28, 3, '2022-04-21', '2022-04-24', 2, 'Prof. Donato Wolf', 'trevion26@yahoo.com', '1-940-436-5635', 'Prof. Sebastian Kris III', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(29, 2, '2022-04-13', '2022-04-15', 2, 'Dr. Mauricio Von MD', 'yrippin@hotmail.com', '+1.423.852.5927', 'Prof. German Leffler', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(30, 2, '2022-04-16', '2022-04-17', 2, 'Shemar VonRueden', 'ubaldo.gutkowski@yahoo.com', '+1-716-622-0795', 'Miss Kelly Aufderhar DVM', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(31, 3, '2022-04-12', '2022-04-15', 2, 'Maybelle Bartell', 'ricky.wuckert@hotmail.com', '+1-276-371-7360', 'Dr. Bonnie Barrows', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(32, 1, '2022-04-11', '2022-04-14', 2, 'Gage Frami', 'gerry.sanford@yahoo.com', '+1 (541) 888-5936', 'Prof. Pansy Raynor II', 'pesan', '2022-04-07 17:00:00', '2022-04-07 17:00:00'),
(33, 3, '2022-04-22', '2022-04-24', 2, 'Jabari Carter', 'boehm.naomi@hotmail.com', '929-902-7777', 'Elton McKenzie', 'pesan', '2022-04-19 17:00:00', '2022-04-19 17:00:00'),
(34, 3, '2022-04-10', '2022-04-11', 1, 'Mr. Michael Pollich', 'stone63@hotmail.com', '346-743-4364', 'Mr. Randy Gleichner', 'pesan', '2022-04-06 17:00:00', '2022-04-06 17:00:00'),
(35, 3, '2022-04-09', '2022-04-10', 1, 'Ceasar Bins', 'elenor.lueilwitz@yahoo.com', '1-515-742-8493', 'Mr. Abelardo Grant', 'pesan', '2022-04-07 17:00:00', '2022-04-07 17:00:00'),
(36, 1, '2022-04-20', '2022-04-21', 1, 'Tess Kohler', 'rokuneva@hotmail.com', '805-684-0239', 'Dr. Fabian Bashirian', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(37, 1, '2022-04-14', '2022-04-15', 2, 'Hilda Parker', 'marcus10@gmail.com', '1-908-699-2951', 'Miss Sarai Rosenbaum DVM', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(38, 2, '2022-04-11', '2022-04-13', 2, 'Kaela Lesch Jr.', 'bednar.cullen@gmail.com', '(484) 629-1229', 'Perry Wisozk', 'pesan', '2022-04-07 17:00:00', '2022-04-07 17:00:00'),
(39, 3, '2022-04-13', '2022-04-15', 1, 'Hunter Sawayn IV', 'hipolito65@gmail.com', '+1.330.838.7948', 'Otis Schowalter', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(40, 1, '2022-04-13', '2022-04-16', 1, 'Ms. Mona Schoen MD', 'barton.ernestina@gmail.com', '+1 (810) 730-7276', 'Augusta Ortiz', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(41, 3, '2022-04-22', '2022-04-24', 1, 'Prof. Asa Reilly Jr.', 'kuhic.skye@gmail.com', '845-713-5131', 'Mr. Donato McKenzie', 'pesan', '2022-04-19 17:00:00', '2022-04-19 17:00:00'),
(42, 1, '2022-04-19', '2022-04-21', 1, 'Alberta Gusikowski I', 'aurore66@hotmail.com', '+1-580-522-5140', 'Rosa Dickinson', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(43, 2, '2022-04-17', '2022-04-18', 2, 'Jacques Hoeger', 'agrant@hotmail.com', '(580) 730-1174', 'Polly Mueller', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(44, 3, '2022-04-14', '2022-04-15', 2, 'Ruthie Morissette', 'ubatz@hotmail.com', '432-424-1440', 'Sabryna Funk', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(45, 3, '2022-04-15', '2022-04-16', 1, 'Turner Schaefer', 'armstrong.deshaun@yahoo.com', '1-520-996-4221', 'Prof. Annabell Kunze II', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(46, 2, '2022-04-12', '2022-04-13', 1, 'Marvin Paucek DDS', 'cathryn.gusikowski@yahoo.com', '321-364-7316', 'Prof. Dejah Hickle', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(47, 1, '2022-04-16', '2022-04-17', 2, 'Prof. Franco Schuster', 'kyler86@gmail.com', '915.298.1284', 'Candida Smitham II', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(48, 3, '2022-04-12', '2022-04-14', 1, 'Mathew Raynor', 'muller.ramon@gmail.com', '(754) 767-1455', 'Mrs. Chyna Bernier Sr.', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(49, 2, '2022-04-21', '2022-04-23', 2, 'Dr. William Pagac', 'zieme.conner@gmail.com', '+1-480-704-9181', 'Jazlyn Goodwin', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(50, 1, '2022-04-13', '2022-04-15', 1, 'Cecelia Kerluke', 'santos38@gmail.com', '1-734-335-3366', 'Albin Maggio', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(51, 2, '2022-04-20', '2022-04-23', 2, 'Noemie Lindgren IV', 'tlockman@hotmail.com', '+1.941.229.9199', 'Dr. Robbie Mante III', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(52, 2, '2022-04-15', '2022-04-17', 1, 'Berenice Hamill III', 'zcorkery@gmail.com', '1-217-761-2638', 'Eloise Harvey', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(53, 1, '2022-04-22', '2022-04-23', 1, 'Dr. Agustin Turcotte', 'watsica.chyna@gmail.com', '(254) 660-0520', 'Dessie Kuhic', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(54, 3, '2022-04-11', '2022-04-12', 1, 'Edwina Maggio', 'william63@hotmail.com', '541.350.4074', 'Domingo Sipes', 'pesan', '2022-04-07 17:00:00', '2022-04-07 17:00:00'),
(55, 1, '2022-04-18', '2022-04-21', 1, 'Marianne Schiller', 'mbeahan@hotmail.com', '1-321-224-1922', 'Zack Daugherty', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(56, 3, '2022-04-19', '2022-04-20', 2, 'Mr. Thomas Sipes', 'marta.farrell@hotmail.com', '(669) 597-9148', 'Linwood Legros', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(57, 1, '2022-04-13', '2022-04-16', 1, 'Mr. Diego D\'Amore', 'layla.kilback@gmail.com', '+1 (336) 500-0621', 'Hailey Kshlerin', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(58, 3, '2022-04-10', '2022-04-13', 1, 'Scarlett Schaden III', 'crystal43@yahoo.com', '+1 (315) 620-6666', 'Dr. Roman Halvorson III', 'pesan', '2022-04-08 17:00:00', '2022-04-08 17:00:00'),
(59, 1, '2022-04-16', '2022-04-18', 2, 'Bridget Lueilwitz PhD', 'ashton.ernser@yahoo.com', '+1.239.817.6552', 'Alysson Dicki', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(60, 2, '2022-04-12', '2022-04-15', 2, 'Marianna Roob', 'mgerlach@gmail.com', '1-669-466-5723', 'Prof. Laverne Sanford Sr.', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(61, 2, '2022-04-11', '2022-04-12', 1, 'Vella Schulist', 'oswaldo89@gmail.com', '+1 (903) 365-3534', 'Trudie Ebert', 'pesan', '2022-04-08 17:00:00', '2022-04-08 17:00:00'),
(62, 1, '2022-04-14', '2022-04-16', 1, 'Cara Emard', 'zcormier@gmail.com', '+1-434-293-4206', 'Jamaal Mante', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(63, 3, '2022-04-13', '2022-04-15', 2, 'Nat Marvin', 'santos.kuhn@gmail.com', '1-351-255-1314', 'Dr. Murray Brown', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(64, 2, '2022-04-17', '2022-04-19', 1, 'Ernest Bahringer V', 'kathleen70@hotmail.com', '+17149222494', 'Jamar Runte Jr.', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(65, 3, '2022-04-14', '2022-04-15', 2, 'Prof. Anahi Bins', 'kyler74@gmail.com', '380-258-0108', 'Miss Gwen Prohaska', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(66, 2, '2022-04-17', '2022-04-18', 2, 'Kayley Spinka', 'okeefe.raven@yahoo.com', '+1.973.599.3364', 'Fabiola Hessel', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(67, 3, '2022-04-11', '2022-04-12', 1, 'Isai Kilback MD', 'weldon18@hotmail.com', '(360) 946-0527', 'Ismael Kris', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(68, 1, '2022-04-20', '2022-04-23', 2, 'Mr. Selmer Marvin', 'wkutch@hotmail.com', '769.499.7266', 'Dr. Brandt Ebert I', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(69, 3, '2022-04-18', '2022-04-19', 2, 'Jacquelyn Dicki MD', 'uwintheiser@gmail.com', '(740) 726-5390', 'Althea Farrell', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(70, 2, '2022-04-17', '2022-04-20', 2, 'Astrid Kub', 'sporer.mathilde@yahoo.com', '1-272-656-2672', 'Josianne Fay', 'pesan', '2022-04-13 17:00:00', '2022-04-13 17:00:00'),
(71, 1, '2022-04-19', '2022-04-22', 1, 'Laverna Rolfson', 'nfadel@gmail.com', '+1 (781) 513-7410', 'Jamarcus Waelchi PhD', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(72, 2, '2022-04-13', '2022-04-14', 1, 'Barrett Schulist', 'wava07@hotmail.com', '385.356.2902', 'Dr. Irving Herman DVM', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(73, 1, '2022-04-14', '2022-04-16', 1, 'Brycen Brekke', 'sawayn.milan@gmail.com', '+1.747.219.2676', 'Brenda Gaylord', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(74, 3, '2022-04-18', '2022-04-19', 1, 'Dr. Eusebio Aufderhar MD', 'mpouros@gmail.com', '(971) 274-1455', 'Delbert Schmitt', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(75, 3, '2022-04-20', '2022-04-23', 1, 'Erich Stoltenberg DVM', 'simonis.anabel@gmail.com', '1-740-488-2908', 'Miss Jewell Russel DVM', 'pesan', '2022-04-16 17:00:00', '2022-04-16 17:00:00'),
(76, 3, '2022-04-18', '2022-04-20', 1, 'Darlene Schaden', 'margarette.greenfelder@yahoo.com', '(503) 632-7694', 'Dedrick Aufderhar', 'pesan', '2022-04-16 17:00:00', '2022-04-16 17:00:00'),
(77, 3, '2022-04-22', '2022-04-25', 2, 'Joana Wisozk', 'tquigley@gmail.com', '+1-843-941-7064', 'Weston Adams', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(78, 2, '2022-04-16', '2022-04-18', 1, 'Samson Pfeffer', 'deondre32@hotmail.com', '801.541.0461', 'Daphne Ferry', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(79, 3, '2022-04-10', '2022-04-13', 1, 'Dillon Hamill', 'delfina29@yahoo.com', '380.327.7890', 'Emmitt Sauer', 'pesan', '2022-04-08 17:00:00', '2022-04-08 17:00:00'),
(80, 3, '2022-04-13', '2022-04-16', 2, 'Marcelino Rutherford', 'schamberger.thomas@hotmail.com', '(678) 904-6104', 'Cordie Kessler', 'pesan', '2022-04-10 17:00:00', '2022-04-10 17:00:00'),
(81, 2, '2022-04-09', '2022-04-11', 1, 'Giovanni Kutch', 'juliet70@gmail.com', '+1-617-627-3615', 'Earnest Schumm', 'pesan', '2022-04-05 17:00:00', '2022-04-05 17:00:00'),
(82, 1, '2022-04-18', '2022-04-19', 1, 'Louisa Boyle II', 'dwiza@gmail.com', '1-351-841-1484', 'Rylee Sawayn Jr.', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(83, 1, '2022-04-16', '2022-04-17', 1, 'Jerrell Nienow', 'prohaska.ursula@hotmail.com', '229.419.7227', 'Travon Romaguera', 'pesan', '2022-04-14 17:00:00', '2022-04-14 17:00:00'),
(84, 2, '2022-04-13', '2022-04-15', 1, 'Mrs. Nyasia Hayes III', 'margret.ziemann@hotmail.com', '+1-704-442-3808', 'Josiane McKenzie', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(85, 1, '2022-04-11', '2022-04-13', 2, 'Eli Monahan', 'christiana27@gmail.com', '+18282308081', 'Devonte Thompson', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(86, 3, '2022-04-13', '2022-04-16', 2, 'Zita McDermott Sr.', 'bethel.kihn@hotmail.com', '+1-847-979-1172', 'Arjun Crona', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(87, 2, '2022-04-15', '2022-04-16', 1, 'Germaine Fisher', 'hhills@hotmail.com', '309-512-6802', 'Raina Boyer', 'pesan', '2022-04-12 17:00:00', '2022-04-12 17:00:00'),
(88, 3, '2022-04-17', '2022-04-18', 2, 'Neha O\'Reilly', 'fokeefe@yahoo.com', '573.572.1984', 'Rick Stanton', 'pesan', '2022-04-15 17:00:00', '2022-04-15 17:00:00'),
(89, 3, '2022-04-13', '2022-04-14', 1, 'Prof. Janessa Schmidt Jr.', 'isobel10@gmail.com', '(347) 341-1366', 'Willy Waters IV', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(90, 1, '2022-04-11', '2022-04-13', 1, 'Sunny Spinka', 'reyna.parker@gmail.com', '432.661.7804', 'Gideon Hartmann Jr.', 'pesan', '2022-04-09 17:00:00', '2022-04-09 17:00:00'),
(91, 1, '2022-04-13', '2022-04-14', 1, 'Mrs. Abigail Maggio', 'klocko.eric@hotmail.com', '910.218.4007', 'Elouise Armstrong', 'pesan', '2022-04-11 17:00:00', '2022-04-11 17:00:00'),
(92, 2, '2022-04-10', '2022-04-12', 1, 'Miss Avis Littel', 'mosciski.torey@hotmail.com', '281.895.3869', 'Dr. Helen Monahan', 'pesan', '2022-04-06 17:00:00', '2022-04-06 17:00:00'),
(93, 2, '2022-04-10', '2022-04-11', 2, 'Prof. Matt Trantow', 'edmond79@gmail.com', '(940) 618-9576', 'Emanuel Bartoletti PhD', 'pesan', '2022-04-06 17:00:00', '2022-04-06 17:00:00'),
(94, 3, '2022-04-19', '2022-04-21', 2, 'Dr. Onie Wisozk I', 'shanahan.easton@yahoo.com', '(276) 420-9025', 'Bret Ward', 'pesan', '2022-04-17 17:00:00', '2022-04-17 17:00:00'),
(95, 3, '2022-04-10', '2022-04-12', 2, 'Mr. Kobe Koss', 'rylan.kulas@hotmail.com', '512.641.1343', 'Alisa Barton Jr.', 'pesan', '2022-04-08 17:00:00', '2022-04-08 17:00:00'),
(96, 1, '2022-04-11', '2022-04-14', 2, 'Tito Hodkiewicz', 'ashly45@yahoo.com', '680.318.8743', 'Conrad Bednar', 'pesan', '2022-04-07 17:00:00', '2022-04-07 17:00:00'),
(97, 3, '2022-04-22', '2022-04-25', 1, 'Mrs. Asha Nicolas I', 'joey.gleichner@yahoo.com', '1-341-720-8855', 'Tod Schmitt', 'pesan', '2022-04-20 17:00:00', '2022-04-20 17:00:00'),
(98, 1, '2022-04-22', '2022-04-24', 2, 'Emerson Cole MD', 'shaniya.tremblay@yahoo.com', '985-484-2663', 'Prof. Leilani Wisoky I', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(99, 3, '2022-04-18', '2022-04-20', 2, 'Nona Goyette MD', 'autumn09@hotmail.com', '862-552-9048', 'Mr. Arturo Kohler', 'pesan', '2022-04-14 17:00:00', '2022-04-14 17:00:00'),
(100, 2, '2022-04-21', '2022-04-22', 1, 'Tito Wilkinson', 'grover63@gmail.com', '+1.940.758.4719', 'Ms. Kaylee Wolff', 'pesan', '2022-04-18 17:00:00', '2022-04-18 17:00:00'),
(101, 1, '2022-04-19', '2022-04-20', 1, 'Siti', 'siti@gamil.com', '086453673687', 'Siti', 'pesan', '2022-04-17 15:30:49', '2022-04-17 15:30:49'),
(102, 1, '2022-04-19', '2022-04-20', 1, 'Siti', 'siti@gamil.com', '3254896532', 'Siti', 'pesan', '2022-04-18 00:31:25', '2022-04-18 00:31:25'),
(103, 2, '2022-04-20', '2022-04-22', 5, 'Nisa', 'nisa@gmail.com', '437572359216', 'Nisa', 'pesan', '2022-04-18 04:45:06', '2022-04-18 04:45:06'),
(104, 2, '2022-04-20', '2022-04-21', 3, 'Dodo Sidodo', 'dodo@gmail.com', '453465792654', 'Dodo', 'pesan', '2022-04-19 09:02:05', '2022-04-19 09:02:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
