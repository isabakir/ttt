-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 22 Eki 2020, 00:11:09
-- Sunucu sürümü: 5.6.37
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mar10dse_marsel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_turkish_ci NOT NULL,
  `is_slider` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `picture` text COLLATE utf8_turkish_ci,
  `link` text COLLATE utf8_turkish_ci,
  `text1` text COLLATE utf8_turkish_ci,
  `text2` text COLLATE utf8_turkish_ci,
  `text3` text COLLATE utf8_turkish_ci,
  `text4` text COLLATE utf8_turkish_ci,
  `text5` text COLLATE utf8_turkish_ci,
  `button_name` text COLLATE utf8_turkish_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `name`, `is_slider`, `picture`, `link`, `text1`, `text2`, `text3`, `text4`, `text5`, `button_name`) VALUES
(1, 'slider1', '1', 'resimler/anasayfa/slide-02.jpg', '#', 'Marselselimiyee', 'Kış Sezonu', 'Yeni ürünler', '%70', 'indirimli', ''),
(2, 'slider2', '1', 'resimler/anasayfa/slide-01.jpg', '#', 'Marsel', 'New Collection', 'Womens Fashion', '%70', '', NULL),
(3, 'slider3', '1', 'resimler/anasayfa/slide-03.jpg', '#', 'Street', 'Fashion', 'And', 'Urban', 'Subcultures', 'SHOP NOW'),
(4, 'slider4', '1', 'resimler/anasayfa/slide-04.jpg', '#', 'Summer', 'Very Soon', ' Things to buy a swimsuit at a discount', '', '', 'SHOP NOW');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categorys`
--

CREATE TABLE `categorys` (
  `category_id` int(11) NOT NULL,
  `category_name` text COLLATE utf8_turkish_ci,
  `category_master_id` text COLLATE utf8_turkish_ci,
  `category_is_collection` text COLLATE utf8_turkish_ci,
  `category_is_main` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `category_picture` text COLLATE utf8_turkish_ci,
  `category_index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_master_id`, `category_is_collection`, `category_is_main`, `category_picture`, `category_index`) VALUES
(29, 'KADIN', '0', '0', '1', 'resimler/categorys/uzun', 1),
(31, 'ÇANTA', '0', '0', '1', 'resimler/categorys/ÇANTA.jpg', 3),
(34, 'AKSESUAR', '0', '0', '1', 'resimler/categorys/AKSESUAR2.jpg', 2),
(38, 'ERKEK', '0', '0', '1', 'resimler/categorys/ERKEK1.png', 4),
(39, 'EV & TEKNE', '0', '0', '1', 'resimler/categorys/EVTEKNE.jpg', 5),
(40, 'EDİTÖRÜN SEÇTİKLERİ', '0', '0', '1', 'resimler/categorys/EDİTOR.jpg', 6),
(41, 'KÜPE', '34', '0', '0', 'resimler/categorys/HONEYBEE.jpg', 2),
(42, 'KOLYE ', '34', '0', '0', 'resimler/categorys/ON-AY008_01.jpg', 1),
(43, 'YÜZÜK', '34', '0', '0', 'resimler/categorys/IMG_5369.JPG', NULL),
(44, 'BİLEZİK', '34', '0', '0', 'resimler/categorys/ON-AY039_02.jpg', NULL),
(46, 'BİLEKLİK ', '34', '0', '0', 'resimler/categorys/IMG_8058.jpg', NULL),
(47, 'Bel Çantası', '31', '0', '0', 'resimler/categorys/siyahleopar4.jpg', NULL),
(48, 'KİMONO', '29', '0', '0', 'resimler/categorys/IMG_9996.JPG', 0),
(49, 'GÖMLEK', '29', '0', '0', 'resimler/categorys/IMG_1423.jpg', NULL),
(50, 'ŞAPKA', '34', '0', '0', 'resimler/categorys/IMG_9324.JPG', NULL),
(51, 'T- SHIRT', '29', '0', '0', 'resimler/categorys/IMG_1988.JPG', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` text COLLATE utf8_turkish_ci,
  `image_thumb` text COLLATE utf8_turkish_ci,
  `image_type` text COLLATE utf8_turkish_ci,
  `hide` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_url`, `image_thumb`, `image_type`, `hide`) VALUES
(6, 20, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(7, 20, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(8, 20, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(9, 20, 'resimler/products/tel.png', NULL, 'P', '0'),
(10, 21, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(11, 21, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(12, 21, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(13, 21, 'resimler/products/tel.png', NULL, 'P', '0'),
(14, 21, 'resimler/products/s', NULL, 'P', '0'),
(15, 21, 'resimler/products/a', NULL, 'P', '0'),
(16, 21, 'resimler/products/y', NULL, 'P', '0'),
(17, 21, 'resimler/products/d', NULL, 'P', '0'),
(18, 21, 'resimler/products/a', NULL, 'P', '0'),
(19, 22, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(20, 22, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(21, 22, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(22, 22, 'resimler/products/tel.png', NULL, 'P', '0'),
(23, 22, 'resimler/products/s', NULL, 'P', '0'),
(24, 22, 'resimler/products/a', NULL, 'P', '0'),
(25, 22, 'resimler/products/y', NULL, 'P', '0'),
(26, 22, 'resimler/products/d', NULL, 'P', '0'),
(27, 22, 'resimler/products/a', NULL, 'P', '0'),
(28, 23, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(29, 23, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(30, 23, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(31, 23, 'resimler/products/tel.png', NULL, 'P', '0'),
(32, 23, 'resimler/products/s', NULL, 'P', '0'),
(33, 23, 'resimler/products/a', NULL, 'P', '0'),
(34, 23, 'resimler/products/y', NULL, 'P', '0'),
(35, 23, 'resimler/products/d', NULL, 'P', '0'),
(36, 23, 'resimler/products/a', NULL, 'P', '0'),
(40, 24, 'resimler/products/tel.png', NULL, 'P', '0'),
(41, 25, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(42, 25, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(43, 25, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(44, 25, 'resimler/products/tel.png', NULL, 'P', '0'),
(45, 26, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(46, 26, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(47, 26, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(48, 26, 'resimler/products/tel.png', NULL, 'P', '0'),
(49, 27, 'resimler/products/mockup-son--(1).jpg', NULL, 'P', '0'),
(50, 27, 'resimler/products/mockup-son-.jpg', NULL, 'P', '0'),
(51, 27, 'resimler/products/stock-vector-shops-seamless-pattern-pink-color-vector-different-product-categories-1549929983.jpg', NULL, 'P', '0'),
(52, 27, 'resimler/products/tel.png', NULL, 'P', '0'),
(56, 28, 'resimler/products/tel.png', NULL, 'P', '0'),
(60, 29, 'resimler/products/logoheyal.jpg', NULL, 'P', '0'),
(61, 30, 'resimler/products/logoheyal.jpg', NULL, 'P', '0'),
(62, 31, 'resimler/products/logoheyal.jpg', NULL, 'P', '0'),
(63, 32, 'resimler/products/saydam.jpg', NULL, 'P', '0'),
(64, 33, 'resimler/products/saydam.jpg', NULL, 'P', '0'),
(65, 34, 'resimler/products/77045929_37-99999999_01-(1).png', NULL, 'P', '0'),
(66, 35, 'resimler/products/77045929_37-99999999_01-(1).png', NULL, 'P', '0'),
(67, 35, 'resimler/products/WhatsApp-Image-2020-10-12-at-11.18.18.jpeg', NULL, 'P', '0'),
(68, 36, 'resimler/products/d1bbc8d7-6f6c-417f-8d1e-5dc6301d10e2.jpg', NULL, 'P', '0'),
(69, 36, 'resimler/products/223d380a-0777-4797-a6f8-6b7688ca12e9.jpg', NULL, 'P', '0'),
(70, 36, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', NULL, 'P', '0'),
(71, 37, 'resimler/products/AylikPrimHesaplamasi-(8).xls', NULL, 'P', '0'),
(72, 37, 'resimler/products/d1bbc8d7-6f6c-417f-8d1e-5dc6301d10e2.jpg', NULL, 'P', '0'),
(73, 37, 'resimler/products/223d380a-0777-4797-a6f8-6b7688ca12e9.jpg', NULL, 'P', '0'),
(74, 37, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', NULL, 'P', '0'),
(75, 38, 'resimler/products/d1bbc8d7-6f6c-417f-8d1e-5dc6301d10e2.jpg', NULL, 'P', '0'),
(76, 38, 'resimler/products/223d380a-0777-4797-a6f8-6b7688ca12e9.jpg', NULL, 'P', '0'),
(77, 38, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', NULL, 'P', '0'),
(78, 39, 'resimler/products/AylikPrimHesaplamasi-(10).xls', NULL, 'P', '0'),
(79, 39, 'resimler/products/d1bbc8d7-6f6c-417f-8d1e-5dc6301d10e2.jpg', NULL, 'P', '0'),
(80, 39, 'resimler/products/223d380a-0777-4797-a6f8-6b7688ca12e9.jpg', NULL, 'P', '0'),
(81, 39, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', NULL, 'P', '0'),
(82, 40, 'resimler/products/ON-AY001_01.jpg', NULL, 'P', '0'),
(83, 40, 'resimler/products/ON-AY001.jpg', NULL, 'P', '0'),
(84, 41, 'resimler/products/ON-AY002_02.jpg', NULL, 'P', '0'),
(85, 41, 'resimler/products/ON-AY002.jpg', NULL, 'P', '0'),
(86, 42, 'resimler/products/ON-AY003.jpg', NULL, 'P', '0'),
(87, 43, 'resimler/products/ON-AY004.jpg', NULL, 'P', '0'),
(88, 44, 'resimler/products/ON-AY001_01.jpg', NULL, 'P', '0'),
(89, 44, 'resimler/products/ON-AY001.jpg', NULL, 'P', '0'),
(90, 45, 'resimler/products/ON-AY024.jpg', NULL, 'P', '0'),
(91, 45, 'resimler/products/ON-AY024_01.jpg', NULL, 'P', '0'),
(92, 46, 'resimler/products/ON-AY025.jpg', NULL, 'P', '0'),
(93, 46, 'resimler/products/ON-AY025_01.jpg', NULL, 'P', '0'),
(94, 47, 'resimler/products/ON-AY001_01.jpg', NULL, 'P', '0'),
(95, 47, 'resimler/products/ON-AY001.jpg', NULL, 'P', '0'),
(96, 48, 'resimler/products/ON-AY024.jpg', NULL, 'P', '0'),
(97, 48, 'resimler/products/ON-AY024_01.jpg', NULL, 'P', '0'),
(98, 49, 'resimler/products/ON-AY001_01.jpg', NULL, 'P', '0'),
(99, 49, 'resimler/products/ON-AY001.jpg', NULL, 'P', '0'),
(100, 50, 'resimler/products/ON-AY002_02.jpg', NULL, 'P', '0'),
(101, 50, 'resimler/products/ON-AY002.jpg', NULL, 'P', '0'),
(102, 51, 'resimler/products/ON-AY027.jpg', NULL, 'P', '0'),
(103, 51, 'resimler/products/ON-AY027_01.jpg', NULL, 'P', '0'),
(104, 52, 'resimler/products/ON-AY003.jpg', NULL, 'P', '0'),
(105, 53, 'resimler/products/ON-AY004.jpg', NULL, 'P', '0'),
(106, 54, 'resimler/products/ON-AY005_01.jpg', NULL, 'P', '0'),
(107, 54, 'resimler/products/ON-AY005.jpg', NULL, 'P', '0'),
(108, 55, 'resimler/products/ON-AY028.jpg', NULL, 'P', '0'),
(109, 55, 'resimler/products/ON-AY028_01.jpg', NULL, 'P', '0'),
(110, 56, 'resimler/products/ON-AY006.jpg', NULL, 'P', '0'),
(111, 56, 'resimler/products/ON-AY006_01.jpg', NULL, 'P', '0'),
(112, 57, 'resimler/products/ON-AY029.jpg', NULL, 'P', '0'),
(113, 57, 'resimler/products/ON-AY029_01.jpg', NULL, 'P', '0'),
(114, 58, 'resimler/products/ON-AY040.jpg', NULL, 'P', '0'),
(115, 59, 'resimler/products/ON-AY030.jpg', NULL, 'P', '0'),
(116, 59, 'resimler/products/ON-AY030_01.jpg', NULL, 'P', '0'),
(117, 60, 'resimler/products/ON-AY041_01.jpg', NULL, 'P', '0'),
(118, 60, 'resimler/products/ON-AY041_02.jpg', NULL, 'P', '0'),
(119, 61, 'resimler/products/ON-AY042.jpg', NULL, 'P', '0'),
(120, 62, 'resimler/products/ON-AY050_01.jpg', NULL, 'P', '0'),
(121, 62, 'resimler/products/ON-AY050_02.jpg', NULL, 'P', '0'),
(122, 63, 'resimler/products/ON-AY046.jpg', NULL, 'P', '0'),
(123, 64, 'resimler/products/ON-AY048.jpg', NULL, 'P', '0'),
(124, 65, 'resimler/products/ON-AY052.jpg', NULL, 'P', '0'),
(125, 66, 'resimler/products/ON-AY060.jpg', NULL, 'P', '0'),
(126, 66, 'resimler/products/ON-AY060_01.jpg', NULL, 'P', '0'),
(127, 67, 'resimler/products/ON-AY054_01.jpg', NULL, 'P', '0'),
(128, 67, 'resimler/products/ON-AY054_02.jpg', NULL, 'P', '0'),
(129, 68, 'resimler/products/ON-AY061.jpg', NULL, 'P', '0'),
(130, 68, 'resimler/products/ON-AY061_02.jpg', NULL, 'P', '0'),
(131, 69, 'resimler/products/ON-AY056.jpg', NULL, 'P', '0'),
(132, 69, 'resimler/products/ON-AY056_01.jpg', NULL, 'P', '0'),
(133, 69, 'resimler/products/ON-AY056_02.jpg', NULL, 'P', '0'),
(134, 70, 'resimler/products/ON-AY062.jpg', NULL, 'P', '0'),
(135, 71, 'resimler/products/ON-AY063.jpg', NULL, 'P', '0'),
(136, 71, 'resimler/products/ON-AY063_01.jpg', NULL, 'P', '0'),
(137, 72, 'resimler/products/ON-AY064.jpg', NULL, 'P', '0'),
(138, 73, 'resimler/products/ON-AY058.jpg', NULL, 'P', '0'),
(139, 73, 'resimler/products/ON-AY058_01.jpg', NULL, 'P', '0'),
(140, 74, 'resimler/products/ON-AY065.jpg', NULL, 'P', '0'),
(141, 74, 'resimler/products/ON-AY065_01.jpg', NULL, 'P', '0'),
(142, 75, 'resimler/products/ON-AY066.jpg', NULL, 'P', '0'),
(143, 76, 'resimler/products/ON-AY069.jpg', NULL, 'P', '0'),
(144, 77, 'resimler/products/ON-AY067.jpg', NULL, 'P', '0'),
(145, 77, 'resimler/products/ON-AY067_01.jpg', NULL, 'P', '0'),
(146, 78, 'resimler/products/ON-AY070.jpg', NULL, 'P', '0'),
(147, 79, 'resimler/products/ON-AY068.jpg', NULL, 'P', '0'),
(148, 80, 'resimler/products/ON-AY071.jpg', NULL, 'P', '0'),
(149, 80, 'resimler/products/ON-AY071_01.jpg', NULL, 'P', '0'),
(150, 81, 'resimler/products/ON-AY072.jpg', NULL, 'P', '0'),
(151, 81, 'resimler/products/ON-AY072_01.jpg', NULL, 'P', '0'),
(152, 82, 'resimler/products/ON-AY007_01.jpg', NULL, 'P', '0'),
(153, 83, 'resimler/products/ON-AY073.jpg', NULL, 'P', '0'),
(154, 83, 'resimler/products/ON-AY073_01.jpg', NULL, 'P', '0'),
(155, 84, 'resimler/products/ON-AY043.jpg', NULL, 'P', '0'),
(156, 85, 'resimler/products/ON-AY008.jpg', NULL, 'P', '0'),
(157, 85, 'resimler/products/ON-AY008_01.jpg', NULL, 'P', '0'),
(158, 86, 'resimler/products/ON-AY009.jpg', NULL, 'P', '0'),
(159, 87, 'resimler/products/ON-AY010.jpg', NULL, 'P', '0'),
(160, 87, 'resimler/products/ON-AY010_02.jpg', NULL, 'P', '0'),
(161, 87, 'resimler/products/ON-AY010_01.jpg', NULL, 'P', '0'),
(162, 88, 'resimler/products/ON-AY011.jpg', NULL, 'P', '0'),
(163, 88, 'resimler/products/ON-AY011_01.jpg', NULL, 'P', '0'),
(164, 89, 'resimler/products/ON-AY047.jpg', NULL, 'P', '0'),
(165, 89, 'resimler/products/ON-AY047_01.jpg', NULL, 'P', '0'),
(166, 89, 'resimler/products/ON-AY047_02.jpg', NULL, 'P', '0'),
(167, 90, 'resimler/products/ON-AY012.jpg', NULL, 'P', '0'),
(168, 90, 'resimler/products/ON-AY012_01.jpg', NULL, 'P', '0'),
(169, 91, 'resimler/products/ON-AY026.jpg', NULL, 'P', '0'),
(170, 91, 'resimler/products/ON-AY026_01.jpg', NULL, 'P', '0'),
(171, 92, 'resimler/products/ON-AY049.jpg', NULL, 'P', '0'),
(172, 92, 'resimler/products/ON-AY049_01.jpg', NULL, 'P', '0'),
(173, 93, 'resimler/products/ON-AY031.jpg', NULL, 'P', '0'),
(174, 94, 'resimler/products/ON-AY051.jpg', NULL, 'P', '0'),
(175, 94, 'resimler/products/ON-AY051_01.jpg', NULL, 'P', '0'),
(176, 95, 'resimler/products/ON-AY053.jpg', NULL, 'P', '0'),
(177, 96, 'resimler/products/ON-AY055.jpg', NULL, 'P', '0'),
(178, 96, 'resimler/products/ON-AY055_01.jpg', NULL, 'P', '0'),
(179, 97, 'resimler/products/ON-AY057.jpg', NULL, 'P', '0'),
(180, 97, 'resimler/products/ON-AY057_01.jpg', NULL, 'P', '0'),
(181, 97, 'resimler/products/ON-AY057_02.jpg', NULL, 'P', '0'),
(182, 98, 'resimler/products/ON-AY019.jpg', NULL, 'P', '0'),
(183, 98, 'resimler/products/ON-AY019_01.jpg', NULL, 'P', '0'),
(184, 99, 'resimler/products/ON-AY020.jpg', NULL, 'P', '0'),
(185, 99, 'resimler/products/ON-AY020_01.jpg', NULL, 'P', '0'),
(186, 100, 'resimler/products/ON-AY032.jpg', NULL, 'P', '0'),
(187, 100, 'resimler/products/ON-AY032_01.jpg', NULL, 'P', '0'),
(188, 101, 'resimler/products/ON-AY021.jpg', NULL, 'P', '0'),
(189, 101, 'resimler/products/ON-AY021_01.jpg', NULL, 'P', '0'),
(190, 102, 'resimler/products/ON-AY033.jpg', NULL, 'P', '0'),
(191, 103, 'resimler/products/ON-AY022.jpg', NULL, 'P', '0'),
(192, 103, 'resimler/products/ON-AY022_01.jpg', NULL, 'P', '0'),
(193, 104, 'resimler/products/ON-AY034.jpg', NULL, 'P', '0'),
(194, 105, 'resimler/products/ON-AY013.jpg', NULL, 'P', '0'),
(195, 105, 'resimler/products/ON-AY013_01.jpg', NULL, 'P', '0'),
(196, 106, 'resimler/products/ON-AY023.jpg', NULL, 'P', '0'),
(197, 106, 'resimler/products/ON-AY023_01.jpg', NULL, 'P', '0'),
(198, 107, 'resimler/products/ON-AY014.jpg', NULL, 'P', '0'),
(199, 107, 'resimler/products/ON-AY014_01.jpg', NULL, 'P', '0'),
(200, 108, 'resimler/products/ON-AY015.jpg', NULL, 'P', '0'),
(201, 109, 'resimler/products/ON-AY037.jpg', NULL, 'P', '0'),
(202, 109, 'resimler/products/ON-AY037_01.jpg', NULL, 'P', '0'),
(203, 110, 'resimler/products/ON-AY016.jpg', NULL, 'P', '0'),
(204, 111, 'resimler/products/ON-AY038.jpg', NULL, 'P', '0'),
(205, 111, 'resimler/products/ON-AY038_01.jpg', NULL, 'P', '0'),
(206, 111, 'resimler/products/ON-AY038_02.jpg', NULL, 'P', '0'),
(207, 112, 'resimler/products/ON-AY017.jpg', NULL, 'P', '0'),
(208, 112, 'resimler/products/ON-AY017_01.jpg', NULL, 'P', '0'),
(209, 113, 'resimler/products/ON-AY018.jpg', NULL, 'P', '0'),
(210, 113, 'resimler/products/ON-AY018_01.jpg', NULL, 'P', '0'),
(211, 114, 'resimler/products/ON-AY039.jpg', NULL, 'P', '0'),
(212, 114, 'resimler/products/ON-AY039_01.jpg', NULL, 'P', '0'),
(213, 114, 'resimler/products/ON-AY039_02.jpg', NULL, 'P', '0'),
(214, 114, 'resimler/products/ON-AY039_03.jpg', NULL, 'P', '0'),
(215, 115, 'resimler/products/ON-AY035.jpg', NULL, 'P', '0'),
(216, 115, 'resimler/products/ON-AY035_01.jpg', NULL, 'P', '0'),
(217, 116, 'resimler/products/ON-AY036.jpg', NULL, 'P', '0'),
(218, 117, 'resimler/products/ON-AY045.jpg', NULL, 'P', '0'),
(219, 117, 'resimler/products/ON-AY045_01.jpg', NULL, 'P', '0'),
(220, 118, 'resimler/products/ON-AY044.jpg', NULL, 'P', '0'),
(221, 119, 'resimler/products/ON-AY017.jpg', NULL, 'P', '0'),
(222, 119, 'resimler/products/ON-AY017_01.jpg', NULL, 'P', '0'),
(223, 120, 'resimler/products/ON-AY059.jpg', NULL, 'P', '0'),
(224, 120, 'resimler/products/ON-AY059_02.jpg', NULL, 'P', '0'),
(225, 121, 'resimler/products/ON-AY007.jpg', NULL, 'P', '0'),
(226, 121, 'resimler/products/ON-AY007_01.jpg', NULL, 'P', '0'),
(227, 121, 'resimler/products/ON-AY007_02.jpg', NULL, 'P', '0'),
(228, 122, 'resimler/products/ON-AY034.jpg', NULL, 'P', '0'),
(229, 123, 'resimler/products/ON-AY032.jpg', NULL, 'P', '0'),
(230, 123, 'resimler/products/ON-AY032_01.jpg', NULL, 'P', '0'),
(231, 124, 'resimler/products/IMG_1921.jpg', NULL, 'P', '0'),
(232, 125, 'resimler/products/IMG_1917.jpg', NULL, 'P', '0'),
(233, 126, 'resimler/products/IMG_1925.jpg', NULL, 'P', '0'),
(234, 127, 'resimler/products/IMG_1931.jpg', NULL, 'P', '0'),
(235, 128, 'resimler/products/IMG_1932.jpg', NULL, 'P', '0'),
(236, 129, 'resimler/products/IMG_1934.jpg', NULL, 'P', '0'),
(237, 130, 'resimler/products/IMG_9606.jpg', NULL, 'P', '0'),
(238, 131, 'resimler/products/IMG_9613.jpg', NULL, 'P', '0'),
(239, 132, 'resimler/products/IMG_1923.jpg', NULL, 'P', '0'),
(240, 133, 'resimler/products/IMG_1911.jpg', NULL, 'P', '0'),
(241, 134, 'resimler/products/IMG_1914.jpg', NULL, 'P', '0'),
(242, 135, 'resimler/products/IMG_1913.jpg', NULL, 'P', '0'),
(243, 136, 'resimler/products/IMG_1912.jpg', NULL, 'P', '0'),
(244, 137, 'resimler/products/IMG_1935.jpg', NULL, 'P', '0'),
(245, 138, 'resimler/products/IMG_1942.jpg', NULL, 'P', '0'),
(246, 139, 'resimler/products/IMG_1943.jpg', NULL, 'P', '0'),
(247, 140, 'resimler/products/IMG_1946.jpg', NULL, 'P', '0'),
(248, 141, 'resimler/products/IMG_1947.jpg', NULL, 'P', '0'),
(249, 142, 'resimler/products/IMG_1948.jpg', NULL, 'P', '0'),
(250, 143, 'resimler/products/IMG_1950.jpg', NULL, 'P', '0'),
(251, 144, 'resimler/products/IMG_1951.jpg', NULL, 'P', '0'),
(252, 145, 'resimler/products/IMG_1952.jpg', NULL, 'P', '0'),
(253, 146, 'resimler/products/IMG_1951.jpg', NULL, 'P', '0'),
(254, 147, 'resimler/products/IMG_1946.jpg', NULL, 'P', '0'),
(255, 148, 'resimler/products/IMG_1957.jpg', NULL, 'P', '0'),
(256, 149, 'resimler/products/IMG_1959.jpg', NULL, 'P', '0'),
(257, 150, 'resimler/products/IMG_1960.jpg', NULL, 'P', '0'),
(258, 151, 'resimler/products/IMG_8057.jpg', NULL, 'P', '0'),
(259, 151, 'resimler/products/IMG_8058.jpg', NULL, 'P', '0'),
(260, 152, 'resimler/products/IMG_8059.jpg', NULL, 'P', '0'),
(261, 152, 'resimler/products/IMG_8060.jpg', NULL, 'P', '0'),
(262, 153, 'resimler/products/IMG_8061.jpg', NULL, 'P', '0'),
(263, 153, 'resimler/products/IMG_8062.jpg', NULL, 'P', '0'),
(264, 154, 'resimler/products/IMG_8063.jpg', NULL, 'P', '0'),
(265, 154, 'resimler/products/IMG_8064.jpg', NULL, 'P', '0'),
(266, 155, 'resimler/products/IMG_9958.jpg', NULL, 'P', '0'),
(267, 155, 'resimler/products/IMG_9959.jpg', NULL, 'P', '0'),
(268, 156, 'resimler/products/IMG_9158.jpg', NULL, 'P', '0'),
(269, 156, 'resimler/products/IMG_9159.jpg', NULL, 'P', '0'),
(270, 156, 'resimler/products/IMG_9160.jpg', NULL, 'P', '0'),
(271, 157, 'resimler/products/IMG_7557.jpg', NULL, 'P', '0'),
(272, 157, 'resimler/products/IMG_7558.jpg', NULL, 'P', '0'),
(273, 157, 'resimler/products/IMG_7559.jpg', NULL, 'P', '0'),
(274, 158, 'resimler/products/IMG_7613.jpg', NULL, 'P', '0'),
(275, 159, 'resimler/products/IMG_9565.jpg', NULL, 'P', '0'),
(276, 159, 'resimler/products/IMG_9568.jpg', NULL, 'P', '0'),
(277, 160, 'resimler/products/IMG_9573.jpg', NULL, 'P', '0'),
(278, 160, 'resimler/products/IMG_9569.jpg', NULL, 'P', '0'),
(279, 161, 'resimler/products/IMG_9574.jpg', NULL, 'P', '0'),
(280, 161, 'resimler/products/IMG_9576.jpg', NULL, 'P', '0'),
(281, 162, 'resimler/products/IMG_9577.jpg', NULL, 'P', '0'),
(282, 162, 'resimler/products/IMG_9580.jpg', NULL, 'P', '0'),
(283, 163, 'resimler/products/IMG_9582.jpg', NULL, 'P', '0'),
(284, 163, 'resimler/products/IMG_9585.jpg', NULL, 'P', '0'),
(285, 164, 'resimler/products/IMG_9586.jpg', NULL, 'P', '0'),
(286, 164, 'resimler/products/IMG_9589.jpg', NULL, 'P', '0'),
(287, 165, 'resimler/products/IMG_9591.jpg', NULL, 'P', '0'),
(288, 165, 'resimler/products/IMG_9594.jpg', NULL, 'P', '0'),
(289, 166, 'resimler/products/IMG_9917.jpg', NULL, 'P', '0'),
(290, 166, 'resimler/products/IMG_9916.jpg', NULL, 'P', '0'),
(291, 167, 'resimler/products/IMG_9919.jpg', NULL, 'P', '0'),
(292, 167, 'resimler/products/IMG_9918.jpg', NULL, 'P', '0'),
(293, 168, 'resimler/products/IMG_9920.jpg', NULL, 'P', '0'),
(294, 168, 'resimler/products/IMG_9921.jpg', NULL, 'P', '0'),
(295, 169, 'resimler/products/IMG_9923.jpg', NULL, 'P', '0'),
(296, 169, 'resimler/products/IMG_9922.jpg', NULL, 'P', '0'),
(297, 170, 'resimler/products/IMG_9925.jpg', NULL, 'P', '0'),
(298, 170, 'resimler/products/IMG_9924.jpg', NULL, 'P', '0'),
(299, 171, 'resimler/products/IMG_9927.jpg', NULL, 'P', '0'),
(300, 171, 'resimler/products/IMG_9926.jpg', NULL, 'P', '0'),
(301, 172, 'resimler/products/IMG_9928.jpg', NULL, 'P', '0'),
(302, 172, 'resimler/products/IMG_9929.jpg', NULL, 'P', '0'),
(303, 173, 'resimler/products/IMG_9931.jpg', NULL, 'P', '0'),
(304, 173, 'resimler/products/IMG_9930.jpg', NULL, 'P', '0'),
(305, 174, 'resimler/products/IMG_9941.jpg', NULL, 'P', '0'),
(306, 174, 'resimler/products/IMG_9942.jpg', NULL, 'P', '0'),
(307, 175, 'resimler/products/IMG_9943.jpg', NULL, 'P', '0'),
(308, 175, 'resimler/products/IMG_9944.jpg', NULL, 'P', '0'),
(309, 176, 'resimler/products/IMG_9945.jpg', NULL, 'P', '0'),
(310, 176, 'resimler/products/IMG_9946.jpg', NULL, 'P', '0'),
(311, 177, 'resimler/products/IMG_9947.jpg', NULL, 'P', '0'),
(312, 177, 'resimler/products/IMG_9948.jpg', NULL, 'P', '0'),
(313, 178, 'resimler/products/IMG_9997.jpg', NULL, 'P', '0'),
(314, 179, 'resimler/products/IMG_9985.jpg', NULL, 'P', '0'),
(315, 180, 'resimler/products/IMG_9979.jpg', NULL, 'P', '0'),
(316, 181, 'resimler/products/IMG_9990.jpg', NULL, 'P', '0'),
(317, 182, 'resimler/products/IMG_9990.jpg', NULL, 'P', '0'),
(318, 183, 'resimler/products/IMG_1208.jpg', NULL, 'P', '0'),
(319, 183, 'resimler/products/IMG_1210.jpg', NULL, 'P', '0'),
(320, 184, 'resimler/products/IMG_1213.jpg', NULL, 'P', '0'),
(321, 184, 'resimler/products/IMG_1215.jpg', NULL, 'P', '0'),
(322, 185, 'resimler/products/IMG_0722.jpg', NULL, 'P', '0'),
(323, 185, 'resimler/products/IMG_0723.jpg', NULL, 'P', '0'),
(324, 186, 'resimler/products/IMG_0724.jpg', NULL, 'P', '0'),
(325, 186, 'resimler/products/IMG_0727.jpg', NULL, 'P', '0'),
(326, 187, 'resimler/products/IMG_0735.jpg', NULL, 'P', '0'),
(327, 187, 'resimler/products/IMG_0733.jpg', NULL, 'P', '0'),
(328, 187, 'resimler/products/IMG_0731.jpg', NULL, 'P', '0'),
(329, 188, 'resimler/products/IMG_0737.jpg', NULL, 'P', '0'),
(330, 188, 'resimler/products/IMG_0738.jpg', NULL, 'P', '0'),
(331, 188, 'resimler/products/IMG_0736.jpg', NULL, 'P', '0'),
(332, 189, 'resimler/products/IMG_0711.jpg', NULL, 'P', '0'),
(333, 189, 'resimler/products/IMG_0709.jpg', NULL, 'P', '0'),
(334, 190, 'resimler/products/IMG_1953.jpg', NULL, 'P', '0'),
(335, 191, 'resimler/products/IMG_1913.jpg', NULL, 'P', '0'),
(336, 192, 'resimler/products/IMG_0047.jpg', NULL, 'P', '0'),
(337, 193, 'resimler/products/IMG_0034.jpg', NULL, 'P', '0'),
(338, 194, 'resimler/products/IMG_0033.jpg', NULL, 'P', '0'),
(339, 195, 'resimler/products/IMG_0035.jpg', NULL, 'P', '0'),
(340, 196, 'resimler/products/IMG_0031.jpg', NULL, 'P', '0'),
(341, 197, 'resimler/products/IMG_2110.jpg', NULL, 'P', '0'),
(342, 198, 'resimler/products/IMG_9104.jpg', NULL, 'P', '0'),
(343, 198, 'resimler/products/IMG_9107.jpg', NULL, 'P', '0'),
(344, 199, 'resimler/products/IMG_9109.jpg', NULL, 'P', '0'),
(345, 199, 'resimler/products/IMG_9111.jpg', NULL, 'P', '0'),
(346, 200, 'resimler/products/IMG_1937.jpg', NULL, 'P', '0'),
(347, 200, 'resimler/products/IMG_9945.jpg', NULL, 'P', '0'),
(348, 201, 'resimler/products/IMG_9942.jpg', NULL, 'P', '0'),
(349, 201, 'resimler/products/IMG_1940.jpg', NULL, 'P', '0'),
(350, 202, 'resimler/products/IMG_1938.jpg', NULL, 'P', '0'),
(351, 202, 'resimler/products/IMG_9943.jpg', NULL, 'P', '0'),
(352, 203, 'resimler/products/IMG_9121.jpg', NULL, 'P', '0'),
(353, 203, 'resimler/products/IMG_9123.jpg', NULL, 'P', '0'),
(354, 204, 'resimler/products/IMG_9133.jpg', NULL, 'P', '0'),
(355, 204, 'resimler/products/IMG_9135.jpg', NULL, 'P', '0'),
(356, 205, 'resimler/products/IMG_9130.jpg', NULL, 'P', '0'),
(357, 205, 'resimler/products/IMG_9133.jpg', NULL, 'P', '0'),
(358, 206, 'resimler/products/IMG_9135.jpg', NULL, 'P', '0'),
(359, 206, 'resimler/products/IMG_9136.jpg', NULL, 'P', '0'),
(360, 207, 'resimler/products/IMG_9139.jpg', NULL, 'P', '0'),
(361, 207, 'resimler/products/IMG_9141.jpg', NULL, 'P', '0'),
(362, 208, 'resimler/products/IMG_0085.jpg', NULL, 'P', '0'),
(363, 208, 'resimler/products/IMG_0084.jpg', NULL, 'P', '0'),
(364, 209, 'resimler/products/IMG_0324.jpg', NULL, 'P', '0'),
(365, 209, 'resimler/products/IMG_0322.jpg', NULL, 'P', '0'),
(366, 210, 'resimler/products/IMG_2181.jpg', NULL, 'P', '0'),
(367, 211, 'resimler/products/IMG_2183.jpg', NULL, 'P', '0'),
(368, 212, 'resimler/products/IMG_0080.jpg', NULL, 'P', '0'),
(369, 213, 'resimler/products/IMG_0078.jpg', NULL, 'P', '0'),
(370, 214, 'resimler/products/IMG_0101.jpg', NULL, 'P', '0'),
(371, 215, 'resimler/products/IMG_0104.jpg', NULL, 'P', '0'),
(372, 216, 'resimler/products/IMG_0325.jpg', NULL, 'P', '0'),
(373, 216, 'resimler/products/IMG_0327.jpg', NULL, 'P', '0'),
(374, 217, 'resimler/products/IMG_0028.jpg', NULL, 'P', '0'),
(375, 217, 'resimler/products/IMG_0029.jpg', NULL, 'P', '0'),
(376, 218, 'resimler/products/IMG_2100.jpg', NULL, 'P', '0'),
(377, 219, 'resimler/products/IMG_0048.jpg', NULL, 'P', '0'),
(378, 219, 'resimler/products/IMG_0047.jpg', NULL, 'P', '0'),
(379, 220, 'resimler/products/IMG_2102.jpg', NULL, 'P', '0'),
(380, 221, 'resimler/products/IMG_2103.jpg', NULL, 'P', '0'),
(381, 222, 'resimler/products/IMG_2104.jpg', NULL, 'P', '0'),
(382, 223, 'resimler/products/IMG_2106.jpg', NULL, 'P', '0'),
(383, 224, 'resimler/products/IMG_2105.jpg', NULL, 'P', '0'),
(384, 225, 'resimler/products/IMG_0050.jpg', NULL, 'P', '0'),
(385, 225, 'resimler/products/IMG_0051.jpg', NULL, 'P', '0'),
(386, 226, 'resimler/products/IMG_0054.jpg', NULL, 'P', '0'),
(387, 226, 'resimler/products/IMG_0052.jpg', NULL, 'P', '0'),
(388, 227, 'resimler/products/IMG_0055.jpg', NULL, 'P', '0'),
(389, 227, 'resimler/products/IMG_0056.jpg', NULL, 'P', '0'),
(390, 228, 'resimler/products/IMG_9112.jpg', NULL, 'P', '0'),
(391, 228, 'resimler/products/IMG_9113.jpg', NULL, 'P', '0'),
(392, 228, 'resimler/products/IMG_9114.jpg', NULL, 'P', '0'),
(393, 229, 'resimler/products/IMG_9115.jpg', NULL, 'P', '0'),
(394, 229, 'resimler/products/IMG_9116.jpg', NULL, 'P', '0'),
(395, 229, 'resimler/products/IMG_9117.jpg', NULL, 'P', '0'),
(396, 230, 'resimler/products/IMG_2109.jpg', NULL, 'P', '0'),
(397, 231, 'resimler/products/IMG_2110.jpg', NULL, 'P', '0'),
(398, 232, 'resimler/products/_MGL7863.jpg', NULL, 'P', '0'),
(399, 232, 'resimler/products/_MGL7871.jpg', NULL, 'P', '0'),
(400, 233, 'resimler/products/_MGL7864.jpg', NULL, 'P', '0'),
(401, 233, 'resimler/products/_MGL7872.jpg', NULL, 'P', '0'),
(402, 234, 'resimler/products/_MGL7865.jpg', NULL, 'P', '0'),
(403, 234, 'resimler/products/_MGL7870.jpg', NULL, 'P', '0'),
(404, 235, 'resimler/products/IMG_0081.jpg', NULL, 'P', '0'),
(405, 236, 'resimler/products/IMG_0083.jpg', NULL, 'P', '0'),
(406, 237, 'resimler/products/IMG_0082.jpg', NULL, 'P', '0'),
(407, 238, 'resimler/products/POM_beltbag_BORDO2.jpg', NULL, 'P', '0'),
(408, 238, 'resimler/products/POM_beltbag_BORDO3.jpg', NULL, 'P', '0'),
(409, 238, 'resimler/products/POM_beltbag_bordo4.jpg', NULL, 'P', '0'),
(410, 239, 'resimler/products/POM_beltbag_natural2.jpg', NULL, 'P', '0'),
(411, 239, 'resimler/products/POM_beltbag_natural3.jpg', NULL, 'P', '0'),
(412, 239, 'resimler/products/POM_beltbag_natural4.jpg', NULL, 'P', '0'),
(413, 240, 'resimler/products/POM_beltbag_siyah1_2.jpg', NULL, 'P', '0'),
(414, 240, 'resimler/products/POM_beltbag_siyah3.jpg', NULL, 'P', '0'),
(415, 240, 'resimler/products/POM_beltbag_siyah4.jpg', NULL, 'P', '0'),
(416, 241, 'resimler/products/POM_beltbag_yesil2.jpg', NULL, 'P', '0'),
(417, 241, 'resimler/products/POM_beltbag_yesil4.jpg', NULL, 'P', '0'),
(418, 241, 'resimler/products/POM_beltbag_yesil3.jpg', NULL, 'P', '0'),
(419, 242, 'resimler/products/1ARIKOL.jpg', NULL, 'P', '0'),
(420, 243, 'resimler/products/1ARIK.jpg', NULL, 'P', '0'),
(421, 244, 'resimler/products/White-tunic-with-evileye-1.jpg', NULL, 'P', '0'),
(422, 244, 'resimler/products/White-tunic-with-evileye-2.jpg', NULL, 'P', '0'),
(423, 245, 'resimler/products/White-tunic-with-coral-1.jpg', NULL, 'P', '0'),
(424, 245, 'resimler/products/White-tunic-with-coral-2.jpg', NULL, 'P', '0'),
(425, 246, 'resimler/products/Kimono-tunic-with-evileye-2.jpg', NULL, 'P', '0'),
(426, 246, 'resimler/products/Kimono-tunic-with-evileye-1.jpg', NULL, 'P', '0'),
(427, 247, 'resimler/products/Kimono-tunic-with-coral-2.jpg', NULL, 'P', '0'),
(428, 247, 'resimler/products/Kimono-tunic-with-coral-1.jpg', NULL, 'P', '0'),
(429, 248, 'resimler/products/White-vest-tunic-with-evileye-1.jpg', NULL, 'P', '0'),
(430, 248, 'resimler/products/White-vest-tunic-with-evileye-2.jpg', NULL, 'P', '0'),
(431, 249, 'resimler/products/White-vest-tunic-with-coral-2.jpg', NULL, 'P', '0'),
(432, 249, 'resimler/products/White-vest-tunic-with-coral-1.jpg', NULL, 'P', '0'),
(433, 250, 'resimler/products/White-classic-basic-t-shirt-with-evileye.jpg', NULL, 'P', '0'),
(434, 251, 'resimler/products/White-boyfriend-basic-t-shirt-with-evileye.jpg', NULL, 'P', '0'),
(435, 252, 'resimler/products/white-soft-panama-coral.jpg', NULL, 'P', '0'),
(436, 253, 'resimler/products/white-soft-panama-evileye.jpg', NULL, 'P', '0'),
(437, 254, 'resimler/products/white-soft-panama-coral.jpg', NULL, 'P', '0'),
(438, 255, 'resimler/products/1ARIK.jpg', NULL, 'P', '0'),
(439, 256, 'resimler/products/IMG_6937.jpg', NULL, 'P', '0'),
(440, 256, 'resimler/products/1ARIKOL.jpg', NULL, 'P', '0'),
(441, 257, 'resimler/products/1ARIS.jpg', NULL, 'P', '0'),
(442, 258, 'resimler/products/IMG_6888.jpg', NULL, 'P', '0'),
(443, 258, 'resimler/products/IMG_6887.jpg', NULL, 'P', '0'),
(444, 259, 'resimler/products/IMG_9529.jpg', NULL, 'P', '0'),
(445, 259, 'resimler/products/IMG_9548.jpg', NULL, 'P', '0'),
(446, 260, 'resimler/products/IMG_0158.jpg', NULL, 'P', '0'),
(447, 260, 'resimler/products/IMG_9551.jpg', NULL, 'P', '0'),
(448, 261, 'resimler/products/IMG_8722.jpg', NULL, 'P', '0'),
(449, 262, 'resimler/products/IMG_7857.jpg', NULL, 'P', '0'),
(450, 263, 'resimler/products/IMG_9543.jpg', NULL, 'P', '0'),
(451, 264, 'resimler/products/IMG_9524.jpg', NULL, 'P', '0'),
(452, 264, 'resimler/products/IMG_9557.jpg', NULL, 'P', '0'),
(453, 265, 'resimler/products/IMG_9877.jpg', NULL, 'P', '0'),
(454, 266, 'resimler/products/IMG_9908-kopyası.jpg', NULL, 'P', '0'),
(455, 267, 'resimler/products/IMG_9896.jpg', NULL, 'P', '0'),
(456, 268, 'resimler/products/IMG_9884.jpg', NULL, 'P', '0'),
(457, 269, 'resimler/products/IMG_9553-min.jpg', NULL, 'P', '0'),
(458, 269, 'resimler/products/IMG_9560-min.jpg', NULL, 'P', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_name` text COLLATE utf8_turkish_ci,
  `user_lastname` text COLLATE utf8_turkish_ci,
  `user_adress` text COLLATE utf8_turkish_ci,
  `user_phone` text COLLATE utf8_turkish_ci,
  `user_mail` text COLLATE utf8_turkish_ci,
  `order_total` double DEFAULT NULL,
  `payment` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` text COLLATE utf8_turkish_ci,
  `product_name` text COLLATE utf8_turkish_ci,
  `product_description` text COLLATE utf8_turkish_ci,
  `product_price` double DEFAULT NULL,
  `product_category_id` text COLLATE utf8_turkish_ci,
  `product_stok` int(11) DEFAULT NULL,
  `product_props` text COLLATE utf8_turkish_ci,
  `product_main_id` int(11) DEFAULT NULL,
  `product_discount` text COLLATE utf8_turkish_ci,
  `product_picture` text COLLATE utf8_turkish_ci,
  `product_discount_avaliaible` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `product_supplier_id` text COLLATE utf8_turkish_ci,
  `product_added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_master_id` int(11) DEFAULT NULL,
  `hide` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_description`, `product_price`, `product_category_id`, `product_stok`, `product_props`, `product_main_id`, `product_discount`, `product_picture`, `product_discount_avaliaible`, `product_supplier_id`, `product_added_date`, `product_master_id`, `hide`) VALUES
(34, 'P77', 'Fırfırlı Elbise', 'güzeldir', 65.45, '8', 12, '2', 2, NULL, 'resimler/products/WhatsApp-Image-2020-10-12-at-11.18.18.jpeg', '0', NULL, '2020-10-13 21:05:42', NULL, '0'),
(35, 'P77', 'Fırfırlı Elbise 2', 'asdasdasd', 65.45, '8', 12, '1', 2, NULL, 'resimler/products/WhatsApp-Image-2020-10-12-at-11.18.18.jpeg', '0', NULL, '2020-10-13 21:18:29', NULL, '0'),
(36, 'P77', 'PESERICO PANTOLON', 'asdasdasd', 2199, '8', 12, '2', 2, NULL, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', '0', NULL, '2020-10-14 00:26:36', NULL, '0'),
(38, 'LS70', 'Fırfırlı Elbise 2', 'asdasd', 123, '18', 12, '1', 3, NULL, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', '0', NULL, '2020-10-16 12:01:35', NULL, '0'),
(39, 'LS70', 'Fırfırlı Elbise', 'asdasd', 92.65, '19', 12, '2', 3, NULL, 'resimler/products/bb3c0b29-54ac-4350-b450-05d66f73cfd7.jpg', '0', NULL, '2020-10-16 12:25:15', NULL, '0'),
(46, 'ON-AY025', 'AY DESİGNS - BUDS SPIRAL KÜPE', 'Blossom koleksiyonu Buds serisine ait tomurcuklu spiral kolye. Altın kaplama gümüş (925 K). Yaklaşık ölçüleri 3 cm X 3 cm, ağırlığı 10 gramdır. Tasarımın hikayesi: Birbirini takip eden anlar, ilişkiler, duygular, kararlar, gündüz ve geceler yani yaşam sürekli bir döngünün içerisindedir. Hayat serüvenimiz içerisinde kendimiz için önemli olaylar ve hayallerimiz; irli ufaklı tomurcuklar ile sembolize edilmiştir. Dileklerin, umutların, güzelliklerin yaşamımızda hiç eksik olmaması; tomurcuklar misali açmaya hazır olması niyetini taşıyan bu tasarım tümüyle el işçiliğidir.', 550, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY025_01.jpg', '0', NULL, '2020-10-16 22:54:58', NULL, '0'),
(48, 'ON-AY024', 'AY DESIGNS - BUDS HOOP KÜPE', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 290, '41', 1, '15', 34, NULL, 'resimler/products/ON-AY024_01.jpg', '0', NULL, '2020-10-16 22:58:03', NULL, '0'),
(49, 'ON-AY001', 'AY DESIGNS - BEAUTY FÜME GRİ KÜPE', 'Blossom Koleksiyonuna ait mineli Beauty küpe. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar icerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği füme gri rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 550, '41', 1, '5', 34, NULL, 'resimler/products/ON-AY001.jpg', '0', NULL, '2020-10-16 22:59:47', NULL, '0'),
(50, 'ON-AY002', 'AY DESIGNS - BEAUTY HAKİ KÜPE', 'Blossom Koleksiyonuna ait mineli Beauty küpe. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar icerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği haki rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 0, '41', 1, '6', 34, NULL, 'resimler/products/ON-AY002.jpg', '0', NULL, '2020-10-16 23:03:16', NULL, '0'),
(51, 'ON-AY027', 'AY DESIGNS - HARMONY SİYAH KÜPE', 'Blossom Koleksiyonuna ait mineli Harmony küpe. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. \r\nAltın kaplama gümüş (925 K) ve el işçiliği siyah ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 12 gramdır.', 0, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY027_01.jpg', '0', NULL, '2020-10-16 23:03:45', NULL, '0'),
(52, 'ON-AY003', 'AY DESIGNS - BEAUTY SOMON İNCİLİ KÜPE', 'Blossom Koleksiyonuna ait imite inci detaylı mineli Beauty küpe.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar icerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği pastel açık somon rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 6 cm X 3.5 cm, ağırlığı 18 gramdır.', 149.99, '41', 1, '1', 34, NULL, NULL, '0', NULL, '2020-10-16 23:04:26', NULL, '0'),
(53, 'ON-AY004', 'AY DESIGNS - BEAUTY FİLDİŞİ BEYAZ İNCİLİ KÜPE', 'Blossom Koleksiyonuna ait imite inci detaylı mineli Beauty küpe. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar icerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği fildişi beyazı rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 6 cm X 3.5 cm, ağırlığı 18 gramdır.', 149.99, '41', 1, '1', 34, NULL, NULL, '0', NULL, '2020-10-16 23:05:41', NULL, '0'),
(54, 'ON-AY005', 'AY DESIGNS - BEAUTY PASTEL GRİ HALKALI KÜPE', 'Blossom Koleksiyonuna ait halka sallantılı mineli Beauty küpe.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği pastel gri rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 5 cm X 3.5 cm, ağırlığı 16 gramdır.', 0, '41', 1, '9', 34, NULL, 'resimler/products/ON-AY005.jpg', '0', NULL, '2020-10-16 23:06:47', NULL, '0'),
(55, 'ON-AY028', 'AY DESİGNS - HARMONY LACİVERT KÜPE', 'Blossom Koleksiyonuna ait mineli Harmony küpe. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. \r\nAltın kaplama gümüş (925 K) ve el işçiliği lacivert ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 12 gramdır.', 0, '41', 1, '4', 34, NULL, 'resimler/products/ON-AY028_01.jpg', '0', NULL, '2020-10-16 23:07:01', NULL, '0'),
(56, 'ON-AY006', 'AY DESIGNS - BEAUTY KAHVE HALKALI KÜPE', 'Blossom Koleksiyonuna ait halka sallantılı mineli Beauty küpe.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır. Yaklaşık ölçüleri 5 cm X 3.5 cm, ağırlığı 16 gramdır.', 0, '41', 1, '10', 34, NULL, 'resimler/products/ON-AY006_01.jpg', '0', NULL, '2020-10-16 23:08:09', NULL, '0'),
(57, 'ON-AY029', 'AY DESİGNS - HARMONY TURKUAZ İNCİLİ KÜPE', 'Blossom Koleksiyonuna ait imite inci detaylı mineli Harmony küpe. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. \r\nAltın kaplama gümüş (925 K) ve el işçiliği turkuaz ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 6 cm X 3.5 cm, ağırlığı 20 gramdır.', 0, '41', 1, '13', 34, NULL, 'resimler/products/ON-AY029_01.jpg', '0', NULL, '2020-10-16 23:09:53', NULL, '0'),
(58, 'ON-AY040', 'AY DESIGNS - JOY ARI KÜPE', 'Blossom Koleksiyonuna ait mineli Joy küpe. \r\nJoy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği arı ve beyaz rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY040.jpg', '0', NULL, '2020-10-16 23:10:19', NULL, '0'),
(59, 'ON-AY030', 'AY DESİGNS - HARMONY KIRMIZI İNCİLİ KÜPE', 'Blossom Koleksiyonuna ait imite inci detaylı mineli Harmony küpe. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. Altın kaplama gümüş (925 K) ve el işçiliği kırmızı ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 6 cm X 3.5 cm, ağırlığı 20 gramdır.', 0, '41', 1, '12', 34, NULL, 'resimler/products/ON-AY030_01.jpg', '0', NULL, '2020-10-16 23:11:35', NULL, '0'),
(60, 'ON-AY041', 'AY DESIGNS - JOY ARI İNCİLİ KÜPE', 'Blossom Koleksiyonuna ait imite inci detaylı mineli Joy küpe. \r\nJoy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği arı ve beyaz rengi mineden oluşmaktadır.\r\n Yaklaşık ölçüleri 6 cm X 3.5 cm, ağırlığı 18 gramdır.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY041_02.jpg', '0', NULL, '2020-10-16 23:11:38', NULL, '0'),
(61, 'ON-AY042', 'AY DESIGNS - JOY ARI HALKALI KÜPE', 'Blossom Koleksiyonuna ait halka sallantılı mineli Joy küpe. \r\nJoy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir.\r\n Altın kaplama gümüş (925 K), el işçiliği sarı, siyah ve beyaz rengi mineden oluşmaktadır.\r\n Yaklaşık ölçüleri 4.5 cm X 3.5 cm, ağırlığı 16 gramdır.', 0, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY042.jpg', '0', NULL, '2020-10-16 23:13:06', NULL, '0'),
(62, 'ON-AY050', 'AY DESİGNS - FAN BEYAZ KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yelpaze küpe. \r\nAltın kaplama gümüş (925 K) ve el işçiliği beyaz renk mineden yapılmıştır. Yaklaşık ölçüleri 2.5 cm X 3.5 cm, ağırlığı 12 gramdır.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY050_02.jpg', '0', NULL, '2020-10-16 23:13:30', NULL, '0'),
(63, 'ON-AY046', 'AY DESIGNS - HEXAGON BEYAZ KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli altıgen küpe.\r\n Altın kaplama gümüş (925 K), el işçiliği beyaz rengi mineden yapılmıştır. Yaklaşık ölçüleri 3cm X 3 cm, ağırlığı 12 gramdır.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY046.jpg', '0', NULL, '2020-10-16 23:14:16', NULL, '0'),
(64, 'ON-AY048', 'AY DESIGNS - HEXAGON GRİ & FÜME KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli altıgen küpe. \r\nAltın kaplama gümüş (925 K), el işçiliği pastel gri ve füme rengi mineden yapılmıştır. \r\nYaklaşık ölçüleri 3cm X 3 cm, ağırlığı 12 gramdır.', 0, '41', 1, '5', 34, NULL, 'resimler/products/ON-AY048.jpg', '0', NULL, '2020-10-16 23:15:21', NULL, '0'),
(65, 'ON-AY052', 'AY DESİGNS - FAN HAKİ KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yelpaze küpe. \r\nAltın kaplama gümüş (925 K) ve el işçiliği haki renk mineden yapılmıştır. Yaklaşık ölçüleri 2.5 cm X 3.5 cm, ağırlığı 12 gramdır.', 0, '41', 1, '6', 34, NULL, 'resimler/products/ON-AY052.jpg', '0', NULL, '2020-10-16 23:15:24', NULL, '0'),
(66, 'ON-AY060', 'AY DESIGNS - TURTLE ADDICTION - MONTANA KÜPE', 'Koleksiyon: Shimmery Elegance. \r\nRodyum kaplama gümüş (925 K), montana mavi rengi kristal, el işçiliği kaplumbağa şeklinde sedef (abalon), tümüyle el işçiliği klipsli küpe.\r\n Ölçüleri 7 cm X 4.5 cm , ağırlığı yaklaşık 38 gramdır. \r\n* Kaplumbağa formundaki sedef parça el işçiliği olmasından dolayı renk, tasarım ve ölçülerinde az da olsa farklılıklar söz konusu olabilir. \r\n* Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY060_01.jpg', '0', NULL, '2020-10-16 23:16:58', NULL, '0'),
(67, 'ON-AY054', 'AY DESİGNS - FLASH LACİVERT & FÜME KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yıldırım küpe. \r\nAltın kaplama gümüş (925 K), el işçiliği koyu mavi ve füme renklerde mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3.5 cm, ağırlığı 14 gramdır.', 0, '41', 1, '8', 34, NULL, 'resimler/products/ON-AY054_02.jpg', '0', NULL, '2020-10-16 23:17:31', NULL, '0'),
(68, 'ON-AY061', 'AY DESIGNS - DIAMOND SAFİR KÜPE', 'Koleksiyon: Shimmery Elegance.\r\n Rodyum kaplama gümüş (925 K), safir rengi kristal, içi boş baklava şeklinde tümüyle el işçiliği küpe.\r\n Ölçüleri 7 cm X 3.5 cm , ağırlığı yaklaşık 10 gramdır.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '4', 34, NULL, 'resimler/products/ON-AY061_02.jpg', '0', NULL, '2020-10-16 23:18:28', NULL, '0'),
(69, 'ON-AY056', 'AY DESİGNS - FLASH MOR & TURUNCU KÜPE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yıldırım küpe. \r\nAltın kaplama gümüş (925 K), el işçiliği mor ve turuncu renklerde mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3.5 cm, ağırlığı 14 gramdır.', 0, '41', 1, '14', 34, NULL, 'resimler/products/ON-AY056_02.jpg', '0', NULL, '2020-10-16 23:19:32', NULL, '0'),
(70, 'ON-AY062', 'AY DESIGNS - ÜÇLÜ KALP EMERALD KÜPE', 'Koleksiyon: Shimmery Elegance. \r\nRodyum kaplama gümüş (925 K), zümrüt rengi kristal, üçlü kalp şeklinde el işçiliği küpe. \r\nÖlçüleri 7 cm X 3.5 cm , ağırlığı yaklaşık 13.5 gramdır.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '4', 34, NULL, 'resimler/products/ON-AY062.jpg', '0', NULL, '2020-10-16 23:19:36', NULL, '0'),
(71, 'ON-AY063', 'AY DESIGNS - YILDIZ GOLD KÜPE', 'Koleksiyon: Shimmery Elegance. \r\nRodyum kaplama gümüş (925 K), gold renk kristal, yıldız şeklinde tümüyle el işçiliği küpe.\r\n Ölçüleri 7 cm X 4.5 cm , ağırlığı yaklaşık 10.5 gramdır.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '15', 34, NULL, 'resimler/products/ON-AY063_01.jpg', '0', NULL, '2020-10-16 23:21:41', NULL, '0'),
(72, 'ON-AY064', 'AY DESIGNS - YUVARLAK MONTANA KÜPE', 'Koleksiyon: Shimmery Elegance. Rodyum kaplama gümüş (925 K), montana mavisi rengi kristal, içi boş yuvarlak şeklinde tümüyle el işçiliği küpe.\r\n Ölçüleri 6 cm X 4.5 cm , ağırlığı yaklaşık 12 gramdır.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '4', 34, NULL, 'resimler/products/ON-AY064.jpg', '0', NULL, '2020-10-16 23:22:47', NULL, '0'),
(73, 'ON-AY058', 'AY DESİGNS - TURTLE ADDICTION - FÜME KÜPE', 'Koleksiyon: Shimmery Elegance. Rodyum kaplama gümüş (925 K), hematit grisi rengi kristal, el işçiliği kaplumbağa şeklinde sedef (abalon), tümüyle el işçiliği klipsli küpe. Ölçüleri 7 cm X 4.5 cm , ağırlığı yaklaşık 38 gramdır. * Kaplumbağa formundaki sedef parça el işçiliği olmasından dolayı renk, tasarım ve ölçülerinde az da olsa farklılıklar söz konusu olabilir. * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '9', 34, NULL, 'resimler/products/ON-AY058_01.jpg', '0', NULL, '2020-10-16 23:24:04', NULL, '0'),
(74, 'ON-AY065', 'AY DESIGNS - ÜÇLÜ DÖRTGEN ZİRKON KÜPE', 'Koleksiyon: Shimmery Elegance. \r\nRodyum kaplama gümüş (925 K), zirkon beyazı rengi kristal, içi boş dörtgen şeklinde tümüyle el işçiliği küpe. \r\nÖlçüleri 8 cm X 2.5 cm , ağırlığı yaklaşık 15 gramdır.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY065_01.jpg', '0', NULL, '2020-10-16 23:24:07', NULL, '0'),
(75, 'ON-AY066', 'AY DESIGNS - ÜÇLÜ YUVARLAK SİYAH KÜPE', 'Koleksiyon: Shimmery Elegance.\r\n Rodyum kaplama gümüş (925 K), siyah renk kristal, içi boş yuvarlak şeklinde tümüyle el işçiliği küpe. \r\nÖlçüleri 8 cm X 4 cm , ağırlığı yaklaşık 14.5 gramdır.', 0, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY066.jpg', '0', NULL, '2020-10-16 23:25:24', NULL, '0'),
(76, 'ON-AY069', 'AY DESİGNS - BUDS KIRMIZI HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. Altın kaplama gümüş (925 K) ve el işçiliği kırmızı renk mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 0, '41', 1, '12', 34, NULL, 'resimler/products/ON-AY069.jpg', '0', NULL, '2020-10-16 23:26:15', NULL, '0'),
(77, 'ON-AY067', 'AY DESIGNS - ÜÇGEN AMETİST KÜPE', 'Koleksiyon: Shimmery Elegance. \r\nRodyum kaplama gümüş (925 K), ametist rengi kristal, içi boş üçgen şeklinde tümüyle el işçiliği küpe. \r\nÖlçüleri 6 cm X 5.5 cm , ağırlığı yaklaşık 13 gramdır.', 0, '41', 1, '3', 34, NULL, 'resimler/products/ON-AY067_01.jpg', '0', NULL, '2020-10-16 23:26:51', NULL, '0'),
(78, 'ON-AY070', 'AY DESİGNS - BUDS SİYAH HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. Altın kaplama gümüş (925 K) ve el işçiliği siyah renk mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 0, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY070.jpg', '0', NULL, '2020-10-16 23:27:39', NULL, '0'),
(79, 'ON-AY068', 'AY DESIGNS - BUDS BEYAZ HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. \r\nAltın kaplama gümüş (925 K) ve el işçiliği beyaz renk mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 0, '41', 0, '3', 34, NULL, 'resimler/products/ON-AY068.jpg', '0', NULL, '2020-10-16 23:27:53', NULL, '0'),
(80, 'ON-AY071', 'AY DESİGNS - BUDS FÜME HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. Altın kaplama gümüş (925 K) ve el işçiliği füme renk mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 0, '41', 1, '8', 34, NULL, 'resimler/products/ON-AY071_01.jpg', '0', NULL, '2020-10-16 23:29:17', NULL, '0'),
(81, 'ON-AY072', 'AY DESİGNS - BUDS HAKİ HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. \r\nAltın kaplama gümüş (925 K) ve el işçiliği haki renk mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 0, '41', 1, '6', 34, NULL, 'resimler/products/ON-AY072_01.jpg', '0', NULL, '2020-10-16 23:32:49', NULL, '0'),
(83, 'ON-AY073', 'AY DESİGNS - BUDS KAHVE HOOP KÜPE', 'Blossom koleksiyonu Buds serisi tomurcuklu halka küpe. \r\nAltın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3 cm X 1 cm, ağırlığı 5 gramdır. ', 290, '41', 1, '10', 34, NULL, 'resimler/products/ON-AY073_01.jpg', '0', NULL, '2020-10-16 23:36:22', NULL, '0'),
(84, 'ON-AY043', 'AY DESİGNS - JOY ARI KOLYE', 'Blossom Koleksiyonuna ait mineli Joy kolye. Joy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir. Altın kaplama gümüş (925 K), el işçiliği arı ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir 40 cm + 5 cm uzatma zinciri şeklindedir.', 390, '42', 1, '3', 34, NULL, 'resimler/products/ON-AY043.jpg', '0', NULL, '2020-10-16 23:49:53', NULL, '0'),
(85, 'ON-AY008', 'AY DESIGNS - BEAUTY HAKİ KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği haki renk mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '6', 34, NULL, 'resimler/products/ON-AY008_01.jpg', '0', NULL, '2020-10-16 23:51:05', NULL, '0'),
(86, 'ON-AY009', 'AY DESIGNS - BEAUTY SOMON KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği somon rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '7', 34, NULL, 'resimler/products/ON-AY009.jpg', '0', NULL, '2020-10-17 00:09:00', NULL, '0'),
(87, 'ON-AY010', 'AY DESIGNS - BEAUTY FİLDİŞİ BEYAZ KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği fildişi beyazı rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. \r\nZincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '3', 34, NULL, 'resimler/products/ON-AY010_01.jpg', '0', NULL, '2020-10-17 00:10:05', NULL, '0'),
(88, 'ON-AY011', 'AY DESIGNS - BEAUTY PASTEL GRİ KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği pastel gri renk mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır.\r\n Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '9', 34, NULL, 'resimler/products/ON-AY011_01.jpg', '0', NULL, '2020-10-17 00:11:11', NULL, '0'),
(89, 'ON-AY047', 'AY DESİGNS - HEXAGON BEYAZ KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli altıgen kolye. \r\nAltın kaplama gümüş (925 K), el işçiliği beyaz renkte mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3 cm, ağırlığı 9 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '3', 34, NULL, 'resimler/products/ON-AY047_02.jpg', '0', NULL, '2020-10-17 00:12:09', NULL, '0'),
(90, 'ON-AY012', 'AY DESIGNS - BEAUTY KAHVE KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\nAltın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır.\r\n Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '10', 34, NULL, 'resimler/products/ON-AY012_01.jpg', '0', NULL, '2020-10-17 00:12:25', NULL, '0'),
(91, 'ON-AY026', 'AY DESIGNS - BUDS SPIRAL KOLYE', 'Blossom koleksiyonu Buds serisine ait tomurcuklu spiral kolye.\r\n Altın kaplama gümüş (925 K). Yaklaşık ölçüleri 3 cm X 3 cm, ağırlığı 7 gramdır. Altın kaplama gümüş zincir: 40 cm + 5 cm uzatma şeklindedir.\r\n Tasarımın hikayesi: Birbirini takip eden anlar, ilişkiler, duygular, kararlar, gündüz ve geceler yani yaşam sürekli bir döngünün içerisindedir. Hayat serüvenimiz içerisinde kendimiz için önemli olaylar ve hayallerimiz; irli ufaklı tomurcuklar ile sembolize edilmiştir. Dileklerin, umutların, güzelliklerin yaşamımızda hiç eksik olmaması; tomurcuklar misali açmaya hazır olması niyetini taşıyan bu tasarım tümüyle el işçiliğidir.', 380, '42', 1, '3', 34, NULL, 'resimler/products/ON-AY026_01.jpg', '0', NULL, '2020-10-17 00:13:45', NULL, '0'),
(92, 'ON-AY049', 'AY DESİGNS - HEXAGON GRİ & FÜME KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli altıgen kolye. \r\nAltın kaplama gümüş (925 K), el işçiliği pastel gri ve füme renkte mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3 cm, ağırlığı 9 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '5', 34, NULL, 'resimler/products/ON-AY049_01.jpg', '0', NULL, '2020-10-17 00:14:13', NULL, '0'),
(93, 'ON-AY031', 'AY DESIGNS - HARMONY SİYAH KOLYE', 'Blossom Koleksiyonuna ait mineli Harmony kolye. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. \r\nAltın kaplama gümüş (925 K), el işçiliği siyah ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır.\r\n Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '1', 34, NULL, 'resimler/products/ON-AY031.jpg', '0', NULL, '2020-10-17 00:15:00', NULL, '0'),
(94, 'ON-AY051', 'AY DESIGNS - FAN BEYAZ KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yelpaze kolye. Altın kaplama gümüş (925 K), el işçiliği beyaz renk mineden yapılmıştır. Yaklaşık ölçüleri 2.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '3', 34, NULL, 'resimler/products/ON-AY051_01.jpg', '0', NULL, '2020-10-17 00:15:55', NULL, '0'),
(95, 'ON-AY053', 'AY DESIGNS - FAN HAKİ KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yelpaze kolye. \r\nAltın kaplama gümüş (925 K), el işçiliği haki renk mineden yapılmıştır. Yaklaşık ölçüleri 2.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '6', 34, NULL, 'resimler/products/ON-AY053.jpg', '0', NULL, '2020-10-17 00:17:37', NULL, '0'),
(96, 'ON-AY055', 'AY DESİGNS - FLASH LACİVERT & FÜME KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yıldırım kolye. \r\nAltın kaplama gümüş (925 K), el işçiliği koyu mavi ve füme rengi mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3.5 cm, ağırlığı 9 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 450, '42', 1, '1', 34, NULL, 'resimler/products/ON-AY055_01.jpg', '0', NULL, '2020-10-17 00:19:30', NULL, '0'),
(97, 'ON-AY057', 'AY DESİGNS - FLASH MOR & TURUNCU KOLYE', 'VINTAGE INSPIRATION koleksiyonuna ait mineli yıldırım kolye. \r\nAltın kaplama gümüş (925 K), el işçiliği mor ve turuncu renklerde mineden yapılmıştır. Yaklaşık ölçüleri 3 cm X 3.5 cm, ağırlığı 9 gramdır. Zincir 40 cm + 5 cm uzatma şeklindedir.', 450, '42', 1, '18', 34, NULL, 'resimler/products/ON-AY057_02.jpg', '0', NULL, '2020-10-17 00:21:30', NULL, '0'),
(98, 'ON-AY019', 'AY DESIGNS - BEAUTY FÜME BİLEZİK', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği füme renk mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 420, '44', 1, '8', 34, NULL, 'resimler/products/ON-AY019_01.jpg', '0', NULL, '2020-10-17 00:24:04', NULL, '0'),
(99, 'ON-AY020', 'AY DESİGNS - BEAUTY HAKİ BİLEZİK', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği haki renk mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 550, '44', 1, '6', 34, NULL, 'resimler/products/ON-AY020_01.jpg', '0', NULL, '2020-10-17 00:25:59', NULL, '0'),
(101, 'ON-AY021', 'AY DESIGNS - BEAUTY SOMON BİLEZİK', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği somon rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 550, '44', 1, '7', 34, NULL, 'resimler/products/ON-AY021_01.jpg', '0', NULL, '2020-10-17 00:28:22', NULL, '0'),
(102, 'ON-AY033', 'AY DESIGNS - HARMONY TURKUAZ KOLYE', 'Blossom Koleksiyonuna ait mineli Harmony kolye. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır.\r\n Altın kaplama gümüş (925 K), el işçiliği turkuaz ve beyaz rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '13', 34, NULL, 'resimler/products/ON-AY033.jpg', '0', NULL, '2020-10-17 00:29:08', NULL, '0'),
(103, 'ON-AY022', 'AY DESIGNS - BEAUTY FİLDİŞİ BEYAZ BİLEZİK', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği fildişi beyazı rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 550, '44', 1, '3', 34, NULL, 'resimler/products/ON-AY022_01.jpg', '0', NULL, '2020-10-17 00:30:03', NULL, '0'),
(105, 'ON-AY013', 'AY DESIGNS - BEAUTY FÜME YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği füme rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. \r\nTabanı ayarlanabilir şekildedir.', 420, '43', 1, '5', 34, NULL, 'resimler/products/ON-AY013_01.jpg', '0', NULL, '2020-10-17 00:31:19', NULL, '0'),
(106, 'ON-AY023', 'AY DESIGNS - BEAUTY KAHVE BİLEZİK', 'Blossom Koleksiyonuna ait mineli Beauty bilezik. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 11 gramdır.', 550, '44', 1, '10', 34, NULL, 'resimler/products/ON-AY023_01.jpg', '0', NULL, '2020-10-17 00:31:31', NULL, '0'),
(107, 'ON-AY014', 'AY DESIGNS - BEAUTY HAKİ YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği haki rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Tabanı ayarlanabilir şekildedir.', 420, '43', 1, '6', 34, NULL, 'resimler/products/ON-AY014_01.jpg', '0', NULL, '2020-10-17 00:32:23', NULL, '0'),
(108, 'ON-AY015', 'AY DESIGNS - BEAUTY SOMON YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük\r\n. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği somon rengi mineden oluşmaktadır.\r\n Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Tabanı ayarlanabilir şekildedir.', 420, '43', 1, '7', 34, NULL, 'resimler/products/ON-AY015.jpg', '0', NULL, '2020-10-17 00:33:27', NULL, '0'),
(109, 'ON-AY037', 'AY DESİGNS - HARMONY SİYAH BİLEZİK', 'Blossom Koleksiyonuna ait mineli Harmony bilezik. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. Altın kaplama gümüş (925 K), el işçiliği siyah ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 10 gramdır.', 580, '44', 1, '1', 34, NULL, 'resimler/products/ON-AY037_01.jpg', '0', NULL, '2020-10-17 00:33:47', NULL, '0'),
(110, 'ON-AY016', 'AY DESIGNS - BEAUTY FİLDİŞİ BEYAZ YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. \r\nAltın kaplama gümüş (925 K) ve el işçiliği fildişi beyazı rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Tabanı ayarlanabilir şekildedir.', 420, '43', 1, '3', 34, NULL, 'resimler/products/ON-AY016.jpg', '0', NULL, '2020-10-17 00:34:23', NULL, '0'),
(111, 'ON-AY038', 'AY DESIGNS - HARMONY KIRMIZI BİLEZİK', 'Blossom Koleksiyonuna ait mineli Harmony bilezik. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. Altın kaplama gümüş (925 K), el işçiliği kırmızı ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 10 gramdır.', 580, '44', 1, '12', 34, NULL, 'resimler/products/ON-AY038_02.jpg', '0', NULL, '2020-10-17 00:35:25', NULL, '0'),
(113, 'ON-AY018', 'AY DESIGNS - BEAUTY KAHVE YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük. \r\nBeauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği kahve rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Tabanı ayarlanabilir şekildedir.', 420, '43', 1, '10', 34, NULL, 'resimler/products/ON-AY018_01.jpg', '0', NULL, '2020-10-17 00:36:43', NULL, '0'),
(114, 'ON-AY039', 'AY DESİGNS - HARMONY TURKUAZ BİLEZİK', 'Blossom Koleksiyonuna ait mineli Harmony bilezik. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. Altın kaplama gümüş (925 K), el işçiliği turkuaz ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 10 gramdır.', 580, '44', 1, '13', 34, NULL, 'resimler/products/ON-AY039_03.jpg', '0', NULL, '2020-10-17 00:38:03', NULL, '0'),
(115, 'ON-AY035', 'AY DESIGNS - HARMONY SİYAH YÜZÜK', 'Blossom Koleksiyonuna ait mineli Harmony yüzük.\r\n Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır.\r\n Altın kaplama gümüş (925 K), el işçiliği siyah ve beyaz rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. \r\nTaban kısmı ayarlanabilirdir.', 430, '43', 1, '1', 34, NULL, 'resimler/products/ON-AY035_01.jpg', '0', NULL, '2020-10-17 00:38:13', NULL, '0'),
(116, 'ON-AY036', 'AY DESIGNS - HARMONY KIRMIZI YÜZÜK', 'Blossom Koleksiyonuna ait mineli Harmony yüzük. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. \r\nAltın kaplama gümüş (925 K), el işçiliği kırmızı ve beyaz rengi mineden oluşmaktadır.\r\n Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Taban kısmı ayarlanabilirdir.', 430, '43', 1, '12', 34, NULL, 'resimler/products/ON-AY036.jpg', '0', NULL, '2020-10-17 00:39:28', NULL, '0'),
(117, 'ON-AY045', 'AY DESİGNS - HJOY ARI BİLEZİK', 'Blossom Koleksiyonuna ait mineli Joy bilezik. Joy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir. Altın kaplama gümüş (925 K), el işçiliği arı ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 10 gramdır.', 550, '44', 1, '3', 34, NULL, 'resimler/products/ON-AY045_01.jpg', '0', NULL, '2020-10-17 00:40:53', NULL, '0'),
(118, 'ON-AY044', 'AY DESIGNS - JOY ARI YÜZÜK', 'Blossom Koleksiyonuna ait mineli Joy kolye. \r\nJoy serisi doğanın ilham vericiliğini eğlenceli bir tasarım ve canlı renklerle ifade etmektedir. \r\nAltın kaplama gümüş (925 K), el işçiliği arı ve beyaz rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir 40 cm + 5 cm uzatma zinciri şeklindedir.', 420, '43', 1, '3', 34, NULL, 'resimler/products/ON-AY044.jpg', '0', NULL, '2020-10-17 00:41:41', NULL, '0'),
(119, 'ON-AY017', 'AY DESIGNS - BEAUTY PASTEL GRİ YÜZÜK', 'Blossom Koleksiyonuna ait mineli Beauty yüzük.\r\n Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir.\r\n Altın kaplama gümüş (925 K) ve el işçiliği pastel gri rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Tabanı ayarlanabilir şekildedir.', 420, '43', 1, '9', 34, NULL, 'resimler/products/ON-AY017_01.jpg', '0', NULL, '2020-10-17 00:49:01', NULL, '0'),
(120, 'ON-AY059', 'AY DESIGNS - TURTLE ADDICTION - EMERALD KÜPE', 'Koleksiyon: Shimmery Elegance.\r\nRodyum kaplama gümüş (925 K), zümrüt yeşil rengi kristal, el işçiliği kaplumbağa şeklinde sedef (abalon), tümüyle el işçiliği klipsli küpe. \r\nÖlçüleri 7 cm X 4.5 cm , ağırlığı yaklaşık 38 gramdır. \r\n* Kaplumbağa formundaki sedef parça el işçiliği olmasından dolayı renk, tasarım ve ölçülerinde az da olsa farklılıklar söz konusu olabilir.\r\n * Hassas üründür; özenli ve dikkatli kullanılmalı, direkt su ve ısı kaynağı temasından kaçınılmalı, kutusunda sabit muhafaza edilmelidir.', 590, '41', 1, '1', 34, NULL, 'resimler/products/ON-AY059_02.jpg', '0', NULL, '2020-10-17 00:51:00', NULL, '0'),
(121, 'ON-AY007', 'AY DESİGNS - BEAUTY FÜME KOLYE', 'Blossom Koleksiyonuna ait mineli Beauty Kolye. Beauty serisi doğanın güzelliğini zarif bir tasarım ve yalın detaylar içerisinde ifade etmektedir. Altın kaplama gümüş (925 K) ve el işçiliği füme renk mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 390, '42', 1, '5', 34, NULL, 'resimler/products/ON-AY007_02.jpg', '0', NULL, '2020-10-17 00:54:09', NULL, '0'),
(122, 'ON-AY034', 'AY DESIGNS - HARMONY KIRMIZI KOLYE', 'Blossom Koleksiyonuna ait mineli Harmony kolye. \r\nHarmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır.\r\n Altın kaplama gümüş (925 K), el işçiliği kırmızı ve beyaz rengi mineden oluşmaktadır. \r\nYaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '12', 34, NULL, 'resimler/products/ON-AY034.jpg', '0', NULL, '2020-10-17 00:56:25', NULL, '0'),
(123, 'ON-AY032', 'AY DESIGNS - HARMONY LACİVERT KOLYE', 'Blossom Koleksiyonuna ait mineli Harmony kolye. Harmony serisi doğanın etkileyici denge ve düzenini damalı tasarımıyla stilize ederek hem klasik hem modern bir yorumla, şıklığı farklı renk seçenekleri ile sunmaktadır. Altın kaplama gümüş (925 K), el işçiliği lacivert ve beyaz rengi mineden oluşmaktadır. Yaklaşık ölçüleri 3.5 cm X 3.5 cm, ağırlığı 8 gramdır. Zincir uzunluğu 40 cm + 5 cm uzatma şeklindedir.', 400, '42', 1, '11', 34, NULL, 'resimler/products/ON-AY032_01.jpg', '0', NULL, '2020-10-17 00:57:06', NULL, '0'),
(124, 'MSNER001', 'THE NERO DESIGN - EVIL EYE GÖZ KOLYE BEYAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '3', 34, NULL, 'resimler/products/IMG_1921.jpg', '0', NULL, '2020-10-17 02:32:25', NULL, '0'),
(125, 'MSNER002', 'THE NERO DESIGN - CLOUD BULUT KOLYE MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 194, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1917.jpg', '0', NULL, '2020-10-17 02:34:37', NULL, '0'),
(126, 'MSNER003', 'THE NERO DESIGN- ATOM KOLYE KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60 cm paslanmaz çelik altın kaplama.', 179, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1925.jpg', '0', NULL, '2020-10-17 02:35:51', NULL, '0'),
(127, 'MSNER004', 'THE NERO DESIGN - ATOM KOLYE TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n80cm paslanmaz çelik altın kaplama.', 179, '42', 1, '18', 34, NULL, 'resimler/products/IMG_1931.jpg', '0', NULL, '2020-10-17 02:36:52', NULL, '0'),
(128, 'MSNER005', 'THE NERO DESIGN - ATOM KOLYE YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '17', 34, NULL, 'resimler/products/IMG_1932.jpg', '0', NULL, '2020-10-17 02:37:47', NULL, '0'),
(129, 'MSNER007', 'THE NERO DESIGN - ATOM KOLYE SARI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '18', 34, NULL, 'resimler/products/IMG_1934.jpg', '0', NULL, '2020-10-17 02:38:52', NULL, '0'),
(130, 'MSNER008', 'THE NERO DESIGN - ATOM KOLYE TURKUAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '13', 34, NULL, 'resimler/products/IMG_9606.jpg', '0', NULL, '2020-10-17 02:40:13', NULL, '0'),
(131, 'MSNER009', 'THE NERO DESIGN - ATOM KOLYE PEMBE', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '7', 34, NULL, 'resimler/products/IMG_9613.jpg', '0', NULL, '2020-10-17 02:42:08', NULL, '0'),
(132, 'MSNER010', 'THE NERO DESIGN - ATOM KOLYE MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n80cm paslanmaz çelik altın kaplama.', 179, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1923.jpg', '0', NULL, '2020-10-17 02:43:45', NULL, '0'),
(133, 'MSNER011', 'THE NERO DESIGN - EVIL EYE GÖZ KOLYE KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '12', 34, NULL, 'resimler/products/IMG_1911.jpg', '0', NULL, '2020-10-17 02:45:05', NULL, '0'),
(134, 'MSNER012', 'THE NERO DESIGN - EVIL EYE GÖZ KOLYE MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1914.jpg', '0', NULL, '2020-10-17 02:46:26', NULL, '0'),
(136, 'MSNER014', 'THE NERO DESIGN - EVIL EYE GÖZ KOLYE YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '17', 34, NULL, 'resimler/products/IMG_1912.jpg', '0', NULL, '2020-10-17 02:51:14', NULL, '0'),
(137, 'MSNER015', 'THE NERO DESIGN - YAĞMURLU RAINLY KOLYE ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 1, '42', 179, '3', 34, NULL, 'resimler/products/IMG_1935.jpg', '0', NULL, '2020-10-17 02:52:36', NULL, '0'),
(138, 'MSNER016', 'THE NERO DESIGN - ALICE TEK KOLYE TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '1', 34, NULL, NULL, '0', NULL, '2020-10-17 02:54:03', NULL, '0'),
(139, 'MSNER017', 'THE NERO DESIGN - ALİCE TEK KOLYE TURKUAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '13', 34, NULL, 'resimler/products/IMG_1943.jpg', '0', NULL, '2020-10-17 02:54:50', NULL, '0'),
(140, 'MSNER018', 'THE NERO DESIGN - ALİCE TEK KOLYE MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1946.jpg', '0', NULL, '2020-10-17 02:55:42', NULL, '0'),
(141, 'MSNER019', 'THE NERO DESIGN - ALİCE TEK KOLYE SİYAH', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '1', 34, NULL, 'resimler/products/IMG_1947.jpg', '0', NULL, '2020-10-17 02:57:36', NULL, '0'),
(142, 'MSNER020', 'THE NERO DESIGN - ALİCE TEK KOLYE YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '17', 34, NULL, 'resimler/products/IMG_1948.jpg', '0', NULL, '2020-10-17 03:00:42', NULL, '0'),
(143, 'MSNER021', 'THE NERO DESIGN - ALİCE TEK KOLYE PEMBE', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '7', 34, NULL, 'resimler/products/IMG_1950.jpg', '0', NULL, '2020-10-17 03:02:03', NULL, '0'),
(144, 'MSNER022', 'THE NERO DESIGN - ALİCE TEK KOLYE AÇIK YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '17', 34, NULL, 'resimler/products/IMG_1951.jpg', '0', NULL, '2020-10-17 03:03:32', NULL, '0'),
(145, 'MSNER023', 'THE NERO DESIGN - ALİCE TEK KOLYE AMBER', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '15', 34, NULL, 'resimler/products/IMG_1952.jpg', '0', NULL, '2020-10-17 03:04:26', NULL, '0'),
(147, 'MSNER025', 'THE NERO DESIGN - ALİCE TEK KOLYE ÇİVİT MAVİSİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1946.jpg', '0', NULL, '2020-10-17 03:06:19', NULL, '0'),
(148, 'MSNER026', 'THE NERO DESIGN - ALİCE TEK KOLYE KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '12', 34, NULL, 'resimler/products/IMG_1957.jpg', '0', NULL, '2020-10-17 03:09:50', NULL, '0'),
(149, 'MSNER027', 'THE NERO DESIGN - ALİCE TEK KOLYE CLEAR', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '3', 34, NULL, 'resimler/products/IMG_1959.jpg', '0', NULL, '2020-10-17 03:16:13', NULL, '0'),
(150, 'MSNER028', 'THE NERO DESIGN - ALİCE TEK KOLYE SARI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '18', 34, NULL, 'resimler/products/IMG_1960.jpg', '0', NULL, '2020-10-17 03:17:11', NULL, '0'),
(151, 'MSNER029', 'THE NERO DESIGN - EVIL EYE GÖZ BİLEKLİK BEYAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '3', 34, NULL, 'resimler/products/IMG_8058.jpg', '0', NULL, '2020-10-17 03:21:40', NULL, '0'),
(152, 'MSNER030', 'THE NERO DESIGN - EVIL EYE GÖZ BİLEKLİK YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '17', 34, NULL, 'resimler/products/IMG_8060.jpg', '0', NULL, '2020-10-17 03:22:46', NULL, '0'),
(153, 'MSNER031', 'THE NERO DESIGN - EVIL EYE GÖZ BİLEKLİK MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '4', 34, NULL, 'resimler/products/IMG_8062.jpg', '0', NULL, '2020-10-17 03:23:37', NULL, '0'),
(154, 'MSNER032', 'THE NERO DESIGN - EVIL EYE GÖZ BİLEKLİK KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '12', 34, NULL, 'resimler/products/IMG_8064.jpg', '0', NULL, '2020-10-17 03:24:38', NULL, '0'),
(155, 'MSNER033', 'THE NERO DESIGN - EVIL EYE GÖZ BİLEKLİK MÜRDÜM', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '14', 34, NULL, 'resimler/products/IMG_9959.jpg', '0', NULL, '2020-10-17 03:25:44', NULL, '0'),
(156, 'MSNER034', 'THE NERO DESIGN - YEŞİM YÜZÜK', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nAltın kaplama.', 229, '43', 1, '17', 34, NULL, 'resimler/products/IMG_9160.jpg', '0', NULL, '2020-10-17 03:27:08', NULL, '0'),
(157, 'MSNER035', 'THE NERO DESIGN - YEŞİM KOLYE', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n45 CM PASLANMAZ ÇELİK altın kaplama.', 239, '42', 1, '17', 34, NULL, 'resimler/products/IMG_7559.jpg', '0', NULL, '2020-10-17 03:28:13', NULL, '0'),
(158, 'MSNER036', 'THE NERO DESIGN - YEŞİM KÜPE', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n18 mm halka paslanmaz çelik küpe altın kaplama.', 249, '41', 1, '17', 34, NULL, 'resimler/products/IMG_7613.jpg', '0', NULL, '2020-10-17 03:29:18', NULL, '0'),
(159, 'MSNER037', 'THE NERO DESIGN - ÇUBUK CAM KOLYE ZEYTİN YEŞİLİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '17', 34, NULL, 'resimler/products/IMG_9568.jpg', '0', NULL, '2020-10-17 03:30:54', NULL, '0'),
(160, 'MSNER038', 'THE NERO DESIGN - ÇUBUK CAM KOLYE MÜRDÜM', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '14', 34, NULL, 'resimler/products/IMG_9569.jpg', '0', NULL, '2020-10-17 03:33:29', NULL, '0'),
(161, 'MSNER039', 'THE NERO - ÇUBUK CAM KOLYE TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '18', 34, NULL, 'resimler/products/IMG_9576.jpg', '0', NULL, '2020-10-17 03:34:53', NULL, '0');
INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_description`, `product_price`, `product_category_id`, `product_stok`, `product_props`, `product_main_id`, `product_discount`, `product_picture`, `product_discount_avaliaible`, `product_supplier_id`, `product_added_date`, `product_master_id`, `hide`) VALUES
(162, 'MSNER040', 'THE NERO DESIGN - ÇUBUK CAM KOLYE TURKUAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '13', 34, NULL, 'resimler/products/IMG_9580.jpg', '0', NULL, '2020-10-17 03:36:13', NULL, '0'),
(163, 'MSNER041', 'THE NERO DESIGN - ÇUBUK CAM KOLYE BUZ ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '4', 34, NULL, 'resimler/products/IMG_9585.jpg', '0', NULL, '2020-10-17 03:37:15', NULL, '0'),
(164, 'MSNER042', 'THE NERO DESIGN - ÇUBUK CAM KOLYE SARI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '15', 34, NULL, 'resimler/products/IMG_9589.jpg', '0', NULL, '2020-10-17 03:38:09', NULL, '0'),
(165, 'MSNER043', 'THE NERO DESIGN - ÇUBUK CAM KOLYE ŞEFFAF ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '42', 1, '19', 34, NULL, 'resimler/products/IMG_9594.jpg', '0', NULL, '2020-10-17 03:39:44', NULL, '0'),
(166, 'MSNER044', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK YEŞİL KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nYüzük halkası nazikçe ayarlanabilir altın kaplama.', 259, '43', 1, '17', 34, NULL, 'resimler/products/IMG_9916.jpg', '0', NULL, '2020-10-17 03:40:53', NULL, '0'),
(167, 'MSNER045', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK  MÜRDÜM MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.yüzük halkası nazikçe ayarlanabilir altın kaplama.', 259, '43', 1, '4', 34, NULL, 'resimler/products/IMG_9918.jpg', '0', NULL, '2020-10-17 04:05:13', NULL, '0'),
(168, 'MSNER046', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK OPAK A. YEŞİL TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nYüzük halkası nazikçe ayarlanabilir altın kaplama.', 259, '43', 1, '18', 34, NULL, 'resimler/products/IMG_9921.jpg', '0', NULL, '2020-10-17 04:06:49', NULL, '0'),
(169, 'MSNER047', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK OPAK A. TURKUAZ TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nYüzük halkası nazikçe ayarlanabilir altın kaplama.', 259, '43', 1, '13', 34, NULL, 'resimler/products/IMG_9922.jpg', '0', NULL, '2020-10-17 04:07:40', NULL, '0'),
(170, 'MSNER048', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK YEŞİL TURUNCU', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nYüzük halkası nazikçe ayarlanabilir altın kaplama.', 259, '43', 1, '17', 34, NULL, 'resimler/products/IMG_9924.jpg', '0', NULL, '2020-10-17 04:08:35', NULL, '0'),
(171, 'MSNER049', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK AMBER TURKUAZ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 249, '43', 1, '1', 34, NULL, NULL, '0', NULL, '2020-10-17 04:09:34', NULL, '0'),
(172, 'MSNER050', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK KIRMIZI MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 249, '43', 1, '12', 34, NULL, NULL, '0', NULL, '2020-10-17 04:10:24', NULL, '0'),
(173, 'MSNER051', 'THE NERO DESIGN - ÇUBUK CAM YÜZÜK TURUNCU MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 249, '43', 1, '4', 34, NULL, NULL, '0', NULL, '2020-10-17 04:11:12', NULL, '0'),
(174, 'MSNER052', 'THE NERO DESIGN - EVIL EYE GÖZ YÜZÜK KIRMIZI', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '43', 1, '12', 34, NULL, 'resimler/products/IMG_9942.jpg', '0', NULL, '2020-10-17 04:12:50', NULL, '0'),
(175, 'MSNER053', 'THE NERO DESIGN - EVIL EYE GÖZ YÜZÜK MÜRDÜM', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n60cm paslanmaz çelik altın kaplama.', 179, '43', 1, '14', 34, NULL, 'resimler/products/IMG_9944.jpg', '0', NULL, '2020-10-17 21:52:20', NULL, '0'),
(176, 'MSNER054', 'THE NERO DESIGN - EVIL EYE GÖZ YÜZÜK MAVİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 179, '43', 1, '4', 34, NULL, 'resimler/products/IMG_9946.jpg', '0', NULL, '2020-10-17 21:53:42', NULL, '0'),
(177, 'MSNER055', 'THE NERO DESIGN - EVIL EYE GÖZ YÜZÜK YEŞİL', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 179, '43', 1, '17', 34, NULL, 'resimler/products/IMG_9948.jpg', '0', NULL, '2020-10-17 21:54:47', NULL, '0'),
(178, 'MSNER056', 'THE NERO DESIGN - ATOM KÜPE ŞEFFAF', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n18 mm paslanmaz çelik halka küpe altın kaplama.', 229, '41', 1, '19', 34, NULL, 'resimler/products/IMG_9997.jpg', '0', NULL, '2020-10-17 21:56:07', NULL, '0'),
(179, 'MSNER057', 'THE NERO DESIGN - DAMLA SİYAH KÜPE', '1205 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n925 ayar gümüş küpe halkası 3 cm çap altın kaplama.', 249, '41', 1, '1', 34, NULL, 'resimler/products/IMG_9985.jpg', '0', NULL, '2020-10-17 21:57:00', NULL, '0'),
(180, 'MSNER058', 'THE NERO DESIGN - DAMLA ŞEFFAF KÜPE', '1205 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n925 ayar gümüş küpe halkası 3 cm çap altın kaplama.', 249, '41', 1, '19', 34, NULL, 'resimler/products/IMG_9979.jpg', '0', NULL, '2020-10-17 21:58:07', NULL, '0'),
(181, 'MSNER059', 'THE NERO DESIGN - DAMLA SOMON KÜPE', '1205 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n925 ayar gümüş küpe halkası 3 cm çap altın kaplama.', 249, '41', 1, '7', 34, NULL, 'resimler/products/IMG_9990.jpg', '0', NULL, '2020-10-17 21:59:13', NULL, '0'),
(183, 'MSNER060', 'THE NERO DESIGN - MAVİ 5 BALIKLI KOLYE ', '1208 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\n45 cm paslanmaz çelik altın kaplama.', 450, '42', 1, '4', 34, NULL, 'resimler/products/IMG_1210.jpg', '0', NULL, '2020-10-17 22:00:45', NULL, '0'),
(184, 'MSNER061', 'THE NERO DESIGN - ŞEFFAF 5 BALIKLI KOLYE ', '1209 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur. 45 cm paslanmaz çelik altın kaplama.', 450, '42', 1, '19', 34, NULL, 'resimler/products/IMG_1215.jpg', '0', NULL, '2020-10-17 22:01:36', NULL, '0'),
(185, 'MSNER062', 'THE NERO DESIGN - BALIK GÖZ BİLEKLİK', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.\r\nParaşüt ip asansörlü altın kaplama.', 129, '46', 1, '11', 34, NULL, 'resimler/products/IMG_0723.jpg', '0', NULL, '2020-10-17 22:02:36', NULL, '0'),
(186, 'MSNER063', 'THE NERO DESIGN - KILÇIK BİLEKLİK', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.Paraşüt ip asansörlü altın kaplama.', 129, '46', 1, '11', 34, NULL, 'resimler/products/IMG_0727.jpg', '0', NULL, '2020-10-17 22:03:33', NULL, '0'),
(187, 'MSNER064', 'THE NERO DESIGN- KURUKAFA MEMENTO MORİ YÜZÜK SİYAH ALTIN KAPLAMA ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.Cam heykel siyah nazikçe ayarlanabilir altın kaplama.', 300, '43', 1, '1', 34, NULL, 'resimler/products/IMG_0731.jpg', '0', NULL, '2020-10-17 22:08:05', NULL, '0'),
(188, 'MSNER065', 'THE NERO DESIGN - KURUKAFA MEMENTO MORİ YÜZÜK SİYAH GÜMÜŞ KAPLAMA ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.Cam heykel siyah nazikçe ayarlanabilir GÜMÜŞ kaplama.', 300, '43', 1, '1', 34, NULL, 'resimler/products/IMG_0736.jpg', '0', NULL, '2020-10-17 22:11:24', NULL, '0'),
(189, 'MSNER066', 'THE NERO DESIGN - MAVİ BALIK KOLYE ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60 cm paslanmaz çelik altın kaplama.', 249, '42', 1, '4', 34, NULL, 'resimler/products/IMG_0709.jpg', '0', NULL, '2020-10-17 22:12:14', NULL, '0'),
(190, 'MSNER024', 'THE NERO DESIGN - ALICE EK KOLYE ZEYTİN YEŞİLİ', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '17', 34, NULL, 'resimler/products/IMG_1953.jpg', '0', NULL, '2020-10-17 22:18:48', NULL, '0'),
(191, 'MSNER013', 'THE NERO DESIGN - EVIL EYE GÖZ KOLYE MÜRDÜM', '1200 derecede eritilmiş Murano camından elde şekillendirilerek Alice in Wonderland karakterlerinin renkli hayatlarından ilham alınarak koleksiyonun parçası olmuştur.60cm paslanmaz çelik altın kaplama.', 150, '42', 1, '14', 34, NULL, 'resimler/products/IMG_1913.jpg', '0', NULL, '2020-10-17 22:20:42', NULL, '0'),
(192, 'MSNER101', 'THE NERO DESIGN - TOHUM PARA KÜPE GÖZ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '41', 10, '4', 34, NULL, 'resimler/products/IMG_0047.jpg', '0', NULL, '2020-10-17 22:33:59', NULL, '0'),
(193, 'MSNER102', 'THE NERO DESIGN - TOHUM PARA KÜPE 3LÜ GÜMÜŞ KAPL.', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '41', 10, '17', 34, NULL, 'resimler/products/IMG_0034.jpg', '0', NULL, '2020-10-17 22:36:59', NULL, '0'),
(194, 'MSNER103', 'THE NERO DESIGN - TOHUM PARA KÜPE 3LÜ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '41', 10, '17', 34, NULL, 'resimler/products/IMG_0033.jpg', '0', NULL, '2020-10-17 22:38:32', NULL, '0'),
(195, 'MSNER104', 'NERO DESIGN - TOHUM PARA KÜPE MAVİ GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '4', 34, NULL, 'resimler/products/IMG_0035.jpg', '0', NULL, '2020-10-17 22:40:36', NULL, '0'),
(196, 'MSNER105', 'THE NERO DESIGN - TOHUM PARA KÜPE KIRMIZI GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '12', 34, NULL, 'resimler/products/IMG_0031.jpg', '0', NULL, '2020-10-17 22:43:12', NULL, '0'),
(197, 'MSNER120', 'THE NERO DESIGN - TOHUM KÜPE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 259, '41', 5, '17', 34, NULL, 'resimler/products/IMG_2110.jpg', '0', NULL, '2020-10-17 22:56:51', NULL, '0'),
(198, 'MSNER121', 'THE NERO DESIGN - TOHUM GEO ÇOKGEN KIRMIZI ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '12', 29, NULL, 'resimler/products/IMG_9107.jpg', '0', NULL, '2020-10-17 22:58:09', NULL, '0'),
(199, 'MSNER122', 'THE NERO DESIGN - TOHUM GEO ÇOKGEN YEŞİL ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '17', 34, NULL, 'resimler/products/IMG_9111.jpg', '0', NULL, '2020-10-17 22:59:11', NULL, '0'),
(200, 'MSNER123 ', 'THE NERO DESIGN - TOHUM GEO ÇOKGEN MAVİ ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '4', 34, NULL, 'resimler/products/IMG_9945.jpg', '0', NULL, '2020-10-17 23:00:41', NULL, '0'),
(201, 'MSNER124', 'THE NERO DESIGN - TOHUM GEO DÖRTGEN YEŞİL ALTIN KAPLAMA KOPLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '17', 34, NULL, 'resimler/products/IMG_1940.jpg', '0', NULL, '2020-10-17 23:02:59', NULL, '0'),
(202, 'MSNER125', 'THE NERO DESIGN - TOHUM GEO DÖRTGEN KIRMIZI ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '12', 34, NULL, 'resimler/products/IMG_9943.jpg', '0', NULL, '2020-10-17 23:04:04', NULL, '0'),
(203, 'MSNER126', 'THE NERO DESIGN -TOHUM GEO DÖRTGEN MAVİ ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '42', 2, '4', 34, NULL, 'resimler/products/IMG_9123.jpg', '0', NULL, '2020-10-17 23:05:05', NULL, '0'),
(205, 'MSNER127', 'THE NERO DESIGN - TOHUM GEO DÜZ MAVİ ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '42', 2, '4', 34, NULL, 'resimler/products/IMG_9133.jpg', '0', NULL, '2020-10-17 23:08:56', NULL, '0'),
(206, 'MSNER128', 'THE NERO DESIGN - TOHUM GEO DÜZ YEŞİL ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '42', 2, '17', 34, NULL, 'resimler/products/IMG_9136.jpg', '0', NULL, '2020-10-17 23:10:32', NULL, '0'),
(207, 'MSNER129', 'THE NERO DESIGN - TOHUM GEO DÜZ KIRMIZI ALTIN KAPLAMA KOLYE', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '42', 2, '12', 34, NULL, 'resimler/products/IMG_9141.jpg', '0', NULL, '2020-10-17 23:11:41', NULL, '0'),
(208, 'MSNER130', 'THE NERO DESIGN - TOHUM PARA BİLEKLİK KIRMIZI ALTIN KAPLAMA BİLEKLİK', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '46', 5, '12', 34, NULL, 'resimler/products/IMG_0084.jpg', '0', NULL, '2020-10-17 23:12:52', NULL, '0'),
(209, 'MSNER131', 'THE NERO DESIGN - TOHUM PARA BİLEKLİK MAVİ ALTIN KAPLAMA ', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '46', 5, '4', 34, NULL, 'resimler/products/IMG_0322.jpg', '0', NULL, '2020-10-18 12:59:04', NULL, '0'),
(210, 'MSNER132', 'THE NERO DESIGN - TOHUM PARA BİLEKLİK YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '46', 5, '17', 34, NULL, 'resimler/products/IMG_2181.jpg', '0', NULL, '2020-10-18 13:00:18', NULL, '0'),
(211, 'MSNER133', 'THE NERO DESIGN - TOHUM KÜÇÜK HALKA BİLEKLİK YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 89, '46', 5, '17', 34, NULL, 'resimler/products/IMG_2183.jpg', '0', NULL, '2020-10-18 13:03:11', NULL, '0'),
(212, 'MSNER134', 'THE NERO DESIGN - TOHUM KÜÇÜK HALKA BİLEKLİK KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 89, '46', 5, '12', 34, NULL, 'resimler/products/IMG_0080.jpg', '0', NULL, '2020-10-18 13:04:57', NULL, '0'),
(213, 'MSNER135', 'THE NERO DESIGN - TOHUM KÜÇÜK HALKA BİLEKLİK MAVİ ALTIN KAPLAMA ', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 89, '46', 5, '4', 34, NULL, 'resimler/products/IMG_0078.jpg', '0', NULL, '2020-10-18 13:06:01', NULL, '0'),
(214, 'MSNER136', 'THE NERO DESIGN - TOHUM BÜYÜK HALKA BİLEKLİK KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 98, '46', 5, '12', 34, NULL, 'resimler/products/IMG_0101.jpg', '0', NULL, '2020-10-18 13:06:51', NULL, '0'),
(215, 'MSNER137', 'THE NERO DESIGN - TOHUM BÜYÜK HALKA BİLEKLİK MAVİ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 98, '41', 5, '4', 34, NULL, 'resimler/products/IMG_0104.jpg', '0', NULL, '2020-10-18 13:09:26', NULL, '0'),
(216, 'MSNER138', 'THE NERO DESIGN - TOHUM BÜYÜK HALKA BİLEKLİK YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 98, '46', 5, '17', 34, NULL, 'resimler/products/IMG_0327.jpg', '0', NULL, '2020-10-18 13:10:34', NULL, '0'),
(217, 'MSNER106', 'THE NERO DESIGN -TOHUM PARA KÜPE YEŞİL GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '17', 34, NULL, 'resimler/products/IMG_0029.jpg', '0', NULL, '2020-10-18 13:19:03', NULL, '0'),
(218, 'MSNER107', 'THE NERO DESIGN - TOHUM PARA KÜPE KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '12', 34, NULL, 'resimler/products/IMG_2100.jpg', '0', NULL, '2020-10-18 13:20:06', NULL, '0'),
(219, 'MSNER108', 'THE NERO DESIGN - TOHUM PARA KÜPE MAVİ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '4', 34, NULL, 'resimler/products/IMG_0047.jpg', '0', NULL, '2020-10-18 13:20:52', NULL, '0'),
(220, 'MSNER109', 'THE NERO DESIGN - TOHUM PARA KÜPE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 119, '41', 10, '17', 34, NULL, 'resimler/products/IMG_2102.jpg', '0', NULL, '2020-10-18 13:21:47', NULL, '0'),
(221, 'MSNER110', 'THE NERO DESIGN - TOHUM HELEN KÜPE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '17', 34, NULL, 'resimler/products/IMG_2103.jpg', '0', NULL, '2020-10-18 13:22:45', NULL, '0'),
(222, 'MSNER111', 'THE NERO DESIGN - TOHUM HELEN KÜPE KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '12', 34, NULL, 'resimler/products/IMG_2104.jpg', '0', NULL, '2020-10-18 13:23:54', NULL, '0'),
(223, 'MSNER112', 'THE NERO DESIGN - TOHUM HELEN KÜPE MAVİ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '4', 34, NULL, 'resimler/products/IMG_2106.jpg', '0', NULL, '2020-10-18 13:28:08', NULL, '0'),
(224, 'MSNER113', 'THE NERO DESIGN - TOHUM HELEN KÜPE GÖZ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 179, '41', 2, '4', 34, NULL, 'resimler/products/IMG_2105.jpg', '0', NULL, '2020-10-18 13:51:43', NULL, '0'),
(225, 'MSNER114', 'THE NERO DESIGN - TOHUM OVAL KÜPE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '17', 34, NULL, 'resimler/products/IMG_0051.jpg', '0', NULL, '2020-10-18 13:52:49', NULL, '0'),
(226, 'MSNER115', 'THE NERO DESIGN - TOHUM OVAL KÜPE MAVİ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '4', 34, NULL, 'resimler/products/IMG_0052.jpg', '0', NULL, '2020-10-18 13:54:15', NULL, '0'),
(227, 'MSNER116', 'THE NERO DESIGN - TOHUM OVAL KÜPE KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 169, '41', 2, '12', 34, NULL, 'resimler/products/IMG_0056.jpg', '0', NULL, '2020-10-18 13:55:15', NULL, '0'),
(228, 'MSNER117', 'THE NERO DESIGN - TOHUM KOLYE KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 229, '42', 10, '12', 34, NULL, 'resimler/products/IMG_9114.jpg', '0', NULL, '2020-10-18 13:56:23', NULL, '0'),
(229, 'MSNER118', 'THE NERO DESIGN - TOHUM KOLYE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 229, '42', 10, '17', 34, NULL, 'resimler/products/IMG_9117.jpg', '0', NULL, '2020-10-18 13:57:49', NULL, '0'),
(230, 'MSNER119', 'THE NERO DESIGN - TOHUM KÜPE KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 259, '41', 5, '12', 34, NULL, 'resimler/products/IMG_2109.jpg', '0', NULL, '2020-10-18 13:58:48', NULL, '0'),
(231, 'MSNER120', 'THE NERO DESIGN - TOHUM KÜPE YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 259, '41', 5, '17', 34, NULL, 'resimler/products/IMG_2110.jpg', '0', NULL, '2020-10-18 14:00:59', NULL, '0'),
(232, 'MSNER145', 'THE NERO DESIGN - TOHUM YÜZÜK MAVİ ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '43', 5, '13', 34, NULL, 'resimler/products/_MGL7871.jpg', '0', NULL, '2020-10-18 14:04:10', NULL, '0'),
(233, 'MSNER146', 'THE NERO DESIGN - TOHUM YÜZÜK KIRMIZI ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '43', 5, '12', 34, NULL, 'resimler/products/_MGL7872.jpg', '0', NULL, '2020-10-18 14:05:32', NULL, '0'),
(234, 'MSNER147', 'THE NERO DESIGN - TOHUM YÜZÜK YEŞİL ALTIN KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 159, '43', 5, '17', 34, NULL, 'resimler/products/_MGL7870.jpg', '0', NULL, '2020-10-18 16:56:45', NULL, '0'),
(235, 'MSNER139', 'THE NERO DESIGN -TOHUM KÜÇÜK HALKA BİLEKLİK KIRMIZI GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 79, '46', 5, '12', 34, NULL, 'resimler/products/IMG_0081.jpg', '0', NULL, '2020-10-18 16:59:03', NULL, '0'),
(236, 'MSNER140', 'THE NERO DESIGN - TOHUM KÜÇÜK HALKA BİLEKLİK YEŞİL GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 79, '46', 5, '17', 34, NULL, 'resimler/products/IMG_0083.jpg', '0', NULL, '2020-10-18 17:00:00', NULL, '0'),
(237, 'MSNER141', 'THE NERO DESIGN - TOHUM KÜÇÜK HALKA BİLEKLİK MAVİ GÜMÜŞ KAPLAMA', 'Toprağa düşen bir damlanın, tohumu filize dönüştüren gücünü simgeler! Tohum formundaki renkli cam boncuklar alevde şekillendirme tekniği ile el işçiliğinde üretilmiştir. Kaplamalı metal formların üzerine renkli cam boncuklar aplike edilerek tasarım hayata geçirilmiştir. ', 79, '46', 5, '4', 34, NULL, 'resimler/products/IMG_0082.jpg', '0', NULL, '2020-10-18 17:00:46', NULL, '0'),
(238, 'POM001', 'POM - BEL ÇANTASI BORDO', 'Her dönem tercih edilen zarf çanta modeline farklı bir yorum katarak bel çantasına dönüştüren POM Datça butik deri atölyesi, günlük ihtiyaçlarınızı karşılayacak bu bel çantasını tasarladı.İçindeki 1 adet çıt çıtlı deri cep sayesinde kart ve paralarınızı telefon ve anahtarlarınızdan ayrı tutarak içinde taşıyabilirsiniz.\r\nUzunluğu ayarlanabilir ya da tamamen çıkarılabilir çanta kayışının fonksiyonelliği sayesinde dilerseniz bel çantanızı; çapraz, tek omuz ya da el çantası olarak 4 farklı şekilde kullanabilirsiniz.\r\nÇantanın tamamı geleneksel saraciye teknikleri uygulanarak dana derisinden kesilen parçalarla ve mumlu iplikle elde dikilmiştir.\r\nSatın alacağınız her deri çanta el yapımı olması ve derinin doğal yapısından kaynaklanan farklılıklarla benzersiz ve size özel olacaktır.', 450, '47', 1, '2', 31, NULL, 'resimler/products/POM_beltbag_bordo4.jpg', '0', NULL, '2020-10-18 20:42:26', NULL, '0'),
(239, 'POM002', 'POM - BEL ÇANTASI NATURAL', 'Her dönem tercih edilen zarf çanta modeline farklı bir yorum katarak bel çantasına dönüştüren POM Datça butik deri atölyesi, günlük ihtiyaçlarınızı karşılayacak bu bel çantasını tasarladı.İçindeki 1 adet çıt çıtlı deri cep sayesinde kart ve paralarınızı telefon ve anahtarlarınızdan ayrı tutarak içinde taşıyabilirsiniz.\r\nUzunluğu ayarlanabilir ya da tamamen çıkarılabilir çanta kayışının fonksiyonelliği sayesinde dilerseniz bel çantanızı; çapraz, tek omuz ya da el çantası olarak 4 farklı şekilde kullanabilirsiniz.\r\nÇantanın tamamı geleneksel saraciye teknikleri uygulanarak dana derisinden kesilen parçalarla ve mumlu iplikle elde dikilmiştir.\r\nSatın alacağınız her deri çanta el yapımı olması ve derinin doğal yapısından kaynaklanan farklılıklarla benzersiz ve size özel olacaktır', 450, '47', 1, '10', 31, NULL, 'resimler/products/POM_beltbag_natural4.jpg', '0', NULL, '2020-10-18 22:03:45', NULL, '0'),
(240, 'POM003', 'POM - BEL ÇANTASI SİYAH', 'Her dönem tercih edilen zarf çanta modeline farklı bir yorum katarak bel çantasına dönüştüren POM Datça butik deri atölyesi, günlük ihtiyaçlarınızı karşılayacak bu bel çantasını tasarladı.\r\nİçindeki 1 adet çıt çıtlı deri cep sayesinde kart ve paralarınızı telefon ve anahtarlarınızdan ayrı tutarak içinde taşıyabilirsiniz.\r\nUzunluğu ayarlanabilir ya da tamamen çıkarılabilir çanta kayışının fonksiyonelliği sayesinde dilerseniz bel çantanızı; çapraz, tek omuz ya da el çantası olarak 4 farklı şekilde kullanabilirsiniz.\r\nÇantanın tamamı geleneksel saraciye teknikleri uygulanarak dana derisinden kesilen parçalarla ve mumlu iplikle elde dikilmiştir.\r\nSatın alacağınız her deri çanta el yapımı olması ve derinin doğal yapısından kaynaklanan farklılıklarla benzersiz ve size özel olacaktır.', 450, '47', 1, '1', 31, NULL, 'resimler/products/POM_beltbag_siyah4.jpg', '0', NULL, '2020-10-18 22:10:57', NULL, '0'),
(241, 'POM004', 'POM - BEL ÇANTASI YEŞİL', 'Her dönem tercih edilen zarf çanta modeline farklı bir yorum katarak bel çantasına dönüştüren POM Datça butik deri atölyesi, günlük ihtiyaçlarınızı karşılayacak bu bel çantasını tasarladı.\r\nİçindeki 1 adet çıt çıtlı deri cep sayesinde kart ve paralarınızı telefon ve anahtarlarınızdan ayrı tutarak içinde taşıyabilirsiniz.\r\nUzunluğu ayarlanabilir ya da tamamen çıkarılabilir çanta kayışının fonksiyonelliği sayesinde dilerseniz bel çantanızı; çapraz, tek omuz ya da el çantası olarak 4 farklı şekilde kullanabilirsiniz.\r\nÇantanın tamamı geleneksel saraciye teknikleri uygulanarak dana derisinden kesilen parçalarla ve mumlu iplikle elde dikilmiştir.\r\nSatın alacağınız her deri çanta el yapımı olması ve derinin doğal yapısından kaynaklanan farklılıklarla benzersiz ve size özel olacaktır.', 450, '47', 1, '17', 31, NULL, 'resimler/products/POM_beltbag_yesil3.jpg', '0', NULL, '2020-10-18 22:31:50', NULL, '0'),
(244, 'GOM-TN-KL', 'OSTRACO - White tunic with evileye', ' %100 koton vual kumaş', 250, '49', 1, '3', 29, NULL, 'resimler/products/White-tunic-with-evileye-2.jpg', '0', NULL, '2020-10-19 21:36:07', NULL, '0'),
(245, 'GOM-TN-KL', 'OSTRACO - White tunic with coral', '%100 Koton vual kumaş', 250, '49', 1, '3', 29, NULL, 'resimler/products/White-tunic-with-coral-2.jpg', '0', NULL, '2020-10-19 21:37:19', NULL, '0'),
(246, 'KIM-TN STD', 'OSTRACO - Kimono tunic with evileye', '%100 Koton vual kumaş', 250, '48', 1, '2', 29, NULL, 'resimler/products/Kimono-tunic-with-evileye-1.jpg', '0', NULL, '2020-10-19 21:38:47', NULL, '0'),
(247, 'KIM-TN STD', 'OSTRACO - Kimono tunic with coral', '%100 Koton vual kumaş', 250, '48', 1, '2', 29, NULL, 'resimler/products/Kimono-tunic-with-coral-1.jpg', '0', NULL, '2020-10-19 21:39:24', NULL, '0'),
(248, 'GOM-TN-KLS', 'OSTRACO - White vest tunic with evileye', '%100 Koton vual kumaş ', 200, '49', 1, '3', 29, NULL, 'resimler/products/White-vest-tunic-with-evileye-2.jpg', '0', NULL, '2020-10-19 21:40:26', NULL, '0'),
(249, 'GOM-TN-KLS', 'OSTRACO - White vest tunic with coral', '%100 Koton vual kumaş', 200, '49', 1, '3', 29, NULL, 'resimler/products/White-vest-tunic-with-coral-1.jpg', '0', NULL, '2020-10-19 21:41:50', NULL, '0'),
(250, 'KL-T-SH', 'OSTRACO - White classic basic t-shirt with evileye', '%100 Koton vual kumaş ', 100, '51', 1, '3', 29, NULL, 'resimler/products/White-classic-basic-t-shirt-with-evileye.jpg', '0', NULL, '2020-10-19 21:50:26', NULL, '0'),
(251, 'BOY-T-SH', 'OSTRACO - White boyfriend basic t-shirt with evileye', '%100 Koton vual kumaş ', 100, '51', 1, '3', 29, NULL, 'resimler/products/White-boyfriend-basic-t-shirt-with-evileye.jpg', '0', NULL, '2020-10-19 21:51:11', NULL, '0'),
(253, 'PAN-DUZ', 'OSTRACO - White soft panama with evileye', 'Standart/  ayarlanabilir', 250, '50', 1, '3', 34, NULL, 'resimler/products/white-soft-panama-evileye.jpg', '0', NULL, '2020-10-19 21:53:06', NULL, '0'),
(254, 'PAN-DUZ', 'OSTRACO - White soft panama with coral', 'Standart/  ayarlanabilir', 250, '50', 1, '2', 34, NULL, 'resimler/products/white-soft-panama-coral.jpg', '0', NULL, '2020-10-19 22:06:00', NULL, '0'),
(255, 'P001', 'POISON BY KIRAMER - ARI KÜPE KIRMIZI', 'Bronz üzeri 18 ayar altın kaplama.\r\n El yapımı mine.', 350, '41', 1, '12', 34, NULL, 'resimler/products/1ARIK.jpg', '0', NULL, '2020-10-20 15:12:59', NULL, '0'),
(256, 'P002', 'POISON BY KIRAMER - ARI KOLYE SİYAH', 'Bronz üzeri %100 altın kaplama.\r\n Uzunluk 40 cm, ağırlık 177 gr.\r\n Gümüş açma kapama.\r\n El yapımı mine.', 875, '42', 1, '1', 34, NULL, 'resimler/products/1ARIKOL.jpg', '0', NULL, '2020-10-20 15:13:57', NULL, '0'),
(257, 'P003', 'POISON BY KIRAMER - ARI KÜPE SİYAH', 'Bronz üzeri 18 ayar altın kaplama.\r\n El yapımı mine.', 350, '41', 1, '1', 29, NULL, 'resimler/products/1ARIS.jpg', '0', NULL, '2020-10-20 15:15:07', NULL, '0'),
(258, 'P004', 'POISON BY KIRAMER - POISON KÜPE BEYAZ', 'Bronz üzeri altın kaplama.\r\n El yapımı mine. \r\nGümüş pim ve kelebek. \r\nZircon taş. \r\nTek küpe ağırlığı 12,5 gr.', 425, '41', 1, '3', 34, NULL, 'resimler/products/IMG_6887.jpg', '0', NULL, '2020-10-20 15:16:46', NULL, '0'),
(259, 'P005', 'POISON BY KIRAMER - Strawberry Batter Button -Halka-', 'Bronz üzeri 18 ayar altın kaplama. \r\nEl yapımı mine. \r\nGümüş pim ve kelebek.', 425, '41', 1, '12', 34, NULL, 'resimler/products/IMG_9548.jpg', '0', NULL, '2020-10-20 15:26:38', NULL, '0'),
(260, 'P006', 'POISON BY KIRAMER - Strawberry Batter  Button Kırmızı ', 'Bronz üzeri 18 ayar altın kaplama. \r\nEl yapımı mine.\r\nGümüş pim ve kelebek.', 600, '41', 1, '1', 34, NULL, NULL, '0', NULL, '2020-10-20 15:28:17', NULL, '0'),
(261, 'P007', 'POISON BY KIRAMER - Frida Küpe', '\"Bronz üzeri altın kaplama\r\nEl astar kesim\r\nTek küpe ağırlık: 7,5gr\"', 425, '41', 1, '15', 34, NULL, 'resimler/products/IMG_8722.jpg', '0', NULL, '2020-10-20 15:29:53', NULL, '0'),
(262, 'P008', 'POISON BY KIRAMER - Koi Fish Küpe Narçiçeği', 'Bronz üzeri 18 ayar altın kaplama\r\nZircon Taş\r\nEl yapımı mine\r\nAğırlık tek küpe:8 gr', 480, '41', 1, '12', 34, NULL, 'resimler/products/IMG_7857.jpg', '0', NULL, '2020-10-20 15:30:54', NULL, '0'),
(263, 'P010', 'POISON BY KIRAMER - ARI KOLYE KIRMIZI', 'Bronz üzeri %100 altın kaplama. \r\nUzunluk 40 cm, ağırlık 177 gr.\r\n Gümüş açma kapama. \r\nEl yapımı mine.', 875, '42', 1, '12', 34, NULL, 'resimler/products/IMG_9543.jpg', '0', NULL, '2020-10-20 15:33:39', NULL, '0'),
(264, 'P011', 'POISON BY KIRAMER - Strawberry Batter Button Küpe', 'Bronz üzeri 18 ayar altın kaplama. \r\nEl yapımı mine. \r\nGümüş pim ve kelebek.\r\n', 350, '41', 1, '12', 34, NULL, 'resimler/products/IMG_9557.jpg', '0', NULL, '2020-10-20 15:34:55', NULL, '0'),
(265, 'P015', 'POISON BY KIRAMER - Koi Fish Kolye  Lila', 'Bronz üzeri 18 ayar altın kaplama\r\nZirkon Taş\r\nEl yapımı mine', 425, '42', 1, '14', 34, NULL, 'resimler/products/IMG_9877.jpg', '0', NULL, '2020-10-20 15:36:25', NULL, '0'),
(266, 'P016', 'POISON BY KIRAMER - Koi Fish Küpe Lacivert', 'Bronz üzeri 18 ayar altın kaplama\r\nEl yapımı mine\r\nGümüş pim ve kelebek', 480, '41', 1, '11', 34, NULL, 'resimler/products/IMG_9908-kopyası.jpg', '0', NULL, '2020-10-20 15:37:15', NULL, '0'),
(267, 'P017', 'POISON BY KIRAMER - Koi Fish Küpe Lila', 'Bronz üzeri 18 ayar altın kaplama\r\nZircon Taş\r\nEl yapımı mine\r\nAğırlık tek küpe:8 gr', 480, '41', 1, '14', 34, NULL, 'resimler/products/IMG_9896.jpg', '0', NULL, '2020-10-20 15:38:17', NULL, '0'),
(268, 'P018', 'POISON BY KIRAMER - Koi Fish Kolye Beyaz/Turkuaz', 'Bronz üzeri 18 ayar altın kaplama\r\nZircon Taş\r\nEl yapımı mine', 425, '42', 1, '13', 34, NULL, 'resimler/products/IMG_9884.jpg', '0', NULL, '2020-10-20 15:39:17', NULL, '0'),
(269, 'P013', 'POISON BY KIRAMER - Strawberry Batter Button -Siyah', 'Bronz üzeri 18 ayar altın kaplama\r\nEl yapımı mine\r\nGümüş pim ve kelebe', 640, '41', 1, '1', 34, NULL, 'resimler/products/IMG_9560-min.jpg', '0', NULL, '2020-10-20 17:41:54', NULL, '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `properties`
--

CREATE TABLE `properties` (
  `prop_id` int(11) NOT NULL,
  `prop_name` text COLLATE utf8_turkish_ci,
  `value` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `properties`
--

INSERT INTO `properties` (`prop_id`, `prop_name`, `value`) VALUES
(1, 'Siyah', '#000'),
(2, 'Bordo', '#AC0B0B'),
(3, 'BEYAZ', '#FBF9F9'),
(4, 'MAVİ', '#003BF7'),
(5, 'füme', '#000000'),
(6, 'haki', '#214D1F'),
(7, 'SOMON', '#BE5692'),
(8, 'füme', '#7B4949'),
(9, 'gri', '#373030'),
(10, 'kahverengi', '#6D4949'),
(11, 'lacivert', '#000000'),
(12, 'kırmızı', '#D93232'),
(13, 'turkuaz', '#3AB2B8'),
(14, 'mor', '#6E4FBC'),
(15, 'ALTIN', '#C0C042'),
(16, 'GÜMÜŞ', '#969391'),
(17, 'yeşil', '#31905A'),
(18, 'TURUNCU', '#E9A41A'),
(19, 'şeffaf', '#F1DEDE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `properties_detail`
--

CREATE TABLE `properties_detail` (
  `id` int(11) NOT NULL,
  `prop_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `prop_detail` text COLLATE utf8_turkish_ci,
  `prop_amount` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `properties_detail`
--

INSERT INTO `properties_detail` (`id`, `prop_id`, `product_id`, `prop_detail`, `prop_amount`) VALUES
(1, NULL, 31, 'L', '2'),
(2, NULL, 31, 'M', '4'),
(3, NULL, 31, 'S', '8'),
(4, NULL, 33, 'l', '5'),
(5, NULL, 34, 'L', '12'),
(6, NULL, 35, 's', '12'),
(7, NULL, 36, 's', '12'),
(8, NULL, 36, 'm', '12'),
(9, NULL, 37, 'S', '12'),
(10, NULL, 38, 's', '12'),
(11, NULL, 39, 's', '4'),
(12, NULL, 125, '1', '2'),
(13, NULL, 125, '1', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopping`
--

CREATE TABLE `shopping` (
  `id` int(11) NOT NULL,
  `user_id` text COLLATE utf8_turkish_ci,
  `product_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT '1',
  `size` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `shopping`
--

INSERT INTO `shopping` (`id`, `user_id`, `product_id`, `amount`, `size`) VALUES
(5, '3c7d7c3913d08ca63a702989e82da212', 36, 0, NULL),
(6, '635a6c0cb037e31f6dfcb5c7cb44fb64', 36, 0, NULL),
(7, '945e431a59041d40268aca39071ce971', 36, 0, NULL),
(8, 'ed95256c4ebcc2cb45f9cc8694e76908', 36, 1, 's'),
(9, '676bf21c9a39bf3d33c5e607f5d38795', 36, 1, 's'),
(10, 'f7ce03df7ba2bec9c3ab740f531f6748', 36, 8, 's'),
(12, '7945d6536c5643c9ed9e07779fcbd88d', 38, 1, 's'),
(13, '7945d6536c5643c9ed9e07779fcbd88d', 39, 1, 's'),
(14, 'bfc1fc9c0cddb022ae430dab6c6e9ffb', 49, 2, '0'),
(15, '9ca90a9d996c0318d6c0b1fb3504a81c', 107, 1, '0'),
(16, '588c6b71c334279cb15478960755f77d', 156, 1, '0'),
(17, '58fa20585c12ba2e59a03e0aa4989d48', 118, 1, '0'),
(18, '1', 244, 2, '0'),
(19, '32f0a4dd52cbec3485d384034c2b4840', 105, 1, '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first_name` text COLLATE utf8_turkish_ci,
  `user_last_name` text COLLATE utf8_turkish_ci,
  `user_mail` text COLLATE utf8_turkish_ci,
  `user_phone` text COLLATE utf8_turkish_ci,
  `user_password` text COLLATE utf8_turkish_ci,
  `user_city` text COLLATE utf8_turkish_ci,
  `user_state` text COLLATE utf8_turkish_ci,
  `user_adress` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_first_name`, `user_last_name`, `user_mail`, `user_phone`, `user_password`, `user_city`, `user_state`, `user_adress`) VALUES
(1, 'isa', 'bakır', 'isabakir45@gmail.com', NULL, 'arkonemqaz1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wish`
--

CREATE TABLE `wish` (
  `wish_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_delete` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`prop_id`);

--
-- Tablo için indeksler `properties_detail`
--
ALTER TABLE `properties_detail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`wish_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa`
--
ALTER TABLE `anasayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- Tablo için AUTO_INCREMENT değeri `properties`
--
ALTER TABLE `properties`
  MODIFY `prop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `properties_detail`
--
ALTER TABLE `properties_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `shopping`
--
ALTER TABLE `shopping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `wish`
--
ALTER TABLE `wish`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
