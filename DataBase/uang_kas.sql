-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2024 pada 20.37
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uang_kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bulan_pembayaran`
--

INSERT INTO `bulan_pembayaran` (`id_bulan_pembayaran`, `nama_bulan`, `tahun`, `pembayaran_perminggu`) VALUES
(6, 'januari', 2023, 10000),
(7, 'februari', 2023, 5000),
(8, 'maret', 2023, 5000),
(9, 'april', 2023, 15000),
(10, 'mei', 2023, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'guru'),
(3, 'bendahara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `jumlah_pengeluaran`, `keterangan`, `tanggal_pengeluaran`, `id_user`) VALUES
(1, 20000, 'Beli Sapu 2pcs', 1703578109, 1),
(2, 15000, 'Beli Pel Lantai 1pcs', 1703578117, 1),
(3, 10000, 'Beli Wipol Pel 12pcs (1 renceng)', 1703578123, 1),
(4, 20000, 'Beli Spidol Hitam 2pcs', 1703578129, 1),
(5, 9000, 'Penghapus Papan Tulis', 1703578137, 1),
(6, 40000, 'Ember Anti Pecah', 1703578142, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
(1, 1, 2, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256476),
(2, 1, 2, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256479),
(3, 1, 2, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256484),
(4, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 4,000', 1611256488),
(5, 1, 1, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256492),
(6, 1, 1, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256495),
(7, 1, 1, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256500),
(8, 1, 1, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1611256504),
(9, 1, 3, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256508),
(10, 1, 3, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256512),
(11, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 500', 1611256518),
(12, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 500 menjadi Rp. 5,000', 1611256526),
(13, 1, 5, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256530),
(14, 1, 5, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256534),
(15, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 4,000 menjadi Rp. 3,000', 1611257026),
(16, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 3,000 menjadi Rp. 5,000', 1652453172),
(17, 1, 3, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453181),
(18, 1, 3, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453187),
(19, 1, 4, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453192),
(20, 1, 4, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453196),
(21, 1, 4, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453201),
(22, 1, 5, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453205),
(23, 1, 5, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453209),
(24, 1, 11, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1652453353),
(25, 1, 11, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453358),
(26, 1, 11, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453362),
(27, 1, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453366),
(28, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 1,000', 1652454260),
(29, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 1,000 menjadi Rp. 5,000', 1652454272),
(30, 1, 10, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702394233),
(31, 1, 6, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 4,500', 1702394243),
(32, 2, 7, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702403281),
(33, 1, 8, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702443878),
(34, 1, 6, 'telah mengubah pembayaran minggu ke-1 dari Rp. 4,500 menjadi Rp. 5,000', 1702443887),
(35, 1, 9, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702443896),
(36, 1, 129, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444093),
(37, 1, 125, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444100),
(38, 1, 139, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444390),
(39, 1, 118, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444400),
(40, 1, 123, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444407),
(41, 1, 129, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444453),
(42, 1, 129, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444462),
(43, 1, 129, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444469),
(44, 1, 162, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702444486),
(45, 1, 162, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702444496),
(46, 1, 162, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702444506),
(47, 1, 162, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702444517),
(48, 1, 125, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444532),
(49, 1, 139, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444538),
(50, 1, 116, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444651),
(51, 1, 118, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444659),
(52, 1, 125, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444666),
(53, 1, 125, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444677),
(54, 1, 123, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444685),
(55, 1, 139, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444692),
(56, 1, 139, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444707),
(57, 1, 118, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444715),
(58, 1, 118, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444724),
(59, 1, 123, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444732),
(60, 1, 123, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444746),
(61, 1, 116, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444753),
(62, 1, 116, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444761),
(63, 1, 116, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444770),
(64, 1, 133, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444781),
(65, 1, 130, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444789),
(66, 1, 124, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444798),
(67, 1, 133, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444870),
(68, 1, 133, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444878),
(69, 1, 133, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444888),
(70, 1, 130, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444896),
(71, 1, 126, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444904),
(72, 1, 113, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702444916),
(73, 1, 113, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702444961),
(74, 1, 113, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702444972),
(75, 1, 113, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702444998),
(76, 1, 114, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702445022),
(77, 1, 114, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702445034),
(78, 1, 114, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702445047),
(79, 1, 124, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702445161),
(80, 1, 130, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702445183),
(81, 1, 130, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702445192),
(82, 1, 121, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702445227),
(83, 1, 111, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702445511),
(84, 1, 126, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702445966),
(85, 1, 124, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702445978),
(86, 1, 126, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702445986),
(87, 1, 124, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702445996),
(88, 1, 126, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702446006),
(89, 1, 111, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702446080),
(90, 1, 111, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702446092),
(91, 1, 111, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702446108),
(92, 1, 114, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702446126),
(93, 1, 112, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702446141),
(94, 1, 112, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702446153),
(95, 1, 112, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702446176),
(96, 1, 112, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702446193),
(97, 1, 146, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702446215),
(98, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446226),
(99, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(100, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(101, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(102, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(103, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(104, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(105, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(106, 1, 146, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446245),
(107, 1, 146, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702446256),
(108, 1, 146, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702446268),
(109, 1, 195, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702446448),
(110, 1, 158, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702446482),
(111, 1, 158, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446489),
(112, 1, 146, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 5,000', 1702446515),
(113, 1, 158, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702446547),
(114, 1, 158, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702446553),
(115, 1, 172, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702446873),
(116, 1, 172, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702446882),
(117, 1, 172, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702446890),
(118, 1, 172, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702446902),
(119, 1, 146, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 5,000', 1702446959),
(120, 1, 151, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447012),
(121, 1, 156, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447018),
(122, 1, 151, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447027),
(123, 1, 151, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447055),
(124, 1, 151, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447065),
(125, 1, 156, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447073),
(126, 1, 156, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447085),
(127, 1, 156, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447094),
(128, 1, 149, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447103),
(129, 1, 149, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447110),
(130, 1, 149, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447122),
(131, 1, 149, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447133),
(132, 1, 166, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447142),
(133, 1, 166, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447150),
(134, 1, 166, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447158),
(135, 1, 166, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447165),
(136, 1, 163, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447178),
(137, 1, 163, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447186),
(138, 1, 163, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447221),
(139, 1, 163, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447228),
(140, 1, 157, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447236),
(141, 1, 157, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447247),
(142, 1, 157, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447269),
(143, 1, 157, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447276),
(144, 1, 159, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447283),
(145, 1, 159, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447291),
(146, 1, 159, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447298),
(147, 1, 159, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447311),
(148, 1, 136, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447352),
(149, 1, 134, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447359),
(150, 1, 136, 'telah mengubah pembayaran minggu ke-1 dari Rp. 5,000 menjadi Rp. 5,000', 1702447365),
(151, 1, 134, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447379),
(152, 1, 134, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447395),
(153, 1, 136, 'telah mengubah pembayaran minggu ke-1 dari Rp. 5,000 menjadi Rp. 10,000', 1702447399),
(154, 1, 134, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447409),
(155, 1, 136, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447419),
(156, 1, 143, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447424),
(157, 1, 136, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447432),
(158, 1, 143, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447435),
(159, 1, 136, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447443),
(160, 1, 143, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447444),
(161, 1, 143, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447456),
(162, 1, 128, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447457),
(163, 1, 128, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447466),
(164, 1, 140, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447474),
(165, 1, 128, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447476),
(166, 1, 140, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447486),
(167, 1, 128, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447488),
(168, 1, 122, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447496),
(169, 1, 138, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447501),
(170, 1, 122, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447508),
(171, 1, 138, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447513),
(172, 1, 122, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447517),
(173, 1, 138, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447525),
(174, 1, 122, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447527),
(175, 1, 120, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447538),
(176, 1, 138, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447539),
(177, 1, 120, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447552),
(178, 1, 120, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447564),
(179, 1, 120, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447573),
(180, 1, 127, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447583),
(181, 1, 127, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447602),
(182, 1, 127, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447614),
(183, 1, 127, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447624),
(184, 1, 131, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447632),
(185, 1, 144, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447636),
(186, 1, 131, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447642),
(187, 1, 131, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447652),
(188, 1, 131, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447674),
(189, 1, 115, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447683),
(190, 1, 115, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447700),
(191, 1, 115, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447711),
(192, 1, 140, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447720),
(193, 1, 115, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447730),
(194, 1, 140, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447739),
(195, 1, 191, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447783),
(196, 1, 191, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447791),
(197, 1, 121, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447802),
(198, 1, 121, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447814),
(199, 1, 147, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447820),
(200, 1, 121, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447826),
(201, 1, 137, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447840),
(202, 1, 137, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447852),
(203, 1, 137, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447866),
(204, 1, 137, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447878),
(205, 1, 141, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447890),
(206, 1, 141, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447901),
(207, 1, 169, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1702447926),
(208, 1, 141, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447937),
(209, 1, 144, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702447942),
(210, 1, 141, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447947),
(211, 1, 132, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702447958),
(212, 1, 144, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702447966),
(213, 1, 132, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702447969),
(214, 1, 144, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1702447979),
(215, 1, 132, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702447980),
(216, 1, 132, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702447991),
(217, 1, 135, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702448003),
(218, 1, 117, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702448018),
(219, 1, 117, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702448029),
(220, 1, 135, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702448040),
(221, 1, 117, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702448051),
(222, 1, 135, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702448063),
(223, 1, 117, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702448074),
(224, 1, 135, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702448089),
(225, 1, 119, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702448111),
(226, 1, 142, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 10,000', 1702448122),
(227, 1, 119, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702448134),
(228, 1, 142, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 10,000', 1702448145),
(229, 1, 119, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702448158),
(230, 1, 142, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 10,000', 1702448172),
(231, 1, 119, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702448183),
(232, 1, 142, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 10,000', 1702448194),
(233, 1, 147, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702448200),
(234, 1, 169, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1702448210),
(235, 1, 169, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702448323),
(236, 1, 169, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702448323),
(237, 1, 169, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702448323),
(238, 1, 169, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702448324),
(239, 1, 169, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1702448324),
(240, 1, 152, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1703584356);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id_riwayat_pengeluaran`, `id_user`, `aksi`, `tanggal`) VALUES
(1, 1, 'telah menambahkan pengeluaran Pembersih lantai dengan biaya Rp. 2,000', 1611256576),
(2, 1, 'telah menambahkan pengeluaran sapu x1 dengan biaya Rp. 10,000', 1611256589),
(3, 1, 'telah mengubah pengeluaran Pembersih lantai 2x dari biaya Rp. 2,000 menjadi Rp. 2,000', 1611256595),
(4, 1, 'telah mengubah pengeluaran Pembersih lantai x2 dari biaya Rp. 2,000 menjadi Rp. 2,000', 1611256599),
(5, 1, 'telah menambahkan pengeluaran Beli Sapu 2pcs dengan biaya Rp. 20,000', 1652453635),
(6, 1, 'telah menambahkan pengeluaran Beli Pel Lantai 2pcs dengan biaya Rp. 28,000', 1652453668),
(7, 1, 'telah menambahkan pengeluaran Beli Sabun Pel 12pcs (1 renceng) dengan biaya Rp. 10,000', 1652453690),
(8, 1, 'telah menambahkan pengeluaran Beli Spidol hitam 3pcs dengan biaya Rp. 30,000', 1652453749),
(9, 1, 'telah menambahkan pengeluaran Penghapus Papan Tulis dengan biaya Rp. 9,000', 1652453779),
(10, 1, 'telah mengubah pengeluaran Beli Spidol hitam 2pcs dari biaya Rp. 30,000 menjadi Rp. 20,000', 1652453803),
(11, 1, 'telah menambahkan pengeluaran Ember Anti Pecah dengan biaya Rp. 35,000', 1652453820),
(12, 1, 'telah mengubah pengeluaran Beli Wipol Pel 12pcs (1 renceng) dari biaya Rp. 10,000 menjadi Rp. 10,000', 1652453855),
(13, 1, 'telah mengubah pengeluaran Beli Pel Lantai 1pcs dari biaya Rp. 28,000 menjadi Rp. 15,000', 1652453877),
(14, 1, 'telah mengubah pengeluaran Ember Anti Pecah dari biaya Rp. 35,000 menjadi Rp. 40,000', 1652453886),
(15, 1, 'telah mengubah pengeluaran Beli Spidol Hitam 2pcs dari biaya Rp. 20,000 menjadi Rp. 20,000', 1652453900),
(16, 1, 'telah mengubah pengeluaran Beli Sapu 2pcs dari biaya Rp. 20,000 menjadi Rp. 20,000', 1703578109),
(17, 1, 'telah mengubah pengeluaran Beli Pel Lantai 1pcs dari biaya Rp. 15,000 menjadi Rp. 15,000', 1703578117),
(18, 1, 'telah mengubah pengeluaran Beli Wipol Pel 12pcs (1 renceng) dari biaya Rp. 10,000 menjadi Rp. 10,000', 1703578123),
(19, 1, 'telah mengubah pengeluaran Beli Spidol Hitam 2pcs dari biaya Rp. 20,000 menjadi Rp. 20,000', 1703578129),
(20, 1, 'telah mengubah pengeluaran Penghapus Papan Tulis dari biaya Rp. 9,000 menjadi Rp. 9,000', 1703578137),
(21, 1, 'telah mengubah pengeluaran Ember Anti Pecah dari biaya Rp. 40,000 menjadi Rp. 40,000', 1703578142);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(1, 'Dapit Triandi', 'pria', '082372842011', 'dapittriyandi65@gmail.com'),
(2, 'Gusmardiansyah', 'pria', '082317203948', 'gusmardiansyahyan@gmail.com'),
(3, 'Novri Ramadhianti', 'wanita', '0895415013124', 'novriramdhianti@gmail.com'),
(4, 'Nyimas Ayu Lestari', 'wanita', '081367093138', 'ayul85702@gmail.com'),
(5, 'Evi Yuli Yanti', 'wanita', '082286222509', 'yuliyantie624@gmail.com'),
(6, 'Alfarizi Pundabi', 'pria', '082186979301', 'Pundabia99@gmail.com'),
(7, 'Rismiati', 'wanita', '082253024598', 'rismiatismsng@gmail.com'),
(8, 'Ahmad Munib', 'pria', '085155496962', 'sriwijayasl9@gmail.com'),
(9, 'Wahyu Dwi yuliananta', 'pria', '082175182252', 'wahyudwiyuliananta@gmail.com'),
(11, 'M Kaka Mahfudh', 'pria', '088912345678', 'kaka@gmail.com'),
(12, 'Refani Tri Septiani', 'wanita', '08984217161', 'septianirefani@gmail.com'),
(13, 'M Syaidun Ritonga', 'pria', '085372625866', 'saydunritongadusun@gmail.com'),
(14, 'Aldiansyah', 'pria', '083834898221', 'aldiy1951@gmail.com'),
(15, 'Avantika Wulandara', 'wanita', '081261527600', 'avantikawulandara5@gmail.com'),
(16, 'Agung Widianto', 'pria', '082177093060', 'agungwidianto831@gmail.com'),
(17, 'Cesar Yandiva Sandi', 'pria', '085157579289', 'zezarzezar480@gmail.com'),
(18, 'Hendi Ananda Putra', 'pria', '085211144621', 'hendi123@gmail.com'),
(19, 'M zaki', 'pria', '082181332405', 'zalto70streaming@gmail.com'),
(20, 'Afthoni Ahsho', 'pria', '081346438831', 'toyaagaming123@gmail.com'),
(21, 'Andri Nurwanda', 'pria', '082246475944', 'andrinurwanda7@gmail.com'),
(22, 'Ficky Firmansyah', 'pria', '089587965550', 'kenapasaya146@gmail.com'),
(23, 'Siti Wulandari', 'wanita', '082273196584', 'sitiw3175@gmail.com'),
(24, 'Alief Mardiansyah', 'pria', '082156817326', 'aliefmardiansyah12@gmail.com'),
(25, 'Zikri Hanif', 'pria', '085974968436', 'freewaduhek4@gmail.com'),
(26, 'Siti Nurjannah', 'wanita', '085609184119', 'xyznurjanah6@gmail.com'),
(27, 'Dimas Ahmad Ramadhan', 'pria', '088286399087', 'dams22354@gmail.com'),
(28, 'Muhammad Zaki', 'pria', '082181332405', 'zalto70streaming@gmail.com'),
(29, 'Taufik Hidayat', 'pria', '081379012923', 'taufikhidayatmrz906@gmail.com'),
(30, 'Ahmad Fadhil Fawwaz', 'pria', '085776355890', 'ahmadfadhilfawwaz@gmail.com'),
(31, 'Elza Elviya', 'wanita', '082254124601', 'elzaelviya@gmail.com'),
(32, 'Rian Saputra', 'pria', '085783742124', 'Riansaputra@gmail.com'),
(33, 'Winda', 'wanita', '081368232125', 'windaaa531@gmail.com'),
(34, 'Muhammad Azikri', 'pria', '083171016795', 'Muhammadazikri12345@gmail.com'),
(35, 'Muhammad Zam Zami', 'pria', '081532321764', 'zzami6599@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL,
  `status_lunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uang_kas`
--

INSERT INTO `uang_kas` (`id_uang_kas`, `id_siswa`, `id_bulan_pembayaran`, `minggu_ke_1`, `minggu_ke_2`, `minggu_ke_3`, `minggu_ke_4`, `status_lunas`) VALUES
(111, 1, 6, 10000, 10000, 10000, 10000, 1),
(112, 2, 6, 10000, 10000, 10000, 10000, 1),
(113, 3, 6, 10000, 10000, 10000, 10000, 1),
(114, 4, 6, 10000, 10000, 10000, 10000, 1),
(115, 5, 6, 10000, 10000, 10000, 10000, 1),
(116, 6, 6, 10000, 10000, 10000, 10000, 1),
(117, 7, 6, 10000, 10000, 10000, 10000, 1),
(118, 8, 6, 10000, 10000, 10000, 10000, 1),
(119, 9, 6, 10000, 10000, 10000, 10000, 1),
(120, 11, 6, 10000, 10000, 10000, 10000, 1),
(121, 12, 6, 10000, 10000, 10000, 10000, 1),
(122, 13, 6, 10000, 10000, 10000, 10000, 1),
(123, 14, 6, 10000, 10000, 10000, 10000, 1),
(124, 15, 6, 10000, 10000, 10000, 10000, 1),
(125, 16, 6, 10000, 10000, 10000, 10000, 1),
(126, 17, 6, 10000, 10000, 10000, 10000, 1),
(127, 18, 6, 10000, 10000, 10000, 10000, 1),
(128, 19, 6, 10000, 10000, 10000, 10000, 1),
(129, 20, 6, 10000, 10000, 10000, 10000, 1),
(130, 21, 6, 10000, 10000, 10000, 10000, 1),
(131, 22, 6, 10000, 10000, 10000, 10000, 1),
(132, 23, 6, 10000, 10000, 10000, 10000, 1),
(133, 24, 6, 10000, 10000, 10000, 10000, 1),
(134, 25, 6, 10000, 10000, 10000, 10000, 1),
(135, 26, 6, 10000, 10000, 10000, 10000, 1),
(136, 27, 6, 10000, 10000, 10000, 10000, 1),
(137, 28, 6, 10000, 10000, 10000, 10000, 1),
(138, 29, 6, 10000, 10000, 10000, 10000, 1),
(139, 30, 6, 10000, 10000, 10000, 10000, 1),
(140, 31, 6, 10000, 10000, 10000, 10000, 1),
(141, 32, 6, 10000, 10000, 10000, 10000, 1),
(142, 33, 6, 10000, 10000, 10000, 10000, 1),
(143, 34, 6, 10000, 10000, 10000, 10000, 1),
(144, 1, 7, 5000, 5000, 5000, 5000, 1),
(145, 2, 7, 0, 0, 0, 0, 0),
(146, 3, 7, 5000, 5000, 5000, 5000, 1),
(147, 4, 7, 5000, 5000, 0, 0, 0),
(148, 5, 7, 0, 0, 0, 0, 0),
(149, 6, 7, 5000, 5000, 5000, 5000, 1),
(150, 7, 7, 0, 0, 0, 0, 0),
(151, 8, 7, 5000, 5000, 5000, 5000, 1),
(152, 9, 7, 5000, 0, 0, 0, 0),
(153, 11, 7, 0, 0, 0, 0, 0),
(154, 12, 7, 0, 0, 0, 0, 0),
(155, 13, 7, 0, 0, 0, 0, 0),
(156, 14, 7, 5000, 5000, 5000, 5000, 1),
(157, 15, 7, 5000, 5000, 5000, 5000, 1),
(158, 16, 7, 5000, 5000, 5000, 5000, 1),
(159, 17, 7, 5000, 5000, 5000, 5000, 1),
(160, 18, 7, 0, 0, 0, 0, 0),
(161, 19, 7, 0, 0, 0, 0, 0),
(162, 20, 7, 5000, 5000, 5000, 5000, 1),
(163, 21, 7, 5000, 5000, 5000, 5000, 1),
(164, 22, 7, 0, 0, 0, 0, 0),
(165, 23, 7, 0, 0, 0, 0, 0),
(166, 24, 7, 5000, 5000, 5000, 5000, 1),
(167, 25, 7, 0, 0, 0, 0, 0),
(168, 26, 7, 0, 0, 0, 0, 0),
(169, 27, 7, 5000, 5000, 5000, 0, 0),
(170, 28, 7, 0, 0, 0, 0, 0),
(171, 29, 7, 0, 0, 0, 0, 0),
(172, 30, 7, 5000, 5000, 5000, 5000, 1),
(173, 31, 7, 0, 0, 0, 0, 0),
(174, 32, 7, 0, 0, 0, 0, 0),
(175, 33, 7, 0, 0, 0, 0, 0),
(176, 34, 7, 0, 0, 0, 0, 0),
(177, 1, 8, 0, 0, 0, 0, 0),
(178, 2, 8, 0, 0, 0, 0, 0),
(179, 3, 8, 0, 0, 0, 0, 0),
(180, 4, 8, 0, 0, 0, 0, 0),
(181, 5, 8, 0, 0, 0, 0, 0),
(182, 6, 8, 0, 0, 0, 0, 0),
(183, 7, 8, 0, 0, 0, 0, 0),
(184, 8, 8, 0, 0, 0, 0, 0),
(185, 9, 8, 0, 0, 0, 0, 0),
(186, 11, 8, 0, 0, 0, 0, 0),
(187, 12, 8, 0, 0, 0, 0, 0),
(188, 13, 8, 0, 0, 0, 0, 0),
(189, 14, 8, 0, 0, 0, 0, 0),
(190, 15, 8, 0, 0, 0, 0, 0),
(191, 16, 8, 5000, 5000, 0, 0, 0),
(192, 17, 8, 0, 0, 0, 0, 0),
(193, 18, 8, 0, 0, 0, 0, 0),
(194, 19, 8, 0, 0, 0, 0, 0),
(195, 20, 8, 5000, 0, 0, 0, 0),
(196, 21, 8, 0, 0, 0, 0, 0),
(197, 22, 8, 0, 0, 0, 0, 0),
(198, 23, 8, 0, 0, 0, 0, 0),
(199, 24, 8, 0, 0, 0, 0, 0),
(200, 25, 8, 0, 0, 0, 0, 0),
(201, 26, 8, 0, 0, 0, 0, 0),
(202, 27, 8, 0, 0, 0, 0, 0),
(203, 28, 8, 0, 0, 0, 0, 0),
(204, 29, 8, 0, 0, 0, 0, 0),
(205, 30, 8, 0, 0, 0, 0, 0),
(206, 31, 8, 0, 0, 0, 0, 0),
(207, 32, 8, 0, 0, 0, 0, 0),
(208, 33, 8, 0, 0, 0, 0, 0),
(209, 34, 8, 0, 0, 0, 0, 0),
(210, 35, 8, 0, 0, 0, 0, 0),
(211, 1, 9, 0, 0, 0, 0, 0),
(212, 2, 9, 0, 0, 0, 0, 0),
(213, 3, 9, 0, 0, 0, 0, 0),
(214, 4, 9, 0, 0, 0, 0, 0),
(215, 5, 9, 0, 0, 0, 0, 0),
(216, 6, 9, 0, 0, 0, 0, 0),
(217, 7, 9, 0, 0, 0, 0, 0),
(218, 8, 9, 0, 0, 0, 0, 0),
(219, 9, 9, 0, 0, 0, 0, 0),
(220, 11, 9, 0, 0, 0, 0, 0),
(221, 12, 9, 0, 0, 0, 0, 0),
(222, 13, 9, 0, 0, 0, 0, 0),
(223, 14, 9, 0, 0, 0, 0, 0),
(224, 15, 9, 0, 0, 0, 0, 0),
(225, 16, 9, 0, 0, 0, 0, 0),
(226, 17, 9, 0, 0, 0, 0, 0),
(227, 18, 9, 0, 0, 0, 0, 0),
(228, 19, 9, 0, 0, 0, 0, 0),
(229, 20, 9, 0, 0, 0, 0, 0),
(230, 21, 9, 0, 0, 0, 0, 0),
(231, 22, 9, 0, 0, 0, 0, 0),
(232, 23, 9, 0, 0, 0, 0, 0),
(233, 24, 9, 0, 0, 0, 0, 0),
(234, 25, 9, 0, 0, 0, 0, 0),
(235, 26, 9, 0, 0, 0, 0, 0),
(236, 27, 9, 0, 0, 0, 0, 0),
(237, 28, 9, 0, 0, 0, 0, 0),
(238, 29, 9, 0, 0, 0, 0, 0),
(239, 30, 9, 0, 0, 0, 0, 0),
(240, 31, 9, 0, 0, 0, 0, 0),
(241, 32, 9, 0, 0, 0, 0, 0),
(242, 33, 9, 0, 0, 0, 0, 0),
(243, 34, 9, 0, 0, 0, 0, 0),
(244, 35, 9, 0, 0, 0, 0, 0),
(245, 1, 10, 0, 0, 0, 0, 0),
(246, 2, 10, 0, 0, 0, 0, 0),
(247, 3, 10, 0, 0, 0, 0, 0),
(248, 4, 10, 0, 0, 0, 0, 0),
(249, 5, 10, 0, 0, 0, 0, 0),
(250, 6, 10, 0, 0, 0, 0, 0),
(251, 7, 10, 0, 0, 0, 0, 0),
(252, 8, 10, 0, 0, 0, 0, 0),
(253, 9, 10, 0, 0, 0, 0, 0),
(254, 11, 10, 0, 0, 0, 0, 0),
(255, 12, 10, 0, 0, 0, 0, 0),
(256, 13, 10, 0, 0, 0, 0, 0),
(257, 14, 10, 0, 0, 0, 0, 0),
(258, 15, 10, 0, 0, 0, 0, 0),
(259, 16, 10, 0, 0, 0, 0, 0),
(260, 17, 10, 0, 0, 0, 0, 0),
(261, 18, 10, 0, 0, 0, 0, 0),
(262, 19, 10, 0, 0, 0, 0, 0),
(263, 20, 10, 0, 0, 0, 0, 0),
(264, 21, 10, 0, 0, 0, 0, 0),
(265, 22, 10, 0, 0, 0, 0, 0),
(266, 23, 10, 0, 0, 0, 0, 0),
(267, 24, 10, 0, 0, 0, 0, 0),
(268, 25, 10, 0, 0, 0, 0, 0),
(269, 26, 10, 0, 0, 0, 0, 0),
(270, 27, 10, 0, 0, 0, 0, 0),
(271, 28, 10, 0, 0, 0, 0, 0),
(272, 29, 10, 0, 0, 0, 0, 0),
(273, 30, 10, 0, 0, 0, 0, 0),
(274, 31, 10, 0, 0, 0, 0, 0),
(275, 32, 10, 0, 0, 0, 0, 0),
(276, 33, 10, 0, 0, 0, 0, 0),
(277, 34, 10, 0, 0, 0, 0, 0),
(278, 35, 10, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `asal` varchar(150) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`, `jenis_kelamin`, `no_hp`, `asal`, `photo`) VALUES
(1, 'Dapit Triandi', 'admin123', '$2y$10$RtlG8gY2cp/2BYEeMBJ2C.tMli1qvWGCoT/jkKIZVNrRJ/4cGbbTm', 1, 'laki-laki', '08234455677', 'jambi', 0x636c6f7468372e6a7067),
(2, 'Novri Ramadhianti', 'novri123', '$2y$10$fdeYDCtDbXiGEQGLtbiAgOjZe240BbZJfVZK.61cItcJ/VZqO.f4.', 3, 'perempuan', '08245454667', 'palembang', 0x706578656c732d6365757474682d31353738383239382e6a7067),
(3, 'Annisa Fatimah, S.Kom', 'annisa321', '$2y$10$1G9mvmbcbdwjdqCb1EuG5OGAYNhPa1aOmlmd2yS2/Yz.A3HRS/u5u', 2, 'perempuan', '082454566666', 'Padang', 0x636c6f7468392e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indeks untuk tabel `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT untuk tabel `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
