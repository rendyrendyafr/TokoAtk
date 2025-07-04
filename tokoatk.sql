-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2025 pada 11.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(16) DEFAULT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`) VALUES
('1', 'buku tulis', 'buku', 5000),
('2', 'pulpen', 'alat tulis', 3000),
('3', 'pensil 2b', 'alat tulis', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesd`
--

CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `salesId` varchar(16) NOT NULL,
  `barangId` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `salesd`
--

INSERT INTO `salesd` (`id`, `salesId`, `barangId`, `qty`, `harga`) VALUES
(1, 'SLS1751562692106', '1', 5, 5000),
(2, 'SLS1751562692106', '2', 6, 3000),
(3, 'SLS1751562692106', '3', 8, 2000),
(4, 'SLS1751563696163', '1', 3, 5000),
(5, 'SLS1751563696163', '2', 6, 3000),
(6, 'SLS1751611007769', '2', 10, 3000),
(7, 'SLS1751611007769', '3', 15, 2000),
(8, 'SLS1751611007769', '1', 17, 5000),
(9, 'SLS1751618196590', '2', 3, 3000),
(10, 'SLS1751618196590', '1', 1, 5000),
(11, 'SLS1751618196590', '3', 5, 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('SLS1751562423311', '2025-07-04 00:07:03', 'admin'),
('SLS1751562435205', '2025-07-04 00:07:15', 'admin'),
('SLS1751562588539', '2025-07-04 00:09:48', 'admin'),
('SLS1751562627231', '2025-07-04 00:10:27', 'admin'),
('SLS1751562692106', '2025-07-04 00:11:32', 'admin'),
('SLS1751563696163', '2025-07-04 00:28:16', 'admin'),
('SLS1751564535007', '2025-07-04 00:42:15', 'admin'),
('SLS1751564652736', '2025-07-04 00:44:12', 'admin'),
('SLS1751609518084', '2025-07-04 13:11:58', 'admin'),
('SLS1751611007769', '2025-07-04 13:36:47', 'admin'),
('SLS1751618196590', '2025-07-04 15:36:36', 'admin'),
('SLS1751618339069', '2025-07-04 15:38:59', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stockd`
--

CREATE TABLE `stockd` (
  `id` int(11) NOT NULL,
  `stockId` varchar(16) NOT NULL,
  `barangId` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stockd`
--

INSERT INTO `stockd` (`id`, `stockId`, `barangId`, `qty`, `harga`) VALUES
(1, 'STK1751561798298', '1', 10, 5000),
(2, 'STK1751561798298', '2', 15, 3000),
(3, 'STK1751562554777', '3', 20, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stockm`
--

CREATE TABLE `stockm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stockm`
--

INSERT INTO `stockm` (`id`, `waktu`, `username`) VALUES
('STK1751561630082', '2025-07-03 23:53:50', 'admin'),
('STK1751561699549', '2025-07-03 23:54:59', 'admin'),
('STK1751561706166', '2025-07-03 23:55:06', 'admin'),
('STK1751561798298', '2025-07-03 23:56:38', 'admin'),
('STK1751562554777', '2025-07-04 00:09:14', 'admin'),
('STK1751564626068', '2025-07-04 00:43:46', 'admin'),
('STK1751564638678', '2025-07-04 00:43:58', 'admin'),
('STK1751564680391', '2025-07-04 00:44:40', 'admin'),
('STK1751618333013', '2025-07-04 15:38:53', 'admin'),
('STK1751618421358', '2025-07-04 15:40:21', 'admin'),
('STK1751618535679', '2025-07-04 15:42:15', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('admin', 'Administrator', '202cb962ac59075b964b07152d234b70'),
('kazam', 'kepuludinn', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesId` (`salesId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indeks untuk tabel `salesm`
--
ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `stockd`
--
ALTER TABLE `stockd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockId` (`stockId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indeks untuk tabel `stockm`
--
ALTER TABLE `stockm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `stockd`
--
ALTER TABLE `stockd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `salesd`
--
ALTER TABLE `salesd`
  ADD CONSTRAINT `salesd_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `salesm` (`id`),
  ADD CONSTRAINT `salesd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `salesm`
--
ALTER TABLE `salesm`
  ADD CONSTRAINT `salesm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Ketidakleluasaan untuk tabel `stockd`
--
ALTER TABLE `stockd`
  ADD CONSTRAINT `stockd_ibfk_1` FOREIGN KEY (`stockId`) REFERENCES `stockm` (`id`),
  ADD CONSTRAINT `stockd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `stockm`
--
ALTER TABLE `stockm`
  ADD CONSTRAINT `stockm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
