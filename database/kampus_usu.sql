-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2024 pada 17.37
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
-- Database: `kampus_usu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `dosen_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`dosen_id`, `nama`, `nidn`, `jenis_kelamin`, `alamat`, `telepon`, `email`) VALUES
(1, 'Roy Fransisco, M.Kom', '2348750021', 'Laki-laki', 'Medan', '081289468656', 'royfransisco@gmail.com'),
(2, 'Bastian Gulo, M.Kom', '0830127494', 'Laki-laki', 'Jl. Raharja, Medan Selayang', 'bastiangulo@gmail.com', 'bastiangulo@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(2, 'Budi', 'budi@gmail.com', 'Secara desain sudah bisa, tetapi sebaiknya dilakukan update secara berkala pada website agar lebih informatif ', '2023-12-18 03:05:51'),
(3, 'Delta', 'delta@yahoo.com', 'Tes saja ', '2023-12-18 03:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `nama`, `nim`, `jenis_kelamin`, `alamat`, `tanggal_lahir`) VALUES
(2, 'Mita Purnama Sari', '21040088', 'Perempuan', 'Medan Merdeka', '2002-02-13'),
(3, 'rehan', '21094456', 'Laki-laki', 'Jl. Sei Batang Hari', '2002-12-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reguler`
--

CREATE TABLE `reguler` (
  `reguler_id` int(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `no_hp` text NOT NULL,
  `no_hp_orangtua` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reguler`
--

INSERT INTO `reguler` (`reguler_id`, `nik`, `nama`, `jenis_kelamin`, `no_hp`, `no_hp_orangtua`, `email`) VALUES
(1, '1325346587999', 'Putri', 'Perempuan', '08214735993465', '0852947547676', 'putri@gmail.com'),
(2, '12222432546', 'Yuyung', 'PEREMPUAN', '082329579346', '081287248623', 'yuyung@gmail.com'),
(3, '12345678', 'Sumanto', 'LAKI-LAKI', '082377056094', '08233389588', 'Sumanto@gmail.com'),
(4, '12345678', 'Sumanto', 'LAKI-LAKI', '08127833554', '08232296875', 'suma@gmail.com'),
(5, '2135587687', 'Sumanto', 'LAKI-LAKI', '08127833554', '082377067784', 'suma@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` char(128) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `token`, `status`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'daulat@gmail.com', 'c0e024d9200b5705bc4804722636378a', '1', '2024-02-24 23:18:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`dosen_id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`);

--
-- Indeks untuk tabel `reguler`
--
ALTER TABLE `reguler`
  ADD PRIMARY KEY (`reguler_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `dosen_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `reguler`
--
ALTER TABLE `reguler`
  MODIFY `reguler_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
