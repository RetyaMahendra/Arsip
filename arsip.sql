-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 02 Mei 2020 pada 11.50
-- Versi Server: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_arsip`
--

CREATE TABLE `data_arsip` (
  `id` int(11) NOT NULL,
  `noarsip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pencipta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_pengolah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `uraian` text COLLATE utf8_unicode_ci NOT NULL,
  `ket` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nobox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci,
  `tgl_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `data_arsip`
--

INSERT INTO `data_arsip` (`id`, `noarsip`, `pencipta`, `unit_pengolah`, `tanggal`, `uraian`, `ket`, `kode`, `jumlah`, `nobox`, `lokasi`, `media`, `file`, `tgl_input`, `tgl_update`, `username`) VALUES
(26, '12345678', '6', '5', '2020-05-02', 'Hello Word', 'asli', '13', 1, '', '6', '6', '', '2020-05-02 10:44:51', '0000-00-00 00:00:00', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kode`
--

CREATE TABLE `master_kode` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `retensi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_kode`
--

INSERT INTO `master_kode` (`id`, `kode`, `nama`, `retensi`) VALUES
(5, 'SDM.01', 'Rekrutmen Pegawai', 1),
(6, 'SDM.02', 'Mutasi Pegawai', 1),
(7, 'SDM.03', 'Pengembangan Pegawai', 1),
(8, 'SDM.04', 'Cuti Pegawai', 3),
(9, 'SDM.03.01', 'Pelatihan Pegawai', 1),
(10, 'SDM.03.02', 'Beasiswa Pegawai', 1),
(11, 'SDM.01.01', 'Pengangakatan Pegawai', 1),
(12, 'SDM.05', 'Pemberhentian Pegawai', 5),
(13, 'KEU.01', 'Rencana Anggaran', 10),
(14, 'KEU.02', 'Realisasi Anggaran Pegawai', 10),
(15, 'KEU.03', 'Realisasi Anggaran Umum dan Rumah Tangga', 10),
(18, 'HKP.01.02', 'Keputusan Direksi Perusahaan', 5),
(19, 'HKP.02', 'Pengawasan Internal', 10),
(20, 'RND.01', 'Penelitian dan Pengembangan', 3),
(21, 'UMUM.01', 'Inventarisasi Barang Bergerak', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_lokasi`
--

CREATE TABLE `master_lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_lokasi`
--

INSERT INTO `master_lokasi` (`id`, `nama_lokasi`) VALUES
(1, 'Gedung A'),
(4, 'Lokasi'),
(5, 'Gedung C'),
(6, 'Gedung B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_media`
--

CREATE TABLE `master_media` (
  `id` int(11) NOT NULL,
  `nama_media` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_media`
--

INSERT INTO `master_media` (`id`, `nama_media`) VALUES
(5, 'Audio Cassette'),
(6, 'Audio Disc'),
(4, 'Blueprint'),
(8, 'Digital'),
(9, 'Media'),
(10, 'kertas koran'),
(11, 'usb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pencipta`
--

CREATE TABLE `master_pencipta` (
  `id` int(11) NOT NULL,
  `nama_pencipta` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_pencipta`
--

INSERT INTO `master_pencipta` (`id`, `nama_pencipta`) VALUES
(5, 'Bidang Hukum dan Tata Laksana'),
(3, 'Bidang Kepegawaian'),
(6, 'Bidang Keuangan'),
(4, 'Bidang Pengadaan'),
(8, 'Bidang Produksi'),
(9, 'Pencipta'),
(12, 'Tuhan Yang Maha Esa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pengolah`
--

CREATE TABLE `master_pengolah` (
  `id` int(11) NOT NULL,
  `nama_pengolah` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_pengolah`
--

INSERT INTO `master_pengolah` (`id`, `nama_pengolah`) VALUES
(1, 'Unit Arsip Teknologi Informasi'),
(4, 'Unit Arsip Sekretariat Hukum dan Tata Laksana'),
(2, 'Unit Arsip Kepegawaian'),
(5, 'Unit Arsip Pengadaan'),
(6, 'Unit Arsip Biro Umum dan Rumah Tangga'),
(3, 'Unit Kearsipan Pusat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipe` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `akses_klas` text COLLATE utf8_unicode_ci NOT NULL,
  `akses_modul` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`id`, `username`, `password`, `tipe`, `akses_klas`, `akses_modul`) VALUES
(1, 'admin', '$2y$10$M57KBHBtl9HsFQP6rxrqUOuSqO/MiQJnTqTu4wM5OlWwa/lTKyb2S', 'admin', '', '{\"entridata\":\"on\",\"sirkulasi\":\"on\",\"klasifikasi\":\"on\",\"pencipta\":\"on\",\"pengolah\":\"on\",\"lokasi\":\"on\",\"media\":\"on\",\"user\":\"on\",\"import\":\"on\"}'),
(6, 'user', '$2y$10$uE3PKQ/tWOoGQwnfKXVYjOXHRHQ43o5PgYpN2wf2lp.iI4.DFshoq', 'user', 'sdm,hkp', '{\"sirkulasi\":\"on\"}'),
(8, 'bima', '$2y$10$vXaZuVVPd1BK35qgFSym9OdIe.kcXVerIjBUdkKztrszNOH03M0Sq', '', 'klasifi', '{\"klasifikasi\":\"on\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sirkulasi`
--

CREATE TABLE `sirkulasi` (
  `id` int(11) NOT NULL,
  `noarsip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username_peminjam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keperluan` text COLLATE utf8_unicode_ci,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_haruskembali` datetime NOT NULL,
  `tgl_pengembalian` datetime DEFAULT NULL,
  `tgl_transaksi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sirkulasi`
--

INSERT INTO `sirkulasi` (`id`, `noarsip`, `username_peminjam`, `keperluan`, `tgl_pinjam`, `tgl_haruskembali`, `tgl_pengembalian`, `tgl_transaksi`) VALUES
(1, '103/D1.1/SDM.01/2016', 'user', 'keperluan pembuktian', '2017-11-14 16:45:27', '2017-11-17 00:00:00', NULL, '2017-11-14 16:45:27'),
(2, '22/A2/HKP.01.01/2011', 'admin', 'untuk membuat rancangan kegiatan', '2017-11-17 00:00:00', '2017-11-21 00:00:00', '2017-11-18 07:10:25', '2017-11-17 20:33:27'),
(3, '192/K1/UMUM.01/2017', 'user', 'keperluan pengecekan untuk rencana anggaran', '2017-11-17 00:00:00', '2017-11-25 00:00:00', '2018-06-06 09:24:29', '2017-11-17 20:34:18'),
(5, '110/KEU.03/2017', 'admin', 'untuk pembuktian kegiatan', '2017-11-17 00:00:00', '2017-11-29 00:00:00', '2018-01-05 14:51:43', '2017-11-17 20:41:54'),
(6, 'eee', 'user', 'tes', '2018-05-29 00:00:00', '2018-06-15 00:00:00', NULL, '2018-05-29 19:47:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_log`
--

CREATE TABLE `system_log` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username_transaksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_transaksi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_arsip`
--
ALTER TABLE `data_arsip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noarsip` (`noarsip`),
  ADD KEY `pencipta` (`pencipta`),
  ADD KEY `unit_pengolah` (`unit_pengolah`);
ALTER TABLE `data_arsip` ADD FULLTEXT KEY `uraian` (`uraian`);

--
-- Indexes for table `master_kode`
--
ALTER TABLE `master_kode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `master_lokasi`
--
ALTER TABLE `master_lokasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_lokasi` (`nama_lokasi`);

--
-- Indexes for table `master_media`
--
ALTER TABLE `master_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_media` (`nama_media`);

--
-- Indexes for table `master_pencipta`
--
ALTER TABLE `master_pencipta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_pencipta` (`nama_pencipta`);

--
-- Indexes for table `master_pengolah`
--
ALTER TABLE `master_pengolah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_pengolah` (`nama_pengolah`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `sirkulasi`
--
ALTER TABLE `sirkulasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noarsip` (`noarsip`),
  ADD KEY `username_peminjam` (`username_peminjam`),
  ADD KEY `tgl_pinjam` (`tgl_pinjam`),
  ADD KEY `tgl_pengembalian` (`tgl_pengembalian`),
  ADD KEY `tgl_haruskembali` (`tgl_haruskembali`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `username_transaksi` (`username_transaksi`),
  ADD KEY `tgl_transaksi` (`tgl_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_arsip`
--
ALTER TABLE `data_arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `master_kode`
--
ALTER TABLE `master_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `master_lokasi`
--
ALTER TABLE `master_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_media`
--
ALTER TABLE `master_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `master_pencipta`
--
ALTER TABLE `master_pencipta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `master_pengolah`
--
ALTER TABLE `master_pengolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sirkulasi`
--
ALTER TABLE `sirkulasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
