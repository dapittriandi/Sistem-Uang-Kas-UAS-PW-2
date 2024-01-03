-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2023 pada 05.46
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
(28, 'Muhammad Zam Zami', 'pria', '081532321764', 'zzami6599@gmail.com'),
(29, 'Taufik Hidayat', 'pria', '081379012923', 'taufikhidayatmrz906@gmail.com'),
(30, 'Ahmad Fadhil Fawwaz', 'pria', '085776355890', 'ahmadfadhilfawwaz@gmail.com'),
(31, 'Elza Elviya', 'wanita', '082254124601', 'elzaelviya@gmail.com'),
(32, 'Rian Saputra', 'pria', '085783742124', 'Riansaputra@gmail.com'),
(33, 'Winda', 'wanita', '081368232125', 'windaaa531@gmail.com'),
(34, 'Muhammad Azikri', 'pria', '083171016795', 'Muhammadazikri12345@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
