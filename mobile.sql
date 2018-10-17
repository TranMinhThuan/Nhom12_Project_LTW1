-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 17, 2018 lúc 06:56 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `User` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`ID`, `User`, `Pass`) VALUES
(1, 'admin1', '123456'),
(2, 'admin2', '456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(11, 'APPLE', 'apple.jpg'),
(12, 'SAMSUNG', 'Samsung.jpg'),
(13, 'SONY', 'sony.jpg'),
(14, 'XIAOMI', 'XIAOMI.jpg'),
(15, 'BLACKBERRY', 'bb.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `Name`, `image`, `description`, `Price`, `manu_id`, `type_id`) VALUES
(1, 'iPhone XS', '', 'Hãng sản xuất:	Apple\r\n3G:	HSPA 42.2/5.76 Mbps\r\n4G:	LTE-A (6CA) Cat18 1200/200 Mbps\r\nKích thước:	157.5 - 77.4 - 7.7 mm\r\nTrọng lượng:	208 g\r\nLoại SIM:	2 SIM (Nano-SIM)\r\nLoại màn hình:	OLED\r\nKích thước màn hình:	6.5 inches\r\nĐộ phân giải màn hình:	1242 x 2688 pixel\r\nHệ điều hành:	iOS\r\nPhiên bản hệ điều hành:	12\r\nChipset:	Apple A12 Bionic 6 nhân\r\nGPU:	Apple GPU 4 nhân\r\nKhe cắm thẻ nhớ:	Không\r\nBộ nhớ đệm / Ram:	512 GB, 4 GB RAM\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nQuay video:	Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps\r\nWLAN:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\nBluetooth:	LE, A2DP, v5.0\r\nGPS:	A-GPS, GLONASS\r\nNFC:	Yes\r\nPin:	Li-ion', 41000000, 11, 212),
(2, 'SamSung Note 9', 'samsungnote9.jpg', 'Hãng sản xuất:	Samsung\r\n3G:	HSPA 42.2/5.76 Mbps\r\n4G:	LTE-A (6CA) Cat18 1200/200 Mbps\r\nKích thước:	161.9 x 76.4 x 8.8 mm (6.37 x 3.01 x 0.35 in)\r\nTrọng lượng:	201 g (7.09 oz)\r\nLoại SIM:	2 SIM (Nano-SIM)\r\nLoại màn hình:	Cảm ứng điện dung Super AMOLED, 16 triệu màu\r\nKích thước màn hình:	6.4 inches\r\nĐộ phân giải màn hình:	1440 x 2960 pixels\r\nHệ điều hành:	Android\r\nPhiên bản hệ điều hành:	8.1 (Oreo)\r\nChipset:	Samsung Exynos 9 9810 Octa\r\nCPU:	4x 2.7 GHz Exynos M3 Mongoose & 4x 1.7 GHz ARM Cortex-A55\r\nGPU:	Mali-G72 MP18\r\nKhe cắm thẻ nhớ:	microSD, lên đến 512 GB\r\nBộ nhớ đệm / Ram:	512 GB, 8 GB RAM\r\nCamera sau:	12 MP (f/1.5-2.4, 26mm, 1/2.55\", 1.4µm, PDAF điểm ảnh kép, OIS) + 12 MP (f/2.4, 52mm, 1/3.6\", 1µm, AF, OIS, zoom quang 2x), LED flash\r\nCamera trước:	8 MP, f/1.7, 25mm, 1/3.6\", 1.22µm, AF, gọi video kép, HDR tự động, 1440p@30fps\r\nQuay video:	2160p@60fps, 1080p@240fps, 720p@960fps, HDR, quay video kép\r\nWLAN:	Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth:	5.0, A2DP, LE, aptX\r\nGPS:	A-GPS, GLONASS, BDS, GALILEO\r\nNFC:	Yes\r\nUSB:	3.1, Type-C 1.0\r\nCảm biến:	Quét võng mạc, vân tay, gia tốc, con quay hồi chuyển, khoảng cách, la bàn, phong vũ biểu, nhịp tim, SpO2\r\nPin:	Li-ion 4000 mAh', 23390000, 12, 213),
(3, 'Iphone 7 plus', 'iphone7plus.jpg', 'Hãng sản xuất:	Apple\r\n3G:	HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps\r\n4G:	LTE-A (3CA) Cat9 450/50 Mbps\r\nKích thước:	158.2 x 77.9 x 7.3 mm (6.23 x 3.07 x 0.29 in)\r\nTrọng lượng:	188 g (6.63 oz)\r\nLoại SIM:	Nano-SIM\r\nLoại màn hình:	Cảm ứng điện dung LED-backlit IPS LCD, 16 triệu màu\r\nKích thước màn hình:	5.5 inches\r\nĐộ phân giải màn hình:	1080 x 1920 pixels\r\nHệ điều hành:	iOS\r\nPhiên bản hệ điều hành:	11\r\nChipset:	Apple A10 Fusion APL1W24\r\nCPU:	2x 2.34 GHz Hurricane & 2x 2.34 GHz Zephyr\r\nGPU:	PowerVR Series7XT Plus (6 lõi đồ họa)\r\nKhe cắm thẻ nhớ:	Không\r\nBộ nhớ đệm / Ram:	128 GB, 3 GB RAM\r\nCamera sau:	12 MP (f/1.8, 28mm, 1/3\", OIS) + 12 MP (f/2.8, 56mm, 1/3.6\"), tự động lấy nét nhận diện theo giai đoạn, 2x zoom quang học, 4 LED flash (2 tone)\r\nCamera trước:	7 MP (f/2.2, 32mm), 1080p@30fps, 720p@240fps, nhận diện khuôn mặt, HDR\r\nQuay video:	2160p@30fps, 1080p@30/60/120fps, 720p@240fps\r\nWLAN:	Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:	4.2, A2DP, LE\r\nGPS:	A-GPS, GLONASS, GALILEO, QZSS\r\nNFC:	Yes\r\nUSB:	2.0\r\nCảm biến:	Vân tay, gia tốc, la bàn, khoảng cách, con quay quy hồi, phong vũ biểu\r\nPin:	Li-ion 2900 mAh', 14500000, 11, 212),
(4, 'Iphone 6 plus', 'iphone6plus.jpg', 'Hãng sản xuất:	Apple\r\n3G:	HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps\r\n4G:	LTE-A (2CA) Cat6 300/50 Mbps\r\nKích thước:	138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nTrọng lượng:	143 g (5.04 oz)\r\nLoại SIM:	Nano-SIM\r\nLoại màn hình:	Cảm ứng điện dung LED-backlit IPS LCD, 16 triệu màu\r\nKích thước màn hình:	4.7 inches\r\nĐộ phân giải màn hình:	750 x 1334 pixels\r\nHệ điều hành:	iOS\r\nPhiên bản hệ điều hành:	11\r\nChipset:	Apple A9 APL0898\r\nCPU:	2x 1.84 GHz Twister\r\nGPU:	PowerVR GT7600 (6 lõi đồ họa)\r\nKhe cắm thẻ nhớ:	Không\r\nBộ nhớ đệm / Ram:	16 GB, 2 GB RAM\r\nCamera sau:	12 MP (f/2.2, 29mm, 1/3\", 1.22 µm), tự động lấy nét nhận diện theo giai đoạn, LED flash kép (2 tone)\r\nCamera trước:	5 MP (f/2.2, 31mm), 1080p@30fps, 720p@240fps, nhận diện khuôn mặt, HDR, panorama\r\nQuay video:	2160p@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nWLAN:	Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth:	4.2, A2DP, LE\r\nGPS:	A-GPS, GLONASS, GALILEO, QZSS\r\nNFC:	Yes\r\nUSB:	2.0\r\nCảm biến:	Vân tay, gia tốc, la bàn, khoảng cách, con quay quy hồi, phong vũ biểu\r\nPin:	Li-ion 1715 mAh', 4400000, 11, 212),
(5, 'Samsung s8', 'Samsungs8.jpg', 'Thông tin màn hình:	Super AMOLED\r\nCPU:	4 nhân 2.45 GHz Kryo & 4 nhân 1.9 GHz Kryo\r\nRAM:	4 G\r\nCamera chính:	12 MP\r\nCamera phụ:	8 MP\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ ngoài:	Đang Cập Nhật\r\nDung lượng pin:	3000 mAh\r\nHệ điều hành:	Android 7.0', 7890000, 12, 213),
(6, 'Samsung J7 pro', 'SamsungJ7pro.jpg', '3G:HSPA 42.2/5.76 Mbps\r\n4G:LTE-A (2CA) Cat6 300/50 Mbps\r\nSIM:2 SIM (Nano-SIM)\r\nKích thước:152.4 x 74.7 x 7.9 mm (6.00 x 2.94 x 0.31 in)\r\nTrọng lượng:-\r\nMàn hình:Cảm ứng điện dung Super AMOLED, 16 triệu màu\r\nKích thước màn hình:1080 x 1920 pixels, 5.5 inches (~401 ppi mật độ điểm ảnh)\r\nBộ nhớ trong:32 GB, 3 GB RAM\r\nKhe cắm thẻ nhớ:microSD, lên đến 256 GB\r\nWLAN:Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot\r\nBluetooth:4.1, A2DP, LE\r\nUSB:microUSB 2.0, USB On-The-Go\r\nNFC:Có', 5399000, 12, 213),
(7, 'Sony Xperia XZ Dual', 'SonyXperiaXZDual.jpg', 'Màn hình\r\nCông nghệ màn hình	TRILUMINOS™\r\nĐộ phân giải	Full HD (1080 x 1920 Pixels)\r\nMàn hình rộng	5.2\"\r\nMặt kính cảm ứng	Kính cường lực Gorilla Glass\r\nCamera sau\r\nĐộ phân giải	23 MP\r\nQuay phim	Quay phim 4K 2160p@30fps\r\nĐèn Flash	Có\r\nChụp ảnh nâng cao	Lấy nét bằng laser, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama\r\nCamera trước\r\nĐộ phân giải	13 MP\r\nVideocall	Hỗ trợ VideoCall thông qua ứng dụng\r\nThông tin khác	Selfie ngược sáng HDR, Camera góc rộng, Quay video Full HD\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 7.0 (Nougat)\r\nChipset (hãng SX CPU)	Snapdragon 820 4 nhân 64-bit\r\nTốc độ CPU	2 nhân 2.15 GHz Kryo & 2 nhân 1.6 GHz Kryo\r\nChip đồ họa (GPU)	Adreno 530\r\nBộ nhớ & Lưu trữ\r\nRAM	3 GB\r\nBộ nhớ trong	64 GB\r\nBộ nhớ còn lại (khả dụng)	Khoảng 50 GB\r\nThẻ nhớ ngoài	MicroSD, hỗ trợ tối đa 256 GB\r\nKết nối\r\nMạng di động	3G, 4G LTE Cat 9\r\nSIM	2 SIM Nano (SIM 2 chung khe thẻ nhớ)\r\nWifi	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot\r\nGPS	A-GPS, GLONASS\r\nBluetooth	apt-X, EDR, A2DP, LE, v4.2\r\nCổng kết nối/sạc	USB Type-C\r\nJack tai nghe	3.5 mm\r\nKết nối khác	NFC, OTG, Miracast\r\nThiết kế & Trọng lượng\r\nThiết kế	Nguyên khối, mặt kính cong 2.5D\r\nChất liệu	Hợp kim nhôm\r\nKích thước	Dài 146 mm - Ngang 72 mm - Dày 8.1 mm\r\nTrọng lượng	161 g\r\nThông tin pin & Sạc\r\nDung lượng pin	2900 mAh\r\nLoại pin	Pin chuẩn Li-Ion\r\nCông nghệ pin	Tiết kiệm pin, Siêu tiết kiệm pin, Sạc pin nhanh\r\nTiện ích\r\nBảo mật nâng cao	Mở khóa bằng vân tay\r\nTính năng đặc biệt	Công nghệ âm thanh Hi-Res Audio\r\nMặt kính 2.5D\r\nChuẩn Kháng nước, Chuẩn kháng bụi\r\nGhi âm	Có, microphone chuyên dụng chống ồn\r\nRadio	Không\r\nXem phim	H.265, 3GP, MP4, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\r\nNghe nhạc	Lossless, Midi, MP3, WAV, WMA, AAC+, AAC++, FLAC', 9990000, 13, 213),
(8, 'Sony Xperia XA1 Plus', 'A1Pl.jpg', 'Màn hình:	IPS LCD, 5.5\", Full HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	23 MP\r\nCamera trước:	8 MP\r\nCPU:	Mediatek Helio P20\r\nRAM:	4 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3430 mAh, có sạc nhanh', 3990000, 13, 213),
(9, 'Xiaomi Redmi 6', 'redmi6.jpg', 'Màn hình\r\nCông nghệ màn hình	IPS LCD\r\nĐộ phân giải	HD+ (720 x 1440 Pixels)\r\nMàn hình rộng	5.45\"\r\nMặt kính cảm ứng	Kính thường\r\nCamera sau\r\nĐộ phân giải	12 MP và 5 MP (2 camera)\r\nQuay phim	Quay phim FullHD 1080p@30fps\r\nĐèn Flash	Có\r\nChụp ảnh nâng cao	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama\r\nCamera trước\r\nĐộ phân giải	5 MP\r\nVideocall	Hỗ trợ VideoCall thông qua ứng dụng\r\nThông tin khác	Chế độ làm đẹp\r\nHệ điều hành - CPU\r\nHệ điều hành	Android 8.1 (Oreo)\r\nChipset (hãng SX CPU)	MediaTek MT6762 8 nhân 64-bit (Helio P22)\r\nTốc độ CPU	2.0 GHz\r\nChip đồ họa (GPU)	PowerVR GE8320\r\nBộ nhớ & Lưu trữ\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nBộ nhớ còn lại (khả dụng)	Khoảng 22 GB\r\nThẻ nhớ ngoài	MicroSD, hỗ trợ tối đa 256 GB\r\nKết nối\r\nMạng di động	Hỗ trợ 4G\r\nSIM	2 Nano SIM\r\nWifi	Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot\r\nGPS	BDS, A-GPS, GLONASS\r\nBluetooth	LE, A2DP, v4.2\r\nCổng kết nối/sạc	Micro USB\r\nJack tai nghe	3.5 mm\r\nKết nối khác	Không\r\nThiết kế & Trọng lượng\r\nThiết kế	Nguyên khối\r\nChất liệu	Nhựa\r\nKích thước	Dài 147.46 m - Ngang 71.49 mm - Dày 8.3 mm\r\nTrọng lượng	146 g\r\nThông tin pin & Sạc\r\nDung lượng pin	3000 mAh\r\nLoại pin	Pin chuẩn Li-Po\r\nCông nghệ pin	Tiết kiệm pin\r\nTiện ích\r\nBảo mật nâng cao	Mở khóa bằng vân tay\r\nTính năng đặc biệt	Đèn pin\r\nGhi âm	Có, microphone chuyên dụng chống ồn\r\nRadio	Có\r\nXem phim	H.265, MP4, H.264(MPEG4-AVC)\r\nNghe nhạc	MP3, WAV, AAC, FLAC', 3490000, 14, 214),
(10, 'Xiaomi Mi A2', 'mi A2.jpg', 'Màn hình:	IPS LCD, 5.99\", Full HD+\r\nHệ điều hành:	Android One\r\nCamera sau:	20 MP và 12 MP (2 camera)\r\nCamera trước:	20 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3010 mAh, có sạc nhanh', 6690000, 14, 214),
(11, 'BlackBerry Classic Q20', 'bbq20.jpg', 'Bảo hành: 12 thángHệ điều hành: BlackBerry 10 OsNgôn ngữ: Tiếng ViệtLoại màn hình: IPS LCDMàu màn hình: 16M colorsĐộ phân giải: 720 x 720 pixels', 2990000, 15, 215),
(12, 'BlackBerry Passport', 'bbpp.jpg', 'Bảo hành: 6 thángHệ điều hành: BlackBerry 10 OsNgôn ngữ: Tiếng ViệtLoại màn hình: IPS LCDMàu màn hình: 16M colorsĐộ phân giải: 1440 x 1440 pixels', 3190000, 15, 215),
(13, ' Redmi Note 6 Pro', 'mi6pro.jpg', 'Màn hình:	IPS LCD, 6.26\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	20 MP và 2 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh', 4990000, 14, 216),
(14, 'Xiaomi Redmi Note 5', 'redminot5.jpg', 'Màn hình:	IPS LCD, 5.99\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	13 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VIETTEL V90 (60GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 5690000, 14, 216);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `type_img`) VALUES
(212, 'Smartphone ios', 'smartphone.jpg'),
(213, 'Smartphone android', 'smartphone2.jpg'),
(214, 'Diện thoại phổ thông', 'dtpt.jpg'),
(215, 'smartphone BOS', 'babr.jpg'),
(216, 'smarphone china', 'china.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
