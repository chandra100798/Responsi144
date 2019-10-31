/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.5.27 : Database - diagnosaginjal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diagnosaginjal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `diagnosaginjal`;

/*Table structure for table `detailkonsul` */

DROP TABLE IF EXISTS `detailkonsul`;

CREATE TABLE `detailkonsul` (
  `idkonsul` varchar(5) NOT NULL,
  `idgejala` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `detailkonsul` */

insert  into `detailkonsul`(`idkonsul`,`idgejala`) values 
('1','G01'),
('1','G02'),
('2','G08'),
('2','G10'),
('3','G01'),
('3','G03'),
('3','G06'),
('3','G07'),
('3','G08'),
('3','G09'),
('4','G02'),
('4','G03'),
('4','G04'),
('4','G05'),
('4','G06'),
('4','G07'),
('4','G08'),
('4','G10'),
('5','G03'),
('5','G07'),
('5','G09'),
('5','G10'),
('10','G03'),
('10','G08'),
('10','G10'),
('13','G01'),
('13','G05'),
('13','G10'),
('14','G01'),
('16','G05'),
('16','G06'),
('16','G09');

/*Table structure for table `tblgangguan` */

DROP TABLE IF EXISTS `tblgangguan`;

CREATE TABLE `tblgangguan` (
  `idgangguan` varchar(5) NOT NULL,
  `namagangguan` varchar(60) NOT NULL,
  PRIMARY KEY (`idgangguan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblgangguan` */

insert  into `tblgangguan`(`idgangguan`,`namagangguan`) values 
('P1','Ginjal');

/*Table structure for table `tblgangguanterapi` */

DROP TABLE IF EXISTS `tblgangguanterapi`;

CREATE TABLE `tblgangguanterapi` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idgangguan` varchar(5) NOT NULL,
  `idterapi` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `tblgangguanterapi` */

insert  into `tblgangguanterapi`(`id`,`idgangguan`,`idterapi`) values 
(1,'P1','S1'),
(2,'P1','S2'),
(3,'P1','S3'),
(4,'P1','S4'),
(5,'P1','S5');

/*Table structure for table `tblgejala` */

DROP TABLE IF EXISTS `tblgejala`;

CREATE TABLE `tblgejala` (
  `idgejala` varchar(5) NOT NULL,
  `namagejala` varchar(150) NOT NULL,
  `persen` int(5) NOT NULL,
  PRIMARY KEY (`idgejala`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblgejala` */

insert  into `tblgejala`(`idgejala`,`namagejala`,`persen`) values 
('G01','Terdapat pembengkakan pada mata atau kaki',10),
('G02','Nyeri di pinggang sangat hebat',30),
('G03','Urin berbuih',10),
('G04','Kencing yang sedikit',5),
('G05','Mengalami kencing merah atau kencing darah',20),
('G06','Sering buang air kecil',5),
('G07','Memiliki kulit kering dan gatal',5),
('G08','Lemas dan tidak bertenaga',3),
('G09','Nyeri Saat Berkemih',10),
('G10','Sesak nafas',2);

/*Table structure for table `tblgejalagangguan` */

DROP TABLE IF EXISTS `tblgejalagangguan`;

CREATE TABLE `tblgejalagangguan` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idgejala` varchar(5) NOT NULL,
  `idgangguan` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `tblgejalagangguan` */

insert  into `tblgejalagangguan`(`id`,`idgejala`,`idgangguan`) values 
(2,'G02','P1'),
(3,'G03','P1'),
(4,'G04','P1'),
(5,'G05','P1'),
(6,'G06','P1'),
(7,'G07','P1'),
(8,'G08','P1'),
(9,'G09','P1'),
(10,'G10','P1'),
(11,'G11','P1');

/*Table structure for table `tblkonsultasi` */

DROP TABLE IF EXISTS `tblkonsultasi`;

CREATE TABLE `tblkonsultasi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tgl` varchar(10) NOT NULL,
  `id_pasien` varchar(9) NOT NULL,
  `id_gangguan` varchar(9) NOT NULL,
  `persen` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tblkonsultasi` */

insert  into `tblkonsultasi`(`id`,`tgl`,`id_pasien`,`id_gangguan`,`persen`) values 
(3,'09/03/2017','dodi','P01',43),
(4,'06/05/2019','ahh','P01',80),
(5,'06/05/2019','badboi','P01',27);

/*Table structure for table `tblterapi` */

DROP TABLE IF EXISTS `tblterapi`;

CREATE TABLE `tblterapi` (
  `idterapi` varchar(5) NOT NULL,
  `keteranganterapi` text NOT NULL,
  PRIMARY KEY (`idterapi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tblterapi` */

insert  into `tblterapi`(`idterapi`,`keteranganterapi`) values 
('S1','Penderita yang mengalami gagal ginjal harus menjalani cuci darah atau dialisis dengan mesin yang menggantikan fungsi ginjal.'),
('S2','Mengurangi makanan yang mengandung garam. garam adalah salah satu jenis makanan dengan kandungan natrium yang tinggi. Natrium yang tinggi bukan hanya bisa menyebabkan tekanan darah, namun juga akan memicu terjadinya proses pembentukan batu ginjal.'),
('S3','Operasi merupakan salah satu metode pengobatan yang efektif untuk penderita ginjal.'),
('S4','Menggunakan obat berbahan kimia, memang dapat membunuh sel kanker, dapat menghambat pertumbuhan sel tumor dan reproduksi, akan tetapi, penggunaan obat yang berbahan kimia juga dapat menurunkan kekebalan tubuh pasien, sel-sel jaringan yang normal menjadi rusak, sehingga banyak pasien kanker yang menjadi resisten terhadap pengobatan kemoterapi.'),
('S5','Alternatif Alami:<br><br>\r\n1.	Daun keji beling ditumbuk halus dan daun kumis kucing serta daun meniran dicabut dengan akarnya<br>\r\n    Caranya: Rebuslah semua bahan dengan air sebanyak 1 liter. Biarkan hingga air tinggal separuhnya. Kemudian saring, minumlah setiap hari secara teratur selamalima hari berturut turut.<br>\r\n2. Daun alpukat segar dan Air panas<br>\r\n   Caranya: Daun alpukat yang sudah dicuci bersih dimasukan ke dalam gelas, kemudian seduh dengan air panas. Minumlah ramuan tersebut 2 kali sehari dan ingat ramuan ini cuma sekali minum.<br>\r\n3.	Daun meniran, Daun ungu, Daun arbei,Daun duduk, Daun kumis kucing, Daun sendokan,Daun ngikilo.<br>\r\n    Caranya: Cuci bersih semua bahan, kemudian rebus sampai benar benar mendidih. Saring dan biarkan sampai airnya hangat. Minumlah ramuan ini secara teratur.<br>\r\n4.	Pucuk daun keji beling, Rambut jagung muda, Temulawak diiris tipis, Daun kumis kucing, Gula merah, Garam dapur<br>\r\n    Caranya: Rebus pucuk daun keji beling, temulawak,rambut jagung,  kumis kucing. Biarkan sampai mendidih. Kemudian tambahkan gula merah dan garam secukupnya. Setelah dingin minumlah 3 kali sehari secara rutin.\r\n');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `umur` varchar(4) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`password`,`nama_lengkap`,`umur`,`jk`,`level`) values 
('admin','21232f297a57a5a743894a0e4a801fc3','Administrator','25','','admin'),
('zlxx','4fded1464736e77865df232cbcb4cd19','zl','18','Laki-laki','user'),
('dodi','dc82a0e0107a31ba5d137a47ab09a26b','dodi','35','Laki-laki','user'),
('ahh','be97edab9d08c80db8111360d744fa0a','ferguso','10','Laki-laki','user'),
('badboi','964fe6242ca987d24f0fdfd851983c68','zel','20','Laki-laki','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
