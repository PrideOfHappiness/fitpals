-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2023 pada 15.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitpals`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_us`
--

CREATE TABLE `about_us` (
  `aboutUsID` varchar(10) NOT NULL,
  `locationID` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_gym` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_us`
--

INSERT INTO `about_us` (`aboutUsID`, `locationID`, `deskripsi`, `foto_gym`, `created_at`, `updated_at`) VALUES
('AUI2913034', 'LOA001Y360', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1969px-Laravel.svg.png', '2023-12-11 15:05:13', '2023-12-11 15:05:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akuntansi`
--

CREATE TABLE `akuntansi` (
  `akunID` varchar(20) NOT NULL,
  `kodeID_debet` varchar(4) NOT NULL,
  `kodeID_kredit` varchar(4) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jumlah_debet` int(11) NOT NULL,
  `jumlah_kredit` int(11) NOT NULL,
  `user_input` varchar(10) NOT NULL,
  `user_ubah` varchar(10) DEFAULT NULL,
  `token_ubah_data_akun` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `akuntansi`
--

INSERT INTO `akuntansi` (`akunID`, `kodeID_debet`, `kodeID_kredit`, `deskripsi`, `jumlah_debet`, `jumlah_kredit`, `user_input`, `user_ubah`, `token_ubah_data_akun`, `created_at`, `updated_at`) VALUES
('AK0001DES1', '111', '301', 'Modal Awal', 200000000, 200000000, 'K000000001', NULL, NULL, '2023-12-11 15:10:54', '2023-12-11 15:10:54'),
('AK0001DES7', '111', '411', 'Pendapatan tanggal 9 Desember 2023', 55000000, 55000000, 'K000000001', NULL, NULL, '2023-12-11 15:12:23', '2023-12-11 15:12:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `attendanceID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `kelasID` varchar(10) DEFAULT NULL,
  `datetime_masuk` datetime NOT NULL,
  `datetime_kelas_masuk` datetime DEFAULT NULL,
  `datetime_keluar` datetime DEFAULT NULL,
  `datetime_kelas_keluar` datetime DEFAULT NULL,
  `attendance_token` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`attendanceID`, `userID`, `kelasID`, `datetime_masuk`, `datetime_kelas_masuk`, `datetime_keluar`, `datetime_kelas_keluar`, `attendance_token`, `created_at`, `updated_at`) VALUES
('1FDJJ30D3Q', 'A000000001', NULL, '2023-12-12 12:19:45', NULL, NULL, NULL, 'Acc4sa47nod4lxJ8iQ8vuZePstAyOqd0MU5a7NXKONzbzUi09q5U49tWAuVG1yLDtOZvcmikB6sFhM2lDokqWIRwiegRMENQ8KfT', '2023-12-12 05:19:45', '2023-12-12 05:19:45'),
('GKAJ9XQCWD', 'A000000001', NULL, '2023-12-11 20:55:09', NULL, '2023-12-11 20:55:28', NULL, 'ZUkzZvyPJHG5tG9VANoGLGaRWyw1cnOsnicJVSCRSerUc3E3vYyJgkSp1upP6SWTnhlsGIs2z1CHsxpnfHhksGctK2GQhQcsmDan', '2023-12-11 13:55:09', '2023-12-11 13:55:28'),
('PWROWINCOZ', 'A000000001', NULL, '2023-12-11 11:17:16', NULL, NULL, NULL, 'pNHLzZFumYrSoaQU99czskReuaFVifO2klYQClaQ15DdyKMb2iop2YuH6HnrRaSEbRIoanKf8IXJqhAEM1qG6FKAQ2nVuDU3JQC2', '2023-12-11 04:17:16', '2023-12-11 04:17:16'),
('SRKO4A3ONB', 'A000000001', NULL, '2023-12-11 11:16:42', NULL, NULL, NULL, '6kE4ZyaddwdCbNpV2nPUAids6eHWdBPiFfYFe2Ok1tpUC6BkrZF74umocgem6cSiMQntH2aFoMhsdQ6kKiFVX1RUTR7eLXTem5qJ', '2023-12-11 04:16:42', '2023-12-11 04:16:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance_privat`
--

CREATE TABLE `attendance_privat` (
  `attendancePrivatID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `kelasID` varchar(10) NOT NULL,
  `datetime_masuk` datetime NOT NULL,
  `datetime_keluar` datetime NOT NULL,
  `attendance_token` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `foto_progress`
--

CREATE TABLE `foto_progress` (
  `fotoID` bigint(20) UNSIGNED NOT NULL,
  `progressID` varchar(255) NOT NULL,
  `namaFile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_users`
--

CREATE TABLE `foto_users` (
  `fotoUsersID` bigint(20) UNSIGNED NOT NULL,
  `userID` varchar(255) NOT NULL,
  `namaFile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `foto_users`
--

INSERT INTO `foto_users` (`fotoUsersID`, `userID`, `namaFile`, `created_at`, `updated_at`) VALUES
(1, 'TR001DJSHG', 'main-qimg-95474603dad2483fa094a55e5e893acf-lq.jpeg', '2023-12-11 04:13:46', '2023-12-11 04:13:46'),
(2, 'TR002ASPD2', 'sddefault.jpg', '2023-12-15 13:49:50', '2023-12-15 13:49:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kelasID` varchar(10) NOT NULL,
  `trainerID` varchar(10) NOT NULL,
  `trainerID2` varchar(10) DEFAULT NULL,
  `trainerID3` varchar(10) DEFAULT NULL,
  `ruangID` varchar(10) DEFAULT NULL,
  `locationID` varchar(10) NOT NULL,
  `id_pembuat` varchar(10) NOT NULL,
  `id_otorisasi` varchar(10) DEFAULT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `hari_pelaksanaan` date NOT NULL,
  `jam_awal` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `jenis_kelas` enum('Umum','Privat') NOT NULL,
  `kuota_peserta` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kelasID`, `trainerID`, `trainerID2`, `trainerID3`, `ruangID`, `locationID`, `id_pembuat`, `id_otorisasi`, `nama_kelas`, `hari_pelaksanaan`, `jam_awal`, `jam_akhir`, `jenis_kelas`, `kuota_peserta`, `status`, `created_at`, `updated_at`) VALUES
('KL29Y00001', 'TU736O678', NULL, NULL, 'RAYB000002', 'LOA001Y360', 'A000000001', NULL, 'Yoga', '2023-12-18', '08:00:00', '09:00:00', 'Umum', 20, 'Sudah Diverifikasi Admin', '2023-12-11 04:16:30', '2023-12-11 23:21:15'),
('KL53Z00001', 'TU736O678', NULL, NULL, 'RAYB000002', 'LOA001Y360', 'A000000001', NULL, 'Zumba', '2023-12-14', '08:00:00', '09:00:00', 'Umum', 20, 'Menunggu Verifikasi Admin', '2023-12-11 23:11:40', '2023-12-11 23:11:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_akun`
--

CREATE TABLE `kode_akun` (
  `kode_akun` varchar(4) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kode_akun`
--

INSERT INTO `kode_akun` (`kode_akun`, `nama_akun`, `created_at`, `updated_at`) VALUES
('111', 'Kas', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('112', 'Wesel Tagih', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('113', 'Piutang Usaha', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('114', 'Perlengkapan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('115', 'Iklan Dibayar Di Muka', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('116', 'Sewa Bayar Di Muka', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('117', 'Asuransi Bayar Di Muka', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('121', 'Tanah', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('122', 'Bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('123', 'Akumulasi Penyusutan Bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('124', 'Peralatan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('125', 'Akumulasi Penyusutan Peralatan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('130', 'Investasi Jangka Panjang', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('141', 'Hak Cipta', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('142', 'Hak Merek', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('211', 'Hutang Usaha', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('212', 'Hutang Gaji', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('213', 'Hutang Bank', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('214', 'Hutang Pajak', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('215', 'Hutang Wesel Tagih', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('216', 'Hutang Biaya', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('221', 'Hutang Hipotek', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('301', 'Modal', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('302', 'Prive', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('411', 'Pendapatan Usaha', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('412', 'Pendapatan Jasa', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('413', 'Pendapatan Bunga', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('414', 'Pendapatan lain-lain', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('511', 'Beban gaji', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('512', 'Beban tagihan air', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('513', 'Beban tagihan listrik', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('514', 'Beban pajak pertambahan nilai', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('515', 'Beban pajak bumi dan bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('516', 'Beban pajak penghasilan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('517', 'Beban pemeliharaan bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('518', 'Beban pemeliharaan peralatan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('519', 'Beban penyusutan bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('520', 'Beban penyusutan peralatan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('521', 'Beban sewa bangunan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('522', 'Beban asuransi', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('523', 'Beban iklan', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('524', 'Beban bunga', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('525', 'Beban tagihan telepon dan internet', '2023-12-11 03:12:31', '2023-12-11 03:12:31'),
('526', 'Beban lain-lain', '2023-12-11 03:12:31', '2023-12-11 03:12:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_laporan_kelas`
--

CREATE TABLE `kriteria_laporan_kelas` (
  `kriteriaID` varchar(10) NOT NULL,
  `namaKriteria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `latihan`
--

CREATE TABLE `latihan` (
  `latihanID` varchar(10) NOT NULL,
  `namaLatihan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `latihan`
--

INSERT INTO `latihan` (`latihanID`, `namaLatihan`, `created_at`, `updated_at`) VALUES
('LTA0000001', 'Bahu', '2023-12-11 14:32:53', '2023-12-11 14:32:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `latihan_spesialisasi`
--

CREATE TABLE `latihan_spesialisasi` (
  `spesialisasiID` varchar(10) NOT NULL,
  `trainerID` varchar(10) NOT NULL,
  `latihanID` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `locationID` varchar(10) NOT NULL,
  `namaLokasi` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`locationID`, `namaLokasi`, `alamat`, `no_telp`, `created_at`, `updated_at`) VALUES
('LOA001Y360', 'Test Location 1', 'Jl. Letjen Sutoyo 83 Mojosongo, Jebres, Kota Surakarta, Jawa Tengah 57127', '085700088831', '2023-12-11 03:12:22', '2023-12-11 03:12:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `memberID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `masa_langganan` varchar(50) NOT NULL,
  `tanggal_awal_langganan` datetime NOT NULL,
  `tanggal_akhir_langganan` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_09_061229_create_locations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_11_09_062103_create_latihan_table', 1),
(8, '2023_11_09_062435_create_kode_akun_table', 1),
(9, '2023_11_09_133512_create_trainer_table', 1),
(10, '2023_11_09_142953_create_foto_users_table', 1),
(11, '2023_11_09_143701_create_member_table', 1),
(12, '2023_11_09_144025_create_ruang_table', 1),
(13, '2023_11_09_144432_create_about_us_table', 1),
(14, '2023_11_09_144716_create_promo_table', 1),
(15, '2023_11_09_144723_create_akuntansi_table', 1),
(16, '2023_11_09_144728_create_pesan_table', 1),
(17, '2023_11_09_192144_create_kelas_create', 1),
(18, '2023_11_09_192307_create_pembayaran_create', 1),
(19, '2023_11_09_192320_create_latihan_spesialisasi_create', 1),
(20, '2023_11_09_192342_create_kriteria_laporan_kelas_create', 1),
(21, '2023_11_10_203555_create_pemesanan_table', 1),
(22, '2023_11_10_203603_create_progress_kelas_table', 1),
(23, '2023_11_10_203616_create_attendance_table', 1),
(24, '2023_11_10_203622_create_attendance_privat_table', 1),
(25, '2023_11_10_203636_create_foto_progress_table', 1),
(26, '2023_11_24_142858_create_traffic_login_table', 1),
(27, '2023_11_24_150902_create_q_r_codes_table', 1),
(28, '2023_12_12_164754_add_data_to__q_r_codes_table', 2),
(29, '2023_12_12_172241_add_data_to_q_r_codes_table', 3),
(30, '2023_12_19_200500_add_nama_file_to_q_r_codes_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaranID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `salesID` varchar(10) NOT NULL,
  `referral_code` varchar(30) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_bayar` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `pemesananID` varchar(255) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `kelasID` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `pesanID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `salesID` varchar(10) NOT NULL,
  `isi_pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress_kelas`
--

CREATE TABLE `progress_kelas` (
  `progressID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `kelasID` varchar(10) NOT NULL,
  `kriteria` varchar(10) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `promoID` varchar(10) NOT NULL,
  `userID_pembuat` varchar(10) NOT NULL,
  `userID_penerima` varchar(10) DEFAULT NULL,
  `kode_promo` varchar(30) NOT NULL,
  `nama_promo` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `locationID` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`promoID`, `userID_pembuat`, `userID_penerima`, `kode_promo`, `nama_promo`, `deskripsi`, `tanggal_mulai`, `tanggal_akhir`, `locationID`, `created_at`, `updated_at`) VALUES
('CJLSV9FJB9', 'A000000001', NULL, 'FITPALS01', 'Promo Awal Tahun Fitpals', 'Gunakan kode FITPALS01 untuk menikmati diskon 50 % untuk setiap pembayaran paket. Dapatkan tambahan diskon 30 % untuk setiap pengguna baru.', '2023-12-31', '2024-01-10', NULL, '2023-12-11 23:24:55', '2023-12-11 23:32:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `q_r_codes`
--

CREATE TABLE `q_r_codes` (
  `QRcode_code` varchar(255) NOT NULL,
  `kelasID` varchar(255) NOT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `datetime_used` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(255) NOT NULL,
  `namaFile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `q_r_codes`
--

INSERT INTO `q_r_codes` (`QRcode_code`, `kelasID`, `userID`, `status`, `datetime_used`, `created_at`, `updated_at`, `data`, `namaFile`) VALUES
('0KIVTUYIQK90UH1DOTFK', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:49:31', '2023-12-12 05:49:31', '', ''),
('0ZHN5XC8KGJNDXVRBJTZ', 'KL29Y00001', NULL, 'Baru', '2023-12-20 14:53:58', '2023-12-20 07:53:58', '2023-12-20 07:53:58', '0ZHN5XC8KGJNDXVRBJTZ', 'qrCodes_1703058838.jpg'),
('14MV6uBQKO', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:41:05', '2023-12-23 09:41:05', '14MV6uBQKO', 'Yoga'),
('18NZ0DI9W6XAZCQIAQ6U', 'KL29Y00001', NULL, 'Baru', '2023-12-19 12:58:32', '2023-12-19 05:58:32', '2023-12-19 05:58:32', '18NZ0DI9W6XAZCQIAQ6U', ''),
('2MMLWLYUD68XKYR0ERR5', 'KL29Y00001', NULL, 'Baru', '2023-12-19 12:58:01', '2023-12-19 05:58:01', '2023-12-19 05:58:01', '2MMLWLYUD68XKYR0ERR5', ''),
('2NBQBGPIDMBBMZAQVTA5', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:51:41', '2023-12-12 09:51:41', '', ''),
('2ZJ8OX4CJVFTCIFJWWJU', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:19:43', '2023-12-12 10:19:43', '2023-12-12 10:19:43', '', ''),
('30MPMIQGXJTSFAOEVGGN', 'KL29Y00001', NULL, 'Baru', '2023-12-12 16:56:36', '2023-12-12 09:56:36', '2023-12-12 09:56:36', '', ''),
('3POGQ1SNEOSUM39CGHPD', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:25:32', '2023-12-12 09:25:32', '', ''),
('4JULzTKObh', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:30:23', '2023-12-23 09:30:23', '4JULzTKObh', 'Yogapng'),
('525W8A5FSAUOPIMLBLBW', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:21:51', '2023-12-12 05:21:51', '', ''),
('6I7wCiY9Fr', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:58:01', '2023-12-23 09:58:01', '6I7wCiY9Fr', 'Yoga'),
('6M1GGTMALRCOGMOIKGM6', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:31:44', '2023-12-18 12:31:44', '2023-12-18 12:31:44', '6M1GGTMALRCOGMOIKGM6', ''),
('6PAy1Jw66x', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 05:40:58', '2023-12-23 05:40:58', '6PAy1Jw66x', '00.png'),
('6vvMOAjTUo', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 12:26:42', '2023-12-23 12:26:42', '6vvMOAjTUo', 'Yoga_LOA001Y360_ITdLG.png'),
('6XBTJQJLDUFHKGVP9GTB', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:32:21', '2023-12-18 12:32:21', '2023-12-18 12:32:21', '6XBTJQJLDUFHKGVP9GTB', ''),
('7H87FZARAPAMUFYZVMRM', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:24:23', '2023-12-12 09:24:23', '', ''),
('A9VASDVVKRR6XP68J0HK', 'KL29Y00001', NULL, 'Baru', '2023-12-19 20:18:32', '2023-12-19 13:18:32', '2023-12-19 13:18:32', 'A9VASDVVKRR6XP68J0HK', 'qrCodes_1702991912.jpg'),
('AEYUHQNOK74HLBFH7ZTE', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:22:05', '2023-12-12 09:22:05', '', ''),
('AN5QJ54KDTBV8YCJK6R9', 'KL29Y00001', NULL, 'Baru', '2023-12-20 15:06:38', '2023-12-20 08:06:38', '2023-12-20 08:06:38', 'AN5QJ54KDTBV8YCJK6R9', 'qrCodes_1703059598.jpg'),
('ART0mqZRh9', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:34:16', '2023-12-23 09:34:16', 'ART0mqZRh9', 'Yogapng'),
('AWZ6SGUJTHVJ7CT58ZCU', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:48:11', '2023-12-12 05:48:11', '', ''),
('B620XBKLWDM9IPYPDTVO', 'KL29Y00001', NULL, 'Baru', '2023-12-19 20:18:12', '2023-12-19 13:18:12', '2023-12-19 13:18:12', 'B620XBKLWDM9IPYPDTVO', 'qrCodes_1702991892.jpg'),
('BA1FXYMKWBA8LXV0Z0TO', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:37:31', '2023-12-18 12:37:31', '2023-12-18 12:37:31', 'BA1FXYMKWBA8LXV0Z0TO', ''),
('BDCJO4SQYMAEYMLJ6MOS', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:48:43', '2023-12-12 05:48:43', '', ''),
('BFQ1EYMB41E96EY76IFE', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:56:27', '2023-12-19 12:56:27', '2023-12-19 12:56:27', 'BFQ1EYMB41E96EY76IFE', ''),
('BhqSs2iZ3w', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 06:23:38', '2023-12-23 06:23:38', 'BhqSs2iZ3w', '00.png'),
('BR17R1t9nQ', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:17:37', '2023-12-23 10:17:37', 'BR17R1t9nQ', 'Yoga_LOA001Y360_HFUyT.png'),
('BRV5QWU1YN8GRBKDRKA7', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:09:51', '2023-12-12 10:09:51', '2023-12-12 10:09:51', '', ''),
('BYFZEVK7JOK7AKHG7KI6', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:53:38', '2023-12-12 09:53:38', '', ''),
('CJN7CPTUSU8NIFJYDCSV', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:57:14', '2023-12-19 12:57:14', '2023-12-19 12:57:14', 'CJN7CPTUSU8NIFJYDCSV', ''),
('DCIdUsdfmR', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:36:38', '2023-12-23 10:36:38', 'DCIdUsdfmR', 'Yoga_LOA001Y360_u1fM0.png'),
('dcmZdmsKxl', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:36:20', '2023-12-23 09:36:20', 'dcmZdmsKxl', 'Yoga.png'),
('DFJRPnwkmA', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:35:11', '2023-12-23 09:35:11', 'DFJRPnwkmA', 'Yoga.png'),
('DZS4YDV51YEXRIQTZECU', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:24:23', '2023-12-12 10:24:23', '2023-12-12 10:24:23', 'DZS4YDV51YEXRIQTZECU', ''),
('E6GBYVCSQRUMDJM33WV2', 'KL29Y00001', NULL, 'Baru', '2023-12-20 14:53:45', '2023-12-20 07:53:45', '2023-12-20 07:53:45', 'E6GBYVCSQRUMDJM33WV2', 'qrCodes_1703058825.jpg'),
('EJNNVHU1IKRZN51QP1CK', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-11 04:22:32', '2023-12-11 04:22:32', '', ''),
('EXEUCATTMLIG9L4TYHHS', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:18:08', '2023-12-12 10:18:08', '2023-12-12 10:18:08', '', ''),
('f3rYEZjjoo', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 12:30:55', '2023-12-23 12:30:55', 'f3rYEZjjoo', 'Yoga_LOA001Y360_ru7t4.png'),
('FAM818MB02YEI08LXVDM', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:51:14', '2023-12-12 09:51:14', '', ''),
('FFC3F2OJZHLPQ2JVCMFT', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:55:40', '2023-12-19 12:55:40', '2023-12-19 12:55:40', 'FFC3F2OJZHLPQ2JVCMFT', ''),
('FGTMTEAFOQJYQCG1R8T7', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:34:20', '2023-12-12 09:34:20', '', ''),
('FNFBXIOSAIXJGACQOR8U', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:22:45', '2023-12-12 05:22:45', '', ''),
('FNNB5Jfz8O', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:52:58', '2023-12-23 09:52:58', 'FNNB5Jfz8O', 'Yoga'),
('FRT3RY03ABMPQLBMKQM8', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:40:50', '2023-12-12 09:40:50', '', ''),
('G0PWDZM6BKCHGFQMHCSK', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:52:17', '2023-12-19 12:52:17', '2023-12-19 12:52:17', 'G0PWDZM6BKCHGFQMHCSK', ''),
('Gc21sjVej7', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:41:22', '2023-12-23 09:41:22', 'Gc21sjVej7', 'Yoga'),
('gREJOnOCBU', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 12:25:43', '2023-12-23 12:25:43', 'gREJOnOCBU', 'Yoga_LOA001Y360_T3Uz8.png'),
('GTTBXJSKOWPVF595YCZH', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:55:22', '2023-12-19 12:55:22', '2023-12-19 12:55:22', 'GTTBXJSKOWPVF595YCZH', ''),
('GYJY5QP9JRV6ETUJYMDS', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:48:57', '2023-12-12 05:48:57', '', ''),
('HFIUKZXKVVAUTNF0UWWM', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:23:08', '2023-12-12 05:23:08', '', ''),
('hFLnEc87e8', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:10:19', '2023-12-23 10:10:19', 'hFLnEc87e8', 'Yoga_LOA001Y360_4LkxA.png'),
('HJIVD94RBXSAZASO4HU6', 'KL29Y00001', NULL, 'Baru', '2023-12-19 13:02:43', '2023-12-19 06:02:43', '2023-12-19 06:02:43', 'HJIVD94RBXSAZASO4HU6', ''),
('HPSY0TTAPJJ69FOY97EH', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-11 04:22:05', '2023-12-11 04:22:05', '', ''),
('i4b72VPj17', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 05:41:20', '2023-12-23 05:41:20', 'i4b72VPj17', '00.png'),
('I6Z0KKK40GZVECCVOB2S', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:23:26', '2023-12-12 05:23:26', '', ''),
('IJPUGJRCU2ZUBRXOSKZP', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:47:48', '2023-12-12 05:47:48', '', ''),
('IKDS18OWCPW7YOFTBDTX', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:04:09', '2023-12-12 10:04:09', '2023-12-12 10:04:09', '', ''),
('ITXFBXRBGO4PFRCX4L7X', 'KL29Y00001', NULL, 'Baru', '2023-12-19 13:18:15', '2023-12-19 06:18:15', '2023-12-19 06:18:15', 'ITXFBXRBGO4PFRCX4L7X', ''),
('IVB4LRWKGVKXJIA3XESG', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:21:13', '2023-12-18 12:21:13', '2023-12-18 12:21:13', 'IVB4LRWKGVKXJIA3XESG', ''),
('JALG8XZMKMQNJQSRP1WS', 'KL29Y00001', NULL, 'Baru', '2023-12-19 13:24:17', '2023-12-19 06:24:17', '2023-12-19 06:24:17', 'JALG8XZMKMQNJQSRP1WS', ''),
('JEWDNL5YUI0SQLI7IMS6', 'KL29Y00001', NULL, 'Baru', '2023-12-20 15:09:35', '2023-12-20 08:09:35', '2023-12-20 08:09:35', 'JEWDNL5YUI0SQLI7IMS6', 'qrCodes_1703059775.jpg'),
('jhRKUQHd27', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:30:51', '2023-12-23 09:30:51', 'jhRKUQHd27', 'Yogapng'),
('JQ5NOKYNCDLUVTVLGX81', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:39:26', '2023-12-19 08:39:26', '2023-12-19 08:39:26', 'JQ5NOKYNCDLUVTVLGX81', ''),
('jqXP3CapNs', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:20:37', '2023-12-23 10:20:37', 'jqXP3CapNs', 'Yoga_LOA001Y360_exCyd.png'),
('JWMEHUOSVMNK2MRJ8SMD', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:24:26', '2023-12-12 05:24:26', '', ''),
('KLKIRXGWWARKRKJZGPKR', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:13:11', '2023-12-12 10:13:11', '2023-12-12 10:13:11', '', ''),
('KSPNKDU91AZ7VXR573AK', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:23:39', '2023-12-12 05:23:39', '', ''),
('l3zXoWhLLO', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:06:25', '2023-12-23 10:06:25', 'l3zXoWhLLO', 'Yoga.png'),
('LNFS40FXXOAQOCHW0E6X', 'KL29Y00001', NULL, 'Baru', '2023-12-12 16:56:14', '2023-12-12 09:56:14', '2023-12-12 09:56:14', '', ''),
('LS7HBYARVFWOAJRATOTL', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:30:34', '2023-12-18 12:30:34', '2023-12-18 12:30:34', 'LS7HBYARVFWOAJRATOTL', ''),
('MpftIJzkfC', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:36:39', '2023-12-23 09:36:39', 'MpftIJzkfC', 'Yoga'),
('MR2C1JUAKZGGY4WHXHDR', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:20:48', '2023-12-18 12:20:48', '2023-12-18 12:20:48', 'MR2C1JUAKZGGY4WHXHDR', ''),
('N3NWT4LJMARQCTIUSQNO', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:46:27', '2023-12-12 05:46:27', '', ''),
('NGHAVXSKRXMIOVO5TLRH', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:24:13', '2023-12-12 10:24:13', '2023-12-12 10:24:13', 'NGHAVXSKRXMIOVO5TLRH', ''),
('NGPQMKWYQ5GYQONVSHPT', 'KL29Y00001', NULL, 'Baru', '2023-12-19 20:26:05', '2023-12-19 13:26:05', '2023-12-19 13:26:05', 'NGPQMKWYQ5GYQONVSHPT', 'qrCodes_1702992365.jpg'),
('NL3S9BX2TZKHM8MPHH98', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:42:13', '2023-12-19 08:42:13', '2023-12-19 08:42:13', 'NL3S9BX2TZKHM8MPHH98', ''),
('NNEVSP5BTVEZ7ODPAOZW', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:41:21', '2023-12-19 08:41:21', '2023-12-19 08:41:21', 'NNEVSP5BTVEZ7ODPAOZW', ''),
('nwjkVEQO8E', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:14:36', '2023-12-23 10:14:36', 'nwjkVEQO8E', 'Yoga_LOA001Y360_xUPqR.png'),
('O8EDGP8GGGZ4TDHIPLFF', 'KL29Y00001', NULL, 'Baru', '2023-12-19 12:27:53', '2023-12-19 05:27:53', '2023-12-19 05:27:53', 'O8EDGP8GGGZ4TDHIPLFF', ''),
('OB7R072OOZVRETDTYEL3', 'KL29Y00001', NULL, 'Baru', '2023-12-18 20:05:47', '2023-12-18 13:05:47', '2023-12-18 13:05:47', 'OB7R072OOZVRETDTYEL3', ''),
('OKBPPLXAYTNTD96KNRGC', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:35:17', '2023-12-18 12:35:17', '2023-12-18 12:35:17', 'OKBPPLXAYTNTD96KNRGC', ''),
('oXEXkHHwy4', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:43:51', '2023-12-23 09:43:51', 'oXEXkHHwy4', 'Yoga'),
('P1C4JUKAD6XZEMIX6VMK', 'KL29Y00001', NULL, 'Baru', '2023-12-19 20:26:21', '2023-12-19 13:26:21', '2023-12-19 13:26:21', 'P1C4JUKAD6XZEMIX6VMK', 'qrCodes_1702992381.jpg'),
('P7HAAWHCXWLEB5PXI8MC', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-11 04:22:15', '2023-12-11 04:22:15', '', ''),
('PHDJH0RCAUGJFA82T92U', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:30:38', '2023-12-18 12:30:38', '2023-12-18 12:30:38', 'PHDJH0RCAUGJFA82T92U', ''),
('POB6SJURAOHPS587DFFF', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:43:51', '2023-12-12 09:43:51', '', ''),
('QH0vIKfYXt', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:06:12', '2023-12-23 10:06:12', 'QH0vIKfYXt', 'Yoga.png'),
('qp5CUZmeQd', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 05:41:28', '2023-12-23 05:41:28', 'qp5CUZmeQd', '00.png'),
('QSJABGIZEMPCVAKATK5S', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:34:22', '2023-12-18 12:34:22', '2023-12-18 12:34:22', 'QSJABGIZEMPCVAKATK5S', ''),
('qvvI2LH547', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 05:41:36', '2023-12-23 05:41:36', 'qvvI2LH547', '00.png'),
('R564VEYSC6PSHK7UFFJF', 'KL29Y00001', NULL, 'Baru', '2023-12-12 16:59:37', '2023-12-12 09:59:37', '2023-12-12 09:59:37', '', ''),
('R5GCHJ7DOA97H6DIUH51', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:25:05', '2023-12-12 05:25:05', '', ''),
('RDMH0ZL1DTH4PB3IOSHS', 'KL29Y00001', NULL, 'Baru', '2023-12-18 19:34:41', '2023-12-18 12:34:41', '2023-12-18 12:34:41', 'RDMH0ZL1DTH4PB3IOSHS', ''),
('rNQeWPvybL', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:40:48', '2023-12-23 09:40:48', 'rNQeWPvybL', 'Yoga'),
('RPLQGHQVRZSP8NCCC0VQ', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:47:05', '2023-12-12 05:47:05', '', ''),
('RW3e85bv8h', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 12:30:29', '2023-12-23 12:30:29', 'RW3e85bv8h', 'Yoga_LOA001Y360_53aQp.png'),
('SNV1LJKBX8FEMPMQJRMC', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:39:17', '2023-12-19 08:39:17', '2023-12-19 08:39:17', 'SNV1LJKBX8FEMPMQJRMC', ''),
('TCSMFGZTDEUFHKDTXHNT', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:59:49', '2023-12-19 12:59:49', '2023-12-19 12:59:49', 'TCSMFGZTDEUFHKDTXHNT', ''),
('TL1V0UYQBOWIMUT6P2XI', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 09:50:50', '2023-12-12 09:50:50', '', ''),
('tSDB4DlHC0', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:57:28', '2023-12-23 09:57:28', 'tSDB4DlHC0', ' '),
('TWBF9v8Hox', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:49:22', '2023-12-23 09:49:22', 'TWBF9v8Hox', 'Yoga'),
('u6E4RCjoE7', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 05:46:42', '2023-12-23 05:46:42', 'u6E4RCjoE7', '00.png'),
('uI7P3Z4Mvh', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:25:37', '2023-12-23 10:25:37', 'uI7P3Z4Mvh', 'Yoga_LOA001Y360_MXrEl.png'),
('UJ5OBJOTHQPDHNMNS0Q9', 'KL29Y00001', NULL, 'Baru', '2023-12-12 17:02:35', '2023-12-12 10:02:35', '2023-12-12 10:02:35', '', ''),
('UKVKEKCBHPFBZ19LJ87V', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:45:06', '2023-12-12 05:45:06', '', ''),
('V6XXJQN8EWEWJ91KV8YT', 'KL29Y00001', NULL, 'Baru', '2023-12-12 16:56:53', '2023-12-12 09:56:53', '2023-12-12 09:56:53', '', ''),
('VDDRRYK0SYDZFFZ16DGB', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:48:17', '2023-12-19 08:48:17', '2023-12-19 08:48:17', 'VDDRRYK0SYDZFFZ16DGB', ''),
('VPK3KHPVV69721AK63ZY', 'KL29Y00001', NULL, 'Baru', '2023-12-19 20:14:48', '2023-12-19 13:14:48', '2023-12-19 13:14:48', 'VPK3KHPVV69721AK63ZY', 'qrCodes_1702991688.png'),
('VPT7BO6OHYLJIE3UJLGY', 'KL29Y00001', NULL, 'Baru', '2023-12-19 19:51:06', '2023-12-19 12:51:06', '2023-12-19 12:51:06', 'VPT7BO6OHYLJIE3UJLGY', ''),
('WOCPT6IMDCYIGVFVYQSM', 'KL29Y00001', NULL, 'Baru', '2023-12-19 12:26:33', '2023-12-19 05:26:33', '2023-12-19 05:26:33', 'WOCPT6IMDCYIGVFVYQSM', ''),
('XO9GV4RDHBJVKKVRNIZZ', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-12 05:22:26', '2023-12-12 05:22:26', '', ''),
('xWRmrMvb7X', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:09:40', '2023-12-23 10:09:40', 'xWRmrMvb7X', 'Yoga_LOA001Y360_mObH6.png'),
('yK74cjP9eD', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 08:43:21', '2023-12-23 08:43:21', 'yK74cjP9eD', 'Yogapng'),
('yKgXYWnVA4', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:19:27', '2023-12-23 10:19:27', 'yKgXYWnVA4', 'Yoga_LOA001Y360_OU4Lz.png'),
('YTST9DYBMLGBPFA24TKN', 'KL29Y00001', NULL, 'Baru', NULL, '2023-12-11 04:22:42', '2023-12-11 04:22:42', '', ''),
('ZcKVD68YAT', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 09:55:19', '2023-12-23 09:55:19', 'ZcKVD68YAT', 'Yoga'),
('ZeK6EfRuHV', 'KL29Y00001', 'A000000001', 'Baru', NULL, '2023-12-23 10:04:35', '2023-12-23 10:04:35', 'ZeK6EfRuHV', 'Yoga'),
('ZGBCGLC4SY2MMBE5H2YU', 'KL29Y00001', NULL, 'Baru', '2023-12-19 15:37:53', '2023-12-19 08:37:53', '2023-12-19 08:37:53', 'ZGBCGLC4SY2MMBE5H2YU', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `ruangID` varchar(10) NOT NULL,
  `locationID` varchar(10) NOT NULL,
  `namaRuang` varchar(100) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `fasilitas` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`ruangID`, `locationID`, `namaRuang`, `kapasitas`, `fasilitas`, `created_at`, `updated_at`) VALUES
('RAYB000002', 'LOA001Y360', 'Yoga A', 20, 'Radio, 20 Set Lagu Yoga, 20 Matras Yoga', '2023-12-11 04:15:59', '2023-12-11 04:15:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `traffic_login`
--

CREATE TABLE `traffic_login` (
  `trafficID` bigint(20) UNSIGNED NOT NULL,
  `userID` varchar(255) NOT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `traffic_login`
--

INSERT INTO `traffic_login` (`trafficID`, `userID`, `login`, `logout`, `created_at`, `updated_at`) VALUES
(1, 'A000000001', '2023-12-11 10:41:34', NULL, '2023-12-11 03:41:34', '2023-12-11 03:41:34'),
(2, 'A000000001', NULL, '2023-12-11 10:41:34', '2023-12-11 03:41:34', '2023-12-11 03:41:34'),
(3, 'A000000001', '2023-12-11 10:41:34', NULL, '2023-12-11 03:41:34', '2023-12-11 03:41:34'),
(4, 'A000000001', NULL, '2023-12-11 10:41:34', '2023-12-11 03:41:34', '2023-12-11 03:41:34'),
(5, 'A000000001', '2023-12-11 11:12:55', NULL, '2023-12-11 04:12:55', '2023-12-11 04:12:55'),
(6, 'A000000001', NULL, '2023-12-11 11:12:55', '2023-12-11 04:12:55', '2023-12-11 04:12:55'),
(7, 'A000000001', '2023-12-11 11:12:57', NULL, '2023-12-11 04:12:57', '2023-12-11 04:12:57'),
(8, 'A000000001', NULL, '2023-12-11 11:12:57', '2023-12-11 04:12:57', '2023-12-11 04:12:57'),
(9, 'A000000001', '2023-12-11 11:12:58', NULL, '2023-12-11 04:12:58', '2023-12-11 04:12:58'),
(10, 'A000000001', NULL, '2023-12-11 11:12:58', '2023-12-11 04:12:58', '2023-12-11 04:12:58'),
(11, 'A000000001', '2023-12-11 11:12:58', NULL, '2023-12-11 04:12:58', '2023-12-11 04:12:58'),
(12, 'A000000001', NULL, '2023-12-11 11:12:59', '2023-12-11 04:12:59', '2023-12-11 04:12:59'),
(13, 'A000000001', '2023-12-11 11:13:45', NULL, '2023-12-11 04:13:45', '2023-12-11 04:13:45'),
(14, 'A000000001', NULL, '2023-12-11 11:13:46', '2023-12-11 04:13:46', '2023-12-11 04:13:46'),
(15, 'A000000001', '2023-12-11 11:13:46', NULL, '2023-12-11 04:13:46', '2023-12-11 04:13:46'),
(16, 'A000000001', NULL, '2023-12-11 11:13:46', '2023-12-11 04:13:46', '2023-12-11 04:13:46'),
(17, 'A000000001', '2023-12-11 11:13:54', NULL, '2023-12-11 04:13:54', '2023-12-11 04:13:54'),
(18, 'A000000001', NULL, '2023-12-11 11:13:54', '2023-12-11 04:13:54', '2023-12-11 04:13:54'),
(19, 'A000000001', '2023-12-11 11:13:56', NULL, '2023-12-11 04:13:56', '2023-12-11 04:13:56'),
(20, 'A000000001', NULL, '2023-12-11 11:13:56', '2023-12-11 04:13:56', '2023-12-11 04:13:56'),
(21, 'A000000001', '2023-12-11 11:13:56', NULL, '2023-12-11 04:13:56', '2023-12-11 04:13:56'),
(22, 'A000000001', NULL, '2023-12-11 11:13:57', '2023-12-11 04:13:57', '2023-12-11 04:13:57'),
(23, 'A000000001', '2023-12-11 11:13:57', NULL, '2023-12-11 04:13:57', '2023-12-11 04:13:57'),
(24, 'A000000001', NULL, '2023-12-11 11:13:57', '2023-12-11 04:13:57', '2023-12-11 04:13:57'),
(25, 'A000000001', '2023-12-11 11:14:01', NULL, '2023-12-11 04:14:01', '2023-12-11 04:14:01'),
(26, 'A000000001', NULL, '2023-12-11 11:14:01', '2023-12-11 04:14:01', '2023-12-11 04:14:01'),
(27, 'A000000001', '2023-12-11 11:14:44', NULL, '2023-12-11 04:14:44', '2023-12-11 04:14:44'),
(28, 'A000000001', NULL, '2023-12-11 11:14:45', '2023-12-11 04:14:45', '2023-12-11 04:14:45'),
(29, 'A000000001', '2023-12-11 11:15:00', NULL, '2023-12-11 04:15:00', '2023-12-11 04:15:00'),
(30, 'A000000001', NULL, '2023-12-11 11:15:00', '2023-12-11 04:15:00', '2023-12-11 04:15:00'),
(31, 'A000000001', '2023-12-11 11:15:08', NULL, '2023-12-11 04:15:08', '2023-12-11 04:15:08'),
(32, 'A000000001', NULL, '2023-12-11 11:15:09', '2023-12-11 04:15:09', '2023-12-11 04:15:09'),
(33, 'A000000001', '2023-12-11 11:15:16', NULL, '2023-12-11 04:15:16', '2023-12-11 04:15:16'),
(34, 'A000000001', NULL, '2023-12-11 11:15:16', '2023-12-11 04:15:16', '2023-12-11 04:15:16'),
(35, 'A000000001', '2023-12-11 11:15:29', NULL, '2023-12-11 04:15:29', '2023-12-11 04:15:29'),
(36, 'A000000001', NULL, '2023-12-11 11:15:29', '2023-12-11 04:15:29', '2023-12-11 04:15:29'),
(37, 'A000000001', '2023-12-11 11:15:29', NULL, '2023-12-11 04:15:29', '2023-12-11 04:15:29'),
(38, 'A000000001', NULL, '2023-12-11 11:15:29', '2023-12-11 04:15:29', '2023-12-11 04:15:29'),
(39, 'A000000001', '2023-12-11 11:15:29', NULL, '2023-12-11 04:15:29', '2023-12-11 04:15:29'),
(40, 'A000000001', NULL, '2023-12-11 11:15:30', '2023-12-11 04:15:30', '2023-12-11 04:15:30'),
(41, 'A000000001', '2023-12-11 11:15:59', NULL, '2023-12-11 04:15:59', '2023-12-11 04:15:59'),
(42, 'A000000001', NULL, '2023-12-11 11:15:59', '2023-12-11 04:15:59', '2023-12-11 04:15:59'),
(43, 'A000000001', '2023-12-11 11:15:59', NULL, '2023-12-11 04:15:59', '2023-12-11 04:15:59'),
(44, 'A000000001', NULL, '2023-12-11 11:15:59', '2023-12-11 04:15:59', '2023-12-11 04:15:59'),
(45, 'A000000001', '2023-12-11 11:16:06', NULL, '2023-12-11 04:16:06', '2023-12-11 04:16:06'),
(46, 'A000000001', NULL, '2023-12-11 11:16:06', '2023-12-11 04:16:06', '2023-12-11 04:16:06'),
(47, 'A000000001', '2023-12-11 11:16:08', NULL, '2023-12-11 04:16:08', '2023-12-11 04:16:08'),
(48, 'A000000001', NULL, '2023-12-11 11:16:08', '2023-12-11 04:16:08', '2023-12-11 04:16:08'),
(49, 'A000000001', '2023-12-11 11:16:08', NULL, '2023-12-11 04:16:08', '2023-12-11 04:16:08'),
(50, 'A000000001', NULL, '2023-12-11 11:16:09', '2023-12-11 04:16:09', '2023-12-11 04:16:09'),
(51, 'A000000001', '2023-12-11 11:16:09', NULL, '2023-12-11 04:16:09', '2023-12-11 04:16:09'),
(52, 'A000000001', NULL, '2023-12-11 11:16:09', '2023-12-11 04:16:09', '2023-12-11 04:16:09'),
(53, 'A000000001', '2023-12-11 11:16:30', NULL, '2023-12-11 04:16:30', '2023-12-11 04:16:30'),
(54, 'A000000001', NULL, '2023-12-11 11:16:30', '2023-12-11 04:16:30', '2023-12-11 04:16:30'),
(55, 'A000000001', '2023-12-11 11:16:30', NULL, '2023-12-11 04:16:30', '2023-12-11 04:16:30'),
(56, 'A000000001', NULL, '2023-12-11 11:16:30', '2023-12-11 04:16:30', '2023-12-11 04:16:30'),
(57, 'A000000001', '2023-12-11 11:16:34', NULL, '2023-12-11 04:16:34', '2023-12-11 04:16:34'),
(58, 'A000000001', NULL, '2023-12-11 11:16:34', '2023-12-11 04:16:34', '2023-12-11 04:16:34'),
(59, 'A000000001', '2023-12-11 11:16:34', NULL, '2023-12-11 04:16:34', '2023-12-11 04:16:34'),
(60, 'A000000001', NULL, '2023-12-11 11:16:35', '2023-12-11 04:16:35', '2023-12-11 04:16:35'),
(61, 'A000000001', '2023-12-11 11:16:35', NULL, '2023-12-11 04:16:35', '2023-12-11 04:16:35'),
(62, 'A000000001', NULL, '2023-12-11 11:16:35', '2023-12-11 04:16:35', '2023-12-11 04:16:35'),
(63, 'A000000001', '2023-12-11 11:16:38', NULL, '2023-12-11 04:16:38', '2023-12-11 04:16:38'),
(64, 'A000000001', NULL, '2023-12-11 11:16:38', '2023-12-11 04:16:38', '2023-12-11 04:16:38'),
(65, 'A000000001', '2023-12-11 11:16:38', NULL, '2023-12-11 04:16:38', '2023-12-11 04:16:38'),
(66, 'A000000001', NULL, '2023-12-11 11:16:38', '2023-12-11 04:16:38', '2023-12-11 04:16:38'),
(67, 'A000000001', '2023-12-11 11:16:42', NULL, '2023-12-11 04:16:42', '2023-12-11 04:16:42'),
(68, 'A000000001', NULL, '2023-12-11 11:16:42', '2023-12-11 04:16:42', '2023-12-11 04:16:42'),
(69, 'A000000001', '2023-12-11 11:16:42', NULL, '2023-12-11 04:16:42', '2023-12-11 04:16:42'),
(70, 'A000000001', NULL, '2023-12-11 11:16:42', '2023-12-11 04:16:42', '2023-12-11 04:16:42'),
(71, 'A000000001', '2023-12-11 11:17:16', NULL, '2023-12-11 04:17:16', '2023-12-11 04:17:16'),
(72, 'A000000001', NULL, '2023-12-11 11:17:16', '2023-12-11 04:17:16', '2023-12-11 04:17:16'),
(73, 'A000000001', '2023-12-11 11:17:16', NULL, '2023-12-11 04:17:16', '2023-12-11 04:17:16'),
(74, 'A000000001', NULL, '2023-12-11 11:17:16', '2023-12-11 04:17:16', '2023-12-11 04:17:16'),
(75, 'A000000001', '2023-12-11 11:17:46', NULL, '2023-12-11 04:17:46', '2023-12-11 04:17:46'),
(76, 'A000000001', NULL, '2023-12-11 11:17:46', '2023-12-11 04:17:46', '2023-12-11 04:17:46'),
(77, 'A000000001', '2023-12-11 11:17:47', NULL, '2023-12-11 04:17:47', '2023-12-11 04:17:47'),
(78, 'A000000001', NULL, '2023-12-11 11:17:48', '2023-12-11 04:17:48', '2023-12-11 04:17:48'),
(79, 'A000000001', '2023-12-11 11:18:19', NULL, '2023-12-11 04:18:19', '2023-12-11 04:18:19'),
(80, 'A000000001', NULL, '2023-12-11 11:18:19', '2023-12-11 04:18:19', '2023-12-11 04:18:19'),
(81, 'A000000001', '2023-12-11 11:18:21', NULL, '2023-12-11 04:18:21', '2023-12-11 04:18:21'),
(82, 'A000000001', NULL, '2023-12-11 11:18:21', '2023-12-11 04:18:21', '2023-12-11 04:18:21'),
(83, 'A000000001', '2023-12-11 11:20:43', NULL, '2023-12-11 04:20:43', '2023-12-11 04:20:43'),
(84, 'A000000001', NULL, '2023-12-11 11:20:43', '2023-12-11 04:20:43', '2023-12-11 04:20:43'),
(85, 'A000000001', '2023-12-11 11:20:44', NULL, '2023-12-11 04:20:44', '2023-12-11 04:20:44'),
(86, 'A000000001', NULL, '2023-12-11 11:20:45', '2023-12-11 04:20:45', '2023-12-11 04:20:45'),
(87, 'A000000001', '2023-12-11 11:21:20', NULL, '2023-12-11 04:21:20', '2023-12-11 04:21:20'),
(88, 'A000000001', NULL, '2023-12-11 11:21:20', '2023-12-11 04:21:20', '2023-12-11 04:21:20'),
(89, 'A000000001', '2023-12-11 11:21:21', NULL, '2023-12-11 04:21:21', '2023-12-11 04:21:21'),
(90, 'A000000001', NULL, '2023-12-11 11:21:21', '2023-12-11 04:21:21', '2023-12-11 04:21:21'),
(91, 'A000000001', '2023-12-11 11:21:21', NULL, '2023-12-11 04:21:21', '2023-12-11 04:21:21'),
(92, 'A000000001', NULL, '2023-12-11 11:21:21', '2023-12-11 04:21:21', '2023-12-11 04:21:21'),
(93, 'A000000001', '2023-12-11 11:21:23', NULL, '2023-12-11 04:21:23', '2023-12-11 04:21:23'),
(94, 'A000000001', NULL, '2023-12-11 11:21:23', '2023-12-11 04:21:23', '2023-12-11 04:21:23'),
(95, 'A000000001', '2023-12-11 11:21:25', NULL, '2023-12-11 04:21:25', '2023-12-11 04:21:25'),
(96, 'A000000001', NULL, '2023-12-11 11:21:25', '2023-12-11 04:21:25', '2023-12-11 04:21:25'),
(97, 'A000000001', '2023-12-11 11:21:28', NULL, '2023-12-11 04:21:28', '2023-12-11 04:21:28'),
(98, 'A000000001', NULL, '2023-12-11 11:21:28', '2023-12-11 04:21:28', '2023-12-11 04:21:28'),
(99, 'A000000001', '2023-12-11 11:22:05', NULL, '2023-12-11 04:22:05', '2023-12-11 04:22:05'),
(100, 'A000000001', NULL, '2023-12-11 11:22:05', '2023-12-11 04:22:05', '2023-12-11 04:22:05'),
(101, 'A000000001', '2023-12-11 11:22:15', NULL, '2023-12-11 04:22:15', '2023-12-11 04:22:15'),
(102, 'A000000001', NULL, '2023-12-11 11:22:15', '2023-12-11 04:22:15', '2023-12-11 04:22:15'),
(103, 'A000000001', '2023-12-11 11:22:32', NULL, '2023-12-11 04:22:32', '2023-12-11 04:22:32'),
(104, 'A000000001', NULL, '2023-12-11 11:22:32', '2023-12-11 04:22:32', '2023-12-11 04:22:32'),
(105, 'A000000001', '2023-12-11 11:22:42', NULL, '2023-12-11 04:22:42', '2023-12-11 04:22:42'),
(106, 'A000000001', NULL, '2023-12-11 11:22:42', '2023-12-11 04:22:42', '2023-12-11 04:22:42'),
(107, 'A000000001', '2023-12-11 12:21:20', NULL, '2023-12-11 05:21:20', '2023-12-11 05:21:20'),
(108, 'A000000001', NULL, '2023-12-11 12:21:20', '2023-12-11 05:21:20', '2023-12-11 05:21:20'),
(109, 'A000000001', '2023-12-11 12:22:03', NULL, '2023-12-11 05:22:03', '2023-12-11 05:22:03'),
(110, 'A000000001', NULL, '2023-12-11 12:22:03', '2023-12-11 05:22:03', '2023-12-11 05:22:03'),
(111, 'A000000001', '2023-12-11 12:25:45', NULL, '2023-12-11 05:25:45', '2023-12-11 05:25:45'),
(112, 'A000000001', NULL, '2023-12-11 12:25:45', '2023-12-11 05:25:45', '2023-12-11 05:25:45'),
(113, 'A000000001', '2023-12-11 12:25:47', NULL, '2023-12-11 05:25:47', '2023-12-11 05:25:47'),
(114, 'A000000001', NULL, '2023-12-11 12:25:47', '2023-12-11 05:25:47', '2023-12-11 05:25:47'),
(115, 'A000000001', '2023-12-11 12:25:54', NULL, '2023-12-11 05:25:54', '2023-12-11 05:25:54'),
(116, 'A000000001', NULL, '2023-12-11 12:25:54', '2023-12-11 05:25:54', '2023-12-11 05:25:54'),
(117, 'A000000001', '2023-12-11 12:31:21', NULL, '2023-12-11 05:31:21', '2023-12-11 05:31:21'),
(118, 'A000000001', NULL, '2023-12-11 12:31:21', '2023-12-11 05:31:21', '2023-12-11 05:31:21'),
(119, 'A000000001', '2023-12-11 12:31:21', NULL, '2023-12-11 05:31:21', '2023-12-11 05:31:21'),
(120, 'A000000001', NULL, '2023-12-11 12:31:22', '2023-12-11 05:31:22', '2023-12-11 05:31:22'),
(121, 'A000000001', '2023-12-11 12:31:22', NULL, '2023-12-11 05:31:22', '2023-12-11 05:31:22'),
(122, 'A000000001', NULL, '2023-12-11 12:31:23', '2023-12-11 05:31:23', '2023-12-11 05:31:23'),
(123, 'A000000001', '2023-12-11 12:31:41', NULL, '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(124, 'A000000001', NULL, '2023-12-11 12:31:41', '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(125, 'A000000001', '2023-12-11 12:31:41', NULL, '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(126, 'A000000001', NULL, '2023-12-11 12:31:41', '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(127, 'A000000001', '2023-12-11 12:31:41', NULL, '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(128, 'A000000001', NULL, '2023-12-11 12:31:41', '2023-12-11 05:31:41', '2023-12-11 05:31:41'),
(129, 'A000000001', '2023-12-11 12:31:46', NULL, '2023-12-11 05:31:46', '2023-12-11 05:31:46'),
(130, 'A000000001', NULL, '2023-12-11 12:31:46', '2023-12-11 05:31:46', '2023-12-11 05:31:46'),
(131, 'A000000001', '2023-12-11 12:31:47', NULL, '2023-12-11 05:31:47', '2023-12-11 05:31:47'),
(132, 'A000000001', NULL, '2023-12-11 12:31:47', '2023-12-11 05:31:47', '2023-12-11 05:31:47'),
(133, 'A000000001', '2023-12-11 12:31:47', NULL, '2023-12-11 05:31:47', '2023-12-11 05:31:47'),
(134, 'A000000001', NULL, '2023-12-11 12:31:47', '2023-12-11 05:31:47', '2023-12-11 05:31:47'),
(135, 'A000000001', '2023-12-11 12:39:23', NULL, '2023-12-11 05:39:23', '2023-12-11 05:39:23'),
(136, 'A000000001', NULL, '2023-12-11 12:39:23', '2023-12-11 05:39:23', '2023-12-11 05:39:23'),
(137, 'A000000001', '2023-12-11 20:04:41', NULL, '2023-12-11 13:04:41', '2023-12-11 13:04:41'),
(138, 'A000000001', NULL, '2023-12-11 20:04:41', '2023-12-11 13:04:41', '2023-12-11 13:04:41'),
(139, 'A000000001', '2023-12-11 20:04:41', NULL, '2023-12-11 13:04:41', '2023-12-11 13:04:41'),
(140, 'A000000001', NULL, '2023-12-11 20:04:41', '2023-12-11 13:04:41', '2023-12-11 13:04:41'),
(141, 'A000000001', '2023-12-11 20:16:43', NULL, '2023-12-11 13:16:43', '2023-12-11 13:16:43'),
(142, 'A000000001', NULL, '2023-12-11 20:16:43', '2023-12-11 13:16:43', '2023-12-11 13:16:43'),
(143, 'A000000001', '2023-12-11 20:16:56', NULL, '2023-12-11 13:16:56', '2023-12-11 13:16:56'),
(144, 'A000000001', NULL, '2023-12-11 20:16:56', '2023-12-11 13:16:56', '2023-12-11 13:16:56'),
(145, 'A000000001', '2023-12-11 20:16:56', NULL, '2023-12-11 13:16:56', '2023-12-11 13:16:56'),
(146, 'A000000001', NULL, '2023-12-11 20:16:57', '2023-12-11 13:16:57', '2023-12-11 13:16:57'),
(147, 'A000000001', '2023-12-11 20:16:57', NULL, '2023-12-11 13:16:57', '2023-12-11 13:16:57'),
(148, 'A000000001', NULL, '2023-12-11 20:16:57', '2023-12-11 13:16:57', '2023-12-11 13:16:57'),
(149, 'A000000001', '2023-12-11 20:17:09', NULL, '2023-12-11 13:17:09', '2023-12-11 13:17:09'),
(150, 'A000000001', NULL, '2023-12-11 20:17:09', '2023-12-11 13:17:09', '2023-12-11 13:17:09'),
(151, 'A000000001', '2023-12-11 20:17:09', NULL, '2023-12-11 13:17:09', '2023-12-11 13:17:09'),
(152, 'A000000001', NULL, '2023-12-11 20:17:09', '2023-12-11 13:17:09', '2023-12-11 13:17:09'),
(153, 'A000000001', '2023-12-11 20:17:09', NULL, '2023-12-11 13:17:09', '2023-12-11 13:17:09'),
(154, 'A000000001', NULL, '2023-12-11 20:17:10', '2023-12-11 13:17:10', '2023-12-11 13:17:10'),
(155, 'A000000001', '2023-12-11 20:17:23', NULL, '2023-12-11 13:17:23', '2023-12-11 13:17:23'),
(156, 'A000000001', NULL, '2023-12-11 20:17:23', '2023-12-11 13:17:23', '2023-12-11 13:17:23'),
(157, 'A000000001', '2023-12-11 20:20:44', NULL, '2023-12-11 13:20:44', '2023-12-11 13:20:44'),
(158, 'A000000001', NULL, '2023-12-11 20:20:44', '2023-12-11 13:20:44', '2023-12-11 13:20:44'),
(159, 'A000000001', '2023-12-11 20:55:09', NULL, '2023-12-11 13:55:09', '2023-12-11 13:55:09'),
(160, 'A000000001', NULL, '2023-12-11 20:55:09', '2023-12-11 13:55:09', '2023-12-11 13:55:09'),
(161, 'A000000001', '2023-12-11 20:55:09', NULL, '2023-12-11 13:55:09', '2023-12-11 13:55:09'),
(162, 'A000000001', NULL, '2023-12-11 20:55:09', '2023-12-11 13:55:09', '2023-12-11 13:55:09'),
(163, 'A000000001', '2023-12-11 20:55:28', NULL, '2023-12-11 13:55:28', '2023-12-11 13:55:28'),
(164, 'A000000001', NULL, '2023-12-11 20:55:28', '2023-12-11 13:55:28', '2023-12-11 13:55:28'),
(165, 'A000000001', '2023-12-11 20:55:28', NULL, '2023-12-11 13:55:28', '2023-12-11 13:55:28'),
(166, 'A000000001', NULL, '2023-12-11 20:55:28', '2023-12-11 13:55:28', '2023-12-11 13:55:28'),
(167, 'A000000001', '2023-12-11 20:56:43', NULL, '2023-12-11 13:56:43', '2023-12-11 13:56:43'),
(168, 'A000000001', NULL, '2023-12-11 20:56:43', '2023-12-11 13:56:43', '2023-12-11 13:56:43'),
(169, 'A000000001', '2023-12-11 20:57:21', NULL, '2023-12-11 13:57:21', '2023-12-11 13:57:21'),
(170, 'A000000001', NULL, '2023-12-11 20:57:21', '2023-12-11 13:57:21', '2023-12-11 13:57:21'),
(171, 'A000000001', '2023-12-11 21:03:43', NULL, '2023-12-11 14:03:43', '2023-12-11 14:03:43'),
(172, 'A000000001', NULL, '2023-12-11 21:03:43', '2023-12-11 14:03:43', '2023-12-11 14:03:43'),
(173, 'A000000001', '2023-12-11 21:03:43', NULL, '2023-12-11 14:03:43', '2023-12-11 14:03:43'),
(174, 'A000000001', NULL, '2023-12-11 21:03:44', '2023-12-11 14:03:44', '2023-12-11 14:03:44'),
(175, 'A000000001', '2023-12-11 21:03:44', NULL, '2023-12-11 14:03:44', '2023-12-11 14:03:44'),
(176, 'A000000001', NULL, '2023-12-11 21:03:45', '2023-12-11 14:03:45', '2023-12-11 14:03:45'),
(177, 'A000000001', '2023-12-11 21:04:10', NULL, '2023-12-11 14:04:10', '2023-12-11 14:04:10'),
(178, 'A000000001', NULL, '2023-12-11 21:04:10', '2023-12-11 14:04:10', '2023-12-11 14:04:10'),
(179, 'A000000001', '2023-12-11 21:04:11', NULL, '2023-12-11 14:04:11', '2023-12-11 14:04:11'),
(180, 'A000000001', NULL, '2023-12-11 21:04:11', '2023-12-11 14:04:11', '2023-12-11 14:04:11'),
(181, 'A000000001', '2023-12-11 21:04:11', NULL, '2023-12-11 14:04:11', '2023-12-11 14:04:11'),
(182, 'A000000001', NULL, '2023-12-11 21:04:11', '2023-12-11 14:04:11', '2023-12-11 14:04:11'),
(183, 'A000000001', '2023-12-11 21:04:21', NULL, '2023-12-11 14:04:21', '2023-12-11 14:04:21'),
(184, 'A000000001', NULL, '2023-12-11 21:04:21', '2023-12-11 14:04:21', '2023-12-11 14:04:21'),
(185, 'A000000001', '2023-12-11 21:32:13', NULL, '2023-12-11 14:32:13', '2023-12-11 14:32:13'),
(186, 'A000000001', NULL, '2023-12-11 21:32:13', '2023-12-11 14:32:13', '2023-12-11 14:32:13'),
(187, 'A000000001', '2023-12-11 21:32:16', NULL, '2023-12-11 14:32:16', '2023-12-11 14:32:16'),
(188, 'A000000001', NULL, '2023-12-11 21:32:16', '2023-12-11 14:32:16', '2023-12-11 14:32:16'),
(189, 'A000000001', '2023-12-11 21:32:44', NULL, '2023-12-11 14:32:44', '2023-12-11 14:32:44'),
(190, 'A000000001', NULL, '2023-12-11 21:32:44', '2023-12-11 14:32:44', '2023-12-11 14:32:44'),
(191, 'A000000001', '2023-12-11 21:32:44', NULL, '2023-12-11 14:32:44', '2023-12-11 14:32:44'),
(192, 'A000000001', NULL, '2023-12-11 21:32:45', '2023-12-11 14:32:45', '2023-12-11 14:32:45'),
(193, 'A000000001', '2023-12-11 21:32:45', NULL, '2023-12-11 14:32:45', '2023-12-11 14:32:45'),
(194, 'A000000001', NULL, '2023-12-11 21:32:45', '2023-12-11 14:32:45', '2023-12-11 14:32:45'),
(195, 'A000000001', '2023-12-11 21:32:53', NULL, '2023-12-11 14:32:53', '2023-12-11 14:32:53'),
(196, 'A000000001', NULL, '2023-12-11 21:32:53', '2023-12-11 14:32:53', '2023-12-11 14:32:53'),
(197, 'A000000001', '2023-12-11 21:32:53', NULL, '2023-12-11 14:32:53', '2023-12-11 14:32:53'),
(198, 'A000000001', NULL, '2023-12-11 21:32:53', '2023-12-11 14:32:53', '2023-12-11 14:32:53'),
(199, 'A000000001', '2023-12-11 21:33:40', NULL, '2023-12-11 14:33:40', '2023-12-11 14:33:40'),
(200, 'A000000001', NULL, '2023-12-11 21:33:40', '2023-12-11 14:33:40', '2023-12-11 14:33:40'),
(201, 'A000000001', '2023-12-11 21:33:40', NULL, '2023-12-11 14:33:40', '2023-12-11 14:33:40'),
(202, 'A000000001', NULL, '2023-12-11 21:33:41', '2023-12-11 14:33:41', '2023-12-11 14:33:41'),
(203, 'A000000001', '2023-12-11 21:33:41', NULL, '2023-12-11 14:33:41', '2023-12-11 14:33:41'),
(204, 'A000000001', NULL, '2023-12-11 21:33:41', '2023-12-11 14:33:41', '2023-12-11 14:33:41'),
(205, 'A000000001', '2023-12-11 21:43:15', NULL, '2023-12-11 14:43:15', '2023-12-11 14:43:15'),
(206, 'A000000001', NULL, '2023-12-11 21:43:15', '2023-12-11 14:43:15', '2023-12-11 14:43:15'),
(207, 'A000000001', '2023-12-11 21:52:45', NULL, '2023-12-11 14:52:45', '2023-12-11 14:52:45'),
(208, 'A000000001', NULL, '2023-12-11 21:52:45', '2023-12-11 14:52:45', '2023-12-11 14:52:45'),
(209, 'A000000001', '2023-12-11 21:52:45', NULL, '2023-12-11 14:52:45', '2023-12-11 14:52:45'),
(210, 'A000000001', NULL, '2023-12-11 21:52:46', '2023-12-11 14:52:46', '2023-12-11 14:52:46'),
(211, 'A000000001', '2023-12-11 21:52:47', NULL, '2023-12-11 14:52:47', '2023-12-11 14:52:47'),
(212, 'A000000001', NULL, '2023-12-11 21:52:47', '2023-12-11 14:52:47', '2023-12-11 14:52:47'),
(213, 'A000000001', '2023-12-11 21:53:15', NULL, '2023-12-11 14:53:15', '2023-12-11 14:53:15'),
(214, 'A000000001', NULL, '2023-12-11 21:53:16', '2023-12-11 14:53:16', '2023-12-11 14:53:16'),
(215, 'A000000001', '2023-12-11 21:53:20', NULL, '2023-12-11 14:53:20', '2023-12-11 14:53:20'),
(216, 'A000000001', NULL, '2023-12-11 21:53:20', '2023-12-11 14:53:20', '2023-12-11 14:53:20'),
(217, 'A000000001', '2023-12-11 21:53:21', NULL, '2023-12-11 14:53:21', '2023-12-11 14:53:21'),
(218, 'A000000001', NULL, '2023-12-11 21:53:21', '2023-12-11 14:53:21', '2023-12-11 14:53:21'),
(219, 'A000000001', '2023-12-11 21:53:27', NULL, '2023-12-11 14:53:27', '2023-12-11 14:53:27'),
(220, 'A000000001', NULL, '2023-12-11 21:53:27', '2023-12-11 14:53:27', '2023-12-11 14:53:27'),
(221, 'A000000001', '2023-12-11 21:53:27', NULL, '2023-12-11 14:53:27', '2023-12-11 14:53:27'),
(222, 'A000000001', NULL, '2023-12-11 21:53:27', '2023-12-11 14:53:27', '2023-12-11 14:53:27'),
(223, 'A000000001', '2023-12-11 21:53:27', NULL, '2023-12-11 14:53:27', '2023-12-11 14:53:27'),
(224, 'A000000001', NULL, '2023-12-11 21:53:28', '2023-12-11 14:53:28', '2023-12-11 14:53:28'),
(225, 'A000000001', '2023-12-11 21:53:35', NULL, '2023-12-11 14:53:35', '2023-12-11 14:53:35'),
(226, 'A000000001', NULL, '2023-12-11 21:53:35', '2023-12-11 14:53:35', '2023-12-11 14:53:35'),
(227, 'A000000001', '2023-12-11 21:59:54', NULL, '2023-12-11 14:59:54', '2023-12-11 14:59:54'),
(228, 'A000000001', NULL, '2023-12-11 21:59:54', '2023-12-11 14:59:54', '2023-12-11 14:59:54'),
(229, 'A000000001', '2023-12-11 22:03:25', NULL, '2023-12-11 15:03:25', '2023-12-11 15:03:25'),
(230, 'A000000001', NULL, '2023-12-11 22:03:25', '2023-12-11 15:03:25', '2023-12-11 15:03:25'),
(231, 'A000000001', '2023-12-11 22:03:25', NULL, '2023-12-11 15:03:25', '2023-12-11 15:03:25'),
(232, 'A000000001', NULL, '2023-12-11 22:03:25', '2023-12-11 15:03:25', '2023-12-11 15:03:25'),
(233, 'A000000001', '2023-12-11 22:03:33', NULL, '2023-12-11 15:03:33', '2023-12-11 15:03:33'),
(234, 'A000000001', NULL, '2023-12-11 22:03:33', '2023-12-11 15:03:33', '2023-12-11 15:03:33'),
(235, 'A000000001', '2023-12-11 22:04:19', NULL, '2023-12-11 15:04:19', '2023-12-11 15:04:19'),
(236, 'A000000001', NULL, '2023-12-11 22:04:19', '2023-12-11 15:04:19', '2023-12-11 15:04:19'),
(237, 'A000000001', '2023-12-11 22:04:19', NULL, '2023-12-11 15:04:19', '2023-12-11 15:04:19'),
(238, 'A000000001', NULL, '2023-12-11 22:04:20', '2023-12-11 15:04:20', '2023-12-11 15:04:20'),
(239, 'A000000001', '2023-12-11 22:04:20', NULL, '2023-12-11 15:04:20', '2023-12-11 15:04:20'),
(240, 'A000000001', NULL, '2023-12-11 22:04:20', '2023-12-11 15:04:20', '2023-12-11 15:04:20'),
(241, 'A000000001', '2023-12-11 22:04:53', NULL, '2023-12-11 15:04:53', '2023-12-11 15:04:53'),
(242, 'A000000001', NULL, '2023-12-11 22:04:53', '2023-12-11 15:04:53', '2023-12-11 15:04:53'),
(243, 'A000000001', '2023-12-11 22:04:53', NULL, '2023-12-11 15:04:53', '2023-12-11 15:04:53'),
(244, 'A000000001', NULL, '2023-12-11 22:04:53', '2023-12-11 15:04:53', '2023-12-11 15:04:53'),
(245, 'A000000001', '2023-12-11 22:04:53', NULL, '2023-12-11 15:04:53', '2023-12-11 15:04:53'),
(246, 'A000000001', NULL, '2023-12-11 22:04:54', '2023-12-11 15:04:54', '2023-12-11 15:04:54'),
(247, 'A000000001', '2023-12-11 22:04:54', NULL, '2023-12-11 15:04:54', '2023-12-11 15:04:54'),
(248, 'A000000001', NULL, '2023-12-11 22:04:54', '2023-12-11 15:04:54', '2023-12-11 15:04:54'),
(249, 'A000000001', '2023-12-11 22:05:13', NULL, '2023-12-11 15:05:13', '2023-12-11 15:05:13'),
(250, 'A000000001', NULL, '2023-12-11 22:05:13', '2023-12-11 15:05:13', '2023-12-11 15:05:13'),
(251, 'A000000001', '2023-12-11 22:05:13', NULL, '2023-12-11 15:05:13', '2023-12-11 15:05:13'),
(252, 'A000000001', NULL, '2023-12-11 22:05:13', '2023-12-11 15:05:13', '2023-12-11 15:05:13'),
(253, 'A000000001', '2023-12-11 22:08:36', NULL, '2023-12-11 15:08:36', '2023-12-11 15:08:36'),
(254, 'A000000001', NULL, '2023-12-11 22:08:36', '2023-12-11 15:08:36', '2023-12-11 15:08:36'),
(255, 'K000000001', '2023-12-11 22:08:43', NULL, '2023-12-11 15:08:43', '2023-12-11 15:08:43'),
(256, 'K000000001', NULL, '2023-12-11 22:08:43', '2023-12-11 15:08:43', '2023-12-11 15:08:43'),
(257, 'K000000001', '2023-12-11 22:08:43', NULL, '2023-12-11 15:08:43', '2023-12-11 15:08:43'),
(258, 'K000000001', NULL, '2023-12-11 22:08:43', '2023-12-11 15:08:43', '2023-12-11 15:08:43'),
(259, 'K000000001', '2023-12-11 22:09:50', NULL, '2023-12-11 15:09:50', '2023-12-11 15:09:50'),
(260, 'K000000001', NULL, '2023-12-11 22:09:50', '2023-12-11 15:09:50', '2023-12-11 15:09:50'),
(261, 'K000000001', '2023-12-11 22:10:15', NULL, '2023-12-11 15:10:15', '2023-12-11 15:10:15'),
(262, 'K000000001', NULL, '2023-12-11 22:10:15', '2023-12-11 15:10:15', '2023-12-11 15:10:15'),
(263, 'K000000001', '2023-12-11 22:10:16', NULL, '2023-12-11 15:10:16', '2023-12-11 15:10:16'),
(264, 'K000000001', NULL, '2023-12-11 22:10:16', '2023-12-11 15:10:16', '2023-12-11 15:10:16'),
(265, 'K000000001', '2023-12-11 22:10:16', NULL, '2023-12-11 15:10:16', '2023-12-11 15:10:16'),
(266, 'K000000001', NULL, '2023-12-11 22:10:16', '2023-12-11 15:10:16', '2023-12-11 15:10:16'),
(267, 'K000000001', '2023-12-11 22:10:34', NULL, '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(268, 'K000000001', NULL, '2023-12-11 22:10:34', '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(269, 'K000000001', '2023-12-11 22:10:34', NULL, '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(270, 'K000000001', NULL, '2023-12-11 22:10:34', '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(271, 'K000000001', '2023-12-11 22:10:34', NULL, '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(272, 'K000000001', NULL, '2023-12-11 22:10:34', '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(273, 'K000000001', '2023-12-11 22:10:34', NULL, '2023-12-11 15:10:34', '2023-12-11 15:10:34'),
(274, 'K000000001', NULL, '2023-12-11 22:10:35', '2023-12-11 15:10:35', '2023-12-11 15:10:35'),
(275, 'K000000001', '2023-12-11 22:10:54', NULL, '2023-12-11 15:10:54', '2023-12-11 15:10:54'),
(276, 'K000000001', NULL, '2023-12-11 22:10:54', '2023-12-11 15:10:54', '2023-12-11 15:10:54'),
(277, 'K000000001', '2023-12-11 22:10:54', NULL, '2023-12-11 15:10:54', '2023-12-11 15:10:54'),
(278, 'K000000001', NULL, '2023-12-11 22:10:54', '2023-12-11 15:10:54', '2023-12-11 15:10:54'),
(279, 'K000000001', '2023-12-11 22:10:57', NULL, '2023-12-11 15:10:57', '2023-12-11 15:10:57'),
(280, 'K000000001', NULL, '2023-12-11 22:10:57', '2023-12-11 15:10:57', '2023-12-11 15:10:57'),
(281, 'K000000001', '2023-12-11 22:10:57', NULL, '2023-12-11 15:10:57', '2023-12-11 15:10:57'),
(282, 'K000000001', NULL, '2023-12-11 22:10:57', '2023-12-11 15:10:57', '2023-12-11 15:10:57'),
(283, 'K000000001', '2023-12-11 22:10:57', NULL, '2023-12-11 15:10:57', '2023-12-11 15:10:57'),
(284, 'K000000001', NULL, '2023-12-11 22:10:58', '2023-12-11 15:10:58', '2023-12-11 15:10:58'),
(285, 'K000000001', '2023-12-11 22:11:02', NULL, '2023-12-11 15:11:02', '2023-12-11 15:11:02'),
(286, 'K000000001', NULL, '2023-12-11 22:11:03', '2023-12-11 15:11:03', '2023-12-11 15:11:03'),
(287, 'K000000001', '2023-12-11 22:11:24', NULL, '2023-12-11 15:11:24', '2023-12-11 15:11:24'),
(288, 'K000000001', NULL, '2023-12-11 22:11:24', '2023-12-11 15:11:24', '2023-12-11 15:11:24'),
(289, 'K000000001', '2023-12-11 22:11:24', NULL, '2023-12-11 15:11:24', '2023-12-11 15:11:24'),
(290, 'K000000001', NULL, '2023-12-11 22:11:24', '2023-12-11 15:11:24', '2023-12-11 15:11:24'),
(291, 'K000000001', '2023-12-11 22:11:25', NULL, '2023-12-11 15:11:25', '2023-12-11 15:11:25'),
(292, 'K000000001', NULL, '2023-12-11 22:11:25', '2023-12-11 15:11:25', '2023-12-11 15:11:25'),
(293, 'K000000001', '2023-12-11 22:11:54', NULL, '2023-12-11 15:11:54', '2023-12-11 15:11:54'),
(294, 'K000000001', NULL, '2023-12-11 22:11:54', '2023-12-11 15:11:54', '2023-12-11 15:11:54'),
(295, 'K000000001', '2023-12-11 22:11:54', NULL, '2023-12-11 15:11:54', '2023-12-11 15:11:54'),
(296, 'K000000001', NULL, '2023-12-11 22:11:54', '2023-12-11 15:11:54', '2023-12-11 15:11:54'),
(297, 'K000000001', '2023-12-11 22:11:54', NULL, '2023-12-11 15:11:54', '2023-12-11 15:11:54'),
(298, 'K000000001', NULL, '2023-12-11 22:11:55', '2023-12-11 15:11:55', '2023-12-11 15:11:55'),
(299, 'K000000001', '2023-12-11 22:12:23', NULL, '2023-12-11 15:12:23', '2023-12-11 15:12:23'),
(300, 'K000000001', NULL, '2023-12-11 22:12:23', '2023-12-11 15:12:23', '2023-12-11 15:12:23'),
(301, 'K000000001', '2023-12-11 22:12:24', NULL, '2023-12-11 15:12:24', '2023-12-11 15:12:24'),
(302, 'K000000001', NULL, '2023-12-11 22:12:24', '2023-12-11 15:12:24', '2023-12-11 15:12:24'),
(303, 'K000000001', '2023-12-11 22:12:42', NULL, '2023-12-11 15:12:42', '2023-12-11 15:12:42'),
(304, 'K000000001', NULL, '2023-12-11 22:12:42', '2023-12-11 15:12:42', '2023-12-11 15:12:42'),
(305, 'A000000001', '2023-12-11 22:12:50', NULL, '2023-12-11 15:12:50', '2023-12-11 15:12:50'),
(306, 'A000000001', NULL, '2023-12-11 22:12:50', '2023-12-11 15:12:50', '2023-12-11 15:12:50'),
(307, 'A000000001', '2023-12-11 22:12:51', NULL, '2023-12-11 15:12:51', '2023-12-11 15:12:51'),
(308, 'A000000001', NULL, '2023-12-11 22:12:51', '2023-12-11 15:12:51', '2023-12-11 15:12:51'),
(309, 'A000000001', '2023-12-11 22:12:53', NULL, '2023-12-11 15:12:53', '2023-12-11 15:12:53'),
(310, 'A000000001', NULL, '2023-12-11 22:12:53', '2023-12-11 15:12:53', '2023-12-11 15:12:53'),
(311, 'A000000001', '2023-12-11 22:14:48', NULL, '2023-12-11 15:14:48', '2023-12-11 15:14:48'),
(312, 'A000000001', NULL, '2023-12-11 22:14:48', '2023-12-11 15:14:48', '2023-12-11 15:14:48'),
(313, 'A000000001', '2023-12-12 06:05:04', NULL, '2023-12-11 23:05:04', '2023-12-11 23:05:04'),
(314, 'A000000001', NULL, '2023-12-12 06:05:04', '2023-12-11 23:05:04', '2023-12-11 23:05:04'),
(315, 'A000000001', '2023-12-12 06:05:04', NULL, '2023-12-11 23:05:04', '2023-12-11 23:05:04'),
(316, 'A000000001', NULL, '2023-12-12 06:05:04', '2023-12-11 23:05:04', '2023-12-11 23:05:04'),
(317, 'A000000001', '2023-12-12 06:05:09', NULL, '2023-12-11 23:05:09', '2023-12-11 23:05:09'),
(318, 'A000000001', NULL, '2023-12-12 06:05:09', '2023-12-11 23:05:09', '2023-12-11 23:05:09'),
(319, 'A000000001', '2023-12-12 06:05:32', NULL, '2023-12-11 23:05:32', '2023-12-11 23:05:32'),
(320, 'A000000001', NULL, '2023-12-12 06:05:32', '2023-12-11 23:05:32', '2023-12-11 23:05:32'),
(321, 'A000000001', '2023-12-12 06:06:08', NULL, '2023-12-11 23:06:08', '2023-12-11 23:06:08'),
(322, 'A000000001', NULL, '2023-12-12 06:06:09', '2023-12-11 23:06:09', '2023-12-11 23:06:09'),
(323, 'A000000001', '2023-12-12 06:06:11', NULL, '2023-12-11 23:06:11', '2023-12-11 23:06:11'),
(324, 'A000000001', NULL, '2023-12-12 06:06:11', '2023-12-11 23:06:11', '2023-12-11 23:06:11'),
(325, 'A000000001', '2023-12-12 06:06:13', NULL, '2023-12-11 23:06:13', '2023-12-11 23:06:13'),
(326, 'A000000001', NULL, '2023-12-12 06:06:14', '2023-12-11 23:06:14', '2023-12-11 23:06:14'),
(327, 'A000000001', '2023-12-12 06:06:28', NULL, '2023-12-11 23:06:28', '2023-12-11 23:06:28'),
(328, 'A000000001', NULL, '2023-12-12 06:06:28', '2023-12-11 23:06:28', '2023-12-11 23:06:28'),
(329, 'A000000001', '2023-12-12 06:07:15', NULL, '2023-12-11 23:07:15', '2023-12-11 23:07:15'),
(330, 'A000000001', NULL, '2023-12-12 06:07:16', '2023-12-11 23:07:16', '2023-12-11 23:07:16'),
(331, 'A000000001', '2023-12-12 06:07:20', NULL, '2023-12-11 23:07:20', '2023-12-11 23:07:20'),
(332, 'A000000001', NULL, '2023-12-12 06:07:20', '2023-12-11 23:07:20', '2023-12-11 23:07:20'),
(333, 'A000000001', '2023-12-12 06:07:20', NULL, '2023-12-11 23:07:20', '2023-12-11 23:07:20'),
(334, 'A000000001', NULL, '2023-12-12 06:07:20', '2023-12-11 23:07:20', '2023-12-11 23:07:20'),
(335, 'A000000001', '2023-12-12 06:07:36', NULL, '2023-12-11 23:07:36', '2023-12-11 23:07:36'),
(336, 'A000000001', NULL, '2023-12-12 06:07:37', '2023-12-11 23:07:37', '2023-12-11 23:07:37'),
(337, 'A000000001', '2023-12-12 06:08:14', NULL, '2023-12-11 23:08:14', '2023-12-11 23:08:14'),
(338, 'A000000001', NULL, '2023-12-12 06:08:15', '2023-12-11 23:08:15', '2023-12-11 23:08:15'),
(339, 'A000000001', '2023-12-12 06:08:23', NULL, '2023-12-11 23:08:23', '2023-12-11 23:08:23'),
(340, 'A000000001', NULL, '2023-12-12 06:08:23', '2023-12-11 23:08:23', '2023-12-11 23:08:23'),
(341, 'A000000001', '2023-12-12 06:08:24', NULL, '2023-12-11 23:08:24', '2023-12-11 23:08:24'),
(342, 'A000000001', NULL, '2023-12-12 06:08:24', '2023-12-11 23:08:24', '2023-12-11 23:08:24'),
(343, 'A000000001', '2023-12-12 06:08:24', NULL, '2023-12-11 23:08:24', '2023-12-11 23:08:24'),
(344, 'A000000001', NULL, '2023-12-12 06:08:24', '2023-12-11 23:08:24', '2023-12-11 23:08:24'),
(345, 'A000000001', '2023-12-12 06:09:12', NULL, '2023-12-11 23:09:12', '2023-12-11 23:09:12'),
(346, 'A000000001', NULL, '2023-12-12 06:09:12', '2023-12-11 23:09:12', '2023-12-11 23:09:12'),
(347, 'A000000001', '2023-12-12 06:09:12', NULL, '2023-12-11 23:09:12', '2023-12-11 23:09:12'),
(348, 'A000000001', NULL, '2023-12-12 06:09:12', '2023-12-11 23:09:12', '2023-12-11 23:09:12'),
(349, 'A000000001', '2023-12-12 06:09:26', NULL, '2023-12-11 23:09:26', '2023-12-11 23:09:26'),
(350, 'A000000001', NULL, '2023-12-12 06:09:26', '2023-12-11 23:09:26', '2023-12-11 23:09:26'),
(351, 'A000000001', '2023-12-12 06:09:26', NULL, '2023-12-11 23:09:26', '2023-12-11 23:09:26'),
(352, 'A000000001', NULL, '2023-12-12 06:09:27', '2023-12-11 23:09:27', '2023-12-11 23:09:27'),
(353, 'A000000001', '2023-12-12 06:09:40', NULL, '2023-12-11 23:09:40', '2023-12-11 23:09:40'),
(354, 'A000000001', NULL, '2023-12-12 06:09:40', '2023-12-11 23:09:40', '2023-12-11 23:09:40'),
(355, 'A000000001', '2023-12-12 06:09:40', NULL, '2023-12-11 23:09:40', '2023-12-11 23:09:40'),
(356, 'A000000001', NULL, '2023-12-12 06:09:40', '2023-12-11 23:09:40', '2023-12-11 23:09:40'),
(357, 'A000000001', '2023-12-12 06:09:51', NULL, '2023-12-11 23:09:51', '2023-12-11 23:09:51'),
(358, 'A000000001', NULL, '2023-12-12 06:09:51', '2023-12-11 23:09:51', '2023-12-11 23:09:51'),
(359, 'A000000001', '2023-12-12 06:10:08', NULL, '2023-12-11 23:10:08', '2023-12-11 23:10:08'),
(360, 'A000000001', NULL, '2023-12-12 06:10:09', '2023-12-11 23:10:09', '2023-12-11 23:10:09'),
(361, 'A000000001', '2023-12-12 06:10:16', NULL, '2023-12-11 23:10:16', '2023-12-11 23:10:16'),
(362, 'A000000001', NULL, '2023-12-12 06:10:16', '2023-12-11 23:10:16', '2023-12-11 23:10:16'),
(363, 'A000000001', '2023-12-12 06:10:17', NULL, '2023-12-11 23:10:17', '2023-12-11 23:10:17'),
(364, 'A000000001', NULL, '2023-12-12 06:10:17', '2023-12-11 23:10:17', '2023-12-11 23:10:17'),
(365, 'A000000001', '2023-12-12 06:10:21', NULL, '2023-12-11 23:10:21', '2023-12-11 23:10:21'),
(366, 'A000000001', NULL, '2023-12-12 06:10:21', '2023-12-11 23:10:21', '2023-12-11 23:10:21'),
(367, 'A000000001', '2023-12-12 06:10:24', NULL, '2023-12-11 23:10:24', '2023-12-11 23:10:24'),
(368, 'A000000001', NULL, '2023-12-12 06:10:24', '2023-12-11 23:10:24', '2023-12-11 23:10:24'),
(369, 'A000000001', '2023-12-12 06:11:03', NULL, '2023-12-11 23:11:03', '2023-12-11 23:11:03'),
(370, 'A000000001', NULL, '2023-12-12 06:11:04', '2023-12-11 23:11:04', '2023-12-11 23:11:04'),
(371, 'A000000001', '2023-12-12 06:11:10', NULL, '2023-12-11 23:11:10', '2023-12-11 23:11:10'),
(372, 'A000000001', NULL, '2023-12-12 06:11:10', '2023-12-11 23:11:10', '2023-12-11 23:11:10'),
(373, 'A000000001', '2023-12-12 06:11:15', NULL, '2023-12-11 23:11:15', '2023-12-11 23:11:15'),
(374, 'A000000001', NULL, '2023-12-12 06:11:15', '2023-12-11 23:11:15', '2023-12-11 23:11:15'),
(375, 'A000000001', '2023-12-12 06:11:15', NULL, '2023-12-11 23:11:15', '2023-12-11 23:11:15'),
(376, 'A000000001', NULL, '2023-12-12 06:11:15', '2023-12-11 23:11:15', '2023-12-11 23:11:15'),
(377, 'A000000001', '2023-12-12 06:11:23', NULL, '2023-12-11 23:11:23', '2023-12-11 23:11:23'),
(378, 'A000000001', NULL, '2023-12-12 06:11:23', '2023-12-11 23:11:23', '2023-12-11 23:11:23'),
(379, 'A000000001', '2023-12-12 06:11:23', NULL, '2023-12-11 23:11:23', '2023-12-11 23:11:23'),
(380, 'A000000001', NULL, '2023-12-12 06:11:24', '2023-12-11 23:11:24', '2023-12-11 23:11:24'),
(381, 'A000000001', '2023-12-12 06:11:40', NULL, '2023-12-11 23:11:40', '2023-12-11 23:11:40'),
(382, 'A000000001', NULL, '2023-12-12 06:11:40', '2023-12-11 23:11:40', '2023-12-11 23:11:40'),
(383, 'A000000001', '2023-12-12 06:11:40', NULL, '2023-12-11 23:11:40', '2023-12-11 23:11:40'),
(384, 'A000000001', NULL, '2023-12-12 06:11:40', '2023-12-11 23:11:40', '2023-12-11 23:11:40'),
(385, 'A000000001', '2023-12-12 06:11:42', NULL, '2023-12-11 23:11:42', '2023-12-11 23:11:42'),
(386, 'A000000001', NULL, '2023-12-12 06:11:42', '2023-12-11 23:11:42', '2023-12-11 23:11:42'),
(387, 'A000000001', '2023-12-12 06:11:42', NULL, '2023-12-11 23:11:42', '2023-12-11 23:11:42'),
(388, 'A000000001', NULL, '2023-12-12 06:11:42', '2023-12-11 23:11:42', '2023-12-11 23:11:42'),
(389, 'A000000001', '2023-12-12 06:11:46', NULL, '2023-12-11 23:11:46', '2023-12-11 23:11:46'),
(390, 'A000000001', NULL, '2023-12-12 06:11:46', '2023-12-11 23:11:46', '2023-12-11 23:11:46'),
(391, 'A000000001', '2023-12-12 06:11:46', NULL, '2023-12-11 23:11:46', '2023-12-11 23:11:46'),
(392, 'A000000001', NULL, '2023-12-12 06:11:46', '2023-12-11 23:11:46', '2023-12-11 23:11:46'),
(393, 'A000000001', '2023-12-12 06:12:05', NULL, '2023-12-11 23:12:05', '2023-12-11 23:12:05'),
(394, 'A000000001', NULL, '2023-12-12 06:12:06', '2023-12-11 23:12:06', '2023-12-11 23:12:06'),
(395, 'A000000001', '2023-12-12 06:12:23', NULL, '2023-12-11 23:12:23', '2023-12-11 23:12:23'),
(396, 'A000000001', NULL, '2023-12-12 06:12:23', '2023-12-11 23:12:23', '2023-12-11 23:12:23'),
(397, 'A000000001', '2023-12-12 06:12:43', NULL, '2023-12-11 23:12:43', '2023-12-11 23:12:43'),
(398, 'A000000001', NULL, '2023-12-12 06:12:44', '2023-12-11 23:12:44', '2023-12-11 23:12:44'),
(399, 'A000000001', '2023-12-12 06:13:39', NULL, '2023-12-11 23:13:39', '2023-12-11 23:13:39'),
(400, 'A000000001', NULL, '2023-12-12 06:13:39', '2023-12-11 23:13:39', '2023-12-11 23:13:39'),
(401, 'A000000001', '2023-12-12 06:13:41', NULL, '2023-12-11 23:13:41', '2023-12-11 23:13:41'),
(402, 'A000000001', NULL, '2023-12-12 06:13:41', '2023-12-11 23:13:41', '2023-12-11 23:13:41'),
(403, 'A000000001', '2023-12-12 06:13:49', NULL, '2023-12-11 23:13:49', '2023-12-11 23:13:49'),
(404, 'A000000001', NULL, '2023-12-12 06:13:49', '2023-12-11 23:13:49', '2023-12-11 23:13:49'),
(405, 'A000000001', '2023-12-12 06:13:51', NULL, '2023-12-11 23:13:51', '2023-12-11 23:13:51'),
(406, 'A000000001', NULL, '2023-12-12 06:13:51', '2023-12-11 23:13:51', '2023-12-11 23:13:51'),
(407, 'A000000001', '2023-12-12 06:13:53', NULL, '2023-12-11 23:13:53', '2023-12-11 23:13:53'),
(408, 'A000000001', NULL, '2023-12-12 06:13:53', '2023-12-11 23:13:53', '2023-12-11 23:13:53'),
(409, 'A000000001', '2023-12-12 06:14:30', NULL, '2023-12-11 23:14:30', '2023-12-11 23:14:30'),
(410, 'A000000001', NULL, '2023-12-12 06:14:30', '2023-12-11 23:14:30', '2023-12-11 23:14:30'),
(411, 'A000000001', '2023-12-12 06:14:32', NULL, '2023-12-11 23:14:32', '2023-12-11 23:14:32'),
(412, 'A000000001', NULL, '2023-12-12 06:14:32', '2023-12-11 23:14:32', '2023-12-11 23:14:32'),
(413, 'A000000001', '2023-12-12 06:15:39', NULL, '2023-12-11 23:15:39', '2023-12-11 23:15:39'),
(414, 'A000000001', NULL, '2023-12-12 06:15:39', '2023-12-11 23:15:39', '2023-12-11 23:15:39'),
(415, 'A000000001', '2023-12-12 06:15:39', NULL, '2023-12-11 23:15:39', '2023-12-11 23:15:39'),
(416, 'A000000001', NULL, '2023-12-12 06:15:39', '2023-12-11 23:15:39', '2023-12-11 23:15:39'),
(417, 'A000000001', '2023-12-12 06:15:41', NULL, '2023-12-11 23:15:41', '2023-12-11 23:15:41'),
(418, 'A000000001', NULL, '2023-12-12 06:15:41', '2023-12-11 23:15:41', '2023-12-11 23:15:41'),
(419, 'A000000001', '2023-12-12 06:16:00', NULL, '2023-12-11 23:16:00', '2023-12-11 23:16:00'),
(420, 'A000000001', NULL, '2023-12-12 06:16:00', '2023-12-11 23:16:00', '2023-12-11 23:16:00'),
(421, 'A000000001', '2023-12-12 06:16:56', NULL, '2023-12-11 23:16:56', '2023-12-11 23:16:56'),
(422, 'A000000001', NULL, '2023-12-12 06:16:56', '2023-12-11 23:16:56', '2023-12-11 23:16:56'),
(423, 'A000000001', '2023-12-12 06:17:10', NULL, '2023-12-11 23:17:10', '2023-12-11 23:17:10'),
(424, 'A000000001', NULL, '2023-12-12 06:17:10', '2023-12-11 23:17:10', '2023-12-11 23:17:10'),
(425, 'A000000001', '2023-12-12 06:17:20', NULL, '2023-12-11 23:17:20', '2023-12-11 23:17:20'),
(426, 'A000000001', NULL, '2023-12-12 06:17:20', '2023-12-11 23:17:20', '2023-12-11 23:17:20'),
(427, 'A000000001', '2023-12-12 06:18:03', NULL, '2023-12-11 23:18:03', '2023-12-11 23:18:03'),
(428, 'A000000001', NULL, '2023-12-12 06:18:03', '2023-12-11 23:18:03', '2023-12-11 23:18:03'),
(429, 'A000000001', '2023-12-12 06:18:20', NULL, '2023-12-11 23:18:20', '2023-12-11 23:18:20'),
(430, 'A000000001', NULL, '2023-12-12 06:18:20', '2023-12-11 23:18:20', '2023-12-11 23:18:20'),
(431, 'A000000001', '2023-12-12 06:18:22', NULL, '2023-12-11 23:18:22', '2023-12-11 23:18:22'),
(432, 'A000000001', NULL, '2023-12-12 06:18:23', '2023-12-11 23:18:23', '2023-12-11 23:18:23'),
(433, 'A000000001', '2023-12-12 06:18:36', NULL, '2023-12-11 23:18:36', '2023-12-11 23:18:36'),
(434, 'A000000001', NULL, '2023-12-12 06:18:36', '2023-12-11 23:18:36', '2023-12-11 23:18:36'),
(435, 'A000000001', '2023-12-12 06:18:47', NULL, '2023-12-11 23:18:47', '2023-12-11 23:18:47'),
(436, 'A000000001', NULL, '2023-12-12 06:18:47', '2023-12-11 23:18:47', '2023-12-11 23:18:47'),
(437, 'A000000001', '2023-12-12 06:19:00', NULL, '2023-12-11 23:19:00', '2023-12-11 23:19:00'),
(438, 'A000000001', NULL, '2023-12-12 06:19:00', '2023-12-11 23:19:00', '2023-12-11 23:19:00'),
(439, 'A000000001', '2023-12-12 06:19:12', NULL, '2023-12-11 23:19:12', '2023-12-11 23:19:12'),
(440, 'A000000001', NULL, '2023-12-12 06:19:12', '2023-12-11 23:19:12', '2023-12-11 23:19:12'),
(441, 'A000000001', '2023-12-12 06:19:47', NULL, '2023-12-11 23:19:47', '2023-12-11 23:19:47'),
(442, 'A000000001', NULL, '2023-12-12 06:19:47', '2023-12-11 23:19:47', '2023-12-11 23:19:47'),
(443, 'A000000001', '2023-12-12 06:19:49', NULL, '2023-12-11 23:19:49', '2023-12-11 23:19:49'),
(444, 'A000000001', NULL, '2023-12-12 06:19:49', '2023-12-11 23:19:49', '2023-12-11 23:19:49'),
(445, 'A000000001', '2023-12-12 06:21:12', NULL, '2023-12-11 23:21:12', '2023-12-11 23:21:12'),
(446, 'A000000001', NULL, '2023-12-12 06:21:12', '2023-12-11 23:21:12', '2023-12-11 23:21:12'),
(447, 'A000000001', '2023-12-12 06:21:15', NULL, '2023-12-11 23:21:15', '2023-12-11 23:21:15'),
(448, 'A000000001', NULL, '2023-12-12 06:21:16', '2023-12-11 23:21:16', '2023-12-11 23:21:16'),
(449, 'A000000001', '2023-12-12 06:21:34', NULL, '2023-12-11 23:21:34', '2023-12-11 23:21:34'),
(450, 'A000000001', NULL, '2023-12-12 06:21:34', '2023-12-11 23:21:34', '2023-12-11 23:21:34'),
(451, 'A000000001', '2023-12-12 06:22:13', NULL, '2023-12-11 23:22:13', '2023-12-11 23:22:13'),
(452, 'A000000001', NULL, '2023-12-12 06:22:13', '2023-12-11 23:22:13', '2023-12-11 23:22:13'),
(453, 'A000000001', '2023-12-12 06:22:13', NULL, '2023-12-11 23:22:13', '2023-12-11 23:22:13'),
(454, 'A000000001', NULL, '2023-12-12 06:22:13', '2023-12-11 23:22:13', '2023-12-11 23:22:13'),
(455, 'A000000001', '2023-12-12 06:22:36', NULL, '2023-12-11 23:22:36', '2023-12-11 23:22:36'),
(456, 'A000000001', NULL, '2023-12-12 06:22:36', '2023-12-11 23:22:36', '2023-12-11 23:22:36'),
(457, 'A000000001', '2023-12-12 06:22:38', NULL, '2023-12-11 23:22:38', '2023-12-11 23:22:38'),
(458, 'A000000001', NULL, '2023-12-12 06:22:38', '2023-12-11 23:22:38', '2023-12-11 23:22:38'),
(459, 'A000000001', '2023-12-12 06:22:38', NULL, '2023-12-11 23:22:38', '2023-12-11 23:22:38'),
(460, 'A000000001', NULL, '2023-12-12 06:22:39', '2023-12-11 23:22:39', '2023-12-11 23:22:39'),
(461, 'A000000001', '2023-12-12 06:22:39', NULL, '2023-12-11 23:22:39', '2023-12-11 23:22:39'),
(462, 'A000000001', NULL, '2023-12-12 06:22:39', '2023-12-11 23:22:39', '2023-12-11 23:22:39'),
(463, 'A000000001', '2023-12-12 06:24:55', NULL, '2023-12-11 23:24:55', '2023-12-11 23:24:55'),
(464, 'A000000001', NULL, '2023-12-12 06:24:55', '2023-12-11 23:24:55', '2023-12-11 23:24:55'),
(465, 'A000000001', '2023-12-12 06:24:55', NULL, '2023-12-11 23:24:55', '2023-12-11 23:24:55'),
(466, 'A000000001', NULL, '2023-12-12 06:24:55', '2023-12-11 23:24:55', '2023-12-11 23:24:55'),
(467, 'A000000001', '2023-12-12 06:25:08', NULL, '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(468, 'A000000001', NULL, '2023-12-12 06:25:08', '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(469, 'A000000001', '2023-12-12 06:25:08', NULL, '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(470, 'A000000001', NULL, '2023-12-12 06:25:08', '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(471, 'A000000001', '2023-12-12 06:25:08', NULL, '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(472, 'A000000001', NULL, '2023-12-12 06:25:08', '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(473, 'A000000001', '2023-12-12 06:25:08', NULL, '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(474, 'A000000001', NULL, '2023-12-12 06:25:08', '2023-12-11 23:25:08', '2023-12-11 23:25:08'),
(475, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(476, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(477, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(478, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(479, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(480, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(481, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(482, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(483, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(484, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(485, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(486, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(487, 'A000000001', '2023-12-12 06:25:09', NULL, '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(488, 'A000000001', NULL, '2023-12-12 06:25:09', '2023-12-11 23:25:09', '2023-12-11 23:25:09'),
(489, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(490, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(491, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(492, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(493, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(494, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(495, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(496, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(497, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(498, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(499, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(500, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(501, 'A000000001', '2023-12-12 06:25:10', NULL, '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(502, 'A000000001', NULL, '2023-12-12 06:25:10', '2023-12-11 23:25:10', '2023-12-11 23:25:10'),
(503, 'A000000001', '2023-12-12 06:25:11', NULL, '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(504, 'A000000001', NULL, '2023-12-12 06:25:11', '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(505, 'A000000001', '2023-12-12 06:25:11', NULL, '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(506, 'A000000001', NULL, '2023-12-12 06:25:11', '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(507, 'A000000001', '2023-12-12 06:25:11', NULL, '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(508, 'A000000001', NULL, '2023-12-12 06:25:11', '2023-12-11 23:25:11', '2023-12-11 23:25:11'),
(509, 'A000000001', '2023-12-12 06:25:15', NULL, '2023-12-11 23:25:15', '2023-12-11 23:25:15'),
(510, 'A000000001', NULL, '2023-12-12 06:25:15', '2023-12-11 23:25:15', '2023-12-11 23:25:15'),
(511, 'A000000001', '2023-12-12 06:25:17', NULL, '2023-12-11 23:25:17', '2023-12-11 23:25:17'),
(512, 'A000000001', NULL, '2023-12-12 06:25:17', '2023-12-11 23:25:17', '2023-12-11 23:25:17'),
(513, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(514, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(515, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(516, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(517, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(518, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(519, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(520, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(521, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(522, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(523, 'A000000001', '2023-12-12 06:25:18', NULL, '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(524, 'A000000001', NULL, '2023-12-12 06:25:18', '2023-12-11 23:25:18', '2023-12-11 23:25:18'),
(525, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(526, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(527, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(528, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(529, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(530, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(531, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19');
INSERT INTO `traffic_login` (`trafficID`, `userID`, `login`, `logout`, `created_at`, `updated_at`) VALUES
(532, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(533, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(534, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(535, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(536, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(537, 'A000000001', '2023-12-12 06:25:19', NULL, '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(538, 'A000000001', NULL, '2023-12-12 06:25:19', '2023-12-11 23:25:19', '2023-12-11 23:25:19'),
(539, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(540, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(541, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(542, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(543, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(544, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(545, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(546, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(547, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(548, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(549, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(550, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(551, 'A000000001', '2023-12-12 06:25:20', NULL, '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(552, 'A000000001', NULL, '2023-12-12 06:25:20', '2023-12-11 23:25:20', '2023-12-11 23:25:20'),
(553, 'A000000001', '2023-12-12 06:26:21', NULL, '2023-12-11 23:26:21', '2023-12-11 23:26:21'),
(554, 'A000000001', NULL, '2023-12-12 06:26:21', '2023-12-11 23:26:21', '2023-12-11 23:26:21'),
(555, 'A000000001', '2023-12-12 06:26:21', NULL, '2023-12-11 23:26:21', '2023-12-11 23:26:21'),
(556, 'A000000001', NULL, '2023-12-12 06:26:22', '2023-12-11 23:26:22', '2023-12-11 23:26:22'),
(557, 'A000000001', '2023-12-12 06:26:37', NULL, '2023-12-11 23:26:37', '2023-12-11 23:26:37'),
(558, 'A000000001', NULL, '2023-12-12 06:26:37', '2023-12-11 23:26:37', '2023-12-11 23:26:37'),
(559, 'A000000001', '2023-12-12 06:27:45', NULL, '2023-12-11 23:27:45', '2023-12-11 23:27:45'),
(560, 'A000000001', NULL, '2023-12-12 06:27:45', '2023-12-11 23:27:45', '2023-12-11 23:27:45'),
(561, 'A000000001', '2023-12-12 06:27:47', NULL, '2023-12-11 23:27:47', '2023-12-11 23:27:47'),
(562, 'A000000001', NULL, '2023-12-12 06:27:47', '2023-12-11 23:27:47', '2023-12-11 23:27:47'),
(563, 'A000000001', '2023-12-12 06:28:24', NULL, '2023-12-11 23:28:24', '2023-12-11 23:28:24'),
(564, 'A000000001', NULL, '2023-12-12 06:28:24', '2023-12-11 23:28:24', '2023-12-11 23:28:24'),
(565, 'A000000001', '2023-12-12 06:28:46', NULL, '2023-12-11 23:28:46', '2023-12-11 23:28:46'),
(566, 'A000000001', NULL, '2023-12-12 06:28:46', '2023-12-11 23:28:46', '2023-12-11 23:28:46'),
(567, 'A000000001', '2023-12-12 06:28:46', NULL, '2023-12-11 23:28:46', '2023-12-11 23:28:46'),
(568, 'A000000001', NULL, '2023-12-12 06:28:46', '2023-12-11 23:28:46', '2023-12-11 23:28:46'),
(569, 'A000000001', '2023-12-12 06:29:39', NULL, '2023-12-11 23:29:39', '2023-12-11 23:29:39'),
(570, 'A000000001', NULL, '2023-12-12 06:29:39', '2023-12-11 23:29:39', '2023-12-11 23:29:39'),
(571, 'A000000001', '2023-12-12 06:29:47', NULL, '2023-12-11 23:29:47', '2023-12-11 23:29:47'),
(572, 'A000000001', NULL, '2023-12-12 06:29:47', '2023-12-11 23:29:47', '2023-12-11 23:29:47'),
(573, 'A000000001', '2023-12-12 06:29:47', NULL, '2023-12-11 23:29:47', '2023-12-11 23:29:47'),
(574, 'A000000001', NULL, '2023-12-12 06:29:47', '2023-12-11 23:29:47', '2023-12-11 23:29:47'),
(575, 'A000000001', '2023-12-12 06:30:19', NULL, '2023-12-11 23:30:19', '2023-12-11 23:30:19'),
(576, 'A000000001', NULL, '2023-12-12 06:30:19', '2023-12-11 23:30:19', '2023-12-11 23:30:19'),
(577, 'A000000001', '2023-12-12 06:30:24', NULL, '2023-12-11 23:30:24', '2023-12-11 23:30:24'),
(578, 'A000000001', NULL, '2023-12-12 06:30:24', '2023-12-11 23:30:24', '2023-12-11 23:30:24'),
(579, 'A000000001', '2023-12-12 06:30:24', NULL, '2023-12-11 23:30:24', '2023-12-11 23:30:24'),
(580, 'A000000001', NULL, '2023-12-12 06:30:24', '2023-12-11 23:30:24', '2023-12-11 23:30:24'),
(581, 'A000000001', '2023-12-12 06:30:39', NULL, '2023-12-11 23:30:39', '2023-12-11 23:30:39'),
(582, 'A000000001', NULL, '2023-12-12 06:30:39', '2023-12-11 23:30:39', '2023-12-11 23:30:39'),
(583, 'A000000001', '2023-12-12 06:30:39', NULL, '2023-12-11 23:30:39', '2023-12-11 23:30:39'),
(584, 'A000000001', NULL, '2023-12-12 06:30:39', '2023-12-11 23:30:39', '2023-12-11 23:30:39'),
(585, 'A000000001', '2023-12-12 06:30:42', NULL, '2023-12-11 23:30:42', '2023-12-11 23:30:42'),
(586, 'A000000001', NULL, '2023-12-12 06:30:42', '2023-12-11 23:30:42', '2023-12-11 23:30:42'),
(587, 'A000000001', '2023-12-12 06:31:01', NULL, '2023-12-11 23:31:01', '2023-12-11 23:31:01'),
(588, 'A000000001', NULL, '2023-12-12 06:31:01', '2023-12-11 23:31:01', '2023-12-11 23:31:01'),
(589, 'A000000001', '2023-12-12 06:31:28', NULL, '2023-12-11 23:31:28', '2023-12-11 23:31:28'),
(590, 'A000000001', NULL, '2023-12-12 06:31:28', '2023-12-11 23:31:28', '2023-12-11 23:31:28'),
(591, 'A000000001', '2023-12-12 06:31:30', NULL, '2023-12-11 23:31:30', '2023-12-11 23:31:30'),
(592, 'A000000001', NULL, '2023-12-12 06:31:30', '2023-12-11 23:31:30', '2023-12-11 23:31:30'),
(593, 'A000000001', '2023-12-12 06:31:56', NULL, '2023-12-11 23:31:56', '2023-12-11 23:31:56'),
(594, 'A000000001', NULL, '2023-12-12 06:31:56', '2023-12-11 23:31:56', '2023-12-11 23:31:56'),
(595, 'A000000001', '2023-12-12 06:32:00', NULL, '2023-12-11 23:32:00', '2023-12-11 23:32:00'),
(596, 'A000000001', NULL, '2023-12-12 06:32:00', '2023-12-11 23:32:00', '2023-12-11 23:32:00'),
(597, 'A000000001', '2023-12-12 06:32:00', NULL, '2023-12-11 23:32:00', '2023-12-11 23:32:00'),
(598, 'A000000001', NULL, '2023-12-12 06:32:00', '2023-12-11 23:32:00', '2023-12-11 23:32:00'),
(599, 'A000000001', '2023-12-12 06:32:35', NULL, '2023-12-11 23:32:35', '2023-12-11 23:32:35'),
(600, 'A000000001', NULL, '2023-12-12 06:32:35', '2023-12-11 23:32:35', '2023-12-11 23:32:35'),
(601, 'A000000001', '2023-12-12 12:19:38', NULL, '2023-12-12 05:19:38', '2023-12-12 05:19:38'),
(602, 'A000000001', NULL, '2023-12-12 12:19:38', '2023-12-12 05:19:38', '2023-12-12 05:19:38'),
(603, 'A000000001', '2023-12-12 12:19:39', NULL, '2023-12-12 05:19:39', '2023-12-12 05:19:39'),
(604, 'A000000001', NULL, '2023-12-12 12:19:39', '2023-12-12 05:19:39', '2023-12-12 05:19:39'),
(605, 'A000000001', '2023-12-12 12:19:43', NULL, '2023-12-12 05:19:43', '2023-12-12 05:19:43'),
(606, 'A000000001', NULL, '2023-12-12 12:19:43', '2023-12-12 05:19:43', '2023-12-12 05:19:43'),
(607, 'A000000001', '2023-12-12 12:19:45', NULL, '2023-12-12 05:19:45', '2023-12-12 05:19:45'),
(608, 'A000000001', NULL, '2023-12-12 12:19:45', '2023-12-12 05:19:45', '2023-12-12 05:19:45'),
(609, 'A000000001', '2023-12-12 12:19:46', NULL, '2023-12-12 05:19:46', '2023-12-12 05:19:46'),
(610, 'A000000001', NULL, '2023-12-12 12:19:46', '2023-12-12 05:19:46', '2023-12-12 05:19:46'),
(611, 'A000000001', '2023-12-12 12:20:16', NULL, '2023-12-12 05:20:16', '2023-12-12 05:20:16'),
(612, 'A000000001', NULL, '2023-12-12 12:20:16', '2023-12-12 05:20:16', '2023-12-12 05:20:16'),
(613, 'A000000001', '2023-12-12 12:21:47', NULL, '2023-12-12 05:21:47', '2023-12-12 05:21:47'),
(614, 'A000000001', NULL, '2023-12-12 12:21:47', '2023-12-12 05:21:47', '2023-12-12 05:21:47'),
(615, 'A000000001', '2023-12-12 12:21:51', NULL, '2023-12-12 05:21:51', '2023-12-12 05:21:51'),
(616, 'A000000001', NULL, '2023-12-12 12:21:52', '2023-12-12 05:21:52', '2023-12-12 05:21:52'),
(617, 'A000000001', '2023-12-12 12:22:26', NULL, '2023-12-12 05:22:26', '2023-12-12 05:22:26'),
(618, 'A000000001', NULL, '2023-12-12 12:22:26', '2023-12-12 05:22:26', '2023-12-12 05:22:26'),
(619, 'A000000001', '2023-12-12 12:22:45', NULL, '2023-12-12 05:22:45', '2023-12-12 05:22:45'),
(620, 'A000000001', NULL, '2023-12-12 12:22:45', '2023-12-12 05:22:45', '2023-12-12 05:22:45'),
(621, 'A000000001', '2023-12-12 12:23:08', NULL, '2023-12-12 05:23:08', '2023-12-12 05:23:08'),
(622, 'A000000001', NULL, '2023-12-12 12:23:08', '2023-12-12 05:23:08', '2023-12-12 05:23:08'),
(623, 'A000000001', '2023-12-12 12:23:26', NULL, '2023-12-12 05:23:26', '2023-12-12 05:23:26'),
(624, 'A000000001', NULL, '2023-12-12 12:23:26', '2023-12-12 05:23:26', '2023-12-12 05:23:26'),
(625, 'A000000001', '2023-12-12 12:23:39', NULL, '2023-12-12 05:23:39', '2023-12-12 05:23:39'),
(626, 'A000000001', NULL, '2023-12-12 12:23:39', '2023-12-12 05:23:39', '2023-12-12 05:23:39'),
(627, 'A000000001', '2023-12-12 12:24:26', NULL, '2023-12-12 05:24:26', '2023-12-12 05:24:26'),
(628, 'A000000001', NULL, '2023-12-12 12:24:26', '2023-12-12 05:24:26', '2023-12-12 05:24:26'),
(629, 'A000000001', '2023-12-12 12:24:28', NULL, '2023-12-12 05:24:28', '2023-12-12 05:24:28'),
(630, 'A000000001', NULL, '2023-12-12 12:24:28', '2023-12-12 05:24:28', '2023-12-12 05:24:28'),
(631, 'A000000001', '2023-12-12 12:24:40', NULL, '2023-12-12 05:24:40', '2023-12-12 05:24:40'),
(632, 'A000000001', NULL, '2023-12-12 12:24:40', '2023-12-12 05:24:40', '2023-12-12 05:24:40'),
(633, 'A000000001', '2023-12-12 12:25:03', NULL, '2023-12-12 05:25:03', '2023-12-12 05:25:03'),
(634, 'A000000001', NULL, '2023-12-12 12:25:03', '2023-12-12 05:25:03', '2023-12-12 05:25:03'),
(635, 'A000000001', '2023-12-12 12:25:05', NULL, '2023-12-12 05:25:05', '2023-12-12 05:25:05'),
(636, 'A000000001', NULL, '2023-12-12 12:25:05', '2023-12-12 05:25:05', '2023-12-12 05:25:05'),
(637, 'A000000001', '2023-12-12 12:25:09', NULL, '2023-12-12 05:25:09', '2023-12-12 05:25:09'),
(638, 'A000000001', NULL, '2023-12-12 12:25:10', '2023-12-12 05:25:10', '2023-12-12 05:25:10'),
(639, 'A000000001', '2023-12-12 12:44:38', NULL, '2023-12-12 05:44:38', '2023-12-12 05:44:38'),
(640, 'A000000001', NULL, '2023-12-12 12:44:38', '2023-12-12 05:44:38', '2023-12-12 05:44:38'),
(641, 'A000000001', '2023-12-12 12:45:06', NULL, '2023-12-12 05:45:06', '2023-12-12 05:45:06'),
(642, 'A000000001', NULL, '2023-12-12 12:45:06', '2023-12-12 05:45:06', '2023-12-12 05:45:06'),
(643, 'A000000001', '2023-12-12 12:46:27', NULL, '2023-12-12 05:46:27', '2023-12-12 05:46:27'),
(644, 'A000000001', NULL, '2023-12-12 12:46:27', '2023-12-12 05:46:27', '2023-12-12 05:46:27'),
(645, 'A000000001', '2023-12-12 12:47:05', NULL, '2023-12-12 05:47:05', '2023-12-12 05:47:05'),
(646, 'A000000001', NULL, '2023-12-12 12:47:06', '2023-12-12 05:47:06', '2023-12-12 05:47:06'),
(647, 'A000000001', '2023-12-12 12:47:48', NULL, '2023-12-12 05:47:48', '2023-12-12 05:47:48'),
(648, 'A000000001', NULL, '2023-12-12 12:47:49', '2023-12-12 05:47:49', '2023-12-12 05:47:49'),
(649, 'A000000001', '2023-12-12 12:48:11', NULL, '2023-12-12 05:48:11', '2023-12-12 05:48:11'),
(650, 'A000000001', NULL, '2023-12-12 12:48:11', '2023-12-12 05:48:11', '2023-12-12 05:48:11'),
(651, 'A000000001', '2023-12-12 12:48:14', NULL, '2023-12-12 05:48:14', '2023-12-12 05:48:14'),
(652, 'A000000001', NULL, '2023-12-12 12:48:15', '2023-12-12 05:48:15', '2023-12-12 05:48:15'),
(653, 'A000000001', '2023-12-12 12:48:43', NULL, '2023-12-12 05:48:43', '2023-12-12 05:48:43'),
(654, 'A000000001', NULL, '2023-12-12 12:48:43', '2023-12-12 05:48:43', '2023-12-12 05:48:43'),
(655, 'A000000001', '2023-12-12 12:48:45', NULL, '2023-12-12 05:48:45', '2023-12-12 05:48:45'),
(656, 'A000000001', NULL, '2023-12-12 12:48:45', '2023-12-12 05:48:45', '2023-12-12 05:48:45'),
(657, 'A000000001', '2023-12-12 12:48:57', NULL, '2023-12-12 05:48:57', '2023-12-12 05:48:57'),
(658, 'A000000001', NULL, '2023-12-12 12:48:57', '2023-12-12 05:48:57', '2023-12-12 05:48:57'),
(659, 'A000000001', '2023-12-12 12:48:59', NULL, '2023-12-12 05:48:59', '2023-12-12 05:48:59'),
(660, 'A000000001', NULL, '2023-12-12 12:48:59', '2023-12-12 05:48:59', '2023-12-12 05:48:59'),
(661, 'A000000001', '2023-12-12 12:49:30', NULL, '2023-12-12 05:49:30', '2023-12-12 05:49:30'),
(662, 'A000000001', NULL, '2023-12-12 12:49:30', '2023-12-12 05:49:30', '2023-12-12 05:49:30'),
(663, 'A000000001', '2023-12-12 12:49:31', NULL, '2023-12-12 05:49:31', '2023-12-12 05:49:31'),
(664, 'A000000001', NULL, '2023-12-12 12:49:31', '2023-12-12 05:49:31', '2023-12-12 05:49:31'),
(665, 'A000000001', '2023-12-12 12:49:33', NULL, '2023-12-12 05:49:33', '2023-12-12 05:49:33'),
(666, 'A000000001', NULL, '2023-12-12 12:49:33', '2023-12-12 05:49:33', '2023-12-12 05:49:33'),
(667, 'A000000001', '2023-12-12 13:34:22', NULL, '2023-12-12 06:34:22', '2023-12-12 06:34:22'),
(668, 'A000000001', NULL, '2023-12-12 13:34:22', '2023-12-12 06:34:22', '2023-12-12 06:34:22'),
(669, 'A000000001', '2023-12-12 16:21:49', NULL, '2023-12-12 09:21:49', '2023-12-12 09:21:49'),
(670, 'A000000001', NULL, '2023-12-12 16:21:49', '2023-12-12 09:21:49', '2023-12-12 09:21:49'),
(671, 'A000000001', '2023-12-12 16:21:49', NULL, '2023-12-12 09:21:49', '2023-12-12 09:21:49'),
(672, 'A000000001', NULL, '2023-12-12 16:21:49', '2023-12-12 09:21:49', '2023-12-12 09:21:49'),
(673, 'A000000001', '2023-12-12 16:21:54', NULL, '2023-12-12 09:21:54', '2023-12-12 09:21:54'),
(674, 'A000000001', NULL, '2023-12-12 16:21:54', '2023-12-12 09:21:54', '2023-12-12 09:21:54'),
(675, 'A000000001', '2023-12-12 16:21:55', NULL, '2023-12-12 09:21:55', '2023-12-12 09:21:55'),
(676, 'A000000001', NULL, '2023-12-12 16:21:55', '2023-12-12 09:21:55', '2023-12-12 09:21:55'),
(677, 'A000000001', '2023-12-12 16:21:57', NULL, '2023-12-12 09:21:57', '2023-12-12 09:21:57'),
(678, 'A000000001', NULL, '2023-12-12 16:21:57', '2023-12-12 09:21:57', '2023-12-12 09:21:57'),
(679, 'A000000001', '2023-12-12 16:22:03', NULL, '2023-12-12 09:22:03', '2023-12-12 09:22:03'),
(680, 'A000000001', NULL, '2023-12-12 16:22:03', '2023-12-12 09:22:03', '2023-12-12 09:22:03'),
(681, 'A000000001', '2023-12-12 16:22:05', NULL, '2023-12-12 09:22:05', '2023-12-12 09:22:05'),
(682, 'A000000001', NULL, '2023-12-12 16:22:05', '2023-12-12 09:22:05', '2023-12-12 09:22:05'),
(683, 'A000000001', '2023-12-12 16:22:07', NULL, '2023-12-12 09:22:07', '2023-12-12 09:22:07'),
(684, 'A000000001', '2023-12-12 16:23:08', NULL, '2023-12-12 09:23:08', '2023-12-12 09:23:08'),
(685, 'A000000001', NULL, '2023-12-12 16:23:08', '2023-12-12 09:23:08', '2023-12-12 09:23:08'),
(686, 'A000000001', '2023-12-12 16:24:17', NULL, '2023-12-12 09:24:17', '2023-12-12 09:24:17'),
(687, 'A000000001', NULL, '2023-12-12 16:24:17', '2023-12-12 09:24:17', '2023-12-12 09:24:17'),
(688, 'A000000001', '2023-12-12 16:24:20', NULL, '2023-12-12 09:24:20', '2023-12-12 09:24:20'),
(689, 'A000000001', NULL, '2023-12-12 16:24:20', '2023-12-12 09:24:20', '2023-12-12 09:24:20'),
(690, 'A000000001', '2023-12-12 16:24:23', NULL, '2023-12-12 09:24:23', '2023-12-12 09:24:23'),
(691, 'A000000001', NULL, '2023-12-12 16:24:23', '2023-12-12 09:24:23', '2023-12-12 09:24:23'),
(692, 'A000000001', '2023-12-12 16:24:27', NULL, '2023-12-12 09:24:27', '2023-12-12 09:24:27'),
(693, 'A000000001', '2023-12-12 16:25:28', NULL, '2023-12-12 09:25:28', '2023-12-12 09:25:28'),
(694, 'A000000001', NULL, '2023-12-12 16:25:28', '2023-12-12 09:25:28', '2023-12-12 09:25:28'),
(695, 'A000000001', '2023-12-12 16:25:32', NULL, '2023-12-12 09:25:32', '2023-12-12 09:25:32'),
(696, 'A000000001', NULL, '2023-12-12 16:25:32', '2023-12-12 09:25:32', '2023-12-12 09:25:32'),
(697, 'A000000001', '2023-12-12 16:25:38', NULL, '2023-12-12 09:25:38', '2023-12-12 09:25:38'),
(698, 'A000000001', NULL, '2023-12-12 16:25:39', '2023-12-12 09:25:39', '2023-12-12 09:25:39'),
(699, 'A000000001', '2023-12-12 16:25:52', NULL, '2023-12-12 09:25:52', '2023-12-12 09:25:52'),
(700, 'A000000001', '2023-12-12 16:34:20', NULL, '2023-12-12 09:34:20', '2023-12-12 09:34:20'),
(701, 'A000000001', NULL, '2023-12-12 16:34:20', '2023-12-12 09:34:20', '2023-12-12 09:34:20'),
(702, 'A000000001', '2023-12-12 16:34:23', NULL, '2023-12-12 09:34:23', '2023-12-12 09:34:23'),
(703, 'A000000001', '2023-12-12 16:36:44', NULL, '2023-12-12 09:36:44', '2023-12-12 09:36:44'),
(704, 'A000000001', NULL, '2023-12-12 16:37:45', '2023-12-12 09:37:45', '2023-12-12 09:37:45'),
(705, 'A000000001', '2023-12-12 16:40:50', NULL, '2023-12-12 09:40:50', '2023-12-12 09:40:50'),
(706, 'A000000001', NULL, '2023-12-12 16:40:50', '2023-12-12 09:40:50', '2023-12-12 09:40:50'),
(707, 'A000000001', '2023-12-12 16:40:50', NULL, '2023-12-12 09:40:50', '2023-12-12 09:40:50'),
(708, 'A000000001', NULL, '2023-12-12 16:40:50', '2023-12-12 09:40:50', '2023-12-12 09:40:50'),
(709, 'A000000001', '2023-12-12 16:43:51', NULL, '2023-12-12 09:43:51', '2023-12-12 09:43:51'),
(710, 'A000000001', NULL, '2023-12-12 16:43:51', '2023-12-12 09:43:51', '2023-12-12 09:43:51'),
(711, 'A000000001', '2023-12-12 16:43:53', NULL, '2023-12-12 09:43:53', '2023-12-12 09:43:53'),
(712, 'A000000001', NULL, '2023-12-12 16:43:53', '2023-12-12 09:43:53', '2023-12-12 09:43:53'),
(713, 'A000000001', '2023-12-12 16:50:47', NULL, '2023-12-12 09:50:47', '2023-12-12 09:50:47'),
(714, 'A000000001', NULL, '2023-12-12 16:50:47', '2023-12-12 09:50:47', '2023-12-12 09:50:47'),
(715, 'A000000001', '2023-12-12 16:50:50', NULL, '2023-12-12 09:50:50', '2023-12-12 09:50:50'),
(716, 'A000000001', NULL, '2023-12-12 16:50:50', '2023-12-12 09:50:50', '2023-12-12 09:50:50'),
(717, 'A000000001', '2023-12-12 16:50:53', NULL, '2023-12-12 09:50:53', '2023-12-12 09:50:53'),
(718, 'A000000001', NULL, '2023-12-12 16:50:53', '2023-12-12 09:50:53', '2023-12-12 09:50:53'),
(719, 'A000000001', '2023-12-12 16:51:12', NULL, '2023-12-12 09:51:12', '2023-12-12 09:51:12'),
(720, 'A000000001', NULL, '2023-12-12 16:51:12', '2023-12-12 09:51:12', '2023-12-12 09:51:12'),
(721, 'A000000001', '2023-12-12 16:51:14', NULL, '2023-12-12 09:51:14', '2023-12-12 09:51:14'),
(722, 'A000000001', NULL, '2023-12-12 16:51:14', '2023-12-12 09:51:14', '2023-12-12 09:51:14'),
(723, 'A000000001', '2023-12-12 16:51:16', NULL, '2023-12-12 09:51:16', '2023-12-12 09:51:16'),
(724, 'A000000001', NULL, '2023-12-12 16:51:16', '2023-12-12 09:51:16', '2023-12-12 09:51:16'),
(725, 'A000000001', '2023-12-12 16:51:39', NULL, '2023-12-12 09:51:39', '2023-12-12 09:51:39'),
(726, 'A000000001', NULL, '2023-12-12 16:51:39', '2023-12-12 09:51:39', '2023-12-12 09:51:39'),
(727, 'A000000001', '2023-12-12 16:51:41', NULL, '2023-12-12 09:51:41', '2023-12-12 09:51:41'),
(728, 'A000000001', NULL, '2023-12-12 16:51:41', '2023-12-12 09:51:41', '2023-12-12 09:51:41'),
(729, 'A000000001', '2023-12-12 16:51:43', NULL, '2023-12-12 09:51:43', '2023-12-12 09:51:43'),
(730, 'A000000001', NULL, '2023-12-12 16:51:43', '2023-12-12 09:51:43', '2023-12-12 09:51:43'),
(731, 'A000000001', '2023-12-12 16:52:04', NULL, '2023-12-12 09:52:04', '2023-12-12 09:52:04'),
(732, 'A000000001', NULL, '2023-12-12 16:52:04', '2023-12-12 09:52:04', '2023-12-12 09:52:04'),
(733, 'A000000001', '2023-12-12 16:53:28', NULL, '2023-12-12 09:53:28', '2023-12-12 09:53:28'),
(734, 'A000000001', NULL, '2023-12-12 16:53:28', '2023-12-12 09:53:28', '2023-12-12 09:53:28'),
(735, 'A000000001', '2023-12-12 16:53:34', NULL, '2023-12-12 09:53:34', '2023-12-12 09:53:34'),
(736, 'A000000001', NULL, '2023-12-12 16:53:34', '2023-12-12 09:53:34', '2023-12-12 09:53:34'),
(737, 'A000000001', '2023-12-12 16:53:38', NULL, '2023-12-12 09:53:38', '2023-12-12 09:53:38'),
(738, 'A000000001', NULL, '2023-12-12 16:53:38', '2023-12-12 09:53:38', '2023-12-12 09:53:38'),
(739, 'A000000001', '2023-12-12 16:53:40', NULL, '2023-12-12 09:53:40', '2023-12-12 09:53:40'),
(740, 'A000000001', NULL, '2023-12-12 16:53:40', '2023-12-12 09:53:40', '2023-12-12 09:53:40'),
(741, 'A000000001', '2023-12-12 16:56:06', NULL, '2023-12-12 09:56:06', '2023-12-12 09:56:06'),
(742, 'A000000001', NULL, '2023-12-12 16:56:06', '2023-12-12 09:56:06', '2023-12-12 09:56:06'),
(743, 'A000000001', '2023-12-12 16:56:12', NULL, '2023-12-12 09:56:12', '2023-12-12 09:56:12'),
(744, 'A000000001', NULL, '2023-12-12 16:56:12', '2023-12-12 09:56:12', '2023-12-12 09:56:12'),
(745, 'A000000001', '2023-12-12 16:56:14', NULL, '2023-12-12 09:56:14', '2023-12-12 09:56:14'),
(746, 'A000000001', NULL, '2023-12-12 16:56:15', '2023-12-12 09:56:15', '2023-12-12 09:56:15'),
(747, 'A000000001', '2023-12-12 16:56:35', NULL, '2023-12-12 09:56:35', '2023-12-12 09:56:35'),
(748, 'A000000001', NULL, '2023-12-12 16:56:35', '2023-12-12 09:56:35', '2023-12-12 09:56:35'),
(749, 'A000000001', '2023-12-12 16:56:36', NULL, '2023-12-12 09:56:36', '2023-12-12 09:56:36'),
(750, 'A000000001', NULL, '2023-12-12 16:56:36', '2023-12-12 09:56:36', '2023-12-12 09:56:36'),
(751, 'A000000001', '2023-12-12 16:56:53', NULL, '2023-12-12 09:56:53', '2023-12-12 09:56:53'),
(752, 'A000000001', NULL, '2023-12-12 16:57:53', '2023-12-12 09:57:53', '2023-12-12 09:57:53'),
(753, 'A000000001', '2023-12-12 16:59:37', NULL, '2023-12-12 09:59:37', '2023-12-12 09:59:37'),
(754, 'A000000001', NULL, '2023-12-12 16:59:37', '2023-12-12 09:59:37', '2023-12-12 09:59:37'),
(755, 'A000000001', '2023-12-12 17:02:03', NULL, '2023-12-12 10:02:03', '2023-12-12 10:02:03'),
(756, 'A000000001', NULL, '2023-12-12 17:02:03', '2023-12-12 10:02:03', '2023-12-12 10:02:03'),
(757, 'A000000001', '2023-12-12 17:02:35', NULL, '2023-12-12 10:02:35', '2023-12-12 10:02:35'),
(758, 'A000000001', NULL, '2023-12-12 17:02:35', '2023-12-12 10:02:35', '2023-12-12 10:02:35'),
(759, 'A000000001', '2023-12-12 17:04:09', NULL, '2023-12-12 10:04:09', '2023-12-12 10:04:09'),
(760, 'A000000001', NULL, '2023-12-12 17:05:09', '2023-12-12 10:05:09', '2023-12-12 10:05:09'),
(761, 'A000000001', '2023-12-12 17:09:51', NULL, '2023-12-12 10:09:51', '2023-12-12 10:09:51'),
(762, 'A000000001', NULL, '2023-12-12 17:09:51', '2023-12-12 10:09:51', '2023-12-12 10:09:51'),
(763, 'A000000001', '2023-12-12 17:13:11', NULL, '2023-12-12 10:13:11', '2023-12-12 10:13:11'),
(764, 'A000000001', NULL, '2023-12-12 17:13:11', '2023-12-12 10:13:11', '2023-12-12 10:13:11'),
(765, 'A000000001', '2023-12-12 17:18:08', NULL, '2023-12-12 10:18:08', '2023-12-12 10:18:08'),
(766, 'A000000001', NULL, '2023-12-12 17:18:08', '2023-12-12 10:18:08', '2023-12-12 10:18:08'),
(767, 'A000000001', '2023-12-12 17:19:43', NULL, '2023-12-12 10:19:43', '2023-12-12 10:19:43'),
(768, 'A000000001', NULL, '2023-12-12 17:19:44', '2023-12-12 10:19:44', '2023-12-12 10:19:44'),
(769, 'A000000001', '2023-12-12 17:23:14', NULL, '2023-12-12 10:23:14', '2023-12-12 10:23:14'),
(770, 'A000000001', NULL, '2023-12-12 17:23:14', '2023-12-12 10:23:14', '2023-12-12 10:23:14'),
(771, 'A000000001', '2023-12-12 17:23:28', NULL, '2023-12-12 10:23:28', '2023-12-12 10:23:28'),
(772, 'A000000001', NULL, '2023-12-12 17:23:28', '2023-12-12 10:23:28', '2023-12-12 10:23:28'),
(773, 'A000000001', '2023-12-12 17:23:30', NULL, '2023-12-12 10:23:30', '2023-12-12 10:23:30'),
(774, 'A000000001', NULL, '2023-12-12 17:23:31', '2023-12-12 10:23:31', '2023-12-12 10:23:31'),
(775, 'A000000001', '2023-12-12 17:23:43', NULL, '2023-12-12 10:23:43', '2023-12-12 10:23:43'),
(776, 'A000000001', NULL, '2023-12-12 17:23:43', '2023-12-12 10:23:43', '2023-12-12 10:23:43'),
(777, 'A000000001', '2023-12-12 17:23:45', NULL, '2023-12-12 10:23:45', '2023-12-12 10:23:45'),
(778, 'A000000001', NULL, '2023-12-12 17:23:46', '2023-12-12 10:23:46', '2023-12-12 10:23:46'),
(779, 'A000000001', '2023-12-12 17:24:13', NULL, '2023-12-12 10:24:13', '2023-12-12 10:24:13'),
(780, 'A000000001', NULL, '2023-12-12 17:24:13', '2023-12-12 10:24:13', '2023-12-12 10:24:13'),
(781, 'A000000001', '2023-12-12 17:24:23', NULL, '2023-12-12 10:24:23', '2023-12-12 10:24:23'),
(782, 'A000000001', NULL, '2023-12-12 17:24:24', '2023-12-12 10:24:24', '2023-12-12 10:24:24'),
(783, 'A000000001', '2023-12-12 18:40:55', NULL, '2023-12-12 11:40:55', '2023-12-12 11:40:55'),
(784, 'A000000001', NULL, '2023-12-12 18:40:55', '2023-12-12 11:40:55', '2023-12-12 11:40:55'),
(785, 'A000000001', '2023-12-13 10:14:31', NULL, '2023-12-13 03:14:31', '2023-12-13 03:14:31'),
(786, 'A000000001', NULL, '2023-12-13 10:14:31', '2023-12-13 03:14:31', '2023-12-13 03:14:31'),
(787, 'A000000001', '2023-12-13 10:14:31', NULL, '2023-12-13 03:14:31', '2023-12-13 03:14:31'),
(788, 'A000000001', NULL, '2023-12-13 10:14:31', '2023-12-13 03:14:31', '2023-12-13 03:14:31'),
(789, 'A000000001', '2023-12-13 10:14:34', NULL, '2023-12-13 03:14:34', '2023-12-13 03:14:34'),
(790, 'A000000001', NULL, '2023-12-13 10:14:34', '2023-12-13 03:14:34', '2023-12-13 03:14:34'),
(791, 'A000000001', '2023-12-13 10:14:37', NULL, '2023-12-13 03:14:37', '2023-12-13 03:14:37'),
(792, 'A000000001', NULL, '2023-12-13 10:14:37', '2023-12-13 03:14:37', '2023-12-13 03:14:37'),
(793, 'A000000001', '2023-12-13 10:14:42', NULL, '2023-12-13 03:14:42', '2023-12-13 03:14:42'),
(794, 'A000000001', NULL, '2023-12-13 10:14:43', '2023-12-13 03:14:43', '2023-12-13 03:14:43'),
(795, 'A000000001', '2023-12-13 10:15:15', NULL, '2023-12-13 03:15:15', '2023-12-13 03:15:15'),
(796, 'A000000001', NULL, '2023-12-13 10:16:15', '2023-12-13 03:16:15', '2023-12-13 03:16:15'),
(797, 'A000000001', '2023-12-13 10:16:30', NULL, '2023-12-13 03:16:30', '2023-12-13 03:16:30'),
(798, 'A000000001', NULL, '2023-12-13 10:16:30', '2023-12-13 03:16:30', '2023-12-13 03:16:30'),
(799, 'A000000001', '2023-12-13 10:16:42', NULL, '2023-12-13 03:16:42', '2023-12-13 03:16:42'),
(800, 'A000000001', NULL, '2023-12-13 10:16:43', '2023-12-13 03:16:43', '2023-12-13 03:16:43'),
(801, 'A000000001', '2023-12-13 10:16:45', NULL, '2023-12-13 03:16:45', '2023-12-13 03:16:45'),
(802, 'A000000001', NULL, '2023-12-13 10:17:45', '2023-12-13 03:17:45', '2023-12-13 03:17:45'),
(803, 'A000000001', '2023-12-13 10:17:52', NULL, '2023-12-13 03:17:52', '2023-12-13 03:17:52'),
(804, 'A000000001', NULL, '2023-12-13 10:17:53', '2023-12-13 03:17:53', '2023-12-13 03:17:53'),
(805, 'A000000001', '2023-12-13 10:17:54', NULL, '2023-12-13 03:17:54', '2023-12-13 03:17:54'),
(806, 'A000000001', NULL, '2023-12-13 10:18:54', '2023-12-13 03:18:54', '2023-12-13 03:18:54'),
(807, 'A000000001', '2023-12-13 10:19:41', NULL, '2023-12-13 03:19:41', '2023-12-13 03:19:41'),
(808, 'A000000001', NULL, '2023-12-13 10:19:41', '2023-12-13 03:19:41', '2023-12-13 03:19:41'),
(809, 'A000000001', '2023-12-13 10:19:42', NULL, '2023-12-13 03:19:42', '2023-12-13 03:19:42'),
(810, 'A000000001', NULL, '2023-12-13 10:19:42', '2023-12-13 03:19:42', '2023-12-13 03:19:42'),
(811, 'A000000001', '2023-12-13 10:19:44', NULL, '2023-12-13 03:19:44', '2023-12-13 03:19:44'),
(812, 'A000000001', NULL, '2023-12-13 10:19:44', '2023-12-13 03:19:44', '2023-12-13 03:19:44'),
(813, 'A000000001', '2023-12-13 10:19:48', NULL, '2023-12-13 03:19:48', '2023-12-13 03:19:48'),
(814, 'A000000001', NULL, '2023-12-13 10:19:49', '2023-12-13 03:19:49', '2023-12-13 03:19:49'),
(815, 'A000000001', '2023-12-13 10:20:53', NULL, '2023-12-13 03:20:53', '2023-12-13 03:20:53'),
(816, 'A000000001', NULL, '2023-12-13 10:21:54', '2023-12-13 03:21:54', '2023-12-13 03:21:54'),
(817, 'A000000001', '2023-12-13 10:24:08', NULL, '2023-12-13 03:24:08', '2023-12-13 03:24:08'),
(818, 'A000000001', NULL, '2023-12-13 10:24:08', '2023-12-13 03:24:08', '2023-12-13 03:24:08'),
(819, 'A000000001', '2023-12-13 10:24:09', NULL, '2023-12-13 03:24:09', '2023-12-13 03:24:09'),
(820, 'A000000001', NULL, '2023-12-13 10:24:09', '2023-12-13 03:24:09', '2023-12-13 03:24:09'),
(821, 'A000000001', '2023-12-13 10:24:11', NULL, '2023-12-13 03:24:11', '2023-12-13 03:24:11'),
(822, 'A000000001', NULL, '2023-12-13 10:25:11', '2023-12-13 03:25:11', '2023-12-13 03:25:11'),
(823, 'A000000001', '2023-12-13 10:42:52', NULL, '2023-12-13 03:42:52', '2023-12-13 03:42:52'),
(824, 'A000000001', NULL, '2023-12-13 10:42:52', '2023-12-13 03:42:52', '2023-12-13 03:42:52'),
(825, 'A000000001', '2023-12-13 10:42:54', NULL, '2023-12-13 03:42:54', '2023-12-13 03:42:54'),
(826, 'A000000001', NULL, '2023-12-13 10:43:54', '2023-12-13 03:43:54', '2023-12-13 03:43:54'),
(827, 'A000000001', '2023-12-13 11:09:03', NULL, '2023-12-13 04:09:03', '2023-12-13 04:09:03'),
(828, 'A000000001', NULL, '2023-12-13 11:09:03', '2023-12-13 04:09:03', '2023-12-13 04:09:03'),
(829, 'A000000001', '2023-12-13 11:09:06', NULL, '2023-12-13 04:09:06', '2023-12-13 04:09:06'),
(830, 'A000000001', NULL, '2023-12-13 11:09:06', '2023-12-13 04:09:06', '2023-12-13 04:09:06'),
(831, 'A000000001', '2023-12-13 11:09:12', NULL, '2023-12-13 04:09:12', '2023-12-13 04:09:12'),
(832, 'A000000001', NULL, '2023-12-13 11:09:12', '2023-12-13 04:09:12', '2023-12-13 04:09:12'),
(833, 'A000000001', '2023-12-13 11:09:24', NULL, '2023-12-13 04:09:24', '2023-12-13 04:09:24'),
(834, 'A000000001', NULL, '2023-12-13 11:10:24', '2023-12-13 04:10:24', '2023-12-13 04:10:24'),
(835, 'A000000001', '2023-12-13 11:10:56', NULL, '2023-12-13 04:10:56', '2023-12-13 04:10:56'),
(836, 'A000000001', NULL, '2023-12-13 11:10:56', '2023-12-13 04:10:56', '2023-12-13 04:10:56'),
(837, 'A000000001', '2023-12-13 11:10:57', NULL, '2023-12-13 04:10:57', '2023-12-13 04:10:57'),
(838, 'A000000001', NULL, '2023-12-13 11:11:58', '2023-12-13 04:11:58', '2023-12-13 04:11:58'),
(839, 'A000000001', '2023-12-13 12:19:06', NULL, '2023-12-13 05:19:06', '2023-12-13 05:19:06'),
(840, 'A000000001', NULL, '2023-12-13 12:19:06', '2023-12-13 05:19:06', '2023-12-13 05:19:06'),
(841, 'A000000001', '2023-12-13 12:19:08', NULL, '2023-12-13 05:19:08', '2023-12-13 05:19:08'),
(842, 'A000000001', NULL, '2023-12-13 12:19:08', '2023-12-13 05:19:08', '2023-12-13 05:19:08'),
(843, 'A000000001', '2023-12-13 12:19:14', NULL, '2023-12-13 05:19:14', '2023-12-13 05:19:14'),
(844, 'A000000001', '2023-12-14 13:22:47', NULL, '2023-12-14 06:22:47', '2023-12-14 06:22:47'),
(845, 'A000000001', NULL, '2023-12-14 13:22:47', '2023-12-14 06:22:47', '2023-12-14 06:22:47'),
(846, 'A000000001', '2023-12-14 13:22:47', NULL, '2023-12-14 06:22:47', '2023-12-14 06:22:47'),
(847, 'A000000001', NULL, '2023-12-14 13:22:47', '2023-12-14 06:22:47', '2023-12-14 06:22:47'),
(848, 'A000000001', '2023-12-14 13:22:50', NULL, '2023-12-14 06:22:50', '2023-12-14 06:22:50'),
(849, 'A000000001', NULL, '2023-12-14 13:22:50', '2023-12-14 06:22:50', '2023-12-14 06:22:50'),
(850, 'A000000001', '2023-12-14 13:22:52', NULL, '2023-12-14 06:22:52', '2023-12-14 06:22:52'),
(851, 'A000000001', NULL, '2023-12-14 13:22:52', '2023-12-14 06:22:52', '2023-12-14 06:22:52'),
(852, 'A000000001', '2023-12-14 13:22:59', NULL, '2023-12-14 06:22:59', '2023-12-14 06:22:59'),
(853, 'A000000001', NULL, '2023-12-14 13:24:00', '2023-12-14 06:24:00', '2023-12-14 06:24:00'),
(854, 'A000000001', '2023-12-14 13:25:12', NULL, '2023-12-14 06:25:12', '2023-12-14 06:25:12'),
(855, 'A000000001', NULL, '2023-12-14 13:25:12', '2023-12-14 06:25:12', '2023-12-14 06:25:12'),
(856, 'A000000001', '2023-12-14 13:25:14', NULL, '2023-12-14 06:25:14', '2023-12-14 06:25:14'),
(857, 'A000000001', NULL, '2023-12-14 13:26:15', '2023-12-14 06:26:15', '2023-12-14 06:26:15'),
(858, 'A000000001', '2023-12-14 13:42:39', NULL, '2023-12-14 06:42:39', '2023-12-14 06:42:39'),
(859, 'A000000001', NULL, '2023-12-14 13:42:39', '2023-12-14 06:42:39', '2023-12-14 06:42:39'),
(860, 'A000000001', '2023-12-14 13:42:41', NULL, '2023-12-14 06:42:41', '2023-12-14 06:42:41'),
(861, 'A000000001', NULL, '2023-12-14 13:42:42', '2023-12-14 06:42:42', '2023-12-14 06:42:42'),
(862, 'A000000001', '2023-12-14 13:43:09', NULL, '2023-12-14 06:43:09', '2023-12-14 06:43:09'),
(863, 'A000000001', NULL, '2023-12-14 13:43:09', '2023-12-14 06:43:09', '2023-12-14 06:43:09'),
(864, 'A000000001', '2023-12-14 13:43:11', NULL, '2023-12-14 06:43:11', '2023-12-14 06:43:11'),
(865, 'A000000001', NULL, '2023-12-14 13:43:11', '2023-12-14 06:43:11', '2023-12-14 06:43:11'),
(866, 'A000000001', '2023-12-14 13:43:59', NULL, '2023-12-14 06:43:59', '2023-12-14 06:43:59'),
(867, 'A000000001', NULL, '2023-12-14 13:43:59', '2023-12-14 06:43:59', '2023-12-14 06:43:59'),
(868, 'A000000001', '2023-12-14 13:44:04', NULL, '2023-12-14 06:44:04', '2023-12-14 06:44:04'),
(869, 'A000000001', NULL, '2023-12-14 13:45:04', '2023-12-14 06:45:04', '2023-12-14 06:45:04'),
(870, 'A000000001', '2023-12-14 13:46:07', NULL, '2023-12-14 06:46:07', '2023-12-14 06:46:07'),
(871, 'A000000001', NULL, '2023-12-14 13:46:07', '2023-12-14 06:46:07', '2023-12-14 06:46:07'),
(872, 'A000000001', '2023-12-14 13:46:09', NULL, '2023-12-14 06:46:09', '2023-12-14 06:46:09'),
(873, 'A000000001', NULL, '2023-12-14 13:47:09', '2023-12-14 06:47:09', '2023-12-14 06:47:09'),
(874, 'A000000001', '2023-12-14 14:48:28', NULL, '2023-12-14 07:48:28', '2023-12-14 07:48:28'),
(875, 'A000000001', NULL, '2023-12-14 14:48:28', '2023-12-14 07:48:28', '2023-12-14 07:48:28'),
(876, 'A000000001', '2023-12-15 20:48:22', NULL, '2023-12-15 13:48:22', '2023-12-15 13:48:22'),
(877, 'A000000001', NULL, '2023-12-15 20:48:22', '2023-12-15 13:48:22', '2023-12-15 13:48:22'),
(878, 'A000000001', '2023-12-15 20:48:22', NULL, '2023-12-15 13:48:22', '2023-12-15 13:48:22'),
(879, 'A000000001', NULL, '2023-12-15 20:48:22', '2023-12-15 13:48:22', '2023-12-15 13:48:22'),
(880, 'A000000001', '2023-12-15 20:48:25', NULL, '2023-12-15 13:48:25', '2023-12-15 13:48:25'),
(881, 'A000000001', NULL, '2023-12-15 20:48:25', '2023-12-15 13:48:25', '2023-12-15 13:48:25'),
(882, 'A000000001', '2023-12-15 20:48:27', NULL, '2023-12-15 13:48:27', '2023-12-15 13:48:27'),
(883, 'A000000001', NULL, '2023-12-15 20:48:27', '2023-12-15 13:48:27', '2023-12-15 13:48:27'),
(884, 'A000000001', '2023-12-15 20:48:28', NULL, '2023-12-15 13:48:28', '2023-12-15 13:48:28'),
(885, 'A000000001', NULL, '2023-12-15 20:48:28', '2023-12-15 13:48:28', '2023-12-15 13:48:28'),
(886, 'A000000001', '2023-12-15 20:48:32', NULL, '2023-12-15 13:48:32', '2023-12-15 13:48:32'),
(887, 'A000000001', NULL, '2023-12-15 20:48:32', '2023-12-15 13:48:32', '2023-12-15 13:48:32'),
(888, 'A000000001', '2023-12-15 20:48:34', NULL, '2023-12-15 13:48:34', '2023-12-15 13:48:34'),
(889, 'A000000001', NULL, '2023-12-15 20:48:34', '2023-12-15 13:48:34', '2023-12-15 13:48:34'),
(890, 'A000000001', '2023-12-15 20:48:34', NULL, '2023-12-15 13:48:34', '2023-12-15 13:48:34'),
(891, 'A000000001', NULL, '2023-12-15 20:48:35', '2023-12-15 13:48:35', '2023-12-15 13:48:35'),
(892, 'A000000001', '2023-12-15 20:49:05', NULL, '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(893, 'A000000001', NULL, '2023-12-15 20:49:05', '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(894, 'A000000001', '2023-12-15 20:49:05', NULL, '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(895, 'A000000001', NULL, '2023-12-15 20:49:05', '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(896, 'A000000001', '2023-12-15 20:49:05', NULL, '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(897, 'A000000001', NULL, '2023-12-15 20:49:05', '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(898, 'A000000001', '2023-12-15 20:49:05', NULL, '2023-12-15 13:49:05', '2023-12-15 13:49:05'),
(899, 'A000000001', NULL, '2023-12-15 20:49:06', '2023-12-15 13:49:06', '2023-12-15 13:49:06'),
(900, 'A000000001', '2023-12-15 20:49:49', NULL, '2023-12-15 13:49:49', '2023-12-15 13:49:49'),
(901, 'A000000001', NULL, '2023-12-15 20:49:50', '2023-12-15 13:49:50', '2023-12-15 13:49:50'),
(902, 'A000000001', '2023-12-15 20:49:50', NULL, '2023-12-15 13:49:50', '2023-12-15 13:49:50'),
(903, 'A000000001', NULL, '2023-12-15 20:49:50', '2023-12-15 13:49:50', '2023-12-15 13:49:50'),
(904, 'A000000001', '2023-12-15 20:49:53', NULL, '2023-12-15 13:49:53', '2023-12-15 13:49:53'),
(905, 'A000000001', NULL, '2023-12-15 20:49:53', '2023-12-15 13:49:53', '2023-12-15 13:49:53'),
(906, 'A000000001', '2023-12-15 20:49:56', NULL, '2023-12-15 13:49:56', '2023-12-15 13:49:56'),
(907, 'A000000001', NULL, '2023-12-15 20:49:56', '2023-12-15 13:49:56', '2023-12-15 13:49:56'),
(908, 'A000000001', '2023-12-15 20:49:56', NULL, '2023-12-15 13:49:56', '2023-12-15 13:49:56'),
(909, 'A000000001', NULL, '2023-12-15 20:49:56', '2023-12-15 13:49:56', '2023-12-15 13:49:56'),
(910, 'A000000001', '2023-12-15 20:49:56', NULL, '2023-12-15 13:49:56', '2023-12-15 13:49:56'),
(911, 'A000000001', NULL, '2023-12-15 20:49:57', '2023-12-15 13:49:57', '2023-12-15 13:49:57'),
(912, 'A000000001', '2023-12-15 20:50:00', NULL, '2023-12-15 13:50:00', '2023-12-15 13:50:00'),
(913, 'A000000001', NULL, '2023-12-15 20:50:00', '2023-12-15 13:50:00', '2023-12-15 13:50:00'),
(914, 'A000000001', '2023-12-15 22:13:57', NULL, '2023-12-15 15:13:57', '2023-12-15 15:13:57'),
(915, 'A000000001', NULL, '2023-12-15 22:13:57', '2023-12-15 15:13:57', '2023-12-15 15:13:57'),
(916, 'A000000001', '2023-12-18 12:48:13', NULL, '2023-12-18 05:48:13', '2023-12-18 05:48:13'),
(917, 'A000000001', NULL, '2023-12-18 12:48:13', '2023-12-18 05:48:13', '2023-12-18 05:48:13'),
(918, 'A000000001', '2023-12-18 12:48:13', NULL, '2023-12-18 05:48:13', '2023-12-18 05:48:13'),
(919, 'A000000001', NULL, '2023-12-18 12:48:14', '2023-12-18 05:48:14', '2023-12-18 05:48:14'),
(920, 'A000000001', '2023-12-18 12:50:22', NULL, '2023-12-18 05:50:22', '2023-12-18 05:50:22'),
(921, 'A000000001', NULL, '2023-12-18 12:50:22', '2023-12-18 05:50:22', '2023-12-18 05:50:22'),
(922, 'A000000001', '2023-12-18 12:52:36', NULL, '2023-12-18 05:52:36', '2023-12-18 05:52:36'),
(923, 'A000000001', NULL, '2023-12-18 12:52:36', '2023-12-18 05:52:36', '2023-12-18 05:52:36'),
(924, 'A000000001', '2023-12-18 12:53:39', NULL, '2023-12-18 05:53:39', '2023-12-18 05:53:39'),
(925, 'A000000001', NULL, '2023-12-18 12:53:40', '2023-12-18 05:53:40', '2023-12-18 05:53:40'),
(926, 'A000000001', '2023-12-18 12:56:03', NULL, '2023-12-18 05:56:03', '2023-12-18 05:56:03'),
(927, 'A000000001', NULL, '2023-12-18 12:56:03', '2023-12-18 05:56:03', '2023-12-18 05:56:03'),
(928, 'A000000001', '2023-12-18 12:56:14', NULL, '2023-12-18 05:56:14', '2023-12-18 05:56:14'),
(929, 'A000000001', NULL, '2023-12-18 12:56:14', '2023-12-18 05:56:14', '2023-12-18 05:56:14'),
(930, 'A000000001', '2023-12-18 12:57:37', NULL, '2023-12-18 05:57:37', '2023-12-18 05:57:37'),
(931, 'A000000001', NULL, '2023-12-18 12:57:37', '2023-12-18 05:57:37', '2023-12-18 05:57:37'),
(932, 'A000000001', '2023-12-18 14:25:06', NULL, '2023-12-18 07:25:06', '2023-12-18 07:25:06'),
(933, 'A000000001', NULL, '2023-12-18 14:25:06', '2023-12-18 07:25:06', '2023-12-18 07:25:06'),
(934, 'A000000001', '2023-12-18 17:00:34', NULL, '2023-12-18 10:00:34', '2023-12-18 10:00:34'),
(935, 'A000000001', NULL, '2023-12-18 17:00:34', '2023-12-18 10:00:34', '2023-12-18 10:00:34'),
(936, 'A000000001', '2023-12-18 17:00:34', NULL, '2023-12-18 10:00:34', '2023-12-18 10:00:34'),
(937, 'A000000001', NULL, '2023-12-18 17:00:34', '2023-12-18 10:00:34', '2023-12-18 10:00:34'),
(938, 'A000000001', '2023-12-18 17:00:57', NULL, '2023-12-18 10:00:57', '2023-12-18 10:00:57'),
(939, 'A000000001', NULL, '2023-12-18 17:00:57', '2023-12-18 10:00:57', '2023-12-18 10:00:57'),
(940, 'A000000001', '2023-12-18 17:02:16', NULL, '2023-12-18 10:02:16', '2023-12-18 10:02:16'),
(941, 'A000000001', NULL, '2023-12-18 17:02:16', '2023-12-18 10:02:16', '2023-12-18 10:02:16'),
(942, 'A000000001', '2023-12-18 17:02:28', NULL, '2023-12-18 10:02:28', '2023-12-18 10:02:28'),
(943, 'A000000001', NULL, '2023-12-18 17:02:28', '2023-12-18 10:02:28', '2023-12-18 10:02:28'),
(944, 'A000000001', '2023-12-18 17:04:56', NULL, '2023-12-18 10:04:56', '2023-12-18 10:04:56'),
(945, 'A000000001', NULL, '2023-12-18 17:04:57', '2023-12-18 10:04:57', '2023-12-18 10:04:57'),
(946, 'A000000001', '2023-12-18 17:05:43', NULL, '2023-12-18 10:05:43', '2023-12-18 10:05:43'),
(947, 'A000000001', NULL, '2023-12-18 17:05:43', '2023-12-18 10:05:43', '2023-12-18 10:05:43'),
(948, 'A000000001', '2023-12-18 17:06:06', NULL, '2023-12-18 10:06:06', '2023-12-18 10:06:06'),
(949, 'A000000001', NULL, '2023-12-18 17:06:06', '2023-12-18 10:06:06', '2023-12-18 10:06:06'),
(950, 'A000000001', '2023-12-18 17:06:46', NULL, '2023-12-18 10:06:46', '2023-12-18 10:06:46'),
(951, 'A000000001', NULL, '2023-12-18 17:06:46', '2023-12-18 10:06:46', '2023-12-18 10:06:46'),
(952, 'A000000001', '2023-12-18 17:07:14', NULL, '2023-12-18 10:07:14', '2023-12-18 10:07:14'),
(953, 'A000000001', NULL, '2023-12-18 17:07:14', '2023-12-18 10:07:14', '2023-12-18 10:07:14'),
(954, 'A000000001', '2023-12-18 19:20:41', NULL, '2023-12-18 12:20:41', '2023-12-18 12:20:41'),
(955, 'A000000001', NULL, '2023-12-18 19:20:41', '2023-12-18 12:20:41', '2023-12-18 12:20:41'),
(956, 'A000000001', '2023-12-18 19:20:41', NULL, '2023-12-18 12:20:41', '2023-12-18 12:20:41'),
(957, 'A000000001', NULL, '2023-12-18 19:20:41', '2023-12-18 12:20:41', '2023-12-18 12:20:41'),
(958, 'A000000001', '2023-12-18 19:20:45', NULL, '2023-12-18 12:20:45', '2023-12-18 12:20:45'),
(959, 'A000000001', NULL, '2023-12-18 19:20:45', '2023-12-18 12:20:45', '2023-12-18 12:20:45'),
(960, 'A000000001', '2023-12-18 19:20:48', NULL, '2023-12-18 12:20:48', '2023-12-18 12:20:48'),
(961, 'A000000001', NULL, '2023-12-18 19:20:49', '2023-12-18 12:20:49', '2023-12-18 12:20:49'),
(962, 'A000000001', '2023-12-18 19:21:12', NULL, '2023-12-18 12:21:12', '2023-12-18 12:21:12'),
(963, 'A000000001', NULL, '2023-12-18 19:21:12', '2023-12-18 12:21:12', '2023-12-18 12:21:12'),
(964, 'A000000001', '2023-12-18 19:21:13', NULL, '2023-12-18 12:21:13', '2023-12-18 12:21:13'),
(965, 'A000000001', NULL, '2023-12-18 19:22:14', '2023-12-18 12:22:14', '2023-12-18 12:22:14'),
(966, 'A000000001', '2023-12-18 19:30:15', NULL, '2023-12-18 12:30:15', '2023-12-18 12:30:15'),
(967, 'A000000001', NULL, '2023-12-18 19:30:15', '2023-12-18 12:30:15', '2023-12-18 12:30:15'),
(968, 'A000000001', '2023-12-18 19:30:17', NULL, '2023-12-18 12:30:17', '2023-12-18 12:30:17'),
(969, 'A000000001', NULL, '2023-12-18 19:30:17', '2023-12-18 12:30:17', '2023-12-18 12:30:17'),
(970, 'A000000001', '2023-12-18 19:30:34', NULL, '2023-12-18 12:30:34', '2023-12-18 12:30:34'),
(971, 'A000000001', NULL, '2023-12-18 19:30:34', '2023-12-18 12:30:34', '2023-12-18 12:30:34'),
(972, 'A000000001', '2023-12-18 19:30:36', NULL, '2023-12-18 12:30:36', '2023-12-18 12:30:36'),
(973, 'A000000001', NULL, '2023-12-18 19:30:36', '2023-12-18 12:30:36', '2023-12-18 12:30:36'),
(974, 'A000000001', '2023-12-18 19:30:38', NULL, '2023-12-18 12:30:38', '2023-12-18 12:30:38'),
(975, 'A000000001', NULL, '2023-12-18 19:30:38', '2023-12-18 12:30:38', '2023-12-18 12:30:38'),
(976, 'A000000001', '2023-12-18 19:31:43', NULL, '2023-12-18 12:31:43', '2023-12-18 12:31:43'),
(977, 'A000000001', NULL, '2023-12-18 19:31:43', '2023-12-18 12:31:43', '2023-12-18 12:31:43'),
(978, 'A000000001', '2023-12-18 19:31:44', NULL, '2023-12-18 12:31:44', '2023-12-18 12:31:44'),
(979, 'A000000001', NULL, '2023-12-18 19:31:44', '2023-12-18 12:31:44', '2023-12-18 12:31:44'),
(980, 'A000000001', '2023-12-18 19:32:21', NULL, '2023-12-18 12:32:21', '2023-12-18 12:32:21'),
(981, 'A000000001', NULL, '2023-12-18 19:32:21', '2023-12-18 12:32:21', '2023-12-18 12:32:21'),
(982, 'A000000001', '2023-12-18 19:34:22', NULL, '2023-12-18 12:34:22', '2023-12-18 12:34:22'),
(983, 'A000000001', NULL, '2023-12-18 19:34:22', '2023-12-18 12:34:22', '2023-12-18 12:34:22'),
(984, 'A000000001', '2023-12-18 19:34:25', NULL, '2023-12-18 12:34:25', '2023-12-18 12:34:25'),
(985, 'A000000001', NULL, '2023-12-18 19:34:26', '2023-12-18 12:34:26', '2023-12-18 12:34:26'),
(986, 'A000000001', '2023-12-18 19:34:41', NULL, '2023-12-18 12:34:41', '2023-12-18 12:34:41'),
(987, 'A000000001', NULL, '2023-12-18 19:34:41', '2023-12-18 12:34:41', '2023-12-18 12:34:41'),
(988, 'A000000001', '2023-12-18 19:34:42', NULL, '2023-12-18 12:34:42', '2023-12-18 12:34:42'),
(989, 'A000000001', NULL, '2023-12-18 19:34:42', '2023-12-18 12:34:42', '2023-12-18 12:34:42'),
(990, 'A000000001', '2023-12-18 19:35:06', NULL, '2023-12-18 12:35:06', '2023-12-18 12:35:06'),
(991, 'A000000001', NULL, '2023-12-18 19:35:06', '2023-12-18 12:35:06', '2023-12-18 12:35:06'),
(992, 'A000000001', '2023-12-18 19:35:08', NULL, '2023-12-18 12:35:08', '2023-12-18 12:35:08'),
(993, 'A000000001', NULL, '2023-12-18 19:35:08', '2023-12-18 12:35:08', '2023-12-18 12:35:08'),
(994, 'A000000001', '2023-12-18 19:35:15', NULL, '2023-12-18 12:35:15', '2023-12-18 12:35:15'),
(995, 'A000000001', NULL, '2023-12-18 19:35:15', '2023-12-18 12:35:15', '2023-12-18 12:35:15'),
(996, 'A000000001', '2023-12-18 19:35:17', NULL, '2023-12-18 12:35:17', '2023-12-18 12:35:17'),
(997, 'A000000001', NULL, '2023-12-18 19:35:17', '2023-12-18 12:35:17', '2023-12-18 12:35:17'),
(998, 'A000000001', '2023-12-18 19:35:20', NULL, '2023-12-18 12:35:20', '2023-12-18 12:35:20'),
(999, 'A000000001', NULL, '2023-12-18 19:35:20', '2023-12-18 12:35:20', '2023-12-18 12:35:20'),
(1000, 'A000000001', '2023-12-18 19:37:02', NULL, '2023-12-18 12:37:02', '2023-12-18 12:37:02'),
(1001, 'A000000001', NULL, '2023-12-18 19:37:02', '2023-12-18 12:37:02', '2023-12-18 12:37:02'),
(1002, 'A000000001', '2023-12-18 19:37:30', NULL, '2023-12-18 12:37:30', '2023-12-18 12:37:30'),
(1003, 'A000000001', NULL, '2023-12-18 19:37:31', '2023-12-18 12:37:31', '2023-12-18 12:37:31'),
(1004, 'A000000001', '2023-12-18 19:37:33', NULL, '2023-12-18 12:37:33', '2023-12-18 12:37:33'),
(1005, 'A000000001', NULL, '2023-12-18 19:37:33', '2023-12-18 12:37:33', '2023-12-18 12:37:33'),
(1006, 'A000000001', '2023-12-18 20:05:47', NULL, '2023-12-18 13:05:47', '2023-12-18 13:05:47'),
(1007, 'A000000001', NULL, '2023-12-18 20:05:47', '2023-12-18 13:05:47', '2023-12-18 13:05:47'),
(1008, 'A000000001', '2023-12-18 20:06:01', NULL, '2023-12-18 13:06:01', '2023-12-18 13:06:01'),
(1009, 'A000000001', NULL, '2023-12-18 20:06:01', '2023-12-18 13:06:01', '2023-12-18 13:06:01'),
(1010, 'A000000001', '2023-12-18 20:11:45', NULL, '2023-12-18 13:11:45', '2023-12-18 13:11:45'),
(1011, 'A000000001', NULL, '2023-12-18 20:11:45', '2023-12-18 13:11:45', '2023-12-18 13:11:45'),
(1012, 'A000000001', '2023-12-18 20:18:18', NULL, '2023-12-18 13:18:18', '2023-12-18 13:18:18'),
(1013, 'A000000001', NULL, '2023-12-18 20:18:19', '2023-12-18 13:18:19', '2023-12-18 13:18:19'),
(1014, 'A000000001', '2023-12-18 20:21:58', NULL, '2023-12-18 13:21:58', '2023-12-18 13:21:58'),
(1015, 'A000000001', NULL, '2023-12-18 20:21:59', '2023-12-18 13:21:59', '2023-12-18 13:21:59'),
(1016, 'A000000001', '2023-12-18 20:23:51', NULL, '2023-12-18 13:23:51', '2023-12-18 13:23:51'),
(1017, 'A000000001', NULL, '2023-12-18 20:23:51', '2023-12-18 13:23:51', '2023-12-18 13:23:51'),
(1018, 'A000000001', '2023-12-19 12:26:21', NULL, '2023-12-19 05:26:21', '2023-12-19 05:26:21'),
(1019, 'A000000001', NULL, '2023-12-19 12:26:21', '2023-12-19 05:26:21', '2023-12-19 05:26:21'),
(1020, 'A000000001', '2023-12-19 12:26:21', NULL, '2023-12-19 05:26:21', '2023-12-19 05:26:21'),
(1021, 'A000000001', NULL, '2023-12-19 12:26:21', '2023-12-19 05:26:21', '2023-12-19 05:26:21'),
(1022, 'A000000001', '2023-12-19 12:26:31', NULL, '2023-12-19 05:26:31', '2023-12-19 05:26:31'),
(1023, 'A000000001', NULL, '2023-12-19 12:26:31', '2023-12-19 05:26:31', '2023-12-19 05:26:31'),
(1024, 'A000000001', '2023-12-19 12:26:33', NULL, '2023-12-19 05:26:33', '2023-12-19 05:26:33'),
(1025, 'A000000001', NULL, '2023-12-19 12:26:33', '2023-12-19 05:26:33', '2023-12-19 05:26:33'),
(1026, 'A000000001', '2023-12-19 12:26:35', NULL, '2023-12-19 05:26:35', '2023-12-19 05:26:35'),
(1027, 'A000000001', NULL, '2023-12-19 12:26:35', '2023-12-19 05:26:35', '2023-12-19 05:26:35'),
(1028, 'A000000001', '2023-12-19 12:27:53', NULL, '2023-12-19 05:27:53', '2023-12-19 05:27:53'),
(1029, 'A000000001', NULL, '2023-12-19 12:27:53', '2023-12-19 05:27:53', '2023-12-19 05:27:53'),
(1030, 'A000000001', '2023-12-19 12:27:54', NULL, '2023-12-19 05:27:54', '2023-12-19 05:27:54'),
(1031, 'A000000001', NULL, '2023-12-19 12:27:55', '2023-12-19 05:27:55', '2023-12-19 05:27:55'),
(1032, 'A000000001', '2023-12-19 12:58:01', NULL, '2023-12-19 05:58:01', '2023-12-19 05:58:01'),
(1033, 'A000000001', NULL, '2023-12-19 12:58:01', '2023-12-19 05:58:01', '2023-12-19 05:58:01'),
(1034, 'A000000001', '2023-12-19 12:58:03', NULL, '2023-12-19 05:58:03', '2023-12-19 05:58:03'),
(1035, 'A000000001', NULL, '2023-12-19 12:58:04', '2023-12-19 05:58:04', '2023-12-19 05:58:04'),
(1036, 'A000000001', '2023-12-19 12:58:32', NULL, '2023-12-19 05:58:32', '2023-12-19 05:58:32'),
(1037, 'A000000001', NULL, '2023-12-19 12:58:32', '2023-12-19 05:58:32', '2023-12-19 05:58:32'),
(1038, 'A000000001', '2023-12-19 12:58:34', NULL, '2023-12-19 05:58:34', '2023-12-19 05:58:34'),
(1039, 'A000000001', NULL, '2023-12-19 12:59:34', '2023-12-19 05:59:34', '2023-12-19 05:59:34'),
(1040, 'A000000001', '2023-12-19 13:01:07', NULL, '2023-12-19 06:01:07', '2023-12-19 06:01:07'),
(1041, 'A000000001', NULL, '2023-12-19 13:02:07', '2023-12-19 06:02:07', '2023-12-19 06:02:07'),
(1042, 'A000000001', '2023-12-19 13:02:33', NULL, '2023-12-19 06:02:33', '2023-12-19 06:02:33'),
(1043, 'A000000001', NULL, '2023-12-19 13:02:33', '2023-12-19 06:02:33', '2023-12-19 06:02:33'),
(1044, 'A000000001', '2023-12-19 13:02:34', NULL, '2023-12-19 06:02:34', '2023-12-19 06:02:34'),
(1045, 'A000000001', NULL, '2023-12-19 13:02:34', '2023-12-19 06:02:34', '2023-12-19 06:02:34'),
(1046, 'A000000001', '2023-12-19 13:02:43', NULL, '2023-12-19 06:02:43', '2023-12-19 06:02:43'),
(1047, 'A000000001', NULL, '2023-12-19 13:02:43', '2023-12-19 06:02:43', '2023-12-19 06:02:43'),
(1048, 'A000000001', '2023-12-19 13:02:44', NULL, '2023-12-19 06:02:44', '2023-12-19 06:02:44'),
(1049, 'A000000001', NULL, '2023-12-19 13:02:44', '2023-12-19 06:02:44', '2023-12-19 06:02:44'),
(1050, 'A000000001', '2023-12-19 13:18:15', NULL, '2023-12-19 06:18:15', '2023-12-19 06:18:15'),
(1051, 'A000000001', NULL, '2023-12-19 13:18:15', '2023-12-19 06:18:15', '2023-12-19 06:18:15'),
(1052, 'A000000001', '2023-12-19 13:18:17', NULL, '2023-12-19 06:18:17', '2023-12-19 06:18:17'),
(1053, 'A000000001', NULL, '2023-12-19 13:19:17', '2023-12-19 06:19:17', '2023-12-19 06:19:17'),
(1054, 'A000000001', '2023-12-19 13:24:17', NULL, '2023-12-19 06:24:17', '2023-12-19 06:24:17'),
(1055, 'A000000001', NULL, '2023-12-19 13:24:17', '2023-12-19 06:24:17', '2023-12-19 06:24:17'),
(1056, 'A000000001', '2023-12-19 13:24:19', NULL, '2023-12-19 06:24:19', '2023-12-19 06:24:19'),
(1057, 'A000000001', NULL, '2023-12-19 13:24:19', '2023-12-19 06:24:19', '2023-12-19 06:24:19'),
(1058, 'A000000001', '2023-12-19 15:36:59', NULL, '2023-12-19 08:36:59', '2023-12-19 08:36:59'),
(1059, 'A000000001', NULL, '2023-12-19 15:36:59', '2023-12-19 08:36:59', '2023-12-19 08:36:59'),
(1060, 'A000000001', '2023-12-19 15:36:59', NULL, '2023-12-19 08:36:59', '2023-12-19 08:36:59'),
(1061, 'A000000001', NULL, '2023-12-19 15:36:59', '2023-12-19 08:36:59', '2023-12-19 08:36:59');
INSERT INTO `traffic_login` (`trafficID`, `userID`, `login`, `logout`, `created_at`, `updated_at`) VALUES
(1062, 'A000000001', '2023-12-19 15:37:51', NULL, '2023-12-19 08:37:51', '2023-12-19 08:37:51'),
(1063, 'A000000001', NULL, '2023-12-19 15:37:51', '2023-12-19 08:37:51', '2023-12-19 08:37:51'),
(1064, 'A000000001', '2023-12-19 15:37:53', NULL, '2023-12-19 08:37:53', '2023-12-19 08:37:53'),
(1065, 'A000000001', NULL, '2023-12-19 15:37:53', '2023-12-19 08:37:53', '2023-12-19 08:37:53'),
(1066, 'A000000001', '2023-12-19 15:37:55', NULL, '2023-12-19 08:37:55', '2023-12-19 08:37:55'),
(1067, 'A000000001', NULL, '2023-12-19 15:38:56', '2023-12-19 08:38:56', '2023-12-19 08:38:56'),
(1068, 'A000000001', '2023-12-19 15:38:56', NULL, '2023-12-19 08:38:56', '2023-12-19 08:38:56'),
(1069, 'A000000001', NULL, '2023-12-19 15:38:56', '2023-12-19 08:38:56', '2023-12-19 08:38:56'),
(1070, 'A000000001', '2023-12-19 15:39:16', NULL, '2023-12-19 08:39:16', '2023-12-19 08:39:16'),
(1071, 'A000000001', NULL, '2023-12-19 15:39:16', '2023-12-19 08:39:16', '2023-12-19 08:39:16'),
(1072, 'A000000001', '2023-12-19 15:39:17', NULL, '2023-12-19 08:39:17', '2023-12-19 08:39:17'),
(1073, 'A000000001', NULL, '2023-12-19 15:39:17', '2023-12-19 08:39:17', '2023-12-19 08:39:17'),
(1074, 'A000000001', '2023-12-19 15:39:19', NULL, '2023-12-19 08:39:19', '2023-12-19 08:39:19'),
(1075, 'A000000001', NULL, '2023-12-19 15:39:19', '2023-12-19 08:39:19', '2023-12-19 08:39:19'),
(1076, 'A000000001', '2023-12-19 15:39:26', NULL, '2023-12-19 08:39:26', '2023-12-19 08:39:26'),
(1077, 'A000000001', NULL, '2023-12-19 15:39:26', '2023-12-19 08:39:26', '2023-12-19 08:39:26'),
(1078, 'A000000001', '2023-12-19 15:39:53', NULL, '2023-12-19 08:39:53', '2023-12-19 08:39:53'),
(1079, 'A000000001', NULL, '2023-12-19 15:39:53', '2023-12-19 08:39:53', '2023-12-19 08:39:53'),
(1080, 'A000000001', '2023-12-19 15:41:21', NULL, '2023-12-19 08:41:21', '2023-12-19 08:41:21'),
(1081, 'A000000001', NULL, '2023-12-19 15:41:21', '2023-12-19 08:41:21', '2023-12-19 08:41:21'),
(1082, 'A000000001', '2023-12-19 15:41:24', NULL, '2023-12-19 08:41:24', '2023-12-19 08:41:24'),
(1083, 'A000000001', NULL, '2023-12-19 15:41:24', '2023-12-19 08:41:24', '2023-12-19 08:41:24'),
(1084, 'A000000001', '2023-12-19 15:42:05', NULL, '2023-12-19 08:42:05', '2023-12-19 08:42:05'),
(1085, 'A000000001', NULL, '2023-12-19 15:42:05', '2023-12-19 08:42:05', '2023-12-19 08:42:05'),
(1086, 'A000000001', '2023-12-19 15:42:07', NULL, '2023-12-19 08:42:07', '2023-12-19 08:42:07'),
(1087, 'A000000001', NULL, '2023-12-19 15:42:07', '2023-12-19 08:42:07', '2023-12-19 08:42:07'),
(1088, 'A000000001', '2023-12-19 15:42:11', NULL, '2023-12-19 08:42:11', '2023-12-19 08:42:11'),
(1089, 'A000000001', NULL, '2023-12-19 15:42:11', '2023-12-19 08:42:11', '2023-12-19 08:42:11'),
(1090, 'A000000001', '2023-12-19 15:42:13', NULL, '2023-12-19 08:42:13', '2023-12-19 08:42:13'),
(1091, 'A000000001', NULL, '2023-12-19 15:42:13', '2023-12-19 08:42:13', '2023-12-19 08:42:13'),
(1092, 'A000000001', '2023-12-19 15:42:15', NULL, '2023-12-19 08:42:15', '2023-12-19 08:42:15'),
(1093, 'A000000001', NULL, '2023-12-19 15:42:16', '2023-12-19 08:42:16', '2023-12-19 08:42:16'),
(1094, 'A000000001', '2023-12-19 15:48:14', NULL, '2023-12-19 08:48:14', '2023-12-19 08:48:14'),
(1095, 'A000000001', NULL, '2023-12-19 15:48:14', '2023-12-19 08:48:14', '2023-12-19 08:48:14'),
(1096, 'A000000001', '2023-12-19 15:48:17', NULL, '2023-12-19 08:48:17', '2023-12-19 08:48:17'),
(1097, 'A000000001', NULL, '2023-12-19 15:48:17', '2023-12-19 08:48:17', '2023-12-19 08:48:17'),
(1098, 'A000000001', '2023-12-19 15:48:21', NULL, '2023-12-19 08:48:21', '2023-12-19 08:48:21'),
(1099, 'A000000001', NULL, '2023-12-19 15:48:21', '2023-12-19 08:48:21', '2023-12-19 08:48:21'),
(1100, 'A000000001', '2023-12-19 19:51:01', NULL, '2023-12-19 12:51:01', '2023-12-19 12:51:01'),
(1101, 'A000000001', NULL, '2023-12-19 19:51:01', '2023-12-19 12:51:01', '2023-12-19 12:51:01'),
(1102, 'A000000001', '2023-12-19 19:51:01', NULL, '2023-12-19 12:51:01', '2023-12-19 12:51:01'),
(1103, 'A000000001', NULL, '2023-12-19 19:51:01', '2023-12-19 12:51:01', '2023-12-19 12:51:01'),
(1104, 'A000000001', '2023-12-19 19:51:04', NULL, '2023-12-19 12:51:04', '2023-12-19 12:51:04'),
(1105, 'A000000001', NULL, '2023-12-19 19:51:04', '2023-12-19 12:51:04', '2023-12-19 12:51:04'),
(1106, 'A000000001', '2023-12-19 19:51:06', NULL, '2023-12-19 12:51:06', '2023-12-19 12:51:06'),
(1107, 'A000000001', NULL, '2023-12-19 19:51:06', '2023-12-19 12:51:06', '2023-12-19 12:51:06'),
(1108, 'A000000001', '2023-12-19 19:51:09', NULL, '2023-12-19 12:51:09', '2023-12-19 12:51:09'),
(1109, 'A000000001', NULL, '2023-12-19 19:51:09', '2023-12-19 12:51:09', '2023-12-19 12:51:09'),
(1110, 'A000000001', '2023-12-19 19:52:17', NULL, '2023-12-19 12:52:17', '2023-12-19 12:52:17'),
(1111, 'A000000001', NULL, '2023-12-19 19:52:17', '2023-12-19 12:52:17', '2023-12-19 12:52:17'),
(1112, 'A000000001', '2023-12-19 19:52:18', NULL, '2023-12-19 12:52:18', '2023-12-19 12:52:18'),
(1113, 'A000000001', NULL, '2023-12-19 19:52:18', '2023-12-19 12:52:18', '2023-12-19 12:52:18'),
(1114, 'A000000001', '2023-12-19 19:55:22', NULL, '2023-12-19 12:55:22', '2023-12-19 12:55:22'),
(1115, 'A000000001', NULL, '2023-12-19 19:55:22', '2023-12-19 12:55:22', '2023-12-19 12:55:22'),
(1116, 'A000000001', '2023-12-19 19:55:24', NULL, '2023-12-19 12:55:24', '2023-12-19 12:55:24'),
(1117, 'A000000001', NULL, '2023-12-19 19:55:24', '2023-12-19 12:55:24', '2023-12-19 12:55:24'),
(1118, 'A000000001', '2023-12-19 19:55:38', NULL, '2023-12-19 12:55:38', '2023-12-19 12:55:38'),
(1119, 'A000000001', NULL, '2023-12-19 19:55:38', '2023-12-19 12:55:38', '2023-12-19 12:55:38'),
(1120, 'A000000001', '2023-12-19 19:55:40', NULL, '2023-12-19 12:55:40', '2023-12-19 12:55:40'),
(1121, 'A000000001', NULL, '2023-12-19 19:55:40', '2023-12-19 12:55:40', '2023-12-19 12:55:40'),
(1122, 'A000000001', '2023-12-19 19:55:41', NULL, '2023-12-19 12:55:41', '2023-12-19 12:55:41'),
(1123, 'A000000001', NULL, '2023-12-19 19:55:41', '2023-12-19 12:55:41', '2023-12-19 12:55:41'),
(1124, 'A000000001', '2023-12-19 19:56:27', NULL, '2023-12-19 12:56:27', '2023-12-19 12:56:27'),
(1125, 'A000000001', NULL, '2023-12-19 19:56:27', '2023-12-19 12:56:27', '2023-12-19 12:56:27'),
(1126, 'A000000001', '2023-12-19 19:56:29', NULL, '2023-12-19 12:56:29', '2023-12-19 12:56:29'),
(1127, 'A000000001', NULL, '2023-12-19 19:56:29', '2023-12-19 12:56:29', '2023-12-19 12:56:29'),
(1128, 'A000000001', '2023-12-19 19:56:43', NULL, '2023-12-19 12:56:43', '2023-12-19 12:56:43'),
(1129, 'A000000001', NULL, '2023-12-19 19:56:43', '2023-12-19 12:56:43', '2023-12-19 12:56:43'),
(1130, 'A000000001', '2023-12-19 19:57:14', NULL, '2023-12-19 12:57:14', '2023-12-19 12:57:14'),
(1131, 'A000000001', NULL, '2023-12-19 19:57:14', '2023-12-19 12:57:14', '2023-12-19 12:57:14'),
(1132, 'A000000001', '2023-12-19 19:57:15', NULL, '2023-12-19 12:57:15', '2023-12-19 12:57:15'),
(1133, 'A000000001', NULL, '2023-12-19 19:57:15', '2023-12-19 12:57:15', '2023-12-19 12:57:15'),
(1134, 'A000000001', '2023-12-19 19:59:49', NULL, '2023-12-19 12:59:49', '2023-12-19 12:59:49'),
(1135, 'A000000001', NULL, '2023-12-19 19:59:49', '2023-12-19 12:59:49', '2023-12-19 12:59:49'),
(1136, 'A000000001', '2023-12-19 19:59:52', NULL, '2023-12-19 12:59:52', '2023-12-19 12:59:52'),
(1137, 'A000000001', NULL, '2023-12-19 19:59:52', '2023-12-19 12:59:52', '2023-12-19 12:59:52'),
(1138, 'A000000001', '2023-12-19 20:00:56', NULL, '2023-12-19 13:00:56', '2023-12-19 13:00:56'),
(1139, 'A000000001', NULL, '2023-12-19 20:00:57', '2023-12-19 13:00:57', '2023-12-19 13:00:57'),
(1140, 'A000000001', '2023-12-19 20:05:38', NULL, '2023-12-19 13:05:38', '2023-12-19 13:05:38'),
(1141, 'A000000001', NULL, '2023-12-19 20:05:38', '2023-12-19 13:05:38', '2023-12-19 13:05:38'),
(1142, 'A000000001', '2023-12-19 20:08:45', NULL, '2023-12-19 13:08:45', '2023-12-19 13:08:45'),
(1143, 'A000000001', NULL, '2023-12-19 20:08:45', '2023-12-19 13:08:45', '2023-12-19 13:08:45'),
(1144, 'A000000001', '2023-12-19 20:14:44', NULL, '2023-12-19 13:14:44', '2023-12-19 13:14:44'),
(1145, 'A000000001', NULL, '2023-12-19 20:14:44', '2023-12-19 13:14:44', '2023-12-19 13:14:44'),
(1146, 'A000000001', '2023-12-19 20:14:45', NULL, '2023-12-19 13:14:45', '2023-12-19 13:14:45'),
(1147, 'A000000001', NULL, '2023-12-19 20:14:45', '2023-12-19 13:14:45', '2023-12-19 13:14:45'),
(1148, 'A000000001', '2023-12-19 20:14:48', NULL, '2023-12-19 13:14:48', '2023-12-19 13:14:48'),
(1149, 'A000000001', NULL, '2023-12-19 20:14:48', '2023-12-19 13:14:48', '2023-12-19 13:14:48'),
(1150, 'A000000001', '2023-12-19 20:18:09', NULL, '2023-12-19 13:18:09', '2023-12-19 13:18:09'),
(1151, 'A000000001', NULL, '2023-12-19 20:18:09', '2023-12-19 13:18:09', '2023-12-19 13:18:09'),
(1152, 'A000000001', '2023-12-19 20:18:10', NULL, '2023-12-19 13:18:10', '2023-12-19 13:18:10'),
(1153, 'A000000001', NULL, '2023-12-19 20:18:10', '2023-12-19 13:18:10', '2023-12-19 13:18:10'),
(1154, 'A000000001', '2023-12-19 20:18:12', NULL, '2023-12-19 13:18:12', '2023-12-19 13:18:12'),
(1155, 'A000000001', NULL, '2023-12-19 20:18:12', '2023-12-19 13:18:12', '2023-12-19 13:18:12'),
(1156, 'A000000001', '2023-12-19 20:18:30', NULL, '2023-12-19 13:18:30', '2023-12-19 13:18:30'),
(1157, 'A000000001', NULL, '2023-12-19 20:18:30', '2023-12-19 13:18:30', '2023-12-19 13:18:30'),
(1158, 'A000000001', '2023-12-19 20:18:32', NULL, '2023-12-19 13:18:32', '2023-12-19 13:18:32'),
(1159, 'A000000001', NULL, '2023-12-19 20:18:32', '2023-12-19 13:18:32', '2023-12-19 13:18:32'),
(1160, 'A000000001', '2023-12-19 20:26:01', NULL, '2023-12-19 13:26:01', '2023-12-19 13:26:01'),
(1161, 'A000000001', NULL, '2023-12-19 20:26:01', '2023-12-19 13:26:01', '2023-12-19 13:26:01'),
(1162, 'A000000001', '2023-12-19 20:26:02', NULL, '2023-12-19 13:26:02', '2023-12-19 13:26:02'),
(1163, 'A000000001', NULL, '2023-12-19 20:26:02', '2023-12-19 13:26:02', '2023-12-19 13:26:02'),
(1164, 'A000000001', '2023-12-19 20:26:05', NULL, '2023-12-19 13:26:05', '2023-12-19 13:26:05'),
(1165, 'A000000001', NULL, '2023-12-19 20:26:05', '2023-12-19 13:26:05', '2023-12-19 13:26:05'),
(1166, 'A000000001', '2023-12-19 20:26:21', NULL, '2023-12-19 13:26:21', '2023-12-19 13:26:21'),
(1167, 'A000000001', NULL, '2023-12-19 20:26:21', '2023-12-19 13:26:21', '2023-12-19 13:26:21'),
(1168, 'A000000001', '2023-12-19 20:27:51', NULL, '2023-12-19 13:27:51', '2023-12-19 13:27:51'),
(1169, 'A000000001', NULL, '2023-12-19 20:27:51', '2023-12-19 13:27:51', '2023-12-19 13:27:51'),
(1170, 'A000000001', '2023-12-20 11:22:21', NULL, '2023-12-20 04:22:21', '2023-12-20 04:22:21'),
(1171, 'A000000001', NULL, '2023-12-20 11:22:21', '2023-12-20 04:22:21', '2023-12-20 04:22:21'),
(1172, 'A000000001', '2023-12-20 11:22:21', NULL, '2023-12-20 04:22:21', '2023-12-20 04:22:21'),
(1173, 'A000000001', NULL, '2023-12-20 11:22:21', '2023-12-20 04:22:21', '2023-12-20 04:22:21'),
(1174, 'A000000001', '2023-12-20 11:22:24', NULL, '2023-12-20 04:22:24', '2023-12-20 04:22:24'),
(1175, 'A000000001', NULL, '2023-12-20 11:22:24', '2023-12-20 04:22:24', '2023-12-20 04:22:24'),
(1176, 'A000000001', '2023-12-20 11:22:28', NULL, '2023-12-20 04:22:28', '2023-12-20 04:22:28'),
(1177, 'A000000001', NULL, '2023-12-20 11:22:29', '2023-12-20 04:22:29', '2023-12-20 04:22:29'),
(1178, 'A000000001', '2023-12-20 11:22:35', NULL, '2023-12-20 04:22:35', '2023-12-20 04:22:35'),
(1179, 'A000000001', NULL, '2023-12-20 11:22:35', '2023-12-20 04:22:35', '2023-12-20 04:22:35'),
(1180, 'A000000001', '2023-12-20 11:37:53', NULL, '2023-12-20 04:37:53', '2023-12-20 04:37:53'),
(1181, 'A000000001', NULL, '2023-12-20 11:37:53', '2023-12-20 04:37:53', '2023-12-20 04:37:53'),
(1182, 'A000000001', '2023-12-20 11:38:01', NULL, '2023-12-20 04:38:01', '2023-12-20 04:38:01'),
(1183, 'A000000001', NULL, '2023-12-20 11:38:01', '2023-12-20 04:38:01', '2023-12-20 04:38:01'),
(1184, 'A000000001', '2023-12-20 11:39:46', NULL, '2023-12-20 04:39:46', '2023-12-20 04:39:46'),
(1185, 'A000000001', NULL, '2023-12-20 11:39:46', '2023-12-20 04:39:46', '2023-12-20 04:39:46'),
(1186, 'A000000001', '2023-12-20 11:39:48', NULL, '2023-12-20 04:39:48', '2023-12-20 04:39:48'),
(1187, 'A000000001', NULL, '2023-12-20 11:39:48', '2023-12-20 04:39:48', '2023-12-20 04:39:48'),
(1188, 'A000000001', '2023-12-20 11:39:57', NULL, '2023-12-20 04:39:57', '2023-12-20 04:39:57'),
(1189, 'A000000001', '2023-12-20 12:00:58', NULL, '2023-12-20 05:00:58', '2023-12-20 05:00:58'),
(1190, 'A000000001', NULL, '2023-12-20 12:00:58', '2023-12-20 05:00:58', '2023-12-20 05:00:58'),
(1191, 'A000000001', '2023-12-20 12:00:58', NULL, '2023-12-20 05:00:58', '2023-12-20 05:00:58'),
(1192, 'A000000001', NULL, '2023-12-20 12:00:59', '2023-12-20 05:00:59', '2023-12-20 05:00:59'),
(1193, 'A000000001', '2023-12-20 12:01:01', NULL, '2023-12-20 05:01:01', '2023-12-20 05:01:01'),
(1194, 'A000000001', NULL, '2023-12-20 12:01:01', '2023-12-20 05:01:01', '2023-12-20 05:01:01'),
(1195, 'A000000001', '2023-12-20 12:01:05', NULL, '2023-12-20 05:01:05', '2023-12-20 05:01:05'),
(1196, 'A000000001', NULL, '2023-12-20 12:01:05', '2023-12-20 05:01:05', '2023-12-20 05:01:05'),
(1197, 'A000000001', '2023-12-20 12:03:15', NULL, '2023-12-20 05:03:15', '2023-12-20 05:03:15'),
(1198, 'A000000001', NULL, '2023-12-20 12:03:15', '2023-12-20 05:03:15', '2023-12-20 05:03:15'),
(1199, 'A000000001', '2023-12-20 12:19:14', NULL, '2023-12-20 05:19:14', '2023-12-20 05:19:14'),
(1200, 'A000000001', NULL, '2023-12-20 12:19:15', '2023-12-20 05:19:15', '2023-12-20 05:19:15'),
(1201, 'A000000001', '2023-12-20 12:19:17', NULL, '2023-12-20 05:19:17', '2023-12-20 05:19:17'),
(1202, 'A000000001', NULL, '2023-12-20 12:19:17', '2023-12-20 05:19:17', '2023-12-20 05:19:17'),
(1203, 'A000000001', '2023-12-20 12:19:26', NULL, '2023-12-20 05:19:26', '2023-12-20 05:19:26'),
(1204, 'A000000001', NULL, '2023-12-20 12:19:26', '2023-12-20 05:19:26', '2023-12-20 05:19:26'),
(1205, 'A000000001', '2023-12-20 12:20:07', NULL, '2023-12-20 05:20:07', '2023-12-20 05:20:07'),
(1206, 'A000000001', NULL, '2023-12-20 12:20:07', '2023-12-20 05:20:07', '2023-12-20 05:20:07'),
(1207, 'A000000001', '2023-12-20 12:20:22', NULL, '2023-12-20 05:20:22', '2023-12-20 05:20:22'),
(1208, 'A000000001', NULL, '2023-12-20 12:20:22', '2023-12-20 05:20:22', '2023-12-20 05:20:22'),
(1209, 'A000000001', '2023-12-20 12:20:33', NULL, '2023-12-20 05:20:33', '2023-12-20 05:20:33'),
(1210, 'A000000001', NULL, '2023-12-20 12:20:34', '2023-12-20 05:20:34', '2023-12-20 05:20:34'),
(1211, 'A000000001', '2023-12-20 12:20:37', NULL, '2023-12-20 05:20:37', '2023-12-20 05:20:37'),
(1212, 'A000000001', NULL, '2023-12-20 12:20:37', '2023-12-20 05:20:37', '2023-12-20 05:20:37'),
(1213, 'A000000001', '2023-12-20 12:20:39', NULL, '2023-12-20 05:20:39', '2023-12-20 05:20:39'),
(1214, 'A000000001', NULL, '2023-12-20 12:20:40', '2023-12-20 05:20:40', '2023-12-20 05:20:40'),
(1215, 'A000000001', '2023-12-20 12:22:40', NULL, '2023-12-20 05:22:40', '2023-12-20 05:22:40'),
(1216, 'A000000001', NULL, '2023-12-20 12:22:40', '2023-12-20 05:22:40', '2023-12-20 05:22:40'),
(1217, 'A000000001', '2023-12-20 12:22:44', NULL, '2023-12-20 05:22:44', '2023-12-20 05:22:44'),
(1218, 'A000000001', NULL, '2023-12-20 12:22:44', '2023-12-20 05:22:44', '2023-12-20 05:22:44'),
(1219, 'A000000001', '2023-12-20 12:23:01', NULL, '2023-12-20 05:23:01', '2023-12-20 05:23:01'),
(1220, 'A000000001', NULL, '2023-12-20 12:23:01', '2023-12-20 05:23:01', '2023-12-20 05:23:01'),
(1221, 'A000000001', '2023-12-20 12:23:06', NULL, '2023-12-20 05:23:06', '2023-12-20 05:23:06'),
(1222, 'A000000001', NULL, '2023-12-20 12:23:06', '2023-12-20 05:23:06', '2023-12-20 05:23:06'),
(1223, 'A000000001', '2023-12-20 12:26:31', NULL, '2023-12-20 05:26:31', '2023-12-20 05:26:31'),
(1224, 'A000000001', NULL, '2023-12-20 12:26:32', '2023-12-20 05:26:32', '2023-12-20 05:26:32'),
(1225, 'A000000001', '2023-12-20 12:26:58', NULL, '2023-12-20 05:26:58', '2023-12-20 05:26:58'),
(1226, 'A000000001', NULL, '2023-12-20 12:26:59', '2023-12-20 05:26:59', '2023-12-20 05:26:59'),
(1227, 'A000000001', '2023-12-20 12:27:07', NULL, '2023-12-20 05:27:07', '2023-12-20 05:27:07'),
(1228, 'A000000001', NULL, '2023-12-20 12:27:07', '2023-12-20 05:27:07', '2023-12-20 05:27:07'),
(1229, 'A000000001', '2023-12-20 12:27:18', NULL, '2023-12-20 05:27:18', '2023-12-20 05:27:18'),
(1230, 'A000000001', NULL, '2023-12-20 12:27:18', '2023-12-20 05:27:18', '2023-12-20 05:27:18'),
(1231, 'A000000001', '2023-12-20 12:27:25', NULL, '2023-12-20 05:27:25', '2023-12-20 05:27:25'),
(1232, 'A000000001', NULL, '2023-12-20 12:27:25', '2023-12-20 05:27:25', '2023-12-20 05:27:25'),
(1233, 'A000000001', '2023-12-20 12:27:27', NULL, '2023-12-20 05:27:27', '2023-12-20 05:27:27'),
(1234, 'A000000001', NULL, '2023-12-20 12:27:27', '2023-12-20 05:27:27', '2023-12-20 05:27:27'),
(1235, 'A000000001', '2023-12-20 12:28:26', NULL, '2023-12-20 05:28:26', '2023-12-20 05:28:26'),
(1236, 'A000000001', NULL, '2023-12-20 12:28:26', '2023-12-20 05:28:26', '2023-12-20 05:28:26'),
(1237, 'A000000001', '2023-12-20 13:15:47', NULL, '2023-12-20 06:15:47', '2023-12-20 06:15:47'),
(1238, 'A000000001', NULL, '2023-12-20 13:15:47', '2023-12-20 06:15:47', '2023-12-20 06:15:47'),
(1239, 'A000000001', '2023-12-20 14:53:38', NULL, '2023-12-20 07:53:38', '2023-12-20 07:53:38'),
(1240, 'A000000001', NULL, '2023-12-20 14:53:38', '2023-12-20 07:53:38', '2023-12-20 07:53:38'),
(1241, 'A000000001', '2023-12-20 14:53:38', NULL, '2023-12-20 07:53:38', '2023-12-20 07:53:38'),
(1242, 'A000000001', NULL, '2023-12-20 14:53:39', '2023-12-20 07:53:39', '2023-12-20 07:53:39'),
(1243, 'A000000001', '2023-12-20 14:53:43', NULL, '2023-12-20 07:53:43', '2023-12-20 07:53:43'),
(1244, 'A000000001', NULL, '2023-12-20 14:53:43', '2023-12-20 07:53:43', '2023-12-20 07:53:43'),
(1245, 'A000000001', '2023-12-20 14:53:45', NULL, '2023-12-20 07:53:45', '2023-12-20 07:53:45'),
(1246, 'A000000001', NULL, '2023-12-20 14:53:45', '2023-12-20 07:53:45', '2023-12-20 07:53:45'),
(1247, 'A000000001', '2023-12-20 14:53:58', NULL, '2023-12-20 07:53:58', '2023-12-20 07:53:58'),
(1248, 'A000000001', NULL, '2023-12-20 14:53:58', '2023-12-20 07:53:58', '2023-12-20 07:53:58'),
(1249, 'A000000001', '2023-12-20 15:05:59', NULL, '2023-12-20 08:05:59', '2023-12-20 08:05:59'),
(1250, 'A000000001', NULL, '2023-12-20 15:05:59', '2023-12-20 08:05:59', '2023-12-20 08:05:59'),
(1251, 'A000000001', '2023-12-20 15:06:21', NULL, '2023-12-20 08:06:21', '2023-12-20 08:06:21'),
(1252, 'A000000001', NULL, '2023-12-20 15:06:21', '2023-12-20 08:06:21', '2023-12-20 08:06:21'),
(1253, 'A000000001', '2023-12-20 15:06:38', NULL, '2023-12-20 08:06:38', '2023-12-20 08:06:38'),
(1254, 'A000000001', NULL, '2023-12-20 15:06:38', '2023-12-20 08:06:38', '2023-12-20 08:06:38'),
(1255, 'A000000001', '2023-12-20 15:08:04', NULL, '2023-12-20 08:08:04', '2023-12-20 08:08:04'),
(1256, 'A000000001', NULL, '2023-12-20 15:08:04', '2023-12-20 08:08:04', '2023-12-20 08:08:04'),
(1257, 'A000000001', '2023-12-20 15:09:35', NULL, '2023-12-20 08:09:35', '2023-12-20 08:09:35'),
(1258, 'A000000001', NULL, '2023-12-20 15:09:35', '2023-12-20 08:09:35', '2023-12-20 08:09:35'),
(1259, 'A000000001', '2023-12-20 15:12:02', NULL, '2023-12-20 08:12:02', '2023-12-20 08:12:02'),
(1260, 'A000000001', NULL, '2023-12-20 15:12:02', '2023-12-20 08:12:02', '2023-12-20 08:12:02'),
(1261, 'A000000001', '2023-12-20 15:12:02', NULL, '2023-12-20 08:12:02', '2023-12-20 08:12:02'),
(1262, 'A000000001', NULL, '2023-12-20 15:12:02', '2023-12-20 08:12:02', '2023-12-20 08:12:02'),
(1263, 'A000000001', '2023-12-20 15:12:03', NULL, '2023-12-20 08:12:03', '2023-12-20 08:12:03'),
(1264, 'A000000001', NULL, '2023-12-20 15:12:03', '2023-12-20 08:12:03', '2023-12-20 08:12:03'),
(1265, 'A000000001', '2023-12-20 15:13:08', NULL, '2023-12-20 08:13:08', '2023-12-20 08:13:08'),
(1266, 'A000000001', NULL, '2023-12-20 15:13:08', '2023-12-20 08:13:08', '2023-12-20 08:13:08'),
(1267, 'A000000001', '2023-12-20 15:15:35', NULL, '2023-12-20 08:15:35', '2023-12-20 08:15:35'),
(1268, 'A000000001', NULL, '2023-12-20 15:15:35', '2023-12-20 08:15:35', '2023-12-20 08:15:35'),
(1269, 'A000000001', '2023-12-20 15:17:42', NULL, '2023-12-20 08:17:42', '2023-12-20 08:17:42'),
(1270, 'A000000001', NULL, '2023-12-20 15:17:42', '2023-12-20 08:17:42', '2023-12-20 08:17:42'),
(1271, 'A000000001', '2023-12-20 15:17:51', NULL, '2023-12-20 08:17:51', '2023-12-20 08:17:51'),
(1272, 'A000000001', NULL, '2023-12-20 15:17:51', '2023-12-20 08:17:51', '2023-12-20 08:17:51'),
(1273, 'A000000001', '2023-12-20 15:17:53', NULL, '2023-12-20 08:17:53', '2023-12-20 08:17:53'),
(1274, 'A000000001', NULL, '2023-12-20 15:17:53', '2023-12-20 08:17:53', '2023-12-20 08:17:53'),
(1275, 'A000000001', '2023-12-20 15:18:08', NULL, '2023-12-20 08:18:08', '2023-12-20 08:18:08'),
(1276, 'A000000001', NULL, '2023-12-20 15:18:08', '2023-12-20 08:18:08', '2023-12-20 08:18:08'),
(1277, 'A000000001', '2023-12-22 11:01:40', NULL, '2023-12-22 04:01:40', '2023-12-22 04:01:40'),
(1278, 'A000000001', NULL, '2023-12-22 11:01:40', '2023-12-22 04:01:40', '2023-12-22 04:01:40'),
(1279, 'A000000001', '2023-12-22 11:01:40', NULL, '2023-12-22 04:01:40', '2023-12-22 04:01:40'),
(1280, 'A000000001', NULL, '2023-12-22 11:01:40', '2023-12-22 04:01:40', '2023-12-22 04:01:40'),
(1281, 'A000000001', '2023-12-22 11:19:33', NULL, '2023-12-22 04:19:33', '2023-12-22 04:19:33'),
(1282, 'A000000001', NULL, '2023-12-22 11:19:33', '2023-12-22 04:19:33', '2023-12-22 04:19:33'),
(1283, 'A000000001', '2023-12-22 11:19:34', NULL, '2023-12-22 04:19:34', '2023-12-22 04:19:34'),
(1284, 'A000000001', NULL, '2023-12-22 11:19:34', '2023-12-22 04:19:34', '2023-12-22 04:19:34'),
(1285, 'A000000001', '2023-12-22 11:48:51', NULL, '2023-12-22 04:48:51', '2023-12-22 04:48:51'),
(1286, 'A000000001', '2023-12-22 11:49:01', NULL, '2023-12-22 04:49:01', '2023-12-22 04:49:01'),
(1287, 'A000000001', NULL, '2023-12-22 11:49:01', '2023-12-22 04:49:01', '2023-12-22 04:49:01'),
(1288, 'A000000001', '2023-12-22 11:49:01', NULL, '2023-12-22 04:49:01', '2023-12-22 04:49:01'),
(1289, 'A000000001', NULL, '2023-12-22 11:49:01', '2023-12-22 04:49:01', '2023-12-22 04:49:01'),
(1290, 'A000000001', '2023-12-22 11:49:06', NULL, '2023-12-22 04:49:06', '2023-12-22 04:49:06'),
(1291, 'A000000001', NULL, '2023-12-22 11:49:06', '2023-12-22 04:49:06', '2023-12-22 04:49:06'),
(1292, 'A000000001', '2023-12-22 11:49:09', NULL, '2023-12-22 04:49:09', '2023-12-22 04:49:09'),
(1293, 'A000000001', NULL, '2023-12-22 11:49:09', '2023-12-22 04:49:09', '2023-12-22 04:49:09'),
(1294, 'A000000001', '2023-12-22 11:49:18', NULL, '2023-12-22 04:49:18', '2023-12-22 04:49:18'),
(1295, 'A000000001', NULL, '2023-12-22 11:49:18', '2023-12-22 04:49:18', '2023-12-22 04:49:18'),
(1296, 'A000000001', '2023-12-22 11:49:20', NULL, '2023-12-22 04:49:20', '2023-12-22 04:49:20'),
(1297, 'A000000001', NULL, '2023-12-22 11:49:20', '2023-12-22 04:49:20', '2023-12-22 04:49:20'),
(1298, 'A000000001', '2023-12-22 12:08:37', NULL, '2023-12-22 05:08:37', '2023-12-22 05:08:37'),
(1299, 'A000000001', NULL, '2023-12-22 12:08:37', '2023-12-22 05:08:37', '2023-12-22 05:08:37'),
(1300, 'A000000001', '2023-12-22 12:08:41', NULL, '2023-12-22 05:08:41', '2023-12-22 05:08:41'),
(1301, 'A000000001', NULL, '2023-12-22 12:08:41', '2023-12-22 05:08:41', '2023-12-22 05:08:41'),
(1302, 'A000000001', '2023-12-22 12:10:31', NULL, '2023-12-22 05:10:31', '2023-12-22 05:10:31'),
(1303, 'A000000001', NULL, '2023-12-22 12:10:31', '2023-12-22 05:10:31', '2023-12-22 05:10:31'),
(1304, 'A000000001', '2023-12-22 12:10:34', NULL, '2023-12-22 05:10:34', '2023-12-22 05:10:34'),
(1305, 'A000000001', NULL, '2023-12-22 12:10:34', '2023-12-22 05:10:34', '2023-12-22 05:10:34'),
(1306, 'A000000001', '2023-12-22 12:11:57', NULL, '2023-12-22 05:11:57', '2023-12-22 05:11:57'),
(1307, 'A000000001', NULL, '2023-12-22 12:11:57', '2023-12-22 05:11:57', '2023-12-22 05:11:57'),
(1308, 'A000000001', '2023-12-22 16:08:06', NULL, '2023-12-22 09:08:06', '2023-12-22 09:08:06'),
(1309, 'A000000001', NULL, '2023-12-22 16:08:06', '2023-12-22 09:08:06', '2023-12-22 09:08:06'),
(1310, 'A000000001', '2023-12-22 16:08:07', NULL, '2023-12-22 09:08:07', '2023-12-22 09:08:07'),
(1311, 'A000000001', NULL, '2023-12-22 16:08:07', '2023-12-22 09:08:07', '2023-12-22 09:08:07'),
(1312, 'A000000001', '2023-12-22 16:08:16', NULL, '2023-12-22 09:08:16', '2023-12-22 09:08:16'),
(1313, 'A000000001', NULL, '2023-12-22 16:08:16', '2023-12-22 09:08:16', '2023-12-22 09:08:16'),
(1314, 'A000000001', '2023-12-22 16:08:19', NULL, '2023-12-22 09:08:19', '2023-12-22 09:08:19'),
(1315, 'A000000001', NULL, '2023-12-22 16:08:20', '2023-12-22 09:08:20', '2023-12-22 09:08:20'),
(1316, 'A000000001', '2023-12-22 16:10:28', NULL, '2023-12-22 09:10:28', '2023-12-22 09:10:28'),
(1317, 'A000000001', NULL, '2023-12-22 16:10:28', '2023-12-22 09:10:28', '2023-12-22 09:10:28'),
(1318, 'A000000001', '2023-12-22 16:11:20', NULL, '2023-12-22 09:11:20', '2023-12-22 09:11:20'),
(1319, 'A000000001', NULL, '2023-12-22 16:11:20', '2023-12-22 09:11:20', '2023-12-22 09:11:20'),
(1320, 'A000000001', '2023-12-22 17:54:35', NULL, '2023-12-22 10:54:35', '2023-12-22 10:54:35'),
(1321, 'A000000001', NULL, '2023-12-22 17:54:35', '2023-12-22 10:54:35', '2023-12-22 10:54:35'),
(1322, 'A000000001', '2023-12-22 17:54:38', NULL, '2023-12-22 10:54:38', '2023-12-22 10:54:38'),
(1323, 'A000000001', NULL, '2023-12-22 17:54:38', '2023-12-22 10:54:38', '2023-12-22 10:54:38'),
(1324, 'A000000001', '2023-12-22 18:11:08', NULL, '2023-12-22 11:11:08', '2023-12-22 11:11:08'),
(1325, 'A000000001', NULL, '2023-12-22 18:11:08', '2023-12-22 11:11:08', '2023-12-22 11:11:08'),
(1326, 'A000000001', '2023-12-22 18:11:11', NULL, '2023-12-22 11:11:11', '2023-12-22 11:11:11'),
(1327, 'A000000001', NULL, '2023-12-22 18:11:11', '2023-12-22 11:11:11', '2023-12-22 11:11:11'),
(1328, 'A000000001', '2023-12-22 18:14:47', NULL, '2023-12-22 11:14:47', '2023-12-22 11:14:47'),
(1329, 'A000000001', NULL, '2023-12-22 18:14:47', '2023-12-22 11:14:47', '2023-12-22 11:14:47'),
(1330, 'A000000001', '2023-12-22 18:14:49', NULL, '2023-12-22 11:14:49', '2023-12-22 11:14:49'),
(1331, 'A000000001', NULL, '2023-12-22 18:14:49', '2023-12-22 11:14:49', '2023-12-22 11:14:49'),
(1332, 'A000000001', '2023-12-22 18:15:45', NULL, '2023-12-22 11:15:45', '2023-12-22 11:15:45'),
(1333, 'A000000001', NULL, '2023-12-22 18:15:45', '2023-12-22 11:15:45', '2023-12-22 11:15:45'),
(1334, 'A000000001', '2023-12-22 18:15:46', NULL, '2023-12-22 11:15:46', '2023-12-22 11:15:46'),
(1335, 'A000000001', NULL, '2023-12-22 18:15:46', '2023-12-22 11:15:46', '2023-12-22 11:15:46'),
(1336, 'A000000001', '2023-12-23 12:34:54', NULL, '2023-12-23 05:34:54', '2023-12-23 05:34:54'),
(1337, 'A000000001', NULL, '2023-12-23 12:34:54', '2023-12-23 05:34:54', '2023-12-23 05:34:54'),
(1338, 'A000000001', '2023-12-23 12:34:54', NULL, '2023-12-23 05:34:54', '2023-12-23 05:34:54'),
(1339, 'A000000001', NULL, '2023-12-23 12:34:54', '2023-12-23 05:34:54', '2023-12-23 05:34:54'),
(1340, 'A000000001', '2023-12-23 12:34:57', NULL, '2023-12-23 05:34:57', '2023-12-23 05:34:57'),
(1341, 'A000000001', NULL, '2023-12-23 12:34:57', '2023-12-23 05:34:57', '2023-12-23 05:34:57'),
(1342, 'A000000001', '2023-12-23 12:35:00', NULL, '2023-12-23 05:35:00', '2023-12-23 05:35:00'),
(1343, 'A000000001', NULL, '2023-12-23 12:35:02', '2023-12-23 05:35:02', '2023-12-23 05:35:02'),
(1344, 'A000000001', '2023-12-23 12:35:57', NULL, '2023-12-23 05:35:57', '2023-12-23 05:35:57'),
(1345, 'A000000001', NULL, '2023-12-23 12:35:57', '2023-12-23 05:35:57', '2023-12-23 05:35:57'),
(1346, 'A000000001', '2023-12-23 12:35:59', NULL, '2023-12-23 05:35:59', '2023-12-23 05:35:59'),
(1347, 'A000000001', NULL, '2023-12-23 12:35:59', '2023-12-23 05:35:59', '2023-12-23 05:35:59'),
(1348, 'A000000001', '2023-12-23 12:36:03', NULL, '2023-12-23 05:36:03', '2023-12-23 05:36:03'),
(1349, 'A000000001', NULL, '2023-12-23 12:36:03', '2023-12-23 05:36:03', '2023-12-23 05:36:03'),
(1350, 'A000000001', '2023-12-23 12:36:05', NULL, '2023-12-23 05:36:05', '2023-12-23 05:36:05'),
(1351, 'A000000001', NULL, '2023-12-23 12:36:06', '2023-12-23 05:36:06', '2023-12-23 05:36:06'),
(1352, 'A000000001', '2023-12-23 12:37:33', NULL, '2023-12-23 05:37:33', '2023-12-23 05:37:33'),
(1353, 'A000000001', NULL, '2023-12-23 12:37:33', '2023-12-23 05:37:33', '2023-12-23 05:37:33'),
(1354, 'A000000001', '2023-12-23 12:37:36', NULL, '2023-12-23 05:37:36', '2023-12-23 05:37:36'),
(1355, 'A000000001', NULL, '2023-12-23 12:37:36', '2023-12-23 05:37:36', '2023-12-23 05:37:36'),
(1356, 'A000000001', '2023-12-23 12:38:12', NULL, '2023-12-23 05:38:12', '2023-12-23 05:38:12'),
(1357, 'A000000001', NULL, '2023-12-23 12:38:13', '2023-12-23 05:38:13', '2023-12-23 05:38:13'),
(1358, 'A000000001', '2023-12-23 12:38:28', NULL, '2023-12-23 05:38:28', '2023-12-23 05:38:28'),
(1359, 'A000000001', NULL, '2023-12-23 12:38:28', '2023-12-23 05:38:28', '2023-12-23 05:38:28'),
(1360, 'A000000001', '2023-12-23 12:38:52', NULL, '2023-12-23 05:38:52', '2023-12-23 05:38:52'),
(1361, 'A000000001', NULL, '2023-12-23 12:38:52', '2023-12-23 05:38:52', '2023-12-23 05:38:52'),
(1362, 'A000000001', '2023-12-23 12:40:58', NULL, '2023-12-23 05:40:58', '2023-12-23 05:40:58'),
(1363, 'A000000001', NULL, '2023-12-23 12:40:59', '2023-12-23 05:40:59', '2023-12-23 05:40:59'),
(1364, 'A000000001', '2023-12-23 12:41:20', NULL, '2023-12-23 05:41:20', '2023-12-23 05:41:20'),
(1365, 'A000000001', NULL, '2023-12-23 12:41:20', '2023-12-23 05:41:20', '2023-12-23 05:41:20'),
(1366, 'A000000001', '2023-12-23 12:41:28', NULL, '2023-12-23 05:41:28', '2023-12-23 05:41:28'),
(1367, 'A000000001', NULL, '2023-12-23 12:41:29', '2023-12-23 05:41:29', '2023-12-23 05:41:29'),
(1368, 'A000000001', '2023-12-23 12:41:34', NULL, '2023-12-23 05:41:34', '2023-12-23 05:41:34'),
(1369, 'A000000001', NULL, '2023-12-23 12:41:34', '2023-12-23 05:41:34', '2023-12-23 05:41:34'),
(1370, 'A000000001', '2023-12-23 12:41:36', NULL, '2023-12-23 05:41:36', '2023-12-23 05:41:36'),
(1371, 'A000000001', NULL, '2023-12-23 12:41:37', '2023-12-23 05:41:37', '2023-12-23 05:41:37'),
(1372, 'A000000001', '2023-12-23 12:46:42', NULL, '2023-12-23 05:46:42', '2023-12-23 05:46:42'),
(1373, 'A000000001', NULL, '2023-12-23 12:46:42', '2023-12-23 05:46:42', '2023-12-23 05:46:42'),
(1374, 'A000000001', '2023-12-23 13:23:35', NULL, '2023-12-23 06:23:35', '2023-12-23 06:23:35'),
(1375, 'A000000001', NULL, '2023-12-23 13:23:35', '2023-12-23 06:23:35', '2023-12-23 06:23:35'),
(1376, 'A000000001', '2023-12-23 13:23:38', NULL, '2023-12-23 06:23:38', '2023-12-23 06:23:38'),
(1377, 'A000000001', NULL, '2023-12-23 13:23:39', '2023-12-23 06:23:39', '2023-12-23 06:23:39'),
(1378, 'A000000001', '2023-12-23 15:43:14', NULL, '2023-12-23 08:43:14', '2023-12-23 08:43:14'),
(1379, 'A000000001', NULL, '2023-12-23 15:43:14', '2023-12-23 08:43:14', '2023-12-23 08:43:14'),
(1380, 'A000000001', '2023-12-23 15:43:14', NULL, '2023-12-23 08:43:14', '2023-12-23 08:43:14'),
(1381, 'A000000001', NULL, '2023-12-23 15:43:14', '2023-12-23 08:43:14', '2023-12-23 08:43:14'),
(1382, 'A000000001', '2023-12-23 15:43:19', NULL, '2023-12-23 08:43:19', '2023-12-23 08:43:19'),
(1383, 'A000000001', NULL, '2023-12-23 15:43:19', '2023-12-23 08:43:19', '2023-12-23 08:43:19'),
(1384, 'A000000001', '2023-12-23 15:43:21', NULL, '2023-12-23 08:43:21', '2023-12-23 08:43:21'),
(1385, 'A000000001', NULL, '2023-12-23 15:43:21', '2023-12-23 08:43:21', '2023-12-23 08:43:21'),
(1386, 'A000000001', '2023-12-23 16:30:21', NULL, '2023-12-23 09:30:21', '2023-12-23 09:30:21'),
(1387, 'A000000001', NULL, '2023-12-23 16:30:21', '2023-12-23 09:30:21', '2023-12-23 09:30:21'),
(1388, 'A000000001', '2023-12-23 16:30:23', NULL, '2023-12-23 09:30:23', '2023-12-23 09:30:23'),
(1389, 'A000000001', NULL, '2023-12-23 16:30:23', '2023-12-23 09:30:23', '2023-12-23 09:30:23'),
(1390, 'A000000001', '2023-12-23 16:30:49', NULL, '2023-12-23 09:30:49', '2023-12-23 09:30:49'),
(1391, 'A000000001', NULL, '2023-12-23 16:30:49', '2023-12-23 09:30:49', '2023-12-23 09:30:49'),
(1392, 'A000000001', '2023-12-23 16:30:51', NULL, '2023-12-23 09:30:51', '2023-12-23 09:30:51'),
(1393, 'A000000001', NULL, '2023-12-23 16:30:51', '2023-12-23 09:30:51', '2023-12-23 09:30:51'),
(1394, 'A000000001', '2023-12-23 16:34:12', NULL, '2023-12-23 09:34:12', '2023-12-23 09:34:12'),
(1395, 'A000000001', NULL, '2023-12-23 16:34:12', '2023-12-23 09:34:12', '2023-12-23 09:34:12'),
(1396, 'A000000001', '2023-12-23 16:34:16', NULL, '2023-12-23 09:34:16', '2023-12-23 09:34:16'),
(1397, 'A000000001', NULL, '2023-12-23 16:34:16', '2023-12-23 09:34:16', '2023-12-23 09:34:16'),
(1398, 'A000000001', '2023-12-23 16:35:10', NULL, '2023-12-23 09:35:10', '2023-12-23 09:35:10'),
(1399, 'A000000001', NULL, '2023-12-23 16:35:10', '2023-12-23 09:35:10', '2023-12-23 09:35:10'),
(1400, 'A000000001', '2023-12-23 16:35:11', NULL, '2023-12-23 09:35:11', '2023-12-23 09:35:11'),
(1401, 'A000000001', NULL, '2023-12-23 16:35:11', '2023-12-23 09:35:11', '2023-12-23 09:35:11'),
(1402, 'A000000001', '2023-12-23 16:36:18', NULL, '2023-12-23 09:36:18', '2023-12-23 09:36:18'),
(1403, 'A000000001', NULL, '2023-12-23 16:36:18', '2023-12-23 09:36:18', '2023-12-23 09:36:18'),
(1404, 'A000000001', '2023-12-23 16:36:20', NULL, '2023-12-23 09:36:20', '2023-12-23 09:36:20'),
(1405, 'A000000001', NULL, '2023-12-23 16:36:20', '2023-12-23 09:36:20', '2023-12-23 09:36:20'),
(1406, 'A000000001', '2023-12-23 16:36:38', NULL, '2023-12-23 09:36:38', '2023-12-23 09:36:38'),
(1407, 'A000000001', NULL, '2023-12-23 16:36:38', '2023-12-23 09:36:38', '2023-12-23 09:36:38'),
(1408, 'A000000001', '2023-12-23 16:36:39', NULL, '2023-12-23 09:36:39', '2023-12-23 09:36:39'),
(1409, 'A000000001', NULL, '2023-12-23 16:36:39', '2023-12-23 09:36:39', '2023-12-23 09:36:39'),
(1410, 'A000000001', '2023-12-23 16:40:46', NULL, '2023-12-23 09:40:46', '2023-12-23 09:40:46'),
(1411, 'A000000001', NULL, '2023-12-23 16:40:46', '2023-12-23 09:40:46', '2023-12-23 09:40:46'),
(1412, 'A000000001', '2023-12-23 16:40:48', NULL, '2023-12-23 09:40:48', '2023-12-23 09:40:48'),
(1413, 'A000000001', NULL, '2023-12-23 16:40:48', '2023-12-23 09:40:48', '2023-12-23 09:40:48'),
(1414, 'A000000001', '2023-12-23 16:41:04', NULL, '2023-12-23 09:41:04', '2023-12-23 09:41:04'),
(1415, 'A000000001', NULL, '2023-12-23 16:41:04', '2023-12-23 09:41:04', '2023-12-23 09:41:04'),
(1416, 'A000000001', '2023-12-23 16:41:05', NULL, '2023-12-23 09:41:05', '2023-12-23 09:41:05'),
(1417, 'A000000001', NULL, '2023-12-23 16:41:05', '2023-12-23 09:41:05', '2023-12-23 09:41:05'),
(1418, 'A000000001', '2023-12-23 16:41:20', NULL, '2023-12-23 09:41:20', '2023-12-23 09:41:20'),
(1419, 'A000000001', NULL, '2023-12-23 16:41:20', '2023-12-23 09:41:20', '2023-12-23 09:41:20'),
(1420, 'A000000001', '2023-12-23 16:41:22', NULL, '2023-12-23 09:41:22', '2023-12-23 09:41:22'),
(1421, 'A000000001', NULL, '2023-12-23 16:41:22', '2023-12-23 09:41:22', '2023-12-23 09:41:22'),
(1422, 'A000000001', '2023-12-23 16:43:47', NULL, '2023-12-23 09:43:47', '2023-12-23 09:43:47'),
(1423, 'A000000001', NULL, '2023-12-23 16:43:47', '2023-12-23 09:43:47', '2023-12-23 09:43:47'),
(1424, 'A000000001', '2023-12-23 16:43:51', NULL, '2023-12-23 09:43:51', '2023-12-23 09:43:51'),
(1425, 'A000000001', NULL, '2023-12-23 16:43:51', '2023-12-23 09:43:51', '2023-12-23 09:43:51'),
(1426, 'A000000001', '2023-12-23 16:49:20', NULL, '2023-12-23 09:49:20', '2023-12-23 09:49:20'),
(1427, 'A000000001', NULL, '2023-12-23 16:49:20', '2023-12-23 09:49:20', '2023-12-23 09:49:20'),
(1428, 'A000000001', '2023-12-23 16:49:22', NULL, '2023-12-23 09:49:22', '2023-12-23 09:49:22'),
(1429, 'A000000001', NULL, '2023-12-23 16:49:22', '2023-12-23 09:49:22', '2023-12-23 09:49:22'),
(1430, 'A000000001', '2023-12-23 16:52:56', NULL, '2023-12-23 09:52:56', '2023-12-23 09:52:56'),
(1431, 'A000000001', NULL, '2023-12-23 16:52:56', '2023-12-23 09:52:56', '2023-12-23 09:52:56'),
(1432, 'A000000001', '2023-12-23 16:52:58', NULL, '2023-12-23 09:52:58', '2023-12-23 09:52:58'),
(1433, 'A000000001', NULL, '2023-12-23 16:52:58', '2023-12-23 09:52:58', '2023-12-23 09:52:58'),
(1434, 'A000000001', '2023-12-23 16:55:17', NULL, '2023-12-23 09:55:17', '2023-12-23 09:55:17'),
(1435, 'A000000001', NULL, '2023-12-23 16:55:18', '2023-12-23 09:55:18', '2023-12-23 09:55:18'),
(1436, 'A000000001', '2023-12-23 16:55:19', NULL, '2023-12-23 09:55:19', '2023-12-23 09:55:19'),
(1437, 'A000000001', NULL, '2023-12-23 16:55:19', '2023-12-23 09:55:19', '2023-12-23 09:55:19'),
(1438, 'A000000001', '2023-12-23 16:57:26', NULL, '2023-12-23 09:57:26', '2023-12-23 09:57:26'),
(1439, 'A000000001', NULL, '2023-12-23 16:57:26', '2023-12-23 09:57:26', '2023-12-23 09:57:26'),
(1440, 'A000000001', '2023-12-23 16:57:28', NULL, '2023-12-23 09:57:28', '2023-12-23 09:57:28'),
(1441, 'A000000001', NULL, '2023-12-23 16:57:28', '2023-12-23 09:57:28', '2023-12-23 09:57:28'),
(1442, 'A000000001', '2023-12-23 16:57:57', NULL, '2023-12-23 09:57:57', '2023-12-23 09:57:57'),
(1443, 'A000000001', NULL, '2023-12-23 16:57:57', '2023-12-23 09:57:57', '2023-12-23 09:57:57'),
(1444, 'A000000001', '2023-12-23 16:57:59', NULL, '2023-12-23 09:57:59', '2023-12-23 09:57:59'),
(1445, 'A000000001', NULL, '2023-12-23 16:57:59', '2023-12-23 09:57:59', '2023-12-23 09:57:59'),
(1446, 'A000000001', '2023-12-23 16:58:01', NULL, '2023-12-23 09:58:01', '2023-12-23 09:58:01'),
(1447, 'A000000001', NULL, '2023-12-23 16:58:01', '2023-12-23 09:58:01', '2023-12-23 09:58:01'),
(1448, 'A000000001', '2023-12-23 17:04:32', NULL, '2023-12-23 10:04:32', '2023-12-23 10:04:32'),
(1449, 'A000000001', NULL, '2023-12-23 17:04:32', '2023-12-23 10:04:32', '2023-12-23 10:04:32'),
(1450, 'A000000001', '2023-12-23 17:04:35', NULL, '2023-12-23 10:04:35', '2023-12-23 10:04:35'),
(1451, 'A000000001', NULL, '2023-12-23 17:04:35', '2023-12-23 10:04:35', '2023-12-23 10:04:35'),
(1452, 'A000000001', '2023-12-23 17:06:10', NULL, '2023-12-23 10:06:10', '2023-12-23 10:06:10'),
(1453, 'A000000001', NULL, '2023-12-23 17:06:10', '2023-12-23 10:06:10', '2023-12-23 10:06:10'),
(1454, 'A000000001', '2023-12-23 17:06:12', NULL, '2023-12-23 10:06:12', '2023-12-23 10:06:12'),
(1455, 'A000000001', NULL, '2023-12-23 17:06:12', '2023-12-23 10:06:12', '2023-12-23 10:06:12'),
(1456, 'A000000001', '2023-12-23 17:06:24', NULL, '2023-12-23 10:06:24', '2023-12-23 10:06:24'),
(1457, 'A000000001', NULL, '2023-12-23 17:06:24', '2023-12-23 10:06:24', '2023-12-23 10:06:24'),
(1458, 'A000000001', '2023-12-23 17:06:25', NULL, '2023-12-23 10:06:25', '2023-12-23 10:06:25'),
(1459, 'A000000001', NULL, '2023-12-23 17:06:25', '2023-12-23 10:06:25', '2023-12-23 10:06:25'),
(1460, 'A000000001', '2023-12-23 17:07:15', NULL, '2023-12-23 10:07:15', '2023-12-23 10:07:15'),
(1461, 'A000000001', NULL, '2023-12-23 17:07:15', '2023-12-23 10:07:15', '2023-12-23 10:07:15'),
(1462, 'A000000001', '2023-12-23 17:09:37', NULL, '2023-12-23 10:09:37', '2023-12-23 10:09:37'),
(1463, 'A000000001', NULL, '2023-12-23 17:09:37', '2023-12-23 10:09:37', '2023-12-23 10:09:37'),
(1464, 'A000000001', '2023-12-23 17:09:40', NULL, '2023-12-23 10:09:40', '2023-12-23 10:09:40'),
(1465, 'A000000001', NULL, '2023-12-23 17:09:40', '2023-12-23 10:09:40', '2023-12-23 10:09:40'),
(1466, 'A000000001', '2023-12-23 17:10:17', NULL, '2023-12-23 10:10:17', '2023-12-23 10:10:17'),
(1467, 'A000000001', NULL, '2023-12-23 17:10:17', '2023-12-23 10:10:17', '2023-12-23 10:10:17'),
(1468, 'A000000001', '2023-12-23 17:10:19', NULL, '2023-12-23 10:10:19', '2023-12-23 10:10:19'),
(1469, 'A000000001', NULL, '2023-12-23 17:10:19', '2023-12-23 10:10:19', '2023-12-23 10:10:19'),
(1470, 'A000000001', '2023-12-23 17:14:33', NULL, '2023-12-23 10:14:33', '2023-12-23 10:14:33'),
(1471, 'A000000001', NULL, '2023-12-23 17:14:33', '2023-12-23 10:14:33', '2023-12-23 10:14:33'),
(1472, 'A000000001', '2023-12-23 17:14:36', NULL, '2023-12-23 10:14:36', '2023-12-23 10:14:36'),
(1473, 'A000000001', NULL, '2023-12-23 17:14:36', '2023-12-23 10:14:36', '2023-12-23 10:14:36'),
(1474, 'A000000001', '2023-12-23 17:17:34', NULL, '2023-12-23 10:17:34', '2023-12-23 10:17:34'),
(1475, 'A000000001', NULL, '2023-12-23 17:17:34', '2023-12-23 10:17:34', '2023-12-23 10:17:34'),
(1476, 'A000000001', '2023-12-23 17:17:37', NULL, '2023-12-23 10:17:37', '2023-12-23 10:17:37'),
(1477, 'A000000001', NULL, '2023-12-23 17:17:37', '2023-12-23 10:17:37', '2023-12-23 10:17:37'),
(1478, 'A000000001', '2023-12-23 17:19:22', NULL, '2023-12-23 10:19:22', '2023-12-23 10:19:22'),
(1479, 'A000000001', NULL, '2023-12-23 17:19:22', '2023-12-23 10:19:22', '2023-12-23 10:19:22'),
(1480, 'A000000001', '2023-12-23 17:19:27', NULL, '2023-12-23 10:19:27', '2023-12-23 10:19:27'),
(1481, 'A000000001', NULL, '2023-12-23 17:19:27', '2023-12-23 10:19:27', '2023-12-23 10:19:27'),
(1482, 'A000000001', '2023-12-23 17:20:32', NULL, '2023-12-23 10:20:32', '2023-12-23 10:20:32'),
(1483, 'A000000001', NULL, '2023-12-23 17:20:32', '2023-12-23 10:20:32', '2023-12-23 10:20:32'),
(1484, 'A000000001', '2023-12-23 17:20:37', NULL, '2023-12-23 10:20:37', '2023-12-23 10:20:37'),
(1485, 'A000000001', NULL, '2023-12-23 17:20:37', '2023-12-23 10:20:37', '2023-12-23 10:20:37'),
(1486, 'A000000001', '2023-12-23 17:25:30', NULL, '2023-12-23 10:25:30', '2023-12-23 10:25:30'),
(1487, 'A000000001', NULL, '2023-12-23 17:25:30', '2023-12-23 10:25:30', '2023-12-23 10:25:30'),
(1488, 'A000000001', '2023-12-23 17:25:33', NULL, '2023-12-23 10:25:33', '2023-12-23 10:25:33'),
(1489, 'A000000001', NULL, '2023-12-23 17:25:33', '2023-12-23 10:25:33', '2023-12-23 10:25:33'),
(1490, 'A000000001', '2023-12-23 17:25:37', NULL, '2023-12-23 10:25:37', '2023-12-23 10:25:37'),
(1491, 'A000000001', NULL, '2023-12-23 17:25:37', '2023-12-23 10:25:37', '2023-12-23 10:25:37'),
(1492, 'A000000001', '2023-12-23 17:36:33', NULL, '2023-12-23 10:36:33', '2023-12-23 10:36:33'),
(1493, 'A000000001', NULL, '2023-12-23 17:36:33', '2023-12-23 10:36:33', '2023-12-23 10:36:33'),
(1494, 'A000000001', '2023-12-23 17:36:38', NULL, '2023-12-23 10:36:38', '2023-12-23 10:36:38'),
(1495, 'A000000001', NULL, '2023-12-23 17:36:38', '2023-12-23 10:36:38', '2023-12-23 10:36:38'),
(1496, 'A000000001', '2023-12-23 17:38:17', NULL, '2023-12-23 10:38:17', '2023-12-23 10:38:17'),
(1497, 'A000000001', NULL, '2023-12-23 17:38:17', '2023-12-23 10:38:17', '2023-12-23 10:38:17'),
(1498, 'A000000001', '2023-12-23 19:25:35', NULL, '2023-12-23 12:25:35', '2023-12-23 12:25:35'),
(1499, 'A000000001', NULL, '2023-12-23 19:25:35', '2023-12-23 12:25:35', '2023-12-23 12:25:35'),
(1500, 'A000000001', '2023-12-23 19:25:35', NULL, '2023-12-23 12:25:35', '2023-12-23 12:25:35'),
(1501, 'A000000001', NULL, '2023-12-23 19:25:35', '2023-12-23 12:25:35', '2023-12-23 12:25:35'),
(1502, 'A000000001', '2023-12-23 19:25:40', NULL, '2023-12-23 12:25:40', '2023-12-23 12:25:40'),
(1503, 'A000000001', NULL, '2023-12-23 19:25:40', '2023-12-23 12:25:40', '2023-12-23 12:25:40'),
(1504, 'A000000001', '2023-12-23 19:25:42', NULL, '2023-12-23 12:25:42', '2023-12-23 12:25:42'),
(1505, 'A000000001', NULL, '2023-12-23 19:25:43', '2023-12-23 12:25:43', '2023-12-23 12:25:43'),
(1506, 'A000000001', '2023-12-23 19:26:42', NULL, '2023-12-23 12:26:42', '2023-12-23 12:26:42'),
(1507, 'A000000001', NULL, '2023-12-23 19:26:42', '2023-12-23 12:26:42', '2023-12-23 12:26:42'),
(1508, 'A000000001', '2023-12-23 19:30:27', NULL, '2023-12-23 12:30:27', '2023-12-23 12:30:27'),
(1509, 'A000000001', NULL, '2023-12-23 19:30:27', '2023-12-23 12:30:27', '2023-12-23 12:30:27'),
(1510, 'A000000001', '2023-12-23 19:30:29', NULL, '2023-12-23 12:30:29', '2023-12-23 12:30:29'),
(1511, 'A000000001', NULL, '2023-12-23 19:30:29', '2023-12-23 12:30:29', '2023-12-23 12:30:29'),
(1512, 'A000000001', '2023-12-23 19:30:46', NULL, '2023-12-23 12:30:46', '2023-12-23 12:30:46'),
(1513, 'A000000001', NULL, '2023-12-23 19:30:46', '2023-12-23 12:30:46', '2023-12-23 12:30:46'),
(1514, 'A000000001', '2023-12-23 19:30:48', NULL, '2023-12-23 12:30:48', '2023-12-23 12:30:48'),
(1515, 'A000000001', NULL, '2023-12-23 19:30:48', '2023-12-23 12:30:48', '2023-12-23 12:30:48'),
(1516, 'A000000001', '2023-12-23 19:30:53', NULL, '2023-12-23 12:30:53', '2023-12-23 12:30:53'),
(1517, 'A000000001', NULL, '2023-12-23 19:30:53', '2023-12-23 12:30:53', '2023-12-23 12:30:53'),
(1518, 'A000000001', '2023-12-23 19:30:55', NULL, '2023-12-23 12:30:55', '2023-12-23 12:30:55'),
(1519, 'A000000001', NULL, '2023-12-23 19:30:55', '2023-12-23 12:30:55', '2023-12-23 12:30:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trainer`
--

CREATE TABLE `trainer` (
  `trainerID` varchar(10) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `jenis` enum('Trainer','Personal Trainer') NOT NULL,
  `locationID` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trainer`
--

INSERT INTO `trainer` (`trainerID`, `userID`, `jenis`, `locationID`, `created_at`, `updated_at`) VALUES
('TP508S938', 'TR002ASPD2', 'Personal Trainer', 'LOA001Y360', '2023-12-15 13:50:00', '2023-12-15 13:50:00'),
('TU736O678', 'TR001DJSHG', 'Trainer', 'LOA001Y360', '2023-12-11 04:15:00', '2023-12-11 04:15:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `userID` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kategori` enum('Member','Admin','Sales','Karyawan','Trainer','Super Admin') NOT NULL,
  `refferal_code` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token_reset_password` varchar(255) DEFAULT NULL,
  `locationID` varchar(10) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`userID`, `nama`, `alamat`, `no_telp`, `email`, `jenis_kelamin`, `kategori`, `refferal_code`, `email_verified_at`, `password`, `token_reset_password`, `locationID`, `remember_token`, `created_at`, `updated_at`) VALUES
('A000000001', 'Tes Admin 1', 'Jl. Letjen Sutoyo 250 Mojosongo, Jebres, Kota Surakarta', '085700088831', 'admin1@test.com', 'L', 'Admin', 'MH1JF89A9P8584457', NULL, '$2y$12$M9yRL0zyT6DWgq4/CsK7C.jcMWdJn4/.5jLbMZGO37ToKFAzSpZEi', NULL, 'LOA001Y360', NULL, '2023-12-11 03:12:34', '2023-12-11 03:12:34'),
('K000000001', 'Tes Karyawan 1', 'Jl. Letjen Sutoyo 250 Mojosongo, Jebres, Kota Surakarta', '085700088832', 'karyawan1@test.com', 'P', 'Karyawan', NULL, NULL, '$2y$12$v.j8aE97zSBmbP7K9OLydOcxl.tC1/NeI3GYBugUN2xmMu77nWpsi', NULL, 'LOA001Y360', NULL, '2023-12-11 03:12:34', '2023-12-11 03:12:34'),
('SA00000001', 'Tes Super Admin 1', 'Jl. Letjen Sutoyo 250 Mojosongo, Jebres, Kota Surakarta', '085700088833', 'superadmin1@test.com', 'P', 'Super Admin', 'MH1JF89A9P8584458', NULL, '$2y$12$Ot93VOkapLxUABqAoglonu16LjNDkH3IRalA89uwhf8OMjAUjDdsa', NULL, NULL, NULL, '2023-12-11 03:12:34', '2023-12-11 03:12:34'),
('TR001DJSHG', 'David J. Schwartz', 'Jl. Adisucipto 144 Manahan, Kec. Laweyan, Kota Surakarta', '085700088832', 'david.j.schwartz@gmail.com', 'L', 'Trainer', NULL, NULL, '$2y$12$9e1iz0fYh.H1q5UA15qeQuG/6dzq7B9.4/7sYl4XDy7ZYCwXd4CVG', NULL, 'LOA001Y360', NULL, '2023-12-11 04:13:46', '2023-12-11 04:13:46'),
('TR002ASPD2', 'Ario Suryo Kusumo', 'Jl. Sutan Syahrir RT.01/07 Sentul', '085700088833', 'ario.suryo@gmail.com', 'L', 'Trainer', NULL, NULL, '$2y$12$nDNpi6sHiUludSOyYXD3aOkeF5xFOCvdmRUSNiOHflW5oFK6KLr9W', NULL, 'LOA001Y360', NULL, '2023-12-15 13:49:50', '2023-12-15 13:49:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`aboutUsID`),
  ADD KEY `about_us_locationid_foreign` (`locationID`);

--
-- Indeks untuk tabel `akuntansi`
--
ALTER TABLE `akuntansi`
  ADD PRIMARY KEY (`akunID`),
  ADD KEY `akuntansi_kodeid_debet_foreign` (`kodeID_debet`),
  ADD KEY `akuntansi_kodeid_kredit_foreign` (`kodeID_kredit`),
  ADD KEY `akuntansi_user_input_foreign` (`user_input`),
  ADD KEY `akuntansi_user_ubah_foreign` (`user_ubah`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceID`),
  ADD KEY `attendance_userid_foreign` (`userID`),
  ADD KEY `attendance_kelasid_foreign` (`kelasID`);

--
-- Indeks untuk tabel `attendance_privat`
--
ALTER TABLE `attendance_privat`
  ADD PRIMARY KEY (`attendancePrivatID`),
  ADD KEY `attendance_privat_userid_foreign` (`userID`),
  ADD KEY `attendance_privat_kelasid_foreign` (`kelasID`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `foto_progress`
--
ALTER TABLE `foto_progress`
  ADD PRIMARY KEY (`fotoID`),
  ADD KEY `foto_progress_progressid_foreign` (`progressID`);

--
-- Indeks untuk tabel `foto_users`
--
ALTER TABLE `foto_users`
  ADD PRIMARY KEY (`fotoUsersID`),
  ADD KEY `foto_users_userid_foreign` (`userID`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelasID`),
  ADD KEY `kelas_trainerid_foreign` (`trainerID`),
  ADD KEY `kelas_trainerid2_foreign` (`trainerID2`),
  ADD KEY `kelas_trainerid3_foreign` (`trainerID3`),
  ADD KEY `kelas_ruangid_foreign` (`ruangID`),
  ADD KEY `kelas_id_pembuat_foreign` (`id_pembuat`),
  ADD KEY `kelas_id_otorisasi_foreign` (`id_otorisasi`),
  ADD KEY `kelas_locationid_foreign` (`locationID`);

--
-- Indeks untuk tabel `kode_akun`
--
ALTER TABLE `kode_akun`
  ADD PRIMARY KEY (`kode_akun`);

--
-- Indeks untuk tabel `kriteria_laporan_kelas`
--
ALTER TABLE `kriteria_laporan_kelas`
  ADD PRIMARY KEY (`kriteriaID`);

--
-- Indeks untuk tabel `latihan`
--
ALTER TABLE `latihan`
  ADD PRIMARY KEY (`latihanID`);

--
-- Indeks untuk tabel `latihan_spesialisasi`
--
ALTER TABLE `latihan_spesialisasi`
  ADD PRIMARY KEY (`spesialisasiID`),
  ADD KEY `latihan_spesialisasi_trainerid_foreign` (`trainerID`),
  ADD KEY `latihan_spesialisasi_latihanid_foreign` (`latihanID`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locationID`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `member_userid_foreign` (`userID`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
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
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaranID`),
  ADD KEY `pembayaran_userid_foreign` (`userID`),
  ADD KEY `pembayaran_salesid_foreign` (`salesID`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`pemesananID`),
  ADD KEY `pemesanan_userid_foreign` (`userID`),
  ADD KEY `pemesanan_kelasid_foreign` (`kelasID`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pesanID`),
  ADD KEY `pesan_salesid_foreign` (`salesID`),
  ADD KEY `pesan_userid_foreign` (`userID`);

--
-- Indeks untuk tabel `progress_kelas`
--
ALTER TABLE `progress_kelas`
  ADD PRIMARY KEY (`progressID`),
  ADD KEY `progress_kelas_userid_foreign` (`userID`),
  ADD KEY `progress_kelas_kelasid_foreign` (`kelasID`),
  ADD KEY `progress_kelas_kriteria_foreign` (`kriteria`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`promoID`),
  ADD KEY `promo_userid_pembuat_foreign` (`userID_pembuat`),
  ADD KEY `promo_userid_penerima_foreign` (`userID_penerima`),
  ADD KEY `promo_locationid_foreign` (`locationID`);

--
-- Indeks untuk tabel `q_r_codes`
--
ALTER TABLE `q_r_codes`
  ADD PRIMARY KEY (`QRcode_code`),
  ADD KEY `q_r_codes_userid_foreign` (`userID`),
  ADD KEY `q_r_codes_kelasid_foreign` (`kelasID`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`ruangID`),
  ADD KEY `ruang_locationid_foreign` (`locationID`);

--
-- Indeks untuk tabel `traffic_login`
--
ALTER TABLE `traffic_login`
  ADD PRIMARY KEY (`trafficID`),
  ADD KEY `traffic_login_userid_foreign` (`userID`);

--
-- Indeks untuk tabel `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainerID`),
  ADD KEY `trainer_userid_foreign` (`userID`),
  ADD KEY `trainer_locationid_foreign` (`locationID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_refferal_code_unique` (`refferal_code`),
  ADD KEY `users_locationid_foreign` (`locationID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `foto_progress`
--
ALTER TABLE `foto_progress`
  MODIFY `fotoID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `foto_users`
--
ALTER TABLE `foto_users`
  MODIFY `fotoUsersID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `traffic_login`
--
ALTER TABLE `traffic_login`
  MODIFY `trafficID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1520;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `about_us`
--
ALTER TABLE `about_us`
  ADD CONSTRAINT `about_us_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`);

--
-- Ketidakleluasaan untuk tabel `akuntansi`
--
ALTER TABLE `akuntansi`
  ADD CONSTRAINT `akuntansi_kodeid_debet_foreign` FOREIGN KEY (`kodeID_debet`) REFERENCES `kode_akun` (`kode_akun`),
  ADD CONSTRAINT `akuntansi_kodeid_kredit_foreign` FOREIGN KEY (`kodeID_kredit`) REFERENCES `kode_akun` (`kode_akun`),
  ADD CONSTRAINT `akuntansi_user_input_foreign` FOREIGN KEY (`user_input`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `akuntansi_user_ubah_foreign` FOREIGN KEY (`user_ubah`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_kelasid_foreign` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`),
  ADD CONSTRAINT `attendance_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `attendance_privat`
--
ALTER TABLE `attendance_privat`
  ADD CONSTRAINT `attendance_privat_kelasid_foreign` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`),
  ADD CONSTRAINT `attendance_privat_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `foto_progress`
--
ALTER TABLE `foto_progress`
  ADD CONSTRAINT `foto_progress_progressid_foreign` FOREIGN KEY (`progressID`) REFERENCES `progress_kelas` (`progressID`);

--
-- Ketidakleluasaan untuk tabel `foto_users`
--
ALTER TABLE `foto_users`
  ADD CONSTRAINT `foto_users_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_id_otorisasi_foreign` FOREIGN KEY (`id_otorisasi`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `kelas_id_pembuat_foreign` FOREIGN KEY (`id_pembuat`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `kelas_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`),
  ADD CONSTRAINT `kelas_ruangid_foreign` FOREIGN KEY (`ruangID`) REFERENCES `ruang` (`ruangID`),
  ADD CONSTRAINT `kelas_trainerid2_foreign` FOREIGN KEY (`trainerID2`) REFERENCES `trainer` (`trainerID`),
  ADD CONSTRAINT `kelas_trainerid3_foreign` FOREIGN KEY (`trainerID3`) REFERENCES `trainer` (`trainerID`),
  ADD CONSTRAINT `kelas_trainerid_foreign` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`);

--
-- Ketidakleluasaan untuk tabel `latihan_spesialisasi`
--
ALTER TABLE `latihan_spesialisasi`
  ADD CONSTRAINT `latihan_spesialisasi_latihanid_foreign` FOREIGN KEY (`latihanID`) REFERENCES `latihan` (`latihanID`),
  ADD CONSTRAINT `latihan_spesialisasi_trainerid_foreign` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`);

--
-- Ketidakleluasaan untuk tabel `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_salesid_foreign` FOREIGN KEY (`salesID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `pembayaran_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_kelasid_foreign` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`),
  ADD CONSTRAINT `pemesanan_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_salesid_foreign` FOREIGN KEY (`salesID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `pesan_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `progress_kelas`
--
ALTER TABLE `progress_kelas`
  ADD CONSTRAINT `progress_kelas_kelasid_foreign` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`),
  ADD CONSTRAINT `progress_kelas_kriteria_foreign` FOREIGN KEY (`kriteria`) REFERENCES `kriteria_laporan_kelas` (`kriteriaID`),
  ADD CONSTRAINT `progress_kelas_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`),
  ADD CONSTRAINT `promo_userid_pembuat_foreign` FOREIGN KEY (`userID_pembuat`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `promo_userid_penerima_foreign` FOREIGN KEY (`userID_penerima`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `q_r_codes`
--
ALTER TABLE `q_r_codes`
  ADD CONSTRAINT `q_r_codes_kelasid_foreign` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`),
  ADD CONSTRAINT `q_r_codes_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`);

--
-- Ketidakleluasaan untuk tabel `traffic_login`
--
ALTER TABLE `traffic_login`
  ADD CONSTRAINT `traffic_login_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `trainer_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`),
  ADD CONSTRAINT `trainer_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_locationid_foreign` FOREIGN KEY (`locationID`) REFERENCES `locations` (`locationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
