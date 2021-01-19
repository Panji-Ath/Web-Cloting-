-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 06:11 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anneroger_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(9, 25, 'Tampak belakang', 'Bela_Negara_Indonesia_Qimo2.jpg', '2020-06-26 21:46:13'),
(10, 26, 'Tampak belakang', 'Atas_Nama_Wakil_Rakyat_Qimo2.jpg', '2020-06-26 21:50:03'),
(11, 27, 'Tampak belakang', 'arcade-2-500x500.jpg', '2020-06-26 21:54:20'),
(12, 27, 'Tampak belakang', 'arcade-4-1200x1200.jpg', '2020-06-26 21:54:31'),
(13, 27, 'Tampak depan', 'arcade-3-500x500.jpg', '2020-06-26 21:54:49'),
(14, 28, 'Desain depan', 'anggarez-ts-3-500x500.jpg', '2020-06-26 22:02:20'),
(15, 28, 'Desain belakang', 'anggarez-ts-4.jpg', '2020-06-26 22:02:37'),
(16, 28, 'Tampak belakang', 'anggarez-ts-2.jpg', '2020-06-26 22:02:45'),
(17, 30, 'Desain 1', 'fakelab_-_kaos_hitam_panjang2.jpg', '2020-06-26 22:34:39'),
(18, 30, 'Desain 2', 'fakelab_-_kaos_hitam_panjang4.jpg', '2020-06-26 22:34:54'),
(19, 30, 'Desain 3', 'fakelab_-_kaos_hitam_panjang3.jpg', '2020-06-26 22:35:13'),
(20, 33, 'Tampak samping', 'BLOODS_-_Shoes_Sepatu_Running_Blaze_Runner_02_Black_Grey_Gum_-_39-2.jpg', '2020-06-26 22:43:54'),
(21, 33, 'Tampak bawah', 'BLOODS_-_Shoes_Sepatu_Running_Blaze_Runner_02_Black_Grey_Gum_-_39-3.jpg', '2020-06-26 22:44:09'),
(22, 33, 'Tampak belakang samping', 'BLOODS_-_Shoes_Sepatu_Running_Blaze_Runner_02_Black_Grey_Gum_-_39-4.jpg', '2020-06-26 22:44:30'),
(23, 34, 'Tampak dalam', 'SIdebag_Fakelab2.jpg', '2020-06-26 22:47:54'),
(27, 39, 'Tampak depan', 'anR1.jpg', '2020-06-28 03:27:50'),
(28, 39, 'Desain depan', 'anR21.jpg', '2020-06-28 03:28:03'),
(29, 39, 'Desain depan', 'anR31.jpg', '2020-06-28 03:28:09'),
(30, 40, 'Tampak belakang', '16788758_246533842472579_6540987990670311424_n.jpg', '2020-06-28 15:27:55'),
(31, 41, 'Tampak depan', '13413454_1558084067821516_386449432_n.jpg', '2020-06-28 15:31:17'),
(32, 41, 'Tampak depan', '13385754_241802609539198_1246112890_n.jpg', '2020-06-28 15:31:27'),
(33, 42, 'Tampak belakang', '13413203_1162527907130767_1345833302_n.jpg', '2020-06-28 15:38:48'),
(34, 43, 'Tampak depan', '16789499_1736234356668193_3748682146399649792_n.jpg', '2020-06-28 15:41:43'),
(35, 44, 'Tampak depan', '16908221_1242104845880831_5635611388639444992_n.jpg', '2020-06-28 15:43:37'),
(36, 45, 'Tampak depan', '16906152_1270561359646842_3369069292984205312_n.jpg', '2020-06-28 15:45:48'),
(37, 46, 'Tampak depan samping', '12825788_1694842587435918_1357030642_n.jpg', '2020-06-28 15:48:39'),
(39, 47, 'Tampak depan', '1169864_798941573582837_2046035748_n1.jpg', '2020-06-28 15:51:08'),
(40, 50, 'Tampak depan', '12558403_195626914120231_542990089_n.jpg', '2020-06-28 16:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `tanggal_bayar` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transaksi`, `id_user`, `id_pelanggan`, `nama_pelanggan`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `tanggal_bayar`, `nama_bank`, `tanggal_post`, `tanggal_update`) VALUES
(12, 0, 5, 'panji', 'panjicahyono66@gmail.com', '082223345521', 'semarang', '28062020UC6NIFG0', '2020-06-28 00:00:00', 470000, 'Konfirmasi', 470000, '0785422341414', 'Panji', 'buktitf1.jpg', 3, '28-06-2020', 'Bank BRI', '2020-06-28 05:20:04', '2020-06-28 03:20:32'),
(13, 0, 5, 'panji', 'panjicahyono66@gmail.com', '082223345521', 'semarang', '280620200QLSJ1ZE', '2020-06-28 00:00:00', 160000, 'Konfirmasi', 160000, '0785422341414', 'Panji', 'buktitf2.jpg', 1, '28-06-2020', 'Bank BRI', '2020-06-28 05:26:35', '2020-06-28 03:27:03'),
(14, 0, 5, 'panji', 'panjicahyono66@gmail.com', '082223345521', 'semarang', '28062020SSINZ8BX', '2020-06-28 00:00:00', 1120000, 'Konfirmasi', 1120000, '0785422341414', 'Panji', 'buktitf3.jpg', 3, '28-06-2020', 'Bank BRI', '2020-06-28 06:04:54', '2020-06-28 04:05:21'),
(15, 0, 5, 'panji', 'panjicahyono66@gmail.com', '082223345521', 'semarang', '28062020Z95YLZCE', '2020-06-28 00:00:00', 85000, 'Konfirmasi', 85000, '0785422341414', 'Panji', 'buktitf4.jpg', 3, '28-06-2020', 'Bank BRI', '2020-06-28 18:07:29', '2020-06-28 16:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(9, 't-shirt', 'T-shirt', 1, '2020-06-26 21:31:13'),
(10, 'pants', 'Pants', 2, '2020-06-26 21:32:04'),
(11, 'jacket', 'Jacket', 3, '2020-06-26 21:32:26'),
(12, 'hoodie', 'Hoodie', 4, '2020-06-26 21:33:20'),
(13, 'bag', 'Bag', 5, '2020-06-26 22:18:31'),
(14, 'shooes', 'Shooes', 6, '2020-06-26 22:40:03'),
(15, 'shirt', 'shirt', 7, '2020-06-28 15:35:44'),
(16, 'hat', 'Hat', 8, '2020-06-28 15:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'AnneRoger Online Store SMG', 'chose your style', 'anneroger@gmail.com', 'www.anneroger.cloth', 'AnneRoger Online Store', 'ok', '094754932', 'Semarang', 'www.facebook.com/anneroger', 'https://www.instagram.com/anneroger.co/?hl=id', 'Clothing co, baju keren, local pride, local brand', 'logoanneRoger1.jpeg', 'logoanneRoger2.jpeg', 'ok', '2020-06-28 16:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `status_pelanggan`, `nama_pelanggan`, `email`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`) VALUES
(5, 0, 'Pending', 'panji', 'panjicahyono66@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '082223345521', 'semarang', '2020-06-27 16:54:16', '2020-06-27 14:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `berat` float DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `berat`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(25, 6, 9, 'Q1', 'Qimo - Bela Negara Indonesia', 'qimo-bela-negara-indonesia-q1', '<p>Konsep : Bela Negara Indonesia</p>\r\n\r\n<p>Bahan : Cotton Combat 30 s</p>\r\n\r\n<p>Sablon : Soft Discharge</p>\r\n\r\n<p>Warna : Hitam</p>\r\n', 'Bela Negara Indonesia', 80000, 3, 'Bela_Negara_Indonesia_Qimo.jpg', 0.25, 'M,L', 'Publish', '2020-06-26 23:44:45', '2020-06-26 22:26:09'),
(26, 6, 9, 'Q2', 'Qimo - Atas Nama Wakil Rakyat', 'qimo-atas-nama-wakil-rakyat-q2', '<p>Konsep :&nbsp; Atas Nama Wakil Rakyat</p>\r\n\r\n<p>Bahan : Cotton Combad 30 S</p>\r\n\r\n<p>Sablon : Soft Discharge</p>\r\n\r\n<p>Warna : Putih Gading</p>\r\n', 'Atas Nama Wakil Rakyat', 85000, 2, 'Atas_Nama_Wakil_Rakyat_Qimo.jpg', 0.25, 'L', 'Publish', '2020-06-26 23:49:51', '2020-06-26 22:25:52'),
(27, 6, 11, 'M1', 'Maternal - ARCADE', 'maternal-arcade-m1', '<p>Black cotton fleece zip-up hoodie, with silver shimmer plastisol ink screen print, also silver color zipper and eyelet at front pocket. Artwork by Zvlf</p>\r\n', 'ARCADE', 369000, 1, 'arcade-1.jpg', 0.5, 'L', 'Publish', '2020-06-26 23:53:46', '2020-06-26 22:27:11'),
(28, 6, 9, 'M2', 'Maternal - ANGGAREZ TS', 'maternal-anggarez-ts-m2', '<p>Black heavy cotton short sleeve tubular/seamless T-shirt with dessert blue plastisol ink screen print.Artwork by Anggarez</p>\r\n', 'ANGGAREZ TS', 180000, 3, 'anggarez-ts-1.jpg', 0.25, 'M,L', 'Publish', '2020-06-26 23:59:02', '2020-06-26 22:25:25'),
(29, 6, 9, 'RD1', 'Rown Division - Yollows Black', 'rown-division-yollows-black-rd1', '<p>- Kesesuaian standar ukuran</p>\r\n\r\n<p>- Kaos harian/casual</p>\r\n\r\n<p>- Kaos lengan panjang</p>\r\n\r\n<p>- Grafik dicetak dengan sablon berkualitas</p>\r\n\r\n<p>- Bahan dari 100% katun berkualitas</p>\r\n', 'Rown Division Kaos T-Shirt Yollows Black', 100000, 1, 'own_Division_Kaos_T-Shirt_Yollows_Black.jpg', 0.35, 'M,L', 'Publish', '2020-06-27 00:20:34', '2020-06-26 22:25:17'),
(30, 6, 9, 'FK1', 'fakelab - kaos hitam panjang', 'fakelab-kaos-hitam-panjang-fk1', '<p>cotton combat 30s<br />\r\nsablon plastisol</p>\r\n', 'fakelab - kaos hitam panjang', 70000, 3, 'fakelab_-_kaos_hitam_panjang.jpg', 0.35, 'M,L,XL', 'Publish', '2020-06-27 00:33:00', '2020-06-26 22:33:09'),
(31, 6, 9, 'BLD1', 'BLOODS - Tshirt Kaos Litzo Grey - XS', 'bloods-tshirt-kaos-litzo-grey-xs-bld1', '<p>Ultrasoft Cotton Combed 30&#39;s dengan design Bloods disablon dengan tinta plastisol berkualitas dan detail emblem bordir.</p>\r\n', 'BLOODS Tshirt Kaos Litzo Grey - XS', 100000, 2, 'bloods.jpg', 0.25, 'L', 'Publish', '2020-06-27 00:37:20', '2020-06-26 22:37:42'),
(32, 6, 13, 'BLD2', 'BLOODS - Tas Bag Pack Ransel Moshimo 01 Black', 'bloods-tas-bag-pack-ransel-moshimo-01-black-bld2', '<p>Tas punggung / ransel dengan material kain cordura hardwearing, dengan bordir logo Bloods, disablon dengan plastisol ink, dilengkapi tempat laptop di dalam tas dan saku di depan, juga tali gesper.</p>\r\n', 'BLOODS - Tas Bag Pack Ransel Moshimo 01 Black', 200000, 1, 'BLOODS_-_Tas_Bag_Pack_Ransel_Moshimo_01_Black.jpg', 0.5, '30cm x 15cm x 57 cm', 'Publish', '2020-06-27 00:39:34', '2020-06-26 22:39:34'),
(33, 6, 14, 'BLD3', 'BLOODS - Shoes Sepatu Running Blaze Runner 02 Black Grey Gum - 39', 'bloods-shoes-sepatu-running-blaze-runner-02-black-grey-gum-39-bld3', '<p>Sepatu Sneakers pria dengan model yang simple dan nyaman digunakan. Dengan pilihan yang bisa disesuaikan dengan tampilan anda.</p>\r\n', 'BLOODS - Shoes Sepatu Running Blaze Runner 02 Black Grey Gum - 39', 400000, 2, 'BLOODS_-_Shoes_Sepatu_Running_Blaze_Runner_02_Black_Grey_Gum_-_39.jpg', 1, 'Size : 9 - 42 - 27cm , Size : 10 - 43 - 28cm', 'Publish', '2020-06-27 00:43:30', '2020-06-26 22:43:30'),
(34, 6, 13, 'FK2', 'Fakelab - Sidebag Slingbag Tas Slempang  Checkerboard Motif Catur Glow in', 'fakelab-sidebag-slingbag-tas-slempang-checkerboard-motif-catur-glow-in-fk2', '<p>SIdebag Fakelab Original 100%<br />\r\nBahan Cordura<br />\r\nSablon plastisol</p>\r\n', 'Fakelab - Sidebag Slingbag Tas Slempang  Checkerboard Motif Catur Glow in', 160000, 2, 'SIdebag_Fakelab.jpg', 0.45, '-', 'Publish', '2020-06-27 00:47:38', '2020-06-26 22:47:38'),
(39, 6, 9, 'aR1', 'anneRoger - sile hijau', 'anneroger-sile-hijau-ar1', '<p>-shirt premium berbahan 100%cotton combed 30s.sehingga nyaman di gunakan dan tidak panas.<br />\r\nMenggunakan sablon rubber matsui yang kuat dan fleksibel.</p>\r\n', 'anneroger', 160000, 4, 'anR4.jpg', 0.25, 'M', 'Publish', '2020-06-28 05:25:34', '2020-06-28 03:25:34'),
(40, 6, 13, 'cc1', 'Circle cloth - Back pack ', 'circle-cloth-back-pack-cc1', '<p>&nbsp;D300 matrial solid</p>\r\n', 'Circle cloth - Back pack ', 190000, 10, '16906090_402135843512168_1072589269526118400_n.jpg', 1.25, '30x43x17', 'Publish', '2020-06-28 17:27:42', '2020-06-28 15:27:42'),
(41, 6, 9, 'cc2', 'Circle cloth - The woman wearing CT SNOOPY', 'circle-cloth-the-woman-wearing-ct-snoopy-cc2', '<p>&nbsp;matrials with cotton combed 30s and rubber printed graphic design.</p>\r\n', 'The woman wearing CT SNOOPY', 160000, 3, '13413402_476683802526536_2035080959_n.jpg', 0.25, 'M,L', 'Publish', '2020-06-28 17:31:02', '2020-06-28 15:31:02'),
(42, 6, 9, 'cc3', 'Circle cloth -  CT HELL', 'circle-cloth-ct-hell-cc3', '<p>Matrials cotton combed 30s with ruber printed.</p>\r\n', 'Circle cloth -  CT HELL', 115000, 3, '13525323_1063778270368870_287300927_n.jpg', 0.25, 'M,L', 'Publish', '2020-06-28 17:34:34', '2020-06-28 15:34:45'),
(43, 6, 11, 'cc4', 'Circle cloth - casual jacket', 'circle-cloth-casual-jacket-cc4', '<p>matrials with american soft denim</p>\r\n', 'Circle cloth - casual jacket', 180000, 3, '16583799_1882004762071108_3800602300938977280_n.jpg', 0.5, 'M,L', 'Publish', '2020-06-28 17:41:19', '2020-06-28 15:41:19'),
(44, 6, 15, 'cc5', 'Circle cloth -  CJ ROGUE', 'circle-cloth-cj-rogue-cc5', '<p>&nbsp;</p>\r\n\r\n<p>Looked more closer,this is CJ ROGUE with american soft denim.</p>\r\n', 'CJ ROGUE', 180000, 2, '16908340_845479308957882_6633241775064481792_n_(1).jpg', 0.5, 'M,L,XL', 'Publish', '2020-06-28 17:43:25', '2020-06-28 15:43:25'),
(45, 6, 9, 'cc6', 'Circle cloth -  CT HELL', 'circle-cloth-ct-hell-cc6', '<p>Matrials cotton combed 30s with ruber printed.</p>\r\n', 'Circle cloth -  CT HELL', 115000, 0, '16790196_651878231687582_2130102258950471680_n.jpg', 0.25, 'M,L', 'Draft', '2020-06-28 17:45:30', '2020-06-28 15:45:30'),
(46, 6, 13, 'cc7', 'Circle cloth -  CB SUICIDE', 'circle-cloth-cb-suicide-cc7', '<p>Circle cloth - &nbsp;CB SUICIDE</p>\r\n', 'Circle cloth -  CB SUICIDE', 180000, 3, '12751524_1069989999705811_1673517348_n.jpg', 1.25, '15L', 'Publish', '2020-06-28 17:48:22', '2020-06-28 15:48:22'),
(47, 6, 13, 'cc8', 'Circle cloth -  CB OMAHA', 'circle-cloth-cb-omaha-cc8', '', 'Circle cloth -  CB OMAHA', 180000, 0, '12825775_1674988766097755_2086902889_n1.jpg', 1.25, '15L', 'Publish', '2020-06-28 17:50:32', '2020-06-28 15:52:09'),
(48, 6, 13, 'cc9', 'Circle cloth -  CB VIPER', 'circle-cloth-cb-viper-cc9', '', 'Circle cloth -  CB VIPER', 180000, 0, '12783918_931756073587288_1362176296_n.jpg', 1.25, '15L', 'Draft', '2020-06-28 17:53:53', '2020-06-28 15:53:53'),
(49, 6, 11, 'cc10', 'Circle cloth -  CCJ HARBOUR', 'circle-cloth-ccj-harbour-cc10', '', 'Circle cloth -  CCJ HARBOUR', 200000, 5, '12346076_554772201345954_699469990_n.jpg', 0.5, 'M,L', 'Publish', '2020-06-28 17:58:27', '2020-06-28 15:58:27'),
(50, 6, 16, 'cc12', 'Circle cloth -  CH BLUF', 'circle-cloth-ch-bluf-cc12', '', 'Circle cloth -  CH BLUF', 85000, 1, '11324247_435708106618554_98380795_n.jpg', 0.2, 'M,L,XL', 'Publish', '2020-06-28 18:00:49', '2020-06-28 16:00:49'),
(51, 6, 11, 'cc14', 'Circle cloth -  CT HELL', 'circle-cloth-ct-hell-cc14', '<p>Break the winter with CJ STALIN</p>\r\n', 'CJ STALIN', 180000, 0, '10005317_111633815877700_550420841_n.jpg', 0.5, 'M,L,XL', 'Publish', '2020-06-28 18:02:45', '2020-06-28 16:02:45'),
(52, 6, 16, 'cc15', 'Circle cloth -  CH INK', 'circle-cloth-ch-ink-cc15', '', 'Circle cloth -  CH INK', 85000, 10, '12558617_195119130841106_1034223391_n.jpg', 0.2, 'M,L,XL', 'Publish', '2020-06-28 18:04:16', '2020-06-28 16:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(30) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `gambar`, `tanggal_post`) VALUES
(1, 'Bank Bca', '4131341234573', 'Syahrini', NULL, '2020-06-27 10:04:35'),
(2, 'Bank Bri', '6532373744456', 'Nova', NULL, '2020-06-27 10:04:27'),
(3, 'Bank BRI', '0021393471294', 'Cahyono', NULL, '2020-06-27 10:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_pelanggan`, `kode_transaksi`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`, `tanggal_update`) VALUES
(14, 0, 4, '27062020PF3LNRCV', 31, 100000, 1, 100000, '2020-06-27 00:00:00', '2020-06-27 07:44:59'),
(15, 0, 4, '27062020PF3LNRCV', 30, 70000, 1, 70000, '2020-06-27 00:00:00', '2020-06-27 07:44:59'),
(16, 0, 4, '27062020PF3LNRCV', 29, 100000, 1, 100000, '2020-06-27 00:00:00', '2020-06-27 07:44:59'),
(17, 0, 4, '27062020NZBYOSUZ', 33, 400000, 1, 400000, '2020-06-27 00:00:00', '2020-06-27 07:49:13'),
(18, 0, 4, '27062020YIPZR2CG', 34, 160000, 1, 160000, '2020-06-27 00:00:00', '2020-06-27 09:15:39'),
(19, 0, 4, '27062020YIPZR2CG', 32, 200000, 1, 200000, '2020-06-27 00:00:00', '2020-06-27 09:15:39'),
(20, 0, 5, '28062020UC6NIFG0', 30, 70000, 1, 70000, '2020-06-28 00:00:00', '2020-06-28 03:20:04'),
(21, 0, 5, '28062020UC6NIFG0', 33, 400000, 1, 400000, '2020-06-28 00:00:00', '2020-06-28 03:20:04'),
(22, 0, 5, '280620200QLSJ1ZE', 39, 160000, 1, 160000, '2020-06-28 00:00:00', '2020-06-28 03:26:35'),
(23, 0, 5, '28062020SSINZ8BX', 34, 160000, 1, 160000, '2020-06-28 00:00:00', '2020-06-28 04:04:54'),
(24, 0, 5, '28062020SSINZ8BX', 33, 400000, 2, 800000, '2020-06-28 00:00:00', '2020-06-28 04:04:54'),
(25, 0, 5, '28062020SSINZ8BX', 39, 160000, 1, 160000, '2020-06-28 00:00:00', '2020-06-28 04:04:54'),
(26, 0, 5, '28062020Z95YLZCE', 52, 85000, 1, 85000, '2020-06-28 00:00:00', '2020-06-28 16:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(2, 'nova ariyanto', 'novaari95@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', '2020-05-18 13:36:00'),
(4, 'pamungkas ariyanto', 'pamungk29@gmail.com', 'pamungkas', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'User', '2020-05-18 15:23:35'),
(5, 'Nabila Devitamara', 'nabiladevitamara6@gmail.com', 'nabilacantik', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', '2020-05-22 16:33:09'),
(6, 'panji cahyono', 'panjicahyono@gmail.com', 'panjicahyono', 'c44aa3ceb144fd9c69d18b9be8c286a873c49d06', 'Admin', '2020-06-26 03:25:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomor_rekening` (`nomor_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
