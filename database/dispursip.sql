-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2025 at 07:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dispursip`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajuan`
--

CREATE TABLE `ajuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `jenis` enum('1','2') DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `status` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `surat` varchar(255) DEFAULT NULL,
  `surat_balasan` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ajuan`
--

INSERT INTO `ajuan` (`id`, `user_id`, `jumlah_orang`, `jenis`, `tanggal`, `jam`, `status`, `surat`, `surat_balasan`, `deskripsi`, `created_at`, `updated_at`) VALUES
(101, 21, 9, '1', '2025-09-04', '08:00:00', '2', 'surat_QmJmf.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-09-04', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(102, 11, 4, '1', '2025-03-06', '08:00:00', '2', 'surat_a3zQu.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-06', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(103, 63, 9, '2', '2025-07-31', '08:00:00', '2', 'surat_7WWtV.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-31', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(104, 13, 7, '2', '2025-07-04', '08:30:00', '2', 'surat_4G1aG.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-04', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(105, 41, 7, '2', '2025-12-29', '08:00:00', '2', 'surat_98g5w.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-29', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(106, 77, 9, '2', '2025-01-10', '08:15:00', '2', 'surat_FzXZg.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-01-10', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(107, 34, 8, '1', '2025-10-15', '08:15:00', '2', 'surat_6vCB5.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-10-15', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(108, 47, 10, '2', '2025-01-08', '08:45:00', '2', 'surat_Mu6Dk.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-01-08', '2025-06-20 01:54:24', '2025-06-20 01:54:24'),
(109, 67, 8, '1', '2025-09-05', '08:30:00', '2', 'surat_iCLlF.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-09-05', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(110, 70, 6, '2', '2025-12-03', '08:30:00', '2', 'surat_K7njA.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-03', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(111, 28, 4, '1', '2025-08-06', '08:15:00', '4', 'surat_LMr9G.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-08-06', '2025-06-20 01:54:25', '2025-07-18 06:40:15'),
(112, 56, 5, '1', '2025-08-15', '08:30:00', '2', 'surat_a3ZNf.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-08-15', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(113, 85, 3, '2', '2025-10-15', '08:45:00', '2', 'surat_RDrAz.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-15', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(114, 34, 4, '2', '2025-05-29', '08:45:00', '2', 'surat_kRjx8.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-29', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(115, 47, 4, '1', '2025-02-07', '08:30:00', '2', 'surat_yWEbI.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-02-07', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(116, 75, 6, '2', '2025-02-06', '08:00:00', '2', 'surat_nL5KB.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-02-06', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(117, 8, 8, '2', '2025-09-01', '08:00:00', '2', 'surat_Dh1mY.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-09-01', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(118, 49, 10, '2', '2025-10-24', '08:45:00', '2', 'surat_XdGRl.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-24', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(119, 17, 7, '1', '2025-08-13', '08:00:00', '2', 'surat_xXXYP.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-08-13', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(120, 53, 10, '1', '2025-12-11', '08:30:00', '2', 'surat_3EDje.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-12-11', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(121, 43, 3, '2', '2025-05-08', '08:00:00', '2', 'surat_vMRrI.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-08', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(122, 47, 7, '1', '2025-03-28', '08:15:00', '2', 'surat_1TCqy.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-28', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(123, 34, 5, '1', '2025-11-25', '08:00:00', '2', 'surat_4ygeO.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-25', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(124, 96, 5, '2', '2025-01-01', '08:30:00', '4', 'surat_eSkbn.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-01-01', '2025-06-20 01:54:25', '2025-09-08 19:30:09'),
(125, 22, 2, '1', '2025-02-28', '08:00:00', '2', 'surat_Mz0Yo.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-02-28', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(126, 75, 7, '2', '2025-05-20', '08:30:00', '2', 'surat_q8wsg.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-20', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(127, 7, 7, '2', '2025-05-01', '08:45:00', '2', 'surat_FqHn9.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-01', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(128, 66, 2, '1', '2025-11-07', '08:45:00', '2', 'surat_k8Uj3.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-07', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(129, 63, 4, '2', '2025-12-16', '08:00:00', '2', 'surat_kCGU2.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-16', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(130, 101, 7, '2', '2025-05-13', '08:00:00', '2', 'surat_AY5s4.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-13', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(131, 39, 3, '1', '2025-10-01', '08:45:00', '2', 'surat_5OONK.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-10-01', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(132, 102, 9, '2', '2025-07-02', '08:00:00', '2', 'surat_bZip6.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-02', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(133, 67, 3, '2', '2025-10-29', '08:45:00', '2', 'surat_WE7Vp.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-29', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(134, 4, 3, '2', '2025-10-01', '08:15:00', '2', 'surat_PmhcT.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-01', '2025-06-20 01:54:25', '2025-06-20 01:54:25'),
(135, 96, 9, '1', '2025-04-08', '08:45:00', '2', 'surat_KKfnT.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-04-08', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(136, 102, 2, '2', '2025-05-19', '08:15:00', '2', 'surat_lNMrm.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-19', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(137, 30, 2, '1', '2025-07-09', '08:15:00', '2', 'surat_8FzRB.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-07-09', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(138, 100, 7, '1', '2025-06-13', '08:45:00', '4', 'surat_Yg9KM.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-06-13', '2025-06-20 01:54:26', '2025-06-21 21:50:06'),
(139, 5, 1, '2', '2025-10-09', '08:00:00', '2', 'surat_jsdiN.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-09', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(140, 14, 2, '2', '2025-08-13', '08:30:00', '2', 'surat_WURb7.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-08-13', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(141, 71, 8, '2', '2025-01-30', '08:15:00', '2', 'surat_nO2Sb.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-01-30', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(142, 95, 7, '1', '2025-09-04', '08:00:00', '2', 'surat_GFJz7.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-09-04', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(143, 34, 1, '1', '2025-12-22', '08:30:00', '2', 'surat_fbhkK.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-12-22', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(144, 36, 8, '1', '2025-03-24', '08:45:00', '2', 'surat_5uWw4.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-24', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(145, 9, 1, '2', '2025-12-16', '08:15:00', '2', 'surat_dEdhR.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-16', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(146, 96, 1, '2', '2025-06-20', '08:45:00', '4', 'surat_CCqli.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-06-20', '2025-06-20 01:54:26', '2025-06-21 00:42:47'),
(147, 61, 10, '1', '2025-12-31', '08:00:00', '2', 'surat_mXWfs.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-12-31', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(148, 76, 3, '1', '2025-11-21', '08:45:00', '2', 'surat_G6GVG.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-21', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(149, 52, 6, '2', '2025-12-01', '08:15:00', '2', 'surat_75hxn.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-01', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(150, 87, 1, '1', '2025-03-10', '08:30:00', '2', 'surat_huuvg.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-10', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(151, 90, 5, '2', '2025-08-29', '08:00:00', '2', 'surat_jmU9W.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-08-29', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(152, 62, 10, '1', '2025-08-28', '08:30:00', '2', 'surat_Evi2H.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-08-28', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(153, 69, 4, '2', '2025-05-27', '08:30:00', '2', 'surat_YZKrL.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-27', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(154, 70, 5, '2', '2025-03-11', '08:15:00', '2', 'surat_desX1.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-03-11', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(155, 71, 6, '2', '2025-05-16', '08:15:00', '2', 'surat_Cxup5.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-16', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(156, 3, 4, '2', '2025-02-17', '08:45:00', '1', 'surat_eOvqb.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-02-17', '2025-06-20 01:54:26', '2025-07-18 19:26:13'),
(157, 12, 9, '1', '2025-01-10', '08:15:00', '2', 'surat_hKhYd.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-01-10', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(158, 29, 7, '2', '2025-10-10', '08:15:00', '2', 'surat_LzhOl.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-10-10', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(159, 8, 1, '1', '2025-11-04', '08:45:00', '2', 'surat_6Om82.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-04', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(160, 61, 1, '1', '2025-04-09', '08:30:00', '2', 'surat_ktY0Q.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-04-09', '2025-06-20 01:54:26', '2025-06-20 01:54:26'),
(161, 99, 10, '2', '2025-05-01', '08:30:00', '2', 'surat_FqD4l.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-01', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(162, 59, 6, '1', '2025-03-12', '08:30:00', '2', 'surat_vtsdp.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-12', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(163, 66, 3, '1', '2025-04-14', '08:15:00', '2', 'surat_1s6bX.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-04-14', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(164, 16, 7, '2', '2025-06-18', '08:00:00', '4', 'surat_h7Kgx.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-06-18', '2025-06-20 01:54:27', '2025-06-21 21:36:24'),
(165, 35, 9, '2', '2025-08-12', '08:00:00', '2', 'surat_lQopY.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-08-12', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(166, 72, 2, '2', '2025-12-16', '08:15:00', '2', 'surat_zRsRc.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-12-16', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(167, 42, 3, '2', '2025-09-05', '08:45:00', '2', 'surat_DRgZ9.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-09-05', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(168, 39, 5, '2', '2025-07-18', '08:30:00', '2', 'surat_eNYni.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-18', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(169, 70, 10, '1', '2025-09-02', '08:30:00', '2', 'surat_fQKx6.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-09-02', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(170, 22, 7, '2', '2025-07-10', '08:15:00', '2', 'surat_qml1W.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-10', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(171, 1, 9, '1', '2025-12-18', '08:15:00', '2', 'surat_PGWV7.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-12-18', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(172, 48, 7, '2', '2025-09-15', '08:00:00', '2', 'surat_qopFa.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-09-15', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(173, 83, 1, '2', '2025-11-27', '08:30:00', '2', 'surat_MjccC.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-11-27', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(174, 28, 1, '1', '2025-04-24', '08:45:00', '2', 'surat_lyqF7.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-04-24', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(175, 87, 9, '2', '2025-03-12', '08:45:00', '2', 'surat_gpIms.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-03-12', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(176, 66, 10, '1', '2025-11-05', '08:00:00', '2', 'surat_lpF3B.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-05', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(177, 8, 6, '1', '2025-05-08', '08:15:00', '2', 'surat_prHcI.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-05-08', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(178, 92, 2, '1', '2025-06-26', '08:30:00', '2', 'surat_jy7Y2.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-06-26', '2025-06-20 01:54:27', '2025-06-21 22:14:36'),
(179, 55, 10, '1', '2025-03-03', '08:00:00', '2', 'surat_dJHA2.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-03-03', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(180, 18, 5, '2', '2025-08-13', '08:30:00', '2', 'surat_no1uC.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-08-13', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(181, 81, 3, '2', '2025-05-06', '08:15:00', '2', 'surat_oz4Md.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-05-06', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(182, 27, 2, '2', '2025-11-26', '08:15:00', '2', 'surat_BRTMC.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-11-26', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(183, 99, 6, '1', '2025-05-07', '08:15:00', '2', 'surat_IX9VH.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-05-07', '2025-06-20 01:54:27', '2025-06-20 01:54:27'),
(184, 39, 9, '2', '2025-06-04', '08:30:00', '4', 'surat_Cfr4F.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-06-04', '2025-06-20 01:54:27', '2025-06-21 00:40:19'),
(185, 88, 2, '2', '2025-07-10', '08:30:00', '2', 'surat_p4ucb.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-10', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(186, 79, 1, '1', '2025-04-04', '08:30:00', '2', 'surat_TxytR.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-04-04', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(187, 77, 5, '1', '2025-10-10', '08:00:00', '2', 'surat_0Truw.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-10-10', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(188, 50, 9, '2', '2025-01-30', '08:15:00', '2', 'surat_Crl4y.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-01-30', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(189, 28, 8, '1', '2025-02-20', '08:00:00', '2', 'surat_7iP5Q.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-02-20', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(190, 66, 1, '2', '2025-03-05', '08:30:00', '2', 'surat_DKTYe.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-03-05', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(191, 96, 1, '1', '2025-10-22', '08:45:00', '2', 'surat_7AMxB.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-10-22', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(192, 53, 9, '1', '2025-07-02', '08:00:00', '2', 'surat_3dxoE.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-07-02', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(193, 102, 10, '1', '2025-11-11', '08:30:00', '2', 'surat_wKTLq.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-11-11', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(194, 49, 4, '1', '2025-01-01', '08:00:00', '2', 'surat_CAl9o.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-01-01', '2025-06-20 01:54:28', '2025-07-18 19:26:42'),
(195, 97, 6, '1', '2025-02-19', '08:15:00', '2', 'surat_Cdvi5.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-02-19', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(196, 62, 10, '1', '2025-08-14', '08:45:00', '2', 'surat_uFDMy.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-08-14', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(197, 101, 1, '1', '2025-10-27', '08:00:00', '2', 'surat_qJEyf.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-10-27', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(198, 21, 6, '1', '2025-06-06', '08:45:00', '4', 'surat_Bapxo.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-06-06', '2025-06-20 01:54:28', '2025-06-21 22:11:57'),
(199, 71, 6, '1', '2025-05-30', '08:30:00', '2', 'surat_sYwQD.pdf', NULL, 'Ini deskripsi untuk reservasi pada tanggal 2025-05-30', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(200, 39, 8, '2', '2025-07-04', '08:15:00', '2', 'surat_86RZM.pdf', NULL, 'Ini deskripsi kunjungan biasa pada tanggal 2025-07-04', '2025-06-20 01:54:28', '2025-06-20 01:54:28'),
(213, 104, 12, '2', '2025-06-26', '09:00:00', '2', '1750572105_1750038813_1747130462_1746670507_surat (1).jpg', NULL, 'kawjlje', '2025-06-21 22:01:45', '2025-07-18 06:40:41'),
(230, 105, 100, '1', '2025-07-30', '09:00:00', '1', '1752319402_1750038813_1747130462_1746670507_surat (1).jpg', NULL, 'Acara penting', '2025-07-12 03:23:22', '2025-07-18 19:27:39'),
(251, 103, 12, '2', '2025-08-18', '09:09:00', '2', '1754897779_1753168515551.jpg', NULL, 'tes', '2025-08-10 23:36:19', '2025-09-07 22:20:39'),
(265, 104, 10, '1', '2025-09-12', '09:00:00', '2', '1757473708_berita_acara.jpg', NULL, NULL, '2025-09-09 19:08:28', '2025-09-09 19:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas_staff`
--

CREATE TABLE `aktivitas_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ajuan_id` bigint(20) UNSIGNED NOT NULL,
  `status_lama` tinyint(4) NOT NULL,
  `status_baru` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aktivitas_staff`
--

INSERT INTO `aktivitas_staff` (`id`, `ajuan_id`, `status_lama`, `status_baru`, `created_at`, `updated_at`) VALUES
(47, 184, 2, 1, '2025-06-20 01:54:42', '2025-06-20 01:54:42'),
(48, 184, 1, 2, '2025-06-20 01:55:46', '2025-06-20 01:55:46'),
(49, 184, 2, 1, '2025-06-20 01:56:13', '2025-06-20 01:56:13'),
(51, 198, 2, 1, '2025-06-20 02:01:36', '2025-06-20 02:01:36'),
(52, 138, 2, 1, '2025-06-20 02:01:44', '2025-06-20 02:01:44'),
(53, 164, 2, 1, '2025-06-20 02:01:53', '2025-06-20 02:01:53'),
(54, 184, 1, 2, '2025-06-20 02:03:24', '2025-06-20 02:03:24'),
(56, 184, 2, 1, '2025-06-20 02:04:50', '2025-06-20 02:04:50'),
(57, 146, 2, 1, '2025-06-20 02:06:45', '2025-06-20 02:06:45'),
(58, 184, 1, 4, '2025-06-21 00:40:19', '2025-06-21 00:40:19'),
(59, 198, 1, 2, '2025-06-21 00:40:55', '2025-06-21 00:40:55'),
(60, 198, 2, 1, '2025-06-21 00:41:34', '2025-06-21 00:41:34'),
(61, 146, 1, 4, '2025-06-21 00:42:48', '2025-06-21 00:42:48'),
(72, 164, 1, 2, '2025-06-21 06:47:56', '2025-06-21 06:47:56'),
(73, 178, 1, 2, '2025-06-21 06:56:14', '2025-06-21 06:56:14'),
(74, 178, 2, 1, '2025-06-21 06:57:10', '2025-06-21 06:57:10'),
(76, 164, 2, 1, '2025-06-21 07:11:53', '2025-06-21 07:11:53'),
(77, 164, 1, 2, '2025-06-21 07:12:05', '2025-06-21 07:12:05'),
(78, 164, 2, 1, '2025-06-21 21:20:31', '2025-06-21 21:20:31'),
(79, 198, 1, 2, '2025-06-21 21:21:36', '2025-06-21 21:21:36'),
(80, 198, 2, 1, '2025-06-21 21:21:48', '2025-06-21 21:21:48'),
(82, 178, 1, 2, '2025-06-21 21:22:53', '2025-06-21 21:22:53'),
(84, 178, 2, 1, '2025-06-21 21:35:10', '2025-06-21 21:35:10'),
(85, 178, 1, 2, '2025-06-21 21:35:35', '2025-06-21 21:35:35'),
(86, 178, 2, 1, '2025-06-21 21:35:59', '2025-06-21 21:35:59'),
(88, 164, 1, 4, '2025-06-21 21:36:24', '2025-06-21 21:36:24'),
(89, 138, 1, 4, '2025-06-21 21:50:06', '2025-06-21 21:50:06'),
(90, 198, 1, 2, '2025-06-21 21:50:18', '2025-06-21 21:50:18'),
(92, 178, 1, 2, '2025-06-21 21:57:42', '2025-06-21 21:57:42'),
(93, 178, 2, 1, '2025-06-21 22:02:25', '2025-06-21 22:02:25'),
(95, 213, 1, 2, '2025-06-21 22:11:31', '2025-06-21 22:11:31'),
(96, 198, 2, 1, '2025-06-21 22:11:48', '2025-06-21 22:11:48'),
(97, 198, 1, 4, '2025-06-21 22:11:57', '2025-06-21 22:11:57'),
(98, 178, 1, 2, '2025-06-21 22:14:36', '2025-06-21 22:14:36'),
(100, 213, 2, 1, '2025-06-22 21:05:56', '2025-06-22 21:05:56'),
(104, 111, 2, 1, '2025-07-12 03:24:34', '2025-07-12 03:24:34'),
(105, 230, 1, 2, '2025-07-12 03:24:49', '2025-07-12 03:24:49'),
(106, 230, 2, 1, '2025-07-15 18:45:26', '2025-07-15 18:45:26'),
(107, 230, 1, 4, '2025-07-15 18:45:53', '2025-07-15 18:45:53'),
(110, 111, 1, 4, '2025-07-18 06:40:15', '2025-07-18 06:40:15'),
(111, 213, 1, 2, '2025-07-18 06:40:41', '2025-07-18 06:40:41'),
(112, 124, 2, 1, '2025-07-18 06:46:32', '2025-07-18 06:46:32'),
(115, 230, 3, 2, '2025-07-18 19:01:55', '2025-07-18 19:01:55'),
(116, 156, 2, 1, '2025-07-18 19:26:13', '2025-07-18 19:26:13'),
(117, 194, 2, 1, '2025-07-18 19:26:28', '2025-07-18 19:26:28'),
(118, 194, 1, 2, '2025-07-18 19:26:42', '2025-07-18 19:26:42'),
(119, 230, 2, 1, '2025-07-18 19:27:39', '2025-07-18 19:27:39'),
(123, 251, 1, 2, '2025-09-07 22:20:39', '2025-09-07 22:20:39'),
(125, 124, 1, 4, '2025-09-08 19:30:09', '2025-09-08 19:30:09'),
(136, 265, 3, 2, '2025-09-09 19:11:11', '2025-09-09 19:11:11');

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
(1, '2014_10_12_000000_create_users2_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_02_042123_create_users_table', 1),
(6, '2025_01_05_145817_create_ajuan_table', 1),
(7, '2025_01_02_042123_create_users3_table', 2),
(8, '2025_04_25_132832_create_users_table', 3),
(9, '2025_04_25_132958_create_ajuan_table', 3),
(10, '2025_04_25_150415_create_users_table', 4),
(11, '2025_04_25_150434_create_ajuan_table', 4),
(12, '2025_04_26_073046_create_users_table', 5),
(13, '2025_04_26_073114_create_ajuan_table', 5),
(14, '2025_04_29_105500_create_users_table', 6),
(15, '2025_04_29_105508_create_ajuan_table', 6),
(16, '2025_05_02_024720_add_status_after_to_ajuan_table', 7),
(17, '2025_05_02_031224_create_aktivitas_staff_table', 8),
(18, '2025_05_02_035445_create_aktivitas_staff_table', 9),
(19, '2025_06_11_040409_create_users_table', 10),
(20, '2025_06_11_040426_create_ajuan_table', 10),
(21, '2025_06_11_040526_create_aktivitas_staff_table', 10),
(22, '2025_06_11_041034_create_users_table', 11),
(23, '2025_06_11_041040_create_ajuan_table', 11),
(24, '2025_06_11_041052_create_aktivitas_staff_table', 11),
(25, '2025_06_20_075953_create_users_table', 12),
(26, '2025_06_20_080048_create_ajuan_table', 12),
(27, '2025_06_20_080130_create_aktivitas_staff_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `role` enum('user','staff','admin') NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `whatsapp`, `asal`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, 'admin', '$2y$10$7RfeCqGZxM7wyh7MfQ1EweYOJ/T2z3vl2w5xtDv9EFURDw7yaT6KC', '2025-06-20 00:02:11', '2025-07-12 03:37:18'),
(2, 'Staff', 'staff@gmail.com', NULL, NULL, 'staff', '$2y$10$oSFMnsAxUSv9RDxaNKMCTOb5fsyXWalojDp0Dihm0YOppBEE3iQye', '2025-06-20 00:02:11', '2025-06-20 00:02:11'),
(3, 'User1', '1@gmail.com', '08505533283', 'TK Al-Kautsar Samarinda', 'user', '$2y$10$kwifzhNIcMeT7W6yWixWZOTCAfUw3S5f586bjLDv8xCVGZhXEqTXq', '2025-06-20 00:02:11', '2025-06-20 00:02:11'),
(4, 'User2', '2@gmail.com', '08302838019', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$xrDYDA07r9BINUCZlaHeFeUfvsPCJ7J1eqrDH9xM5F0glFurRZoT2', '2025-06-20 00:02:11', '2025-06-20 00:02:11'),
(5, 'User3', '3@gmail.com', '08302067779', 'SMA Negeri 1 Samarinda', 'user', '$2y$10$08kWdTMO1p5a/gmuzJTTIO02IXMh4kuoGVYYuCurKpxVqGHmthUuK', '2025-06-20 00:02:11', '2025-06-20 00:02:11'),
(6, 'User4', '4@gmail.com', '08585243325', 'STIE Samarinda', 'user', '$2y$10$3YI4VHwSvLovzosUp6HAYu4QYD1eF7yL2pIShFsgNhTTwjN5Rh/ki', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(7, 'User5', '5@gmail.com', '08371653512', 'SMA Islam Al-Azhar 25 Samarinda', 'user', '$2y$10$Rtpz1t2vYTYnezUArTchQejKkilLDNs1M4GSikarLVTl7DlXWW5bq', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(8, 'User6', '6@gmail.com', '08129997894', 'Dinas Perhubungan Kota Samarinda', 'user', '$2y$10$rjGCtVjYMAQtPC6.l3EXyOm3qABzvzV0Sl99lelX/hpoRZI5ZEaO2', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(9, 'User7', '7@gmail.com', '08372754992', 'STIE Samarinda', 'user', '$2y$10$u.1uwL6nZEKGOcqEQvFhS.tIHBtmBTSV4s0w4E06OwlmiptDbNte2', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(10, 'User8', '8@gmail.com', '08122936948', 'TK Islam Al-Azhar Samarinda', 'user', '$2y$10$mNPRwYsMrBQvQmluY5zmfe4.d08Fqf0Tm1PCwRP07KbL.oFQLqDkq', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(11, 'User9', '9@gmail.com', '08515240562', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$tXZUU8DCWnaNu8LtKMme9evRkYcyao6DRR6r5TNIe6ja4IzG1YIWO', '2025-06-20 00:02:12', '2025-06-20 00:02:12'),
(12, 'User10', '10@gmail.com', '08283944088', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$ogAL3MdaSOzb42zgvKJnUuhG14X5qFo/2XvohJqS4svM/x9kYIJya', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(13, 'User11', '11@gmail.com', '08168665108', 'SMP Islam Al-Azhar 25 Samarinda', 'user', '$2y$10$C.TrqZBV0Sp2/zOhu4IlKOhPvXWUHXXP9beF11VFxStm74xE7DYZC', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(14, 'User12', '12@gmail.com', '08254777844', 'SMP Kristen Kalam Kudus Samarinda', 'user', '$2y$10$wVmPICVBgotuZ.BmlGaxke4LNle3bxhsS3YiFLcpuXbPiS8r4EWl.', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(15, 'User13', '13@gmail.com', '08586761611', 'Universitas Mulawarman', 'user', '$2y$10$UUQ317OYqqp0o.1aC4itOeR1dFHKs5Y5Xm5tdS4azPBN0nuA.YGka', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(16, 'User14', '14@gmail.com', '08186764001', 'Universitas Muhammadiyah Kalimantan Timur', 'user', '$2y$10$eTuNRkdzFN0DQfv7Bosw5ubKyQaOs.Wreu7oLQ1HwTdhpIR5fY112', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(17, 'User15', '15@gmail.com', '08401493010', 'Badan Perencanaan Pembangunan Daerah Kota Samarinda', 'user', '$2y$10$GRmx72kOijHoEvwy5dvtLur8SbnmOn8IQMEjDt7vQ5duB4ULAyY6i', '2025-06-20 00:02:13', '2025-06-20 00:02:13'),
(18, 'User16', '16@gmail.com', '08311624159', 'Dinas Perhubungan Kota Samarinda', 'user', '$2y$10$5hcZ22z5/UZZKHH7D7uU9OT48VSsFarnAqSfzKcpRZ7XcdAjQXDyu', '2025-06-20 00:02:14', '2025-06-20 00:02:14'),
(19, 'User17', '17@gmail.com', '08287838454', 'TK Islam Al-Azhar Samarinda', 'user', '$2y$10$YIf0IDQC4IXU1DqHWn5QAOoabtHpZ/gXb6sGieUOC.yMe/uxkaUu.', '2025-06-20 00:02:14', '2025-06-20 00:02:14'),
(20, 'User18', '18@gmail.com', '08486833862', 'SMA Negeri 1 Samarinda', 'user', '$2y$10$6QvVYPa/Y/VKn8gBh1occOAmlefCOmAlPN0UV3YODd4GcLDt5nyo6', '2025-06-20 00:02:14', '2025-06-20 00:02:14'),
(21, 'User19', '19@gmail.com', '08235984960', 'Dinas Sosial Kota Samarinda', 'user', '$2y$10$BdIfEQqw1AkFItO.g00ocuu7zGuVppjv2SHUJ5BFm7.n2OHK9Tb52', '2025-06-20 00:02:14', '2025-06-20 00:02:14'),
(22, 'User20', '20@gmail.com', '08175029299', 'SMA Negeri 1 Samarinda', 'user', '$2y$10$VRiuotTb/ITuot4S9KCI7ucN6vKj5DG2jG6LuQ2no3IBRV4PtpuxG', '2025-06-20 00:02:14', '2025-06-20 00:02:14'),
(23, 'User21', '21@gmail.com', '08429787359', 'TK Negeri Pembina Samarinda', 'user', '$2y$10$A4n8tzb8RIt5TIatLA1JMOy9hxz4/5m.UVc6l4BIzm6E/Ciq/4e8u', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(24, 'User22', '22@gmail.com', '08227092509', 'SD Kristen Kalam Kudus Samarinda', 'user', '$2y$10$8TAXh4qGO.nh5eOiu0q5NOoowYMx5MPqpjabwWMacC41H7umVxz8W', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(25, 'User23', '23@gmail.com', '08559636918', 'SMK Negeri 1 Samarinda', 'user', '$2y$10$DUtJDJKdqCdyLaklRJn5x.ek6T832NoQXcXB7BLh/Oy8uOpDDkXY2', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(26, 'User24', '24@gmail.com', '08397307877', 'Dinas Lingkungan Hidup Kota Samarinda', 'user', '$2y$10$K.qj.IZyEMpWVEMQ.o1ThucxY.BjBY9ZNIuN8BkGs.urq2DJE8umi', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(27, 'User25', '25@gmail.com', '08331626859', 'Universitas Mulawarman', 'user', '$2y$10$N1PLQW2ZDpROpHPAQ.mReuJJuTgzPFtC8rOJaigAIs/WnwAFyoVAe', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(28, 'User26', '26@gmail.com', '08534851169', 'SMA Negeri 2 Samarinda', 'user', '$2y$10$tun0dXO2O.6FKpWjQptzr.7To8JbIOwhkNYQQQQn2.3Moa.H.t69m', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(29, 'User27', '27@gmail.com', '08386755469', 'Politeknik Negeri Samarinda', 'user', '$2y$10$q7FMsSo4q/cnpaKoPOCTUOTOnr.6ncf7INSSK.MwxStkW/fdl5sdy', '2025-06-20 00:02:15', '2025-06-20 00:02:15'),
(30, 'User28', '28@gmail.com', '08471258562', 'SMP Negeri 1 Samarinda', 'user', '$2y$10$mSe2PGx4jSf9mpljvvF03.hPXOLQxkGMzkJeaa695wBAgN9Rciosu', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(31, 'User29', '29@gmail.com', '08209812750', 'SD Muhammadiyah 1 Samarinda', 'user', '$2y$10$bJpEt1GHZkUeJQL8zsVvOOdJ/rG2gRDpcVE5qkbKbrkxQseHCllI2', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(32, 'User30', '30@gmail.com', '08276555213', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$ynEhZUJKEzbOdZ7F84en2ed.Ka2ijdMBmxuAQQx3jEP8PVitpwBg6', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(33, 'User31', '31@gmail.com', '08251943689', 'Politeknik Negeri Samarinda', 'user', '$2y$10$knoBeuH/Tm1fwBhmzy0OC.o84xGwcGR7PZcLOgQ5.TYsY170t3/f6', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(34, 'User32', '32@gmail.com', '08431426857', 'TK Negeri Pembina Samarinda', 'user', '$2y$10$sGDXNnvEjxDjH1CbMVPzWuZqZEQOD2tRD.qZCqvPkR2qVgSO0crXm', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(35, 'User33', '33@gmail.com', '08358794235', 'SD Kristen Kalam Kudus Samarinda', 'user', '$2y$10$T4Vtdfw4whIQtlJeWprnv.OuNi3JMSy0HgRFiCnUTOGr48al9SMsW', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(36, 'User34', '34@gmail.com', '08274173161', 'Dinas Sosial Kota Samarinda', 'user', '$2y$10$baHpavqmy.Sa42Mm.ZxoCO7jIKczbWQc2aZAUZm2WOm5c.FmUjG7.', '2025-06-20 00:02:16', '2025-06-20 00:02:16'),
(37, 'User35', '35@gmail.com', '08479609086', 'MA Negeri 1 Samarinda', 'user', '$2y$10$Ynkb.aeVia0ZA9GfOsJnj.e5gthEo5iDcgTiB1aY7UY2R8g4lpcgK', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(38, 'User36', '36@gmail.com', '08369927825', 'Dinas Pekerjaan Umum Kota Samarinda', 'user', '$2y$10$./B7cRnP4QyBAHE6ejOy7OTMtuI9XZZQvFlqRjAKW9BoETvgU6xoC', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(39, 'User37', '37@gmail.com', '08285065218', 'Badan Perencanaan Pembangunan Daerah Kota Samarinda', 'user', '$2y$10$0I.DHMBBgXVCAxFubNOyMeiAmbEEl.YtqjQ5VNdscgbdAWIuLQCO2', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(40, 'User38', '38@gmail.com', '08354094789', 'MA Negeri 1 Samarinda', 'user', '$2y$10$s63.iU9cdQjzUtK4aOB07eqE213H6b0KB8quFDUdkGN9jj/Spca1e', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(41, 'User39', '39@gmail.com', '08377419307', 'TK Negeri Pembina Samarinda', 'user', '$2y$10$iwEMuvJt3xkTc598JoiqPOXVRE978MaUcVqst1eupNxxj/u3815Hy', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(42, 'User40', '40@gmail.com', '08236047885', 'TK Al-Fath Samarinda', 'user', '$2y$10$lfuAkymE7NOq7/EA5yWLeeN9ZOFOGjCg4Fz5.UVjFvQugd43dqtb.', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(43, 'User41', '41@gmail.com', '08551783890', 'SMA Negeri 1 Samarinda', 'user', '$2y$10$b2ulppRUxoHSfVOvjRLS8OeeWAtxz9T47r3JQC7Xs2HZJ9acOMrZ6', '2025-06-20 00:02:17', '2025-06-20 00:02:17'),
(44, 'User42', '42@gmail.com', '08309998481', 'TK Kartika Samarinda', 'user', '$2y$10$q0eeOMxqmVdLUbpU0p.wduvMo2P1w2pa7AR5XzljRcxnqd1vLuS3S', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(45, 'User43', '43@gmail.com', '08435551234', 'TK Al-Kautsar Samarinda', 'user', '$2y$10$zK0wVF/UEdL7eNPopIJqO.xjQdYClNc98iL.P9zvsfiXtiQEVMj3O', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(46, 'User44', '44@gmail.com', '08345109127', 'SMA Negeri 1 Samarinda', 'user', '$2y$10$kE6sGk0S1k/826WArh4ay.12LMW7vOlxVEBa/NfF/TI9JhGYtsvsu', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(47, 'User45', '45@gmail.com', '08323998496', 'SD Negeri 2 Samarinda', 'user', '$2y$10$o1cruz5ywuIAVjrecyqwyeuweL1UXZLbMJofkUT/XsjZM2e4X1rMu', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(48, 'User46', '46@gmail.com', '08504141319', 'SMA Negeri 2 Samarinda', 'user', '$2y$10$DPS5tDraoHdyZiYGCTy11ugQ1sCk6ZPR4z9TregwY3VEm1U26Rs9m', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(49, 'User47', '47@gmail.com', '08503158845', 'SMP Negeri 2 Samarinda', 'user', '$2y$10$y0CDSr9.tCW5BxweTUgTgO7sqK6Lw39cFLQ2FurPp8NFfIuXi93fe', '2025-06-20 00:02:18', '2025-06-20 00:02:18'),
(50, 'User48', '48@gmail.com', '08125435245', 'SMP Negeri 1 Samarinda', 'user', '$2y$10$iBRcEhtnRL/tJb/4sAMgAucwdNmELKaZZ3fOZjnExttAyIwEq/kna', '2025-06-20 00:02:19', '2025-06-20 00:02:19'),
(51, 'User49', '49@gmail.com', '08137058390', 'MA Negeri 1 Samarinda', 'user', '$2y$10$gdqqL0FLbLg5QUs2cG0qD.boRzNVp6zwqIen.4bRFTWvpW0RFrs62', '2025-06-20 00:02:19', '2025-06-20 00:02:19'),
(52, 'User50', '50@gmail.com', '08482380281', 'SMK Negeri 1 Samarinda', 'user', '$2y$10$0CIwcUsPYD7vWzmCZNbicOeafS1RY/qzxoJIyJwZo/lwPCynNmq0W', '2025-06-20 00:02:19', '2025-06-20 00:02:19'),
(53, 'User51', '51@gmail.com', '08406807948', 'SMP Kristen Kalam Kudus Samarinda', 'user', '$2y$10$TCwZNBWGXhUHp3FFQ38VFen3m8Bqk1zLZIc7etr8/hkbecMLY/XMy', '2025-06-20 00:02:19', '2025-06-20 00:02:19'),
(54, 'User52', '52@gmail.com', '08472448182', 'SMP Negeri 1 Samarinda', 'user', '$2y$10$Wumi8cEB0GIfRldaR7Rhqubl/nBJsUOMUgY.VrmJl6IiIwSSvSb3q', '2025-06-20 00:02:19', '2025-06-20 00:02:19'),
(55, 'User53', '53@gmail.com', '08483989114', 'TK Kartika Samarinda', 'user', '$2y$10$NNyapUGdukeyS9W0Sy.gzus8FkFSf5i6Y/XCBkOK2lQ0V7N7INP0W', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(56, 'User54', '54@gmail.com', '08493716184', 'STIE Samarinda', 'user', '$2y$10$8pIoPXpqsQs.sDBHrjnYoO3kYgNKEkX8QrcZ0WWRqjyhAw2/MEQHm', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(57, 'User55', '55@gmail.com', '08209777565', 'STMIK SPB Airlangga Samarinda', 'user', '$2y$10$jNWoKvWkPft9.j6K6knqF.07Q54V.2pI6dDQaQI4dVlDhe0RyFWf.', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(58, 'User56', '56@gmail.com', '08139605497', 'SD Negeri 2 Samarinda', 'user', '$2y$10$P49QwX.kRBVcaJajJuzi5.fw0SAYMIc/FYdUZlhRUcoAhtDKNXBxy', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(59, 'User57', '57@gmail.com', '08546325384', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$Sv6wwjwpC6Wj89a3H9CxAeDbwYW1.8xCpcJ3RGnP8H5nYNQzHXWSK', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(60, 'User58', '58@gmail.com', '08151405618', 'TK Islam Al-Azhar Samarinda', 'user', '$2y$10$SOOAKDh7bLASs3EXewXdeOC9E1Q9IzagJxDN2gSveaJBb8S/X.8xO', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(61, 'User59', '59@gmail.com', '08224020907', 'Badan Perencanaan Pembangunan Daerah Kota Samarinda', 'user', '$2y$10$jMtJreXlZ8rxfXxDhZN4DuhG4TrvyoINsg7xxM9oEerEW8l3DNLEe', '2025-06-20 00:02:20', '2025-06-20 00:02:20'),
(62, 'User60', '60@gmail.com', '08185234580', 'SMP Negeri 1 Samarinda', 'user', '$2y$10$A/VSk8ykYLjHNfvsqvy/fOMg5Mz1GuADHLNqajXuiSjH7HLBguuwy', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(63, 'User61', '61@gmail.com', '08337162406', 'Dinas Lingkungan Hidup Kota Samarinda', 'user', '$2y$10$DGggaCsv75FKikIT6pHGyOh46v/ucM8zKnnNSCKPZf8FkarpVww5.', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(64, 'User62', '62@gmail.com', '08286081489', 'TK Kartika Samarinda', 'user', '$2y$10$QlOzeKk31NMuKYASzeyD9u7tmK9QeUe7cTA1rit2A2JBnwKJLCgzS', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(65, 'User63', '63@gmail.com', '08137827122', 'Dinas Pendidikan Kota Samarinda', 'user', '$2y$10$swoDnvB1AfGGaFTZyDB1EupZBQDSinUS6rpZ.gf04yiIzbvYY293S', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(66, 'User64', '64@gmail.com', '08564585641', 'Politeknik Negeri Samarinda', 'user', '$2y$10$Dv531nYsUi8RWx3evgqpY.IMqk8lf9M08q1F/0QZALLX9PmZF7.le', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(67, 'User65', '65@gmail.com', '08521772898', 'Badan Perencanaan Pembangunan Daerah Kota Samarinda', 'user', '$2y$10$Om5sv04qKDev0roEZ134IeQ/YuQalZrzaxm98Rv5WFoOFuatb9pPm', '2025-06-20 00:02:21', '2025-06-20 00:02:21'),
(68, 'User66', '66@gmail.com', '08379222968', 'SMP Muhammadiyah 1 Samarinda', 'user', '$2y$10$cKoq/8lmn0bkXQxo.x9St.c7WyWS65B7n695ZVXWV9hIQjfK2a8YC', '2025-06-20 00:02:22', '2025-06-20 00:02:22'),
(69, 'User67', '67@gmail.com', '08418796540', 'SMK Negeri 1 Samarinda', 'user', '$2y$10$u/4jv42HfbSRp6pKmYBMAOHseuUaWtAdy91lgqNaaykjjDCSbXOCS', '2025-06-20 00:02:22', '2025-06-20 00:02:22'),
(70, 'User68', '68@gmail.com', '08167782329', 'Universitas Mulawarman', 'user', '$2y$10$H1kXsxyXZ/dofqg7itrIsObaEijibSUOdOh2CtVRZhudNp5dOs5/u', '2025-06-20 00:02:22', '2025-06-20 00:02:22'),
(71, 'User69', '69@gmail.com', '08251753853', 'Dinas Kesehatan Kota Samarinda', 'user', '$2y$10$wA3w5LEXwvKRIkCKNUmoWeBsYfmF9iIRQmMrrm1eejlfZRTUdr8a2', '2025-06-20 00:02:22', '2025-06-20 00:02:22'),
(72, 'User70', '70@gmail.com', '08405939462', 'SMP Islam Al-Azhar 25 Samarinda', 'user', '$2y$10$RJm3KXMid5eRioNDFwGDEeoix8Eq/C7rT.2.koXK/nlq3m1Hfh.S6', '2025-06-20 00:02:23', '2025-06-20 00:02:23'),
(73, 'User71', '71@gmail.com', '08582441680', 'Dinas Pekerjaan Umum Kota Samarinda', 'user', '$2y$10$PRU3qn4pvQPkMx.ucnp3BebMLuouzP5RKAkK0MkQaCVbrG6RdcnxO', '2025-06-20 00:02:23', '2025-06-20 00:02:23'),
(74, 'User72', '72@gmail.com', '08439574910', 'Badan Kepegawaian Daerah Kota Samarinda', 'user', '$2y$10$v4w9aiBFvAYW0R7A/UXMcu8/OqMgnzGbOarGz30GP6oMNNWPcxpla', '2025-06-20 00:02:23', '2025-06-20 00:02:23'),
(75, 'User73', '73@gmail.com', '08288558892', 'Universitas Muhammadiyah Kalimantan Timur', 'user', '$2y$10$xm9xmvrUkZVy8S7yeP7hIeUphS.sTVGjBnSN1d0ZMkTRvR6SHrlGC', '2025-06-20 00:02:23', '2025-06-20 00:02:23'),
(76, 'User74', '74@gmail.com', '08189226904', 'SMP Negeri 2 Samarinda', 'user', '$2y$10$U2zzNa2rWAIjs8kZP464rujXvttu2HAog.hRDRqwyKlb946oK/Xm2', '2025-06-20 00:02:23', '2025-06-20 00:02:23'),
(77, 'User75', '75@gmail.com', '08147854930', 'SD Muhammadiyah 1 Samarinda', 'user', '$2y$10$G44kLjH3eBHr1BHaqFQL7.07DiZnHfLCxdYwi3RsTTs2Zp22ASEKm', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(78, 'User76', '76@gmail.com', '08455732910', 'TK Al-Fath Samarinda', 'user', '$2y$10$mOkPW0MN0vfTBrSMkhpbOO/r95R3j1dCGxtSy9JrrW428QjuJno.u', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(79, 'User77', '77@gmail.com', '08542032511', 'TK Negeri Pembina Samarinda', 'user', '$2y$10$Fm9n7R84Xvf4LJK98IW0QOf2JXnsITVFeDmxFf9Q8smba7LOfP/Vy', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(80, 'User78', '78@gmail.com', '08408481744', 'SD Kristen Kalam Kudus Samarinda', 'user', '$2y$10$d6nCCmI4STVn0AZ9H5Hxp./Jd4xbL1/jcQHRu8PNGZTHhtlpztZEK', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(81, 'User79', '79@gmail.com', '08296173087', 'Dinas Sosial Kota Samarinda', 'user', '$2y$10$YWKjG2J53mHli2Vnb5iKcOtFMLWCOvfty/MsEXC6qiOwIa.gflSlm', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(82, 'User80', '80@gmail.com', '08507669246', 'SMK Negeri 1 Samarinda', 'user', '$2y$10$2.fmLmvicM2.3Vl6sGR4IObL3LtKJL6KYFBPLCaeF147ANXTf/Ugu', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(83, 'User81', '81@gmail.com', '08194285554', 'Universitas Mulawarman', 'user', '$2y$10$pWL4p3lGf1XH87/2qgvoAua2HOT.VpCK5M283m9.OhRrslsBJ2D36', '2025-06-20 00:02:24', '2025-06-20 00:02:24'),
(84, 'User82', '82@gmail.com', '08327434142', 'Politeknik Negeri Samarinda', 'user', '$2y$10$1TLDNHp5Naq/RKRLLob.U.2WfUHzWaUndU4V/jHB8hKKlgzbJEYx.', '2025-06-20 00:02:25', '2025-06-20 00:02:25'),
(85, 'User83', '83@gmail.com', '08478221319', 'SD Muhammadiyah 1 Samarinda', 'user', '$2y$10$/DJL0mxqRv7x5/GBVOp1WuYvVWfwh3s744QNjahbwcxpH6FMTF5kC', '2025-06-20 00:02:25', '2025-06-20 00:02:25'),
(86, 'User84', '84@gmail.com', '08358030948', 'Universitas Muhammadiyah Kalimantan Timur', 'user', '$2y$10$02asMZQ69bvEDrGYZsbVpOVPehNaAlkmtke8awF5Ff1UEtn7Bsmvy', '2025-06-20 00:02:25', '2025-06-20 00:02:25'),
(87, 'User85', '85@gmail.com', '08218553595', 'SMP Kristen Kalam Kudus Samarinda', 'user', '$2y$10$HecoqDLnnTol3UK6YGKbpu857ECh.k8PQFZOUMm3LJCjhC9QM.vOa', '2025-06-20 00:02:25', '2025-06-20 00:02:25'),
(88, 'User86', '86@gmail.com', '08557923084', 'SMP Muhammadiyah 1 Samarinda', 'user', '$2y$10$Il5YvOITTrTbCT/uDiVynuLhj2GCArp6Bo24ikUA9BdHqmoD3pG.2', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(89, 'User87', '87@gmail.com', '08532695467', 'SMP Muhammadiyah 1 Samarinda', 'user', '$2y$10$tJjgQWhOpnOCeT9YhREafOwUKfauO.ae90eNyd.vOMG8udUVjjhZa', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(90, 'User88', '88@gmail.com', '08568632972', 'Dinas Lingkungan Hidup Kota Samarinda', 'user', '$2y$10$31hvjXvO8nJz8tmDUBO6jO/5KBE60iMhnLZdtQiva/Bc.vNBDAXyG', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(91, 'User89', '89@gmail.com', '08464164528', 'SD Muhammadiyah 1 Samarinda', 'user', '$2y$10$ct4vWA9P2HxDl.veqmDvIefNauriB3TZfDNFpFa192W2JJU2Vbm/q', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(92, 'User90', '90@gmail.com', '08119611191', 'SD Kristen Kalam Kudus Samarinda', 'user', '$2y$10$IchyejfnOHdPMEbuehjO3.FJr1xMUhFVVqr6pebpaBBAZfwDpNy5u', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(93, 'User91', '91@gmail.com', '08305829933', 'Badan Kepegawaian Daerah Kota Samarinda', 'user', '$2y$10$aeOy4Mnguz1bxU2vaJ8.Ruh.crDPn0xDtJJ8Bg45SqmDS7OhAKqD.', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(94, 'User92', '92@gmail.com', '08116046746', 'SD Negeri 1 Samarinda', 'user', '$2y$10$y84u5NJ/qPMVAfcVfdlcy.2Z0fmfrZG5D6xPeqepVX7UBG/TBTzES', '2025-06-20 00:02:26', '2025-06-20 00:02:26'),
(95, 'User93', '93@gmail.com', '08481457450', 'Politeknik Negeri Samarinda', 'user', '$2y$10$iwMDwZBaXgmw0z4/JVRd4.kcUL9e/J5u62i3V6A25biL9rU5/SRAK', '2025-06-20 00:02:27', '2025-06-20 00:02:27'),
(96, 'User94', '94@gmail.com', '08319000169', 'SMP Negeri 1 Samarinda', 'user', '$2y$10$tYuKWgX0J8KRkiiZPmNfCOtqkk2Q9EZLQmUE6iWWUrJ40ocj.GnwC', '2025-06-20 00:02:27', '2025-06-20 00:02:27'),
(97, 'User95', '95@gmail.com', '08228770000', 'Politeknik Negeri Samarinda', 'user', '$2y$10$797e6pReE0jwGJW/pWKKK.Q9Xl2l46WUEHBgF1uydSqeafg2JDJU2', '2025-06-20 00:02:27', '2025-06-20 00:02:27'),
(98, 'User96', '96@gmail.com', '08181980729', 'SD Islam Al-Azhar 25 Samarinda', 'user', '$2y$10$Lm38Dh1IVyaODh0ROqgG.e0QQmX35ZOR5wG5hplntKjYYVehUnF8e', '2025-06-20 00:02:27', '2025-06-20 00:02:27'),
(99, 'User97', '97@gmail.com', '08421917677', 'SMP Negeri 2 Samarinda', 'user', '$2y$10$yuvvULirbJMzwguuCWfqGe3Pb2RT17WsVGnD9vcHZzN6sCAylhpwG', '2025-06-20 00:02:27', '2025-06-20 00:02:27'),
(100, 'User98', '98@gmail.com', '08304342625', 'SD Kristen Kalam Kudus Samarinda', 'user', '$2y$10$pmIliYjiyOs407JnhSwdMu9AXqu000JGx8kquwmnJgCS9QT11fEpq', '2025-06-20 00:02:28', '2025-06-20 00:02:28'),
(101, 'User99', '99@gmail.com', '08296233306', 'SMA Negeri 2 Samarinda', 'user', '$2y$10$.DlAvKlqr4KQN59oBDPkheTyI59Fss1/oRWWJf9xy7MLKT0w5lGIe', '2025-06-20 00:02:28', '2025-06-20 00:02:28'),
(102, 'User100', '100@gmail.com', '08219730747', 'Universitas Muhammadiyah Kalimantan Timur', 'user', '$2y$10$1CxAsTkmJXPkPf.ce8N.TuJxcBHx8xkj5QCPh7kx25oA/YSHV2anW', '2025-06-20 00:02:28', '2025-06-20 00:02:28'),
(103, 'Ali Khatami', 'alirpl2643@gmail.com', '081545882988', 'Universitas Mulawarman', 'user', '$2y$10$cIFTmaXmkf8EdolmUhVLCudc2eHVAWfkd8sFN/WeqAMg6zg0SARAq', '2025-06-21 01:10:52', '2025-08-11 22:03:55'),
(104, 'Keyla', 'keyla@gmail.com', '081545882988', 'Universitas Mulawarman', 'user', '$2y$10$zmriAsCD5VRY6NSKk8gurOOi0TUExfh9P0QSDJH4mfgbhyluFDxAm', '2025-06-21 02:26:52', '2025-09-09 18:55:11'),
(105, 'Tes', 'tes@gmail.com', '12345678', 'Tes', 'user', '$2y$10$lGCTdxEQsZM72.LBFLTewuO9sZttpC6cewFAQ90yj1pAFGdrGP8yW', '2025-07-12 02:54:28', '2025-07-12 02:54:28'),
(107, 'AAA', 'aaa@gmail.com', '12345678', 'Unmul', 'user', '$2y$10$lLzC0/MU6dI1uMSkTz3Qc.whgfYdZddaZpiv7OQXXuPYCBc53xxhG', '2025-07-15 20:02:47', '2025-07-15 20:02:47'),
(108, 'AAAA', 'AA@gmail.com', '12345678', '12345678', 'user', '$2y$10$QmlRKGL/3ksx4MW48xWz/esDi.QRyAQhCaA5E56Ba7.BjJc6KBDsy', '2025-07-16 23:16:53', '2025-07-16 23:16:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajuan`
--
ALTER TABLE `ajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ajuan_user_id_foreign` (`user_id`);

--
-- Indexes for table `aktivitas_staff`
--
ALTER TABLE `aktivitas_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aktivitas_staff_ajuan_id_foreign` (`ajuan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajuan`
--
ALTER TABLE `ajuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `aktivitas_staff`
--
ALTER TABLE `aktivitas_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ajuan`
--
ALTER TABLE `ajuan`
  ADD CONSTRAINT `ajuan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `aktivitas_staff`
--
ALTER TABLE `aktivitas_staff`
  ADD CONSTRAINT `aktivitas_staff_ajuan_id_foreign` FOREIGN KEY (`ajuan_id`) REFERENCES `ajuan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
