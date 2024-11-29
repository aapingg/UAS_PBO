-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2024 pada 10.26
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
-- Database: `dataapotik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `NIK` varchar(20) DEFAULT NULL,
  `nama_karyawan` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datakaryawan`
--

INSERT INTO `datakaryawan` (`NIK`, `nama_karyawan`, `alamat`, `jabatan`, `ttl`, `jenis_kelamin`) VALUES
('123', 'Aping', 'Japan', 'Owner', '2005-04-11', 'P'),
('124', 'Agus', 'Karawang', 'Leader', '2004-11-12', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataobat`
--

CREATE TABLE `dataobat` (
  `kode_obat` varchar(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `nama_suplier` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dataobat`
--

INSERT INTO `dataobat` (`kode_obat`, `nama_obat`, `nama_suplier`, `tanggal_masuk`, `jumlah`, `harga_satuan`) VALUES
('1011', 'UltraFlu', 'Kalbe Farma', '2024-04-11', '100', '2500'),
('1012', 'Mixagrip', 'kalbe Farma', '2024-04-11', '100', '2500'),
('1013', 'Bodrex', 'Bodrex', '2024-04-11', '50', '9000'),
('1014', 'Antangin', 'Kimia Farma', '2024-04-11', '50', '3200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datasuplier`
--

CREATE TABLE `datasuplier` (
  `kode_suplier` varchar(10) NOT NULL,
  `nama_suplier` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telpon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `datasuplier`
--

INSERT INTO `datasuplier` (`kode_suplier`, `nama_suplier`, `alamat`, `no_telpon`) VALUES
('3011', 'PT. Kalbe', 'Tangerang', '021-7881122'),
('3012', 'PT. Dexa', 'Jakarta', '021-98239900'),
('3013', 'PT. Darya Varya', 'Cikarang', '021-76216734'),
('3014', 'PT. Bayer', 'Bekasi', '021-55448899');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatransaksi`
--

CREATE TABLE `datatransaksi` (
  `no_nota` varchar(10) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `item1` varchar(50) NOT NULL,
  `qty1` varchar(50) NOT NULL,
  `harga1` varchar(50) NOT NULL,
  `item2` varchar(50) NOT NULL,
  `qty2` varchar(50) NOT NULL,
  `harga2` varchar(50) NOT NULL,
  `item3` varchar(50) NOT NULL,
  `qty3` varchar(50) NOT NULL,
  `harga3` varchar(50) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `datatransaksi`
--

INSERT INTO `datatransaksi` (`no_nota`, `tanggal_pembelian`, `item1`, `qty1`, `harga1`, `item2`, `qty2`, `harga2`, `item3`, `qty3`, `harga3`, `total`) VALUES
('0011', '2024-12-15', 'Konidin', '2', '3000', 'Parasetamol 15ml', '1', '15000', 'Diapet', '2', '3000', '27000'),
('0012', '2024-12-15', 'Antangin Cair', '2', '4000', 'Ikadryl 25ml ', '1', '25000', 'Laxing', '1', '3000', '36000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('A001', '$2a$10$TKkGwOrqyacTGC13NwCoIeTtwbHRxVgUHgVhnO/d7lg3RZx3AVmw2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataobat`
--
ALTER TABLE `dataobat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indeks untuk tabel `datasuplier`
--
ALTER TABLE `datasuplier`
  ADD PRIMARY KEY (`kode_suplier`);

--
-- Indeks untuk tabel `datatransaksi`
--
ALTER TABLE `datatransaksi`
  ADD PRIMARY KEY (`no_nota`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
