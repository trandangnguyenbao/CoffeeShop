-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 31, 2021 lúc 09:37 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbtl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total` int(20) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `name`, `phone`, `address`, `note`, `total`, `tinhtrang`) VALUES
(59, 'Nguyễn Chánh Bảo', '364143430', 'tp hcm', 'thêm đường thêm đá', 127000, 'Đã Giao Hàng'),
(68, 'Nguyễn Chánh Bảo', '1254236', 'hòa mỹ, xuân cảnh', 'e5yfkrg', 218900, 'Đang Giao Hàng'),
(71, 'Nguyễn Chánh Bảo', '899978281', 'tp hcm', 'test order\r\n', 218900, 'Đang Giao Hàng'),
(72, 'Nguyễn Chánh Bảo', '364143430', 'hòa mỹ, xuân cảnh', 'test demo', 204600, 'Đang Giao Hàng'),
(75, 'chánh bảo', '12542523', 'hòa mỹ, xuân cảnh', 'fsdcxvs', 204600, 'Đã Giao Hàng'),
(85, 'Nguyễn Chánh Bảo', '364143430', 'hòa mỹ,xuân cảnh,sông cầu,phú yên', '', 105600, 'Đã Giao Hàng'),
(86, 'trung nguyên', '1254236', 'tpHCM', 'fdf', 84700, 'Đã Giao Hàng'),
(87, 'Nguyễn Chánh Bảo', '1254236', 'sdf', 'sadfsdf', 70400, 'Đã Giao Hàng'),
(88, 'Nguyễn Chánh Bảo', '1254236', 'hòa mỹ', 'adsdfsad', 99000, 'Đã Giao Hàng'),
(89, 'Nguyễn Chánh Bảo', '1254236', 'hòa mỹ', 'sdfszf', 70400, 'Đang Giao Hàng'),
(90, 'Nguyễn Chánh Bảo', '1254236', 'hòa mỹ, xuân cảnh', 'dâf', 84700, 'Đang Giao Hàng'),
(91, 'trịnh tôn trung nguyên', '152365246', 'tân bình, thành phố hồ chí minh', 'giao trong giờ hành chính', 110000, 'Đã Giao Hàng'),
(92, 'Nguyễn Chánh Bảo', '364143430', 'hòa mỹ', 'đầ', 35200, 'Đang Giao Hàng'),
(93, 'Nguyễn Chánh Bảo', '364143430', 'tp hcm', 'hbnj1612', 35200, 'Đang Giao Hàng'),
(94, 'trung quốc', '364143430', 'tuy hòa, phú yên', 'bỏ đá ngoài', 139700, 'Đã Giao Hàng'),
(95, 'Cà phê', '1254236', 'hòa mỹ', 'fhgjk6552', 145200, 'Đã Giao Hàng'),
(96, 'Nguyễn Chánh Bảo', '1254236', 'tp hcm', 'yfbkb', 104500, 'Đã Giao Hàng'),
(97, 'Nguyễn Chánh Bảo', '1254236', 'tp hcm', 'sdfsdvzxczc', 189200, 'Đã Giao Hàng'),
(98, 'Cà phê', '899978281', 'hòa mỹ', 'dá', 170500, 'Đã Giao Hàng'),
(99, 'Nguyễn Chánh Bảo', '364143430', 'hòa mỹ,xuân cảnh,sông cầu,phú yên', '', 214500, 'Đã Giao Hàng'),
(100, 'Nguyễn Chánh Bảo', '364143430', '678 trường chinh, tp hcm', 'bỏ đá ở ngoài', 148500, 'Đã Giao Hàng'),
(101, 'fewfw', '0', 'wfw', 'fedfd', 49500, 'Đã Giao Hàng'),
(102, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'ưefsdfsbvsvsfdbfvs', 145200, 'Đã Giao Hàng'),
(103, 'sdfsf', '0', 'sfdf', '', 145200, 'Đã Giao Hàng'),
(104, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'thêm đường', 394900, 'Đã Giao Hàng'),
(105, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'xfhgjkl', 394900, 'Đã Giao Hàng'),
(106, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', '', 394900, 'Đã Giao Hàng'),
(107, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'Đường 5%, cho đá ở ngoài', 35200, 'Đã Giao Hàng'),
(108, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'fwffwe', 183700, 'Đã Giao Hàng'),
(109, 'sdfsd', '0', 'sfsfsds', 'sđssd', 90200, 'Đã Giao Hàng'),
(110, 'sdfsd', '0', 'sfsfsds', 'sđssd', 90200, 'Đã Giao Hàng'),
(111, 'sdfd', '0', 'đss', 'sd', 90200, 'Đã Giao Hàng'),
(112, 'Nguyễn Chánh Việt', '364143430', 'Sông Cầu', 'thêm đường', 314600, 'Đã Giao Hàng'),
(113, 'chánh bảo', '0123456789', 'xuân cảnh', 'giao vào lúc 10:00', 280500, 'Đang Giao Hàng'),
(114, 'Nguyễn Chánh Việt', '0364143430', 'Sông Cầu', 'dg', 280500, 'Đã Giao Hàng'),
(115, 'Nguyễn Chánh Việt', '0123456789', 'Sông Cầu', '', 196900, 'Đang Giao Hàng'),
(116, 'chánh bảo', '01254262365', '678 trường chinh, tp hcm', 'Bỏ đá ở ngoài', 216700, 'Đã Giao Hàng'),
(117, 'Nguyễn Chánh Bảo', '03625211252', 'hòa mỹ,xuân cảnh,sông cầu,phú yên', '50% đá, 50% đường, bỏ đá riêng ở ngoài', 184800, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `price`) VALUES
(33, 89, 6, 32000),
(34, 89, 8, 32000),
(36, 90, 8, 32000),
(39, 92, 6, 32000),
(40, 93, 6, 32000),
(42, 94, 8, 32000),
(43, 94, 10, 50000),
(44, 95, 6, 32000),
(45, 95, 10, 50000),
(47, 96, 11, 50000),
(49, 97, 6, 32000),
(50, 97, 11, 50000),
(52, 98, 9, 50000),
(53, 98, 11, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(200) NOT NULL,
  `type` varchar(10) NOT NULL,
  `ma_lh` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `type`, `ma_lh`, `content`) VALUES
(6, 'CÀ PHÊ SỮA', 'cafe-sua-da_9073dfe2143d428a91a370e79df77e49_large.webp', 32000, 'N1', 1, 'Cà phê phin kết hợp cũng sữa đặc là một sáng tạo đầy tự hào của người Việt, được xem món uống thương hiệu của Việt Nam.'),
(8, 'BẠC SỈU', 'bac-siu_13856adaa2354499aa61251b8b1e9fd6_large.webp', 32000, 'N1', 1, 'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của \"Bạc tẩy sỉu phé\" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.'),
(9, 'CAPPUCCINO', 'capu-nong_a2a47a422fa94e8194e9d4c4badba9d3_large.webp', 50000, 'NB', 1, 'Cappuccino được gọi vui là thức uống \"một-phần-ba\" - 1/3 Espresso, 1/3 Sữa nóng, 1/3 Foam.'),
(10, 'CARAMEL MACCHIATO', 'caramel-macchiato-nong_667b90cf1e20493899e6727ae8c1b071_large (1).webp', 50000, 'NB', 1, 'Vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.'),
(11, 'LATTE', 'latte-nong_ffcd92de11f74937bce4197823246d07_large.webp', 50000, 'NB', 1, 'Khi chuẩn bị Latte, cà phê Espresso và sữa nóng được trộn lẫn vào nhau, bên trên vẫn là lớp foam nhưng mỏng và nhẹ hơn Cappucinno.'),
(12, 'MOCHA', 'mocha-nong_66ebb6f03a874a4391fc80ad69264ea5_large.webp', 50000, 'NB', 1, 'Cà phê Mocha được ví von đơn giản là Sốt Sô cô la được pha cùng một tách Espresso.'),
(13, 'TRÀ ĐÀO CAM XẢ', 'tra-dao-cam-sapng_58268b7877cd4209b8fc3fa1d4909511_large.webp', 45000, 'NB', 1, 'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh ph'),
(14, 'TRÀ HẠT SEN', 'tra-hat-sen_66a4b5d319314b408021b3765e07a003_large.webp', 45000, 'NB', 1, 'Sự kết hợp của Trà hương thơm nhẹ, vị nồng hậu cùng Hạt sen tươi mềm có vị ngọt, sáp, vừa ngon miệng vừa có tác dụng an thần, tốt cho cơ thể.  Đặc biệt, lớp kem sữa phô mai được phủ lên bề mặt ly sẽ cho bạn một trải nghiệm cân bằng hơn về hương vị.'),
(15, 'TRÀ VẢI', 'tra-vai_5da7600555ff48d6825a71b396cecd7a_large.webp', 45000, 'NB', 1, 'Là thức uống \"bắt vị\" được lấy cảm hứng từ trái Vải - thức quả tròn đầy, quen thuộc trong cuộc sống người Việt - kết hợp cùng Trà làm từ những lá trà tươi hảo hạng.'),
(16, 'TRÀ PHÚC BỒN TỬ', 'tra-pbt_d8ab6bfe329e488386e940bb9672e3dd_large.webp', 45000, 'NB', 1, 'Một sự kết hợp đầy hoàn hảo giữa thanh mát và bổ dưỡng. Lần đầu tiên Trà và trái \"Phúc Bồn Tử\" hoàn toàn tự nhiên, được các barista của chúng tôi kết hợp một cách tinh tế để tạo ra một dư vị hoàn toàn tươi mới. Nhấp ngay một ngụm là thấy mát lạnh ngay tức'),
(17, 'MATCHA ĐÁ XAY', 'matcha-da-xay_7f214144321f43ff81f78f67f05a0b22_large.webp', 59000, 'NB', 1, 'Matcha thanh, nhẫn, và đắng nhẹ được nhân đôi sảng khoái khi uống lạnh. Nhấn nhá thêm những nét bùi béo của kem và sữa. Gây thương nhớ vô cùng!'),
(18, 'CÀ PHÊ ĐÁ XAY', 'cafe-da-say_3de4ce716b534b1183736c2ce0cdbc25_large.webp', 59000, 'NB', 1, 'Một phiên bản \"upgrade\" từ ly cà phê sữa quen thuộc, nhưng lại đầy tỉnh táo và tươi mát hơn bởi lớp đá xay mát lạnh đi kèm. Nhấp 1 ngụm là thấy đã, ngụm thứ hai thêm tỉnh táo và cứ thế lôi cuốn bạn đến giọt cuối cùng.'),
(19, 'SÔ CÔ LA ĐÁ XAY', 'chocolate-da-xay_5893eba51bfb45e199af038649626d89_large.webp', 59000, 'NB', 1, 'Vị đắng của cà phê kết hợp cùng vị cacao ngọt ngàocủa sô-cô-la, vị sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.'),
(20, 'ĐÀO VIỆT QUẤT ĐÁ XAY', 'dao-viet-quat-da-xay_7e464338009c432985f8e3cdba6acb38_large.webp', 59000, 'NB', 1, 'Vẫn vị đào quen thuộc, nhưng được khoác lên mình một dáng vẻ đầy thanh mát và giải khát hơn.  Kết hợp với mứt berry và lớp kem béo ngậy nhưng ngọt dịu, cho hương vị tươi mới và lôi cuốn, kích thích vị giác đầy thú vị ngay lần đầu thưởng thức.'),
(21, 'BÁNH BAO HAI TRỨNG', 'bbao-2-trung_883feca9c9974d11ad062a83e246808f_large.webp', 25000, 'M1', 2, ''),
(22, 'BÁNH MÌ CHẢ BÔNG PHÔ MAI', 'bmi-cha-bong-pho-mai_a1cedd81aab643afad75dc01242e42ce_large.webp', 32000, 'M1', 2, 'Bạn không thể bỏ lỡ chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.'),
(23, 'BÁNH MÌ QUE', 'banh-mi-que_097b65c8e7c749398f1bdae4ae23d2ed_large.webp', 12000, 'M1', 2, ''),
(24, 'BÔNG LAN TRỨNG MUỐI', 'bong-lan-trung-muoi_538c729b19ce49b5aabaaca242171a51_large.webp', 29000, 'M1', 2, 'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.'),
(25, 'GÀ XÉ LÁ CHANH', 'ga-xe-la-chanh_2df170f8ae1f4d17b34481a79cec291a_large.webp', 25000, 'VD', 2, 'Thịt gà được xé tơi, vị mặn, ngọt và cay quyện nhau vừa chuẩn, thêm chút thơm thơm từ lá chanh sấy khô giòn giòn nữa thì cơn buồn miệng nào cũng sẽ bị xua tan.'),
(26, 'HEO XẤY XÔNG KHÓI', 'thit-heo-xong-khoi_98acac131de04338b1f918d309aebf0c_large.webp', 35000, 'VD', 2, 'Thịt heo được ướp gia vị đậm đà - mặn, ngọt, chua, cay ngon ngất ngây. Chút \"mồi\" sừng sựt để cuộc hẹn hò không bao giờ chán.'),
(27, 'CAM TƯƠI XẤY DẺO', 'cam-say-deo_7205f0a0ca5a4520b9d68b13f7816062_large.webp', 35000, 'VD', 2, 'Cam tươi sấy khô dẻo dai, ngọt bùi và chua thanh đầy thú vị. Món ăn vặt \"healthy\" kích thích vị giác cho bạn khi buồn miệng.'),
(28, 'CƠM CHÁY CHÀ BÔNG', 'com-chay-cha-bong_23e7817a73b94907806319bd2878b1e5_large.webp', 35000, 'VD', 2, ''),
(29, 'BÌNH GIỮ NHIỆT INOX ĐEN 500ML', 'binh-inox-den-500ml_dd50813c142543d189af5b56d0a2d70c_large.webp', 500000, 'VD', 3, 'Tình như chiếc bình của Nhà. Mua chiếc bình mới, gọi món mới để mỗi ngày là một cảm hứng, trải nghiệm mới nha.  '),
(30, 'BÌNH GIỮ NHIỆT CON THUYỀN', 'binh-inox-thuyen_6acaecf7cf634e39830483501008e53b_large.webp', 300000, 'VD', 3, 'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.  '),
(31, 'BÌNH GIỮ NHIỆT INOX QUẢ DỨA', 'binh-inox-qua-dua_70a09fc119c74ae99a007ccbc6ce431b_large.webp', 300000, 'VD', 3, 'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha. '),
(32, 'BÌNH GIỮ NHIỆT INOX TRẮNG ĐEN ', 'binh-inox-trang-den-500ml_16c571b8bc16479a977506abfa818f4d_large.webp', 250000, 'VD', 3, ''),
(33, 'CỐC SỨ COFFEE HOUSE ĐÀ NẴNG', 'mug-dn_3e3a11358be7429fa46c86060e6f641e_large.webp', 120000, 'M1', 3, 'Lấy cảm hứng từ những biểu tượng quen thuộc của Đà Nẵng, hiện đại và dễ thương, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.  '),
(34, 'CỐC SỨ COFFEE HOUSE TP HCM', 'mug-sg_51e72f110ea84dbabdd3e1eddf8afe74_large.webp', 120000, 'M1', 3, 'Lấy cảm hứng từ những biểu tượng quen thuộc của Sài Gòn, nhộn nhịp và gần gũi, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình. '),
(35, 'LY NHỰA HAI LỚP QUẢ DỨA', 'merchandise_hinh_len_webly_nhua_qua_dua_1ab5bca338f746b2822133386a4bb31c_large.webp', 180000, 'M1', 3, 'Một người bạn \"Go green\" mới sẽ mang lại nguồn cảm hứng mới cho món quen mỗi ngày của bạn.  '),
(36, 'LY INOX ỐNG HÚT HỒNG XANH', 'binh-inox-ong-hut-xanh-hong_4bfa3b293f9a4f8db0143d96a13239c2_large.webp', 280000, 'M1', 3, 'Màu hồng xanh may mắn tới nhanh - Chiếc ly inbox kèm ống hút mang sắc xanh này sẽ là người bạn đồng hành may mắn mỗi ngày bên bạn, nước ngon hơn, nhiều cảm hứng hơn.  '),
(41, 'SINH TỐ VIỆT QUẤT', 'sinh-to-viet-quoc_145138_400x400_ab271b0cd8be42089cd7e25f985c273e_master.jpg', 59000, 'N1', 1, 'Sự phối hợp hợp tinh tế của Barista Nhà  Sinh tố là tên gọi chung của những món trai cây xay. Ở Đây chúng ta có sinh tố việt quất với thành phần chính là mứt việt quất, sữa chua và Foam cheese. Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với '),
(42, 'CHANH XẢ ĐÁ XAY', 'chanh-sa-da-xay_170980_400x400_2c8af8d0cfff43b78a93924d28a1215f_master.jpg', 49000, 'N1', 1, 'Nước cốt sả (sả ngâm) xay cùng với chanh tươi, thêm vào chút đường tạo nên thức ống với hương vị thanh chua, ngọt ngọt, thơm nhẹ thoảng nhẹ mùi sả. Tuy thành phần đơn giản nhưng để có một ly chanh sả đá xay đúng điệu cùng cần tay nghề khéo léo của Barista');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id_type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id_type`, `name`, `hinhanh`) VALUES
(1, 'Nước uống', '09032019-hinh-anh-ly-ca-phe-buoi-sang-dep-Serano-4.jpg'),
(2, 'Đồ ăn vặt', 'croissant-trung-muoi_be526195a2ee4ecea672f5ded1ecb839_large.webp'),
(3, 'Quà lưu niệm', 'mug-dn_3e3a11358be7429fa46c86060e6f641e_large.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'chanhbao', 'chanhbao123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'chanhbao1234', 'chanhbao2k1@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(4, 'trungnguyen', 'trungnguyen123@gmail.com', '36e1a5072c78359066ed7715f5ff3da8'),
(6, 'trungquoc', 'trungquoccute@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(31, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(32, 'demo', 'demo123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_ibfk1` (`order_id`),
  ADD KEY `order_detail_ibfk2` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
