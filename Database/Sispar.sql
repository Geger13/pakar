-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 12:28 PM
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
-- Database: `informatika_noni`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `pengguna` varchar(30) NOT NULL,
  `sandi` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`pengguna`, `sandi`) VALUES
('admin', 'mucill'),
('Yoga', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblaturan`
--

CREATE TABLE `tblaturan` (
  `kd_aturan` int(11) NOT NULL,
  `kd_gejala` varchar(7) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `nl_prob` decimal(2,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblaturan`
--

INSERT INTO `tblaturan` (`kd_aturan`, `kd_gejala`, `kd_penyakit`, `nl_prob`) VALUES
(152, 'G12', 'P03', 0.1),
(145, 'G06', 'P02', 0.3),
(149, 'G10', 'P03', 0.1),
(146, 'G07', 'P02', 0.3),
(150, 'G11', 'P03', 0.1),
(147, 'G08', 'P03', 0.1),
(144, 'G04', 'P02', 0.3),
(143, 'G05', 'P02', 0.3),
(151, 'G07', 'P03', 0.1),
(148, 'G09', 'P03', 0.1),
(136, 'G01', 'P01', 0.3),
(137, 'G01', 'P06', 0.3),
(138, 'G01', 'P07', 0.2),
(139, 'G01', 'P08', 0.3),
(140, 'G02', 'P01', 0.3),
(141, 'G03', 'P01', 0.3),
(142, 'G04', 'P01', 0.3),
(153, 'G13', 'P03', 0.1),
(154, 'G09', 'P04', 0.2),
(155, 'G16', 'P04', 0.2),
(156, 'G17', 'P04', 0.2),
(157, 'G18', 'P04', 0.2),
(158, 'G19', 'P04', 0.2),
(159, 'G04', 'P05', 0.2),
(160, 'G14', 'P05', 0.2),
(161, 'G15', 'P05', 0.2),
(162, 'G20', 'P05', 0.2),
(163, 'G21', 'P05', 0.2),
(184, 'G22', 'P05', 0.2),
(165, 'G02', 'P06', 0.3),
(166, 'G03', 'P06', 0.3),
(167, 'G23', 'P06', 0.3),
(168, 'G03', 'P07', 0.2),
(169, 'G22', 'P07', 0.2),
(170, 'G24', 'P07', 0.2),
(171, 'G25', 'P07', 0.2),
(172, 'G26', 'P08', 0.3),
(173, 'G27', 'P08', 0.3),
(174, 'G28', 'P08', 0.3),
(175, 'G27', 'P09', 0.3),
(176, 'G29', 'P09', 0.3),
(177, 'G30', 'P09', 0.3),
(178, 'G31', 'P09', 0.3),
(179, 'G21', 'P10', 0.2),
(180, 'G27', 'P10', 0.2),
(181, 'G31', 'P10', 0.2),
(182, 'G32', 'P10', 0.2),
(183, 'G33', 'P10', 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `tblbantu`
--

CREATE TABLE `tblbantu` (
  `id_pengunjung` int(11) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbantu`
--

INSERT INTO `tblbantu` (`id_pengunjung`, `kd_gejala`) VALUES
(8, 'G01'),
(8, 'G02'),
(8, 'G03'),
(25, 'G15'),
(21, 'G29'),
(21, 'G23'),
(21, 'G11'),
(21, 'G05'),
(25, 'G14'),
(25, 'G13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbantu_2`
--

CREATE TABLE `tblbantu_2` (
  `id_pengunjung` int(3) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `jml_gejala` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbantu_2`
--

INSERT INTO `tblbantu_2` (`id_pengunjung`, `kd_penyakit`, `jml_gejala`) VALUES
(25, 'P05', 21),
(21, 'P01', 44),
(21, 'P03', 16),
(21, 'P04', 7),
(0, 'P01', 35),
(0, 'P09', 11),
(7, 'P07', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbldiagnosa`
--

CREATE TABLE `tbldiagnosa` (
  `id_pengunjung` varchar(7) NOT NULL,
  `kd_penyakit` varchar(7) NOT NULL,
  `persen` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgejala`
--

CREATE TABLE `tblgejala` (
  `kd_gejala` varchar(7) NOT NULL,
  `nm_gejala` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblgejala`
--

INSERT INTO `tblgejala` (`kd_gejala`, `nm_gejala`) VALUES
('G01', 'Demam'),
('G02', 'Sakit Tenggorokan'),
('G03', 'Pembengkakan kelenjar\r\n'),
('G04', 'Kelelahan'),
('G05', 'Peningkatan gula darah\r\n\r\n'),
('G06', 'Sering buang air kecil\r\n\r\n'),
('G07', 'Mudah merasa haus\r\n'),
('G08', 'Merasa lemas dan lesu\r\n'),
('G09', 'Muntah\r\n'),
('G10', 'Volume urine sedikit\r\n'),
('G11', 'Nafsu makan berkurang\r\n'),
('G12', 'Lidah kering dan kotor\r\n'),
('G13', 'Kenaikan frekuensi denyut jantung (100 kali/menit)'),
('G14', 'Wajah terlihat pucat\r\n'),
('G15', 'Tekanan darah menurun'),
('G16', 'Mual'),
('G17', 'Keluar kista berbentuk anggur dari vagina'),
('G18', 'Nyeri tulang panggul'),
('G19', 'Rahim tampak lebih besar dari usia kandungan\r\n'),
('G20', 'Sesak nafas'),
('G21', 'Nyeri bagian dada'),
('G22', 'Sakit kepala'),
('G23', 'Kejang-kejang'),
('G24', 'Nyeri pada otot'),
('G25', 'Vagina terasa gatal\r\n\r\n\r\n'),
('G26', 'Gangguan Penglihatan\r\n'),
('G27', 'Sakit perut\r\n'),
('G28', 'Menurunnya jumlah trombosit\r\n'),
('G29', 'Nyeri punggung'),
('G30', 'Keluar darah dari vagina\r\n\r\n'),
('G31', 'Pusing\r\n\r\n'),
('G32', 'Mata sensitif pada cahaya\r\n'),
('G33', 'Urine berdarah');

-- --------------------------------------------------------

--
-- Table structure for table `tblpengunjung`
--

CREATE TABLE `tblpengunjung` (
  `id_pengunjung` int(7) NOT NULL,
  `nm_pengunjung` varchar(40) NOT NULL,
  `tgl_diagnosa` date NOT NULL,
  `gejala` text NOT NULL,
  `penyakit` varchar(60) NOT NULL,
  `nl_bayes` decimal(5,2) NOT NULL,
  `pengobatan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpengunjung`
--

INSERT INTO `tblpengunjung` (`id_pengunjung`, `nm_pengunjung`, `tgl_diagnosa`, `gejala`, `penyakit`, `nl_bayes`, `pengobatan`) VALUES
(50, 'alun', '2024-01-09', 'Sakit kepala, Pembengkakan kelenjar\r\n, Demam', 'Herpes Genital', 27.00, 'Konsumsi obat antivirus perlu dilakukan di bulan terakhir kehamilan menjelang persalinan'),
(51, 'Ayu Gita', '2024-01-09', 'Sakit kepala, Pembengkakan kelenjar\r\n, Demam', 'Herpes Genital', 27.00, 'Konsumsi obat antivirus perlu dilakukan di bulan terakhir kehamilan menjelang persalinan'),
(48, 'r', '2024-01-08', 'Pembengkakan kelenjar\r\n, Sakit Tenggorokan, Demam', 'Toksoplasma', 40.00, 'Memberikan Spiramycin, jika janin tidak tertular infeksi\r\nPyrimethamine, sulfadiazine, dan leucovorin, jika janin tertular dan usia kehamilan lebih dari 16 minggu'),
(47, 'i', '2024-01-08', 'Urine berdarah, Mata sensitif pada cahaya\r\n, Pusing\r\n\r\n', 'Tekanan Darah Tinggi', 77.00, 'Memperbaiki gaya hidup dan pemberian obat-obatan dengan resep dokter'),
(45, 'y', '2024-01-08', 'Kelelahan, Pembengkakan kelenjar\r\n, Sakit Tenggorokan, Demam', 'Cytomegalovirus (CMV)', 40.00, 'Memberikan obat-obatan Simtomatik'),
(46, 'b', '2024-01-08', 'Urine berdarah, Mata sensitif pada cahaya\r\n', 'Tekanan Darah Tinggi', 100.00, 'Memperbaiki gaya hidup dan pemberian obat-obatan dengan resep dokter'),
(43, 'iyan', '2024-01-08', 'Sakit kepala, Pembengkakan kelenjar\r\n, Demam', 'Herpes Genital', 27.00, 'Konsumsi obat antivirus perlu dilakukan di bulan terakhir kehamilan menjelang persalinan'),
(44, 'sss', '2024-01-08', 'Sakit kepala, Sakit Tenggorokan, Demam', 'Toksoplasma', 26.00, 'Memberikan Spiramycin, jika janin tidak tertular infeksi\r\nPyrimethamine, sulfadiazine, dan leucovorin, jika janin tertular dan usia kehamilan lebih dari 16 minggu'),
(42, 'della', '2024-01-08', 'Kelelahan, Pembengkakan kelenjar\r\n, Sakit Tenggorokan, Demam', 'Cytomegalovirus (CMV)', 40.00, 'Memberikan obat-obatan Simtomatik'),
(37, 'bagoes', '2024-01-08', 'Pusing\r\n\r\n, Sakit perut\r\n, Nyeri pada otot, Sakit kepala, Sering buang air kecil\r\n\r\n', 'Herpes Genital', 30.00, 'Konsumsi obat antivirus perlu dilakukan di bulan terakhir kehamilan menjelang persalinan'),
(35, 'gita', '2024-01-08', 'Sakit perut\r\n, Sering buang air kecil\r\n\r\n, Kelelahan, Sakit Tenggorokan, Pusing\r\n\r\n', 'Diabetes Gestasional', 25.00, 'Diet, Olahraga yang teratur dan pemberian Metformin. Jika gejala parah segera konsultasi ke Dokter.'),
(34, 'iyann', '2024-01-08', 'Kelelahan, Pembengkakan kelenjar\r\n, Demam', 'Cytomegalovirus (CMV)', 75.00, 'Memberikan obat-obatan Simtomatik');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenyakit`
--

CREATE TABLE `tblpenyakit` (
  `kd_penyakit` varchar(20) NOT NULL,
  `nm_penyakit` varchar(40) NOT NULL,
  `nl_penyakit` float NOT NULL,
  `pengobatan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpenyakit`
--

INSERT INTO `tblpenyakit` (`kd_penyakit`, `nm_penyakit`, `nl_penyakit`, `pengobatan`) VALUES
('P01', 'Cytomegalovirus (CMV)', 0.3, 'Memberikan obat-obatan Simtomatik'),
('P02', 'Diabetes Gestasional', 0.3, 'Diet, Olahraga yang teratur dan pemberian Metformin. Jika gejala parah segera konsultasi ke Dokter.'),
('P03', 'Hiperemesis Gravidarum', 0.1, 'Memberikan antihipertensi untuk menurunkan tekanan darah, memperbaiki pola dan gaya hidup, kontrol kehamilan  dengan rutin, induksi persalinan.'),
('P04', 'Hamil Anggur', 0.2, 'Melakukan konsultasi secepatnya kedokter sebelum terjadi komplikasi yang lebih buruk'),
('P05', 'Anemia', 0.2, 'Memberikan suplemen zat besi, asam folat, vitamin B12 dengan dosis yg diberika dokter'),
('P06', 'Toksoplasma', 0.3, 'Memberikan Spiramycin, jika janin tidak tertular infeksi\r\nPyrimethamine, sulfadiazine, dan leucovorin, jika janin tertular dan usia kehamilan lebih dari 16 minggu'),
('P07', 'Herpes Genital', 0.2, 'Konsumsi obat antivirus perlu dilakukan di bulan terakhir kehamilan menjelang persalinan'),
('P08', 'Preeklampsia', 0.3, 'Pemeriksaan rutin dengan jadwal :\r\nMinggu ke-4 sampai ke-28: 1 bulan sekali\r\nMinggu ke-28 sampai ke-36: 2 minggu sekali\r\nMinggu ke-36 sampai ke-40: 1 minggu sekali\r\npemberian Antihipertensi, seperti metildopa atau nicardipine (jika tidak ada pilihan lain), untuk menurunkan tekanan darah\r\nKortikosteroid, untuk mempercepat perkembangan paru-paru janin\r\nMgSO4, untuk mencegah komplikasi kejang pada ibu hamil \r\ndengan resep dokter'),
('P09', 'Keguguran atau Abortus', 0.3, 'Melakukan pemeriksaan ke dokter kandungan'),
('P10', 'Tekanan Darah Tinggi', 0.2, 'Memperbaiki gaya hidup dan pemberian obat-obatan dengan resep dokter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD UNIQUE KEY `sandi` (`sandi`);

--
-- Indexes for table `tblaturan`
--
ALTER TABLE `tblaturan`
  ADD PRIMARY KEY (`kd_aturan`);

--
-- Indexes for table `tblgejala`
--
ALTER TABLE `tblgejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `tblpengunjung`
--
ALTER TABLE `tblpengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `tblpenyakit`
--
ALTER TABLE `tblpenyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaturan`
--
ALTER TABLE `tblaturan`
  MODIFY `kd_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `tblpengunjung`
--
ALTER TABLE `tblpengunjung`
  MODIFY `id_pengunjung` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
