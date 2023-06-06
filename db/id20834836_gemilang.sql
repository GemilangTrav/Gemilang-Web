-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2023 at 11:14 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20834836_gemilang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'gmm', 'gemilang1.png', '', 'on'),
(3, 'gemm', 'profil-gemilang-travel.jpg', '', 'on'),
(4, 'tral', 'tapeler.png', '', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 3, 'Tour Gunung Bromo', '<p>Panorama keindahan Gunung Bromo memiliki pesona tersendiri dan berhasil membuat jutaan orang penasaran dan ingin mengunjungi wisata Bromo.&nbsp;<strong>Gemilang Travel&nbsp;</strong>menyediakan paket tour Bromo dengan destinasi utamanya adalah kawasan wisata Taman Nasional Bromo Tengger Semeru Jawa Timur.&nbsp;</p><p>Dengan harga yang cukup terjangkau Anda sudah bisa menghabiskan liburan bersama kami ke Bromo. Anda tinggal booking saja melalui WhatsApp atau telepon admin kami, kemas barang bawaan dan nikmati liburan ke Bromo yang hemat, aman, nyaman dan menyenangkan.</p><p>Kami&nbsp;<strong>Gemilang Travel</strong>&nbsp;sudah berpengalaman dan memiliki legalitas jadi Anda tidak perlu ragu. Untuk informasi lebih detail mengenai paket tour bromo langsung saja konsultasi secara gratis dengan admin kami online 24 jam. Klik tombol di bawah ini.</p>', 'tour1.jpg', 500000, 50, 'on'),
(2, 3, 'Tour Malang - Batu', '<p>Anda mencari paket liburan ke Malang-Batu dengan harga murah dan fasilitas yang lengkap?&nbsp;<strong>Gemilang Travel</strong>&nbsp;merupakan solusinya. Tour Malang-Batu adalah salah satu pilihan tour terbaik di Jawa Timur yang saat ini paling recomended dipilih sebagai tujuan wisata liburan.&nbsp;</p><p>Kami melayani tour Malang-Batu untuk keluarga, group perusahaan, study tour, atau&nbsp; privat tour seperti bulan madu atau untuk pasangan.</p><p>Ada banyak jenis kegiatan yang menarik untuk menjadi pilihan Anda seperti paket out bound di Malang, paint ball, game dan motivasi, sepeda gunung, adventure motor trail keliling desa wisata dan alam pegunungan, adventure Jeep atau 4WD Jeep tour ke tempat-tempat alami khas pegunungan dengan hutan pinus serta pendakian atau trekking, camping ground dan masih banyak yang lainnya.</p><p><strong>Gemilang Travel</strong>&nbsp;sudah berpengalaman dan memiliki legalitas jadi Anda tidak perlu ragu. Untuk informasi lebih detail mengenai paket tour Malang-Batu langsung saja konsultasi secara gratis dengan admin kami online 24 jam. Klik tombol di bawah ini.</p>', 'paket-tour-batu-2.jpg', 350000, 40, 'on'),
(3, 1, 'Malang - Surabaya', '', 'mlg-sby-website.png', 150000, 10, 'on'),
(4, 3, 'Tour Semeru', '<p>Anda mencari paket liburan ke Malang-Batu dengan harga murah dan fasilitas yang lengkap?&nbsp;<strong>Gemilang Travel</strong>&nbsp;merupakan solusinya. Tour Malang-Batu adalah salah satu pilihan tour terbaik di Jawa Timur yang saat ini paling recomended dipilih sebagai tujuan wisata liburan.&nbsp;</p><p>Kami melayani tour Malang-Batu untuk keluarga, group perusahaan, study tour, atau&nbsp; privat tour seperti bulan madu atau untuk pasangan.</p><p>Ada banyak jenis kegiatan yang menarik untuk menjadi pilihan Anda seperti paket out bound di Malang, paint ball, game dan motivasi, sepeda gunung, adventure motor trail keliling desa wisata dan alam pegunungan, adventure Jeep atau 4WD Jeep tour ke tempat-tempat alami khas pegunungan dengan hutan pinus serta pendakian atau trekking, camping ground dan masih banyak yang lainnya.</p><p><strong>Gemilang Travel</strong>&nbsp;sudah berpengalaman dan memiliki legalitas jadi Anda tidak perlu ragu. Untuk informasi lebih detail mengenai paket tour Malang-Batu langsung saja konsultasi secara gratis dengan admin kami online 24 jam. Klik tombol di bawah ini.</p>', 'tour1.jpg', 650000, 11, 'on'),
(5, 1, 'Malang - Kediri', '<p><strong>Travel Malang Kediri</strong></p><p>Gemilang Travel melayani travel reguler dengan tujuan Malang&nbsp; Kediri dan kediri&nbsp; Malang. Akan langsung ditangani oleh driver kami yang sudah berengalaman, ramah, dan profesional, serta sudah memiliki sertifikasi ijin mengemudi atau lisensi jadi keamanan dan kenyamanan Anda akan senantiasa terjaga dengan baik.<br />Tersedia armada yang bisa Anda pilih sesuai dengan kebutuhan seperti Innova Reborn, Hiace Commuter, Hiace Premio, Avanza, dan Xenia. Semua armada dalam kondisi yang prima karena kami selalu melakukan pengecekan secara berkala dan tentunya telah dilengkapi dengan surat-surat kendaraan.</p><p>Mengapa<strong>&nbsp;Memilih Kami?</strong></p><p>&bull; Customer Service 24 Jam<br />Customer service kami selalu aktif selama 24 Jam. Memberikan kemudahan untuk Anda yang baru berkesempatan melakukan order di luar jam kerja normal.</p><p>&bull; Penjemputan Tepat Waktu<br />Dengan menggunakan jasa kami tentu Anda akan mendapatkan ketepatan dan kecepatan dalam melakukan perjalanan. Kami akan menginformasikan dengan detail jam keberangkatan dan penjemputan sesuai dengan kesepakatan di awal.<br /><br />&bull; Armada Terawat<br />Armada yang terawat tentu saja merupakan faktor penting dalam memilih sebuah jasa travel. Kami melakukan perawatan rutin mesin dan juga fasilitas armada yang kami miliki. Dengan armada yang terawat tentu Anda akan menikmati kenyamanan dalam perjalanan. Jika membutuhkan armada dengan kapasitas yang jauh lebih besar tentu saja kami dapat membantu hal tersebut.</p><p>&bull; Harga Ekonomis<br />Faktor terpenting dalam memilih sebuah jasa travel agent adalah harga yang diberikan. Perusahaan tentu saja akan memilih jasa travel yang memiliki harga kompetitif dalam penawarannya. Pastikan selalu mendapatkan harga terbaik sesuai dengan fasilitas dan keamanan yang diberikan. Diluar sana masih banyak travel agen yang hanya memberikan harga murah namun tidak memberikan fasilitas dan layanan yang terbaik untuk para Pelanggan.</p><p>&bull; Antar Jempur Door to Door<br />Kami menawarkan Layanan antar jemput Sesuai Alamat. Tidak lupa layanan yang di sediakan oleh Gemilang Travel adalah layanan terbaik dari travel-travel lain yang ada di malang karena sistem penjemputan door to door atau di jemput di alamat dan di antarkan sesuai alamat tujuan.</p>', 'mlg-kdr-website.png', 200000, 30, 'on'),
(6, 1, 'Malang - Juanda', '<p><strong>Travel Malang Juanda</strong></p><p><strong>Gemilang Travel</strong>&nbsp;melayani travel reguler dengan tujuan Malang&nbsp; Juanda dan Juanda&nbsp; Malang. Akan langsung ditangani oleh driver kami yang sudah berengalaman, ramah, dan profesional, serta sudah memiliki sertifikasi ijin mengemudi atau lisensi jadi keamanan dan kenyamanan Anda akan senantiasa terjaga dengan baik.</p><p>Tersedia armada yang bisa Anda pilih sesuai dengan kebutuhan seperti Innova Reborn, Hiace Commuter, Hiace Premio, Avanza, dan Xenia. Semua armada dalam kondisi yang prima karena kami selalu melakukan pengecekan secara berkala dan tentunya telah dilengkapi dengan surat-surat kendaraan.</p><p><strong>Mengapa Memilih Kami?</strong></p><p>&bull; Customer Service 24 Jam<br />Customer service kami selalu aktif selama 24 Jam. Memberikan kemudahan untuk Anda yang baru berkesempatan melakukan order di luar jam kerja normal.</p><p>&bull; Penjemputan Tepat Waktu<br />Dengan menggunakan jasa kami tentu Anda akan mendapatkan ketepatan dan kecepatan dalam melakukan perjalanan. Kami akan menginformasikan dengan detail jam keberangkatan dan penjemputan sesuai dengan kesepakatan di awal.<br /><br />&bull; Armada Terawat<br />Armada yang terawat tentu saja merupakan faktor penting dalam memilih sebuah jasa travel. Kami melakukan perawatan rutin mesin dan juga fasilitas armada yang kami miliki. Dengan armada yang terawat tentu Anda akan menikmati kenyamanan dalam perjalanan. Jika membutuhkan armada dengan kapasitas yang jauh lebih besar tentu saja kami dapat membantu hal tersebut.</p><p>&bull; Harga Ekonomis<br />Faktor terpenting dalam memilih sebuah jasa travel agent adalah harga yang diberikan. Perusahaan tentu saja akan memilih jasa travel yang memiliki harga kompetitif dalam penawarannya. Pastikan selalu mendapatkan harga terbaik sesuai dengan fasilitas dan keamanan yang diberikan. Diluar sana masih banyak travel agen yang hanya memberikan harga murah namun tidak memberikan fasilitas dan layanan yang terbaik untuk para Pelanggan.</p><p>&bull; Antar Jempur Door to Door<br />Kami menawarkan Layanan antar jemput Sesuai Alamat. Tidak lupa layanan yang di sediakan oleh Gemilang Travel adalah layanan terbaik dari travel-travel lain yang ada di malang karena sistem penjemputan door to door atau di jemput di alamat dan di antarkan sesuai alamat tujuan.</p>', 'travel-malang-juanda-2.jpg', 160000, 15, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Antar Kota', 'on'),
(2, 'Antar Provinsi', 'on'),
(3, 'Tour', 'on'),
(4, 'Antar Jemput', 'on'),
(5, 'Sewa Armada', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(1, 2, '0008888', 'Jeong', '2016-06-19'),
(2, 3, '0008888', 'Lee', '2016-06-19'),
(3, 4, '0008888', 'Jeong', '2016-06-19'),
(4, 5, 'fffdfd', 'ffdfsfsf', '0000-00-00'),
(5, 5, 'fffdfd', 'ffdfsfsf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'HRV', 80000, 'on'),
(2, 'Toyota Avanza', 50000, 'on'),
(3, 'Xenia', 50000, 'on'),
(4, 'Mobil Random(mengikuti sisa kursi kosong)', 25000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(2, 2, 2, 'Jeong', '00000', 'Jl. XXXXX', '2016-10-08 06:11:24', 2),
(3, 3, 6, 'Lee', '0000', 'Jl. aaaa', '2016-10-08 10:48:45', 2),
(4, 1, 6, 'Lee', '0000', 'Jl. AAA', '2016-10-08 12:01:55', 2),
(5, 3, 9, 'ffsf', '1211212', 'alalmat tujuan', '2023-03-31 09:38:15', 2),
(6, 4, 7, 'jihyo', '010021021', 'dimana ajaa\r\n', '2023-06-06 01:09:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(2, 6, 1, 2900000),
(2, 5, 1, 12700000),
(3, 13, 1, 2700000),
(3, 1, 1, 7800000),
(3, 11, 1, 10100000),
(4, 7, 2, 6134000),
(4, 12, 1, 7250000),
(5, 9, 1, 6000000),
(6, 3, 1, 2800000),
(6, 4, 1, 2250000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(2, 'customer', 'admin', 'admin@weshop.com', 'jl weshop', '08889999', '1b3231655cebb7a1f783eddf27d254ca', 'on'),
(6, 'customer', 'customer', 'customer1@aaa.com', 'jl.Customer Weshop', '088888', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(7, 'superadmin', 'ken', 'beranihjrah1@gmail.com', 'kenjeran', '085549075628', '0192023a7bbd73250516f069df18b500', 'on'),
(8, 'superadmin', 'ryujine', 'adminganteng@y.com', 'seoul ', '08181888811', '0192023a7bbd73250516f069df18b500', 'on'),
(9, 'customer', 'ryujinnn', 'cus1@j', 'seoul', '09909009909', '0192023a7bbd73250516f069df18b500', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
