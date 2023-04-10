-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.byetcluster.com
-- Generation Time: Jan 10, 2023 at 03:27 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33326523_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `tlp_darurat` char(16) DEFAULT NULL,
  `social_media` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `kk` varchar(120) DEFAULT NULL,
  `ktp` varchar(120) DEFAULT NULL,
  `sim` varchar(120) DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `alamat`, `telp_visit`, `tlp_darurat`, `social_media`, `tujuan`, `kk`, `ktp`, `sim`, `tgl_posting`) VALUES
(18, 'Yoga Aditya', 'Blok Kawung Kulon No. 23 Kel. Watubelah, Kec. Sumber, Kab. Cirebon', '23452345', '24524563', 'navarencar@gmail.com', 'cirebon', '07092022080333id.png', '07092022080420id (1).png', '07092022075619id.png', '2023-01-09 19:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Blok Kawung Kulon No. 23 Kel. Watubelah, Kec. Sumber, Kab. Cirebon', 'buminavatransport@gmail.com', '081319325758');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `imgpage` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `imgpage`) VALUES
(11, 'DA939283-1705-4DD0-AFA2-149FDA0720B9.jpeg'),
(10, '7FA721D0-3EA4-4E9A-A306-8E826D27591F.jpeg'),
(12, '7A939A08-8EC8-4429-90EA-530CD0E8CF28.jpeg'),
(13, 'A2690D3F-AAFB-4797-BE58-0B80FB13E262.jpeg'),
(14, '74F5D106-6A33-4457-9288-FDA504D9B000.jpeg'),
(15, 'WhatsApp Image 2023-01-10 at 12.33.53.jpeg'),
(16, 'WhatsApp Image 2023-01-10 at 12.33.53 (1).jpeg'),
(17, 'WhatsApp Image 2023-01-10 at 12.33.54.jpeg'),
(18, 'WhatsApp Image 2023-01-10 at 12.33.54 (1).jpeg'),
(19, 'WhatsApp Image 2023-01-10 at 12.39.00.jpeg'),
(20, 'WhatsApp Image 2023-01-10 at 12.48.20.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(14, 'HONDA', '2019-06-07 18:05:23', '2023-01-09 01:41:00'),
(15, 'ISUZU', '2019-06-07 18:29:46', '2023-01-09 06:44:49'),
(16, 'TOYOTA', '2023-01-09 01:40:44', NULL),
(17, 'DAIHATSU', '2023-01-09 01:41:35', NULL),
(18, 'MITSUBISHI', '2023-01-09 01:42:42', NULL),
(19, 'HYUNDAI', '2023-01-09 06:43:14', NULL),
(20, 'NISSAN', '2023-01-09 06:43:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `transmisi` varchar(20) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `cc` int(10) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `id_merek`, `transmisi`, `deskripsi`, `bb`, `cc`, `seating`, `image1`, `image2`, `image3`, `image4`, `image5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(16, 'GRAN MAX MINIBUS FF 1.3', 17, 'Manual', 'Mobil ini memiliki ground clearance 165 mm dengan dimensi sebagai berikut: 4045 mm L x 1665 mm W x 1900 mm H. Lebih dari 16 pengguna telah memberikan penilaian untuk Gran Max MB 1.3 D FF FH berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1300, 8, '821C8EC2-F4C9-4EE1-8370-9929B39418EB.jpeg', '1F779A82-650B-4CDF-A650-0D89714685C4.jpeg', 'KANAN KIRI.png', 'KANAN KIRI.png', 'KANAN.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:20:14', '2023-01-10 05:36:10'),
(17, 'GRAN MAX MINIBUS FH 1.3', 17, 'Manual', 'Mobil Daihatsu Gran Max mempunyai panjang 4.045 mm, lebar 1.665 mm, dan tinggi 1.900 mm. Tangguh memang jika berfungsi untuk perniagaan karena jarak roda dasar setinggi 2.650 mm, serta jarak ground clearance 165 mm. Dengan begini mobil ini tetap lincah meski membawa beban yang cukup berat.', 'Bensin', 1300, 8, '85ADB822-766E-4BC7-B4F3-ECD9E6B162B5.jpeg', 'D5FD1A36-1719-405F-B686-C360AAB4D5A8.jpeg', 'KANAN KIRI.png', 'KANAN KIRI.png', 'KANAN.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:25:54', '2023-01-10 05:27:53'),
(18, 'GRAN MAX PICK UP AC PS 1.5', 17, 'Manual', 'GRAN MAX PICK UP 1.5 STD FH berkapasitas 3-penupang dibekali juga dengan transmisi 5-Speed Manual. Sistem keamanannya dibekali Smart Access Card Entry & Perangkat Anti Maling.', 'Bensin', 1500, 3, 'd26.jpg', 'be26.webp', 'b26.jpg', 's26.png', 'i26.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:34:28', '2023-01-10 05:28:22'),
(19, 'GRAN MAX PICK UP 1.3 STD', 17, 'Manual', 'RAN MAX PICK UP 1.3 STD FH berkapasitas 3-penupang dibekali juga dengan transmisi 5-Speed Manual. Sistem keamanannya dibekali Smart Access Card Entry & Perangkat Anti Maling.', 'Bensin', 1300, 3, 'd24.webp', 'b24.webp', 's24.webp', 'i24.webp', 's24.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:37:33', '2023-01-10 05:29:03'),
(20, 'SIGRA 1.2 X M/T', 17, 'Manual', 'Daihatsu Sigra 1.2 X MT dibandrol dengan harga Rp 151,8 Juta. Sigra 1.2 X MT dari Daihatsu Indonesia hadir dalam mesin Bensin dengan perpindahan mesin 1197cc yang menawarkan tenaga 87hp. Daihatsu Sigra 1.2 X MT tersedia dalam transmisi 5-Speed Manual yang memiliki penghematan bahan bakar kmpl. ', 'Bensin', 1200, 7, 'DEPAN.jpeg', '2BBA6E68-E15C-4EB9-BD81-D14DE83665D5.jpeg', '86AAB40F-44A6-43B7-9C98-5B8EC80145B2.jpeg', 'FB976FCB-C25C-4774-9D46-051B98A126F3.jpeg', 'DALEM.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:47:58', '2023-01-10 05:29:37'),
(22, 'LUXIO 1.5 X M/T', 17, 'Manual', 'Luxio 1.5 X M/T dari Daihatsu Indonesia hadir dalam mesin Bensin dengan perpindahan mesin 1495cc yang menawarkan tenaga 96hp. Daihatsu Luxio 1.5 X M/T tersedia dalam transmisi 5-Speed Manual yang memiliki penghematan bahan bakar 13kmpl.', 'Bensin', 1500, 8, 'DEPAN.webp', '1C387BAC-085C-45A2-9913-3BC996C26FB2.jpeg', 'KANAN KIRI.jpg', 'KANAN KIRI.jpg', 'i27.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 07:59:15', '2023-01-10 05:30:16'),
(23, 'AYLA 1.2', 17, 'Matic', 'Model bermesin 1.000 cc memiliki dimensi (PxLxT) 3.640 mm Ã— 1.600 mm Ã— 1.520 mm dengan wheelbase 2.455 mm. Untuk model bermesin 1.200 cc terdapat perbedaan pada dimensi panjangnya yang berada di angka 2.455 mm dan wheelbase 2.450 mm.', 'Bensin', 1200, 5, 'd23.png', 'b23.jpg', 's23.jpg', 's23.jpg', 'i23.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 08:08:32', '2023-01-10 05:30:51'),
(24, 'BRIO SATYA 1.2 E CVT CKD', 14, 'Matic', 'Dimensi Brio Satya E CVT adalah 3800 mm L x 1680 mm W x 1485 mm H. Lebih dari 223 pengguna telah memberikan penilaian untuk Brio Satya E CVT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1200, 5, 'D.png', 'BELAKANG.png', 'SAMPING.jpg', 'SAMPING.jpg', 'INTERIOR.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 14:35:58', '2023-01-10 05:31:21'),
(25, 'BRIO SATYA 1.2 E M/T', 14, 'Manual', 'Dimensi Brio Satya E adalah 3800 mm L x 1680 mm W x 1485 mm H. Lebih dari 223 pengguna telah memberikan penilaian untuk Brio Satya E berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1200, 5, 'D1.jpg', 'B1.jpg', 'S1.jpg', 'S1.jpg', 'I1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 14:40:50', '2023-01-10 05:32:34'),
(26, 'MOBILIO 1.5 E M/T', 14, 'Manual', 'Mobil ini memiliki ground clearance 189 mm dengan dimensi sebagai berikut: 4386 mm L x 1683 mm W x 1603 mm H. Lebih dari 136 pengguna telah memberikan penilaian untuk Mobilio berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1500, 7, 'D2.png', 'B2.webp', 'S2.jpg', 'S2.jpg', 'I2.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 14:58:35', '2023-01-10 05:33:05'),
(27, 'STARGAZER TREND 1.5 CVT', 19, 'Matic', 'Hyundai Stargazer ditenagai oleh mesin 4 silinder 16 katup berkapasitas 1.497 cc. Mesin bensin ini mampu menghasilkan tenaga sebesar 115 PS pada 6.300 RPM dan torsi 144, 1 Nm pada 4.500 RPM. ', 'Bensin', 1500, 8, 'D3.jpg', 'B3.webp', 'S3.png', 'S3.png', 'I3.webp', 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2023-01-09 15:08:28', '2023-01-10 05:37:02'),
(28, 'ELF LONG 19 SEAT', 15, 'Manual', 'Isuzu Elf long 19 seater memiliki panjang 5.550 mm dengan lebar 2.095 mm serta tinggi 1.695 mm. Meskipun memiliki kapasitas yang cukup banyak untuk sebuah minibus, ukuran Isuzu Elf long 19 seater masih tergolong hanya berbeda tipis jika dibandingkan dengan mobil berkapasitas 7 orang.', 'Solar', 2800, 19, 'D4.jpg', 'S4.png', 'I4.png', 'D4.jpg', 'S4.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:17:43', '2023-01-10 05:34:24'),
(29, 'NEW XPANDER 1.5L SPORT CVT', 18, 'Matic', 'Mobil ini memiliki ground clearance 220 mm dengan dimensi sebagai berikut: 4595 mm L x 1750 mm W x 1750 mm H. Lebih dari 117 pengguna telah memberikan penilaian untuk Xpander Sport CVT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1500, 7, 'D5.png', 'B5.jpg', 'S5.png', 'I5.webp', 'S5.png', 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2023-01-09 15:23:51', '2023-01-10 05:38:35'),
(30, 'XPANDER 1.5L EXCEED M/T', 18, 'Manual', 'Mobil ini memiliki ground clearance 225 mm dengan dimensi sebagai berikut: 4595 mm L x 1750 mm W x 1750 mm H. Lebih dari 117 pengguna telah memberikan penilaian untuk Xpander Exceed M/T berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1500, 7, 'D6.jpg', 'B6.jpg', 'I6.jpg', 'S5.png', 'S6.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:30:20', '2023-01-10 05:39:13'),
(31, 'NEW XPANDER 1.5L EXCEED CVT', 18, 'Matic', 'Mobil ini memiliki ground clearance 220 mm dengan dimensi sebagai berikut: 4595 mm L x 1750 mm W x 1750 mm H. Lebih dari 117 pengguna telah memberikan penilaian untuk Xpander Exceed CVT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1500, 7, 'D7.jpg', 'B7.webp', 'S7.jpg', 'I7.webp', 'S7.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:35:23', '2023-01-10 05:40:25'),
(32, 'GRAND LIVINA 1.5 SV M/T', 20, 'Manual', 'Nissan Grand Livina diluncurkan dengan dua pilihan mesin yaitu 1.5L dan 1.8L dengan beberapa varian yaitu 1.5 SV, 1.5 XV, 1.8 XV, dan varian tertinggi 1.8 Ultimate. Dalam peredarannya, Nissan Grand Livina melakukan facelift dan meluncurkan varian baru yaitu HWS (Highway Star) dan Highway Star Autotech.', 'Bensin', 1500, 7, 'D8.png', 'B8.jpg', 'S8.jpg', 'I8.jpg', 'D8.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:44:29', '2023-01-10 05:40:56'),
(33, 'AVANZA 1.3 E M/T', 16, 'Manual', 'Mobil ini memiliki ground clearance 195 mm dengan dimensi sebagai berikut: 4395 mm L x 1730 mm W x 1665 mm H. Lebih dari 329 pengguna telah memberikan penilaian untuk Avanza 1.3E MT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1300, 7, 'D9.webp', 'B9.webp', 'I9.jpg', 'S9.webp', 'D9.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:50:36', '2023-01-10 05:41:23'),
(34, 'AGYA 1.2 A/T NEW TRD', 16, 'Matic', 'Dimensi Agya 1.2L GR Sport A/T adalah 3660 mm L x 1600 mm W x 1520 mm H. Lebih dari 133 pengguna telah memberikan penilaian untuk Agya 1.2L GR Sport A/T berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1200, 5, 'D10.png', 'B10.png', 'S10.jpeg', 'I10.webp', 'B10.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 15:57:18', '2023-01-10 05:42:01'),
(35, 'AVANZA VELOZ 1.3 A/T', 16, 'Matic', 'oyota Avanza Veloz 1.3 A/T merupakan varian Mobil MPV atau Multi Purpose Vehicle harga murah yang didesain dengan konsep sempurna sebagai sebuah mobil keluarga beraroma mobil balap yang stylish. Toyota Avanza Veloz 1.3 A/T memiliki kapasitas 6 hingga 7 orang penumpang dengan peningkatan kenyamanan yang maksimal didukung sistem keamanan lengkap. ', 'Bensin', 1300, 7, 'D11.jpg', 'B11.jpg', 'I11.png', 'SEAT11.jpg', 'S11.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:06:06', '2023-01-10 05:42:34'),
(36, 'AVANZA 1.3 G M/T', 16, 'Manual', 'Desain lebih sporty dan elegan ditampilkan dari mulai grill depan yang memililiki garis tegas dipermanis dengan garnish crome yang jantan. Mobil keluarga harga murah yang satu ini memiliki konsep yang lebih manis dibandingikan dengan pendahulunya.', 'Bensin', 1300, 7, 'D12.jpg', 'B12.webp', 'I12.jpg', 'B12.webp', 'D12.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:13:37', '2023-01-10 05:43:10'),
(37, 'KIJANG INNOVA REBORN 2.4G M/T', 16, 'Manual', 'Dimensi Kijang Innova G M/T Diesel adalah 4735 mm L x 1830 mm W x 1795 mm H. Lebih dari 191 pengguna telah memberikan penilaian untuk Kijang Innova G M/T Diesel berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Solar', 2400, 7, 'D13.webp', 'S13.webp', 'I13.jpg', 'B13.png', 'S13.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:20:25', '2023-01-10 05:44:17'),
(38, 'AVANZA 1.3 E A/T', 16, 'Matic', 'oyota Avanza 1.3 E A/T adalah mobil tipe MPV atau multi purpose vehicle harga murah yang didesain untuk keluarga tercinta dengan tingkat kenyamanan dan keamanan yang tinggi.', 'Bensin', 1300, 7, 'D14.jpg', 'S14.jpg', 'I11.png', 'I9.jpg', 'S14.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:25:43', '2023-01-10 05:44:52'),
(39, 'AGYA 1.2 M/T GR', 16, 'Manual', 'Dimensi Agya 1.2L GR Sport M/T adalah 3660 mm L x 1600 mm W x 1520 mm H. Lebih dari 133 pengguna telah memberikan penilaian untuk Agya 1.2L GR Sport M/T berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 1200, 5, 'D15.jpg', 'B15.jpg', 'S15.jpg', 'I15.webp', 'SEAT15.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:29:56', '2023-01-10 05:45:30'),
(40, 'CALYA 1.2 G A/T', 16, 'Matic', 'Mobil ini memiliki ground clearance 180 mm dengan dimensi sebagai berikut: 4110 mm L x 1655 mm W x 1600 mm H. Lebih dari 152 pengguna telah memberikan penilaian untuk Calya G AT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1200, 7, 'D16.webp', 'S16.png', 'B16.jpg', 'I16.jpg', 'B16.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:36:18', '2023-01-10 05:50:49'),
(41, 'KIJANG INNOVA REBORN 2.4G A/T Diesel', 16, 'Manual', 'Dimensi Kijang Innova G M/T Gasoline adalah 4735 mm L x 1830 mm W x 1795 mm H. Lebih dari 191 pengguna telah memberikan penilaian untuk Kijang Innova G M/T Gasoline berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. ', 'Bensin', 2400, 7, 'DEP17.jpg', 'B17.jpg', 'S17.jpg', 'I13.jpg', 'S17.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:41:05', '2023-01-10 05:51:29'),
(42, 'ALL NEW AVANZA 1.5 G CVT', 16, 'Matic', 'Mobil ini memiliki ground clearance 205 mm dengan dimensi sebagai berikut: 4395 mm L x 1730 mm W x 1700 mm H. Lebih dari 329 pengguna telah memberikan penilaian untuk Avanza 1.5 G CVT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1500, 7, 'D19.png', 'B19.webp', 'I19.jpg', 'SAM19.webp', 'S19.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:45:35', '2023-01-10 05:52:13'),
(43, 'ALL NEW VELOZ 1.5 M/T', 16, 'Manual', 'Mobil ini memiliki ground clearance 200 mm dengan dimensi sebagai berikut: 4200 mm L x 1660 mm W x 1695 mm H. Lebih dari 97 pengguna telah memberikan penilaian untuk Avanza Veloz 1.5 MT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1500, 7, 'D18.jpg', 'B18.webp', 'S18.png', 'I18.png', 'S18.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:50:44', NULL),
(44, 'AVANZA 1.3 G M/T', 16, 'Manual', 'Toyota Avanza 1.3 G M/T dengan harganya yang murah berjalan pada sistem transmisi manual yang memiliki lima percepatan. Mesinnya menggunakan kelas 1329cc 1.3L DOHC yang terasa begitu bertenaga melintasi semua jenis jalanan baik di perkotaan yang mulus maupu di perkampungan yang semi offroad. ', 'Bensin', 1300, 7, 'D20.jpg', 'B20.webp', 'S20.png', 'I20].jpeg', 'S20.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 16:55:24', '2023-01-10 05:54:22'),
(45, 'CALYA 1.2 G M/T', 16, 'Manual', 'Mobil ini memiliki ground clearance 180 mm dengan dimensi sebagai berikut: 4110 mm L x 1655 mm W x 1600 mm H. Lebih dari 152 pengguna telah memberikan penilaian untuk Calya G MT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1200, 7, 'D16.webp', 'S16.png', 'I16.jpg', 'B16.jpg', 'D16.webp', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:58:03', NULL),
(46, 'AVANZA 1.3 G A/T', 16, 'Matic', 'Mobil ini memiliki ground clearance 200 mm dengan dimensi sebagai berikut: 4190 mm L x 1660 mm W x 1695 mm H. Lebih dari 313 pengguna telah memberikan penilaian untuk Avanza 1.3G AT berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin.', 'Bensin', 1300, 7, 'B11.jpg', 'D11.jpg', 'I11.png', 'S11.jpg', 'SEAT11.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 17:00:38', '2023-01-10 05:54:49'),
(47, 'HI ACE COMMUTER 14 SEAT', 16, 'Manual', 'Full AC, Reclining seats, Prokes standar CHSE, hand sanitizer, tissue, dan alat kebersihan disinfektan, Kursi original Toyota, USB Charger, Fasilitas karaoke, TV Roof, DVD Player, Support USB/MP3/MP4, APAR, P3K, Safety tools', 'Solar', 2500, 14, 'D21.webp', 'S21.jpg', 'SEAT21.webp', 'B21.jpg', 'S21.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 17:04:32', '2023-01-10 05:55:51'),
(48, 'HI ACE PREMIO 11 SEAT', 16, 'Manual', 'Full AC, Reclining seats, Prokes standar CHSE, hand sanitizer, tissue, dan alat kebersihan disinfektan, Kursi original Toyota, USB Charger, Fasilitas karaoke, TV Roof, DVD Player, Support USB/MP3/MP4, APAR, P3K, Safety tools', 'Solar', 2800, 11, 'S22.jpg', 'D22.jpg', 'SEAT22.jpg', 'B21.jpg', 'S21.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-01-09 17:07:06', '2023-01-10 05:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(3, 'Tentang Kami', 'aboutus', '																																	<p class=\"mb-5\" style=\"text-align: center;\"><span lang=\"EN-US\" style=\"font-size: large; font-family: georgia;\">Nava Rent Car adalah perusahaan\r\ntransportasi di Cirebon yang berdiri sejak tahun 2017&nbsp; dibawah naungan&nbsp; CV. Bumi Nava Transport. Nava Rent Car\r\nmenyediakan solusi menyeluruh dalam hal layanan transportasi. Sebagai salah\r\nsatu perusahaan transportasi kami menyediakan berbagai layanan, rental mobil,\r\nrental bus, rental motor, logistic, layanan pengemudi professional serta\r\npengelolaan armada, kami memahami mobilitas serta kebutuhan Anda dan kami&nbsp; memberikan solusi terbaik yang sesuai dengan\r\nkebutuhan Anda. <o:p></o:p></span></p>\r\n\r\n<p class=\"font-weight-bold\" style=\"text-align: center;\"><span lang=\"EN-US\" style=\"font-size: large; font-family: georgia;\">Visi :<o:p></o:p></span></p>\r\n\r\n<p style=\"text-align: center;\"><span lang=\"EN-US\" style=\"font-size: large; font-family: georgia;\">Menjadi perusahaan transportasi pilihan utama masyarakat Indonesia\r\ndan tersebar di seluruh Indonesia.<o:p></o:p></span></p>\r\n\r\n<p class=\"font-weight-bold\" style=\"text-align: center;\"><span lang=\"EN-US\" style=\"font-size: large; font-family: georgia;\">Misi :<o:p></o:p></span></p>\r\n\r\n<p style=\"text-align: center;\"><span lang=\"EN-US\" style=\"\"><span style=\"font-size: large; font-family: georgia;\">Memberikan pelayanan dan mobilitas bagi masyaratakat Indonesia\r\nsehingga menjadi mitra dalam perjalanan terbaik yang dapat diandalkan serta\r\ninovatif.</span><span style=\"font-family: Calibri, sans-serif;\"><o:p></o:p></span></span></p><p style=\"text-align: center;\"><span lang=\"EN-US\" style=\"\"><img src=\"http://facebook.com\" alt=\"\" align=\"none\"><span style=\"font-size: large; font-family: georgia;\"><br></span></span></p>																																																							'),
(11, 'Syarat dan Ketentuan', 'faqs', '																																																							<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\" style=\"\">1.</span><span lang=\"EN-US\" style=\"\">Waktu pemesanan mobil minimal\r\n(H-1) dari hari (H) Pemakaian.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">2.</span><span lang=\"EN-US\">Melengkapi data pelanggan dan\r\nmenyerahkan dokumen <i>softcopy</i> KTP, KK\r\ndan SIM A / BI/BII.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">3.</span><span lang=\"EN-US\">Mencantumkan Nama Akun sosial\r\nmedia anda (Facebook/Instagram).<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">4.</span><span lang=\"EN-US\">Bersedia untuk di survey lokasi tempat tinggal\r\npenyewa (Khusus Pelanggan Baru).<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">5.</span><span lang=\"EN-US\">Menyerahkan Jaminan Kendaraan\r\n(Motor + STNK) min tahun 2017 atau&nbsp; &nbsp;menyerahkan deposit sebesar Rp. 2.500.000\r\nsebagai jaminan Asuransi.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">6.</span><span lang=\"EN-US\">Bersedia difoto di depan mobil dengan\r\nmenunjukan KTP.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">7.</span><span lang=\"EN-US\">Minimal <i>Downpayment</i> (DP) 50% dri total Harga sewa dan pelunasan saat\r\npengembalian unit.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">8.</span><span lang=\"EN-US\">Jika terdapat perpanjangan sewa\r\nlebih dari 3 hari, maka customer wajib melunasi pemakaian sewa sebelumnya.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">9.</span><span lang=\"EN-US\">Biaya <i>over time</i> sebesar 10%/jam dari harga sewa perhari.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">10.</span><span lang=\"EN-US\">Pengajuan pembatalan hari (H)\r\ndikenakan biaya <i>Cancelation</i> sebesar\r\n50% dari Total Biaya sewa.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">11.</span><span lang=\"EN-US\">Pengajuan pembatalan pada&nbsp; hari (H) saat driver&nbsp; melakukan penjemputan dikenakan biaya\r\ncancelation&nbsp;&nbsp; sebesar 100% dari total\r\nbiaya sewa.<o:p></o:p></span></span></p></blockquote>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;text-indent:-18.0pt;\r\nline-height:150%;mso-list:l0 level1 lfo1\"><span style=\"font-family: georgia;\"><span lang=\"EN-US\">12.</span></span><span lang=\"EN-US\"><span style=\"font-family: georgia;\">Kebijakan <i style=\"\">cancelation</i> diatas berlaku bagi seluruh customer yang sudah\r\nmelakukan DP.</span><o:p></o:p></span></p></blockquote>																																																																													');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
