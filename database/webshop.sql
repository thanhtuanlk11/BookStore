-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 05:43 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Goo', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(2, 'Mod đz', 'mod@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 2147483647),
(3, 'Nam', 'nam@gmail.com', '123456', 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Danh mục', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Sách tiếng việt', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Sách nước ngoài', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Quần áo gia đình', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'Thiếu nhi', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Văn học', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Truyện tranh', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Sách dạy lập trình', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'Sách về tiếng anh', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'Văn học', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Truyện', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Tuyểu thuyết', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'Khám phá', '', 8, 4, '2017-04-22 09:23:57');
-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0);


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` int(11) DEFAULT '0',
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT '4',
  `rate_count` int(255) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(1, 16, 'Tuyển Tập Truyện Ngắn Miyazawa Kenji', '<p>“Bạn có muốn biết, tại sao một nhà văn sống cách đây hơn một trăm năm lại xuất hiện trong lễ bế mạc Tokyo Olympic 2020 không? Bạn có muốn biết tại sao một nhà văn đồng thoại lại được giới thiệu đầy trân trọng trong buổi lễ bế mạc của một sự kiện thể thao lớn nhất hành tinh không? Hãy cùng chúng tôi lạc bước trong thế giới đồng thoại đầy huyễn tưởng của Miyazawa Kenji, một thế giới của thiên đường và hạ giới, nơi tràn ngập ánh sáng, âm thanh và sự chuyển động, nơi mà người và vật cộng sinh, cùng nghĩ về nhau, tha thứ và hi sinh vì hạnh phúc của người khác.”</p>', '140000.00', 0, 'truyen_ngan_miyazama.jpg', '[""]', 25, 1, 14, 3, 1493983674),
(2, 16, 'Truyện Tối Trăng Mưa', '<div class="content"><div class="ToggleContent__Wrapper-sc-1dbmfaw-1 cqXrJr"><div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><p><strong><em>Truyện tối trăng mưa</em></strong> là tập truyện truyền kỳ kết hợp nhuần nhuyễn hai nguồn Hán-Hòa, vừa thực tiễn, vừa lãng mạn, được nhiều thế hệ độc giả Nhật Bản yêu mến và có ảnh hưởng đến lối viết của tiểu thuyết cận đại. Trong tập truyện này, <strong>Ueda Akinari</strong> không chỉ vẽ nên bức tranh phong cảnh Nhật Bản thơ mộng qua những đoạn văn đi đường - Michiyukibun, mà ông còn huy động cả văn hóa truyền thống dân tộc của xứ sở Mặt Trời mọc, từ Vạn diệp tập, thơ Waka thập bát đại tập, thơ Haikai, không những lịch sử Trung Quốc mà cả lịch sử Nhật Bản, cũng như thành ngữ, phong tục dân gian. Lúc đùa cợt, lúc nghiêm trang, khi mỉa mai, khi cay đắng, Akinari đã đưa độc giả vào một thế giới u linh đặc sắc, mờ mờ ảo ảo của những đêm trăng sau cơn mư</p><p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p></div></div></div>', '127500.00', 0, 'truyen_toi_trang_mo.jpg', '', 2, 1, 4, 1, 1493983674),
(3, 16, 'Tuyển Truyện Ngắn Antôn Sêkhốp', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><h3>Tuyển Truyện Ngắn Antôn Sêkhốp</h3><p>Phải đến giữa thế kỷ XX, văn học Nga, văn học Xô viết mới đến với đông đảo bạn đọc nước ta. Tuy trước đó, những người Nga đầu tiên đã sớm có mặt ở Việt Nam ngay vào thời điểm thực dân Pháp xâm chiếm nước ta. Một trong những người Nga đầu tiên đó là trung úy hải quân Nga Konxtantin Mikhailovich Stannhiukovich (1843-1903), được nhà nước Nga hoàng phái tới Sài gòn suốt mấy tháng trời. Sau này trở thành nhà văn dân chủ nổi tiếng, năm 1885 ông đã công bố bút ký về chuyến đi mấy chục năm trước của mình: "Ba tháng ở Sài Gòn" trong tác phẩm "Chuyến đi vòng quang thế giới trên chiến hạm Con Ó"</p><p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p></div>', '107800.00', 0, 'truyen_ngan_antonsekhop.jpg', '[""]', 42, 4, 11, 3, 1493983674),
(4, 18, 'PHÍA SAU TỘI ÁC NHÂN DANH KHOA HỌC', '<p><strong>“Nếu không có tư cách, khoa học sẽ bị diệt vong, và các nhà khoa học thiếu đạo đức thường tạo ra một nền khoa học tồi tệ.” - Einstein -</strong></p><p>Bộ sách này kết hợp những câu chuyện kịch tính khám phá khoa học cùng sự hồi hộp bất hợp pháp trong những câu chuyện tội phạm có thật. Những câu chuyện trải dài từ buổi bình minh của khoa học vào những năm 1600 đến những tội ác công nghệ cao của sau này, và chúng diễn ra khắp mọi nơi trên thế giới. Nếu thành thật với bản thân, chúng ta đều đã từng rơi vào hố sâu của sự ám ảnh trước đây hoặc bẻ cong các quy tắc để theo đuổi một thứ mà chúng ta thèm muốn. Nhưng ít người trong chúng ta có thể trở nên hoàn toàn băng hoại như những kẻ tồi tệ trong cuốn sách này. Chúng ta có xu hướng coi khoa học là tiến bộ, một động lực cho những điều tốt đẹp trên thế giới. Thường điều đó đúng, nhưng không phải luôn đúng.</p>', '245000.00', 80000, 'phia_sau_toi_ac.jpg', '[""]', 16, 7, 18, 4, 1493983674),
(12, 17, 'Mặt Nạ - Tiểu Thuyết', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><p><strong>MẶT NẠ NHÂN TÍNH – AI LÀ TÔI? TÔI LÀ AI?</strong></p><p>Họ có thực sự hạnh phúc với hình tượng mình gây dựng bao lâu nay trong mắt mọi người?&nbsp;</p><p>Mỗi buổi sáng thức dậy, đứng trước gương họ thầm nhủ hôm nay mình sẽ diễn vai gì? Một cô gái cá tính hay thục nữ yêu kiều? Một chàng trai phong trần hay quân tử hảo hán? Mọi hỷ - nộ - ái - ố trong lòng, bạn có thực sự muốn chia sẻ với người khác?</p><p>Ngày ngày họ đeo mặt nạ lên, sắm vai kẻ khác rồi trở nên xa lạ với chính con người thật của mình. Họ - chàng diễn viên hài luôn lẩm bẩm “Biết sai rồi” nhiều lần đến độ u uất, cười nhiều tới mức trầm cảm, đứng trên sân khấu thấy khán giả vui cười mà trong lòng quặn thắt. Họ - nam diễn viên nổi tiếng được xưng tụng “người chồng quốc dân” cứ mỗi lần lên nhận giải thưởng lại giở chiêu trò bày tỏ tình cảm “Vợ ơi anh yêu em”, chẳng biết đang nói với cô vợ danh chính ngôn thuận đương ngồi nhà xem ti vi hay tình nhân phim giả tình thật mỉm cười dịu dàng dưới khán đài. Họ - Nữ diễn viên vốn được mệnh danh có gương mặt trong sáng cao cấp, nhưng để xin thêm cảnh diễn mà bất chấp tất cả, nhắm mắt đưa chân tới tìm nhà sản xuất…</p>', '88100.00', 0, 'mat_na.jpg', '[""]', 27, 3, 9, 2, 0),
(13, 17, 'Biên Sử Nước (Tiểu Thuyết', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><p>Sau 8 năm Nguyễn Ngọc Tư mới trở lại với độc giả bằng một cuốn tiểu thuyết đậm chất huyền ảo: Biên sử nước. Tinh tế và sắc sảo, huyền ảo và hiện thực cùng hòa quyện, đan xen trong lớp lớp ngôn từ khiến người đọc không thể rời mắt.</p><p>Biên Sử Nước là tác phẩm đặc sắc đánh dấu sự trở lại của Nguyễn Ngọc Tư với tiểu thuyết, sau nhiều năm định danh bằng truyện ngắn. Một tiểu thuyết kết tinh được những đặc sắc trong những tìm tòi sáng tạo của Nguyễn Ngọc Tư về nội dung lẫn bút pháp.</p><p>Biên Sử Nước vì thế vừa quen thuộc vừa lạ lẫm, cho phép người đọc tái khám phá một Nguyễn Ngọc Tư điêu luyện nhưng mới mẻ.</p><p>Biên Sử Nước là cuốn sách thứ hai của Nguyễn Ngọc Tư do Phanbook &amp; NXB Phụ Nữ ấn hành.</p><p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p></div>', '66500.00', 0, 'bien_su_nuoc.jpg', '[""]', 5, 1, 4, 1, 1493983674),
(6, 18, 'Khoa Học - Nghề Nghiệp Và Sứ Mệnh', '<div class="ToggleContent__Wrapper-sc-1dbmfaw-1 cqXrJr"><div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><p><strong>Khoa Học - Nghề Nghiệp Và Sứ Mệnh</strong></p><p>Khoa học – nghề nghiệp và sứ mệnh là bài nói chuyện của Weber, mùa đông năm 1918, ở Đại học Munich với mục tiêu trực tiếp là chỉ cho sinh viên thấy sứ mệnh của họ, trong vai trò những người làm khoa học và giảng viên trong tương lai.</p><p>Tuy nhiên, thực tế, bài nói của Weber đã vượt ra ngoài các giới hạn được đặt ra và biến thành bài phát biểu mang tính cương lĩnh, tổng kết hơn ba mươi năm hoạt động trong lĩnh vực kinh tế chính trị học, xã hội học, triết học, sử học của ông. Trọng tâm của bài nói chuyện là vấn đề biến đời sống tinh thần thành quá trình sản xuất trong lĩnh vực tinh thần và vấn đề phân công lao động trong lĩnh vực hoạt động tinh thần, quá trình thay đổi vai trò của trí thức trong xã hội, và cuối cùng là số phận của xã hội châu Âu và nền văn minh châu Âu, nói chung.</p>', '65000.00', 0, 'khoa_hoc_nghe_nghiep_va_su_menh.jpg', '[""]', 2, 1, 4, 1, 1493983674),
(7, 17, 'Vận Mệnh Ngườ Lính Tốt Svejk ', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs"><p>Sau đúng 100 năm xuất bản lần đầu tiên tại Séc (1921), bộ tiểu thuyết đồ sộ&nbsp;<strong>Vận mệnh người lính tốt Švejk trong Đại chiến Thế</strong>&nbsp;giới được&nbsp;&nbsp;giới thiệu đầy đủ tại Việt Nam. Trọn bộ câu chuyện về anh Svejk vui tính bao gồm 4 tập, khi dịch sang tiếng Việt được chia thành 2 quyển: Quyển 1 gồm tập I-II; Quyển 2 gồm tập III-IV</p><p>Švejk là một kiểu nhân vật hoàn toàn mới trong văn học thế giới. Một kiểu người đần độn trong dân gian Séc lần đầu tiên xuất hiện trong văn học viết và được đưa vào cuộc sống hiện đại ồn ã. Một kiểu người bình thản được nhìn từ một góc độ mới.</p><p>Chúng ta vui vì gặp một kiểu người hoàn toàn ngược với kiểu người đáng ghét&nbsp;<em>“tính nết có vấn đề”</em>, “không bằng lòng với bất kỳ tình huống nào, cũng chẳng hợp với bất kỳ tình huống nào”, bởi vì Švejk là người hài lòng trong mọi tình huống, và cũng ở thế mạnh hơn trong mọi tình huống. Một người ngu tinh khôn, hay thật sự là một người ngu tài tình, người có cái vẻ hiền lành ngu xuẩn, nhưng đồng thời ranh mãnh như thế phải thắng ở mọi nơi. Kiểu người văn học mới này không thể làm chúng ta quan tâm đến thế, vui vẻ đến thế, nếu nó không phải là một phần của chúng ta, nếu&nbsp;<em>“ngôn ngữ Švejk”</em>&nbsp;ít nhiều không phải là của tất cả chúng ta, tương tự như&nbsp;<em>“ngôn ngữ Don Quixote”</em>,&nbsp;<em>“ngôn ngữ Hamlet”</em>,&nbsp;<em>“ngôn ngữ Faust”</em>, hay&nbsp;<em>“ngôn ngữ Oblomov”</em>.</p><p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p></div>', '229000.00', 163000, 'van_menh_nguoi_linh.jpg', '[""]', 20, 6, 13, 3, 1493983674),
(9, 15, 'Chú Bé Mang Pyjama Sọc + Thợ Xăm Ở Auschwitz', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs" style="overflow: hidden; height: 500px;"><p><strong>1. Chú Bé Mang Pyjama Sọc</strong></p><p>Rất khó miêu tả câu chuyện về Chú bé mang pyjama sọc này. Chúng tôi nghĩ điều quan trọng là bạn nên đọc mà không biết trước nó kể về điều gì.Nếu bạn định bắt đầu đọc cuốn sách thật, bạn sẽ cùng được trải qua một hành trình với một cậu bé chín tuổi tên là Bruno (dù đây không hẳn là sách cho trẻ chín tuổi).</p><p><strong>2. Thợ Xăm Ở Auschwitz</strong></p><p>Thợ xăm ở Auschwitz là một tài liệu khác thường, được công bố hơn bảy mươi năm sau những sự kiện nó thuật lại, và nó nhắc nhở chúng ta rằng có rất nhiều câu chuyện sẽ mãi mãi không bao giờ được kể. Nó cũng nhắc chúng ta nhớ rằng trong số nạn nhân lớn đến không tưởng tượng nổi của Holocaust </p>', '193000.00', 10000, '2_cuon_van_hoc_nuoc_ngoai.jpg', '[""]', 2, 1, 4, 1, 1493983674),
(11, 15, 'Tiểu Thuyết Kinh Điển: QUO VADIS (BÌA CỨNG)', '<p><strong>Quo Vadis</strong> - cuốn tiểu thuyết giúp văn hào Henryk Sienkiewicz ( người Ba Lan) đoạt giải Nobel văn học năm 1905, đã được dịch ra hơn 50 ngôn ngữ.<br><br>Quo vadis thuật lại chuyện tình&nbsp; giữa một thiếu nữ cơ Đốc tên Ligia (hoặc Lygia, và Marcus Vinicus, một quý tộc la mã. Chuyện xảy ra tại thành Roma dưới thời hoàng đế Nero.<br><br>Cuốn sách phản ánh cuộc sống dưới triều đại của hoàng đế Nero thời cổ la mã thông qua câu chuyện tình đầy éo le ngang trái của chàng quý tộc Vinxius với nàng Ligia theo cơ Đốc giáo, hai nhân vật đại diện cho hai phe đối lập.<br><br>Tác phẩm còn truyền tải một thông điệp mạnh mẽ ủng hộ cơ Đốc giáo. Ngoài ra, tác phẩm cũng gián tiếp giải thích về nguồn gốc sâu xa của cơ Đốc giáo tại Ba Lan. Ligia, nhân vật nữ trong câu chuyện là công chúa của bộ tộc Ligia, tiền thân của người Ba Lan hiện nay.<br><br>Tác phẩm cũng rất nhiều lần được đưa lên sân khấu và màn ảnh ngay từ những năm xa xưa nhất, đông thời nó cũng trở thành đề tài của không ít công trình khảo cứu, không những chỉ ở Ba Lan mà trên phạm vi thế giới.</p>', '168500.00', 10000, 'Tieu_thuyet_kinh_dien_QUOVADIS.jpg', '[""]', 35, 3, 5, 1, 1493983674),
(10, 15, 'Hợp Tuyển Văn Học Văn Học Cổ Điển Hàn Quốc', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs" style="overflow: hidden; height: 500px;"><p><strong>Hợp Tuyển Văn Học Văn Học Cổ Điển Hàn Quốc</strong></p><p>Theo Kim Jung Bae(1) và nhiều nhà nghiên cứu khác, Han&nbsp;(Hàn) trong “bán đảo Hàn”, “người Hàn”, “chữ Hàn”, “dân tộc Hàn”… vốn là một từ tiếng Hàn có nghĩa là “vĩ đại”, xuất hiện từ rất sớm trong lịch sử. Sau sự sụp đổ của Go Joseon (Cổ Triều Tiên), vào thế kỷ cuối cùng trước Công nguyên và các thế kỷ đầu sau Công nguyên, ở Trung và Nam bộ bán đảo Hàn hình thành ba liên minh bộ lạc là Mã Hàn, Thìn Hàn, Biện Hàn. Các liên minh bộ lạc này đến thế kỷ IV bị sát nhập vào các nước Tam Quốc của Korea. Từ Han&nbsp;được chuyển sang Hán tự là 韓, 幹, hay 刊, có sự phân biệt với từ chỉ người Hán (漢) hoặc nước Hàn (韓) thuộc về Trung Hoa.</p>', '171000.00', 0, 'van_hoc_co_dien_Han_quoc.jpg', '[""]', 8, 2, 4, 1, 1493983674),
(14, 17, 'Thế giới những ngày qua', '<div class="ToggleContent__View-sc-1dbmfaw-0 wyACs" style=""><p>THẾ GIỚI NHỮNG NGÀY QUA - HỒI ỨC CỦA MỘT NGƯỜI DÂN CHÂU ÂU</p><p>Tác giả: Stefan Zweig</p><p>Dịch giả: Phùng Đệ &amp; Trần Nam Lương</p><p>&nbsp;</p><p>LỜI GIỚI THIỆU</p><p><br>Stefan Zweig (1881-1942) là nhà văn, nhà viết kịch và nhà viết tiểu sử người Áo. Ông sinh ra trong một gia đình Do Thái khá giả tại thủ đô Vienne của đế quốc Áo-Hung: cha là chủ một xưởng dệt may, còn bà mẹ thuộc một gia tộc kinh doanh nhiều đời trong ngành ngân hàng. Đam mê và bộc lộ tài năng sáng tác văn thơ từ khi còn rất trẻ, Zweig sớm có những tác phẩm được chú ý và kết giao với nhiều văn nghệ sĩ châu Âu đương thời. Ông là người ham viết, ham đi, từng có nhiều chuyến đi tới châu Á, Bắc và Trung Mỹ, cũng như nhiều nước châu Âu khác. Vào thời đỉnh cao sự nghiệp - thập niên 1920 và 1930 - ông là tác giả tiếng Đức cực kỳ nổi tiếng trên thế giới, với các tác phẩm nhanh chóng được dịch và phổ biến ra nhiều ngôn ngữ khác nhau. Về văn học, những sáng tác quan trọng và nổi tiếng nhất của ông là các truyện vừa hay tiểu thuyết ngắn (novella): "Điều bí mật khủng khiếp" (1913), "Nỗi sợ" (1920), "Bức thư của người đàn bà không quen" (1922), "Amok hay là bệnh điên xứ Malaysia" (1922), "Ngõ hẻm dưới ánh trăng" (1922), "Hai mươi tư giờ trong đời một người đàn bà" (1927), "Ván cờ kỳ lạ" (1941); các tiểu thuyết "Nỗi xót thương nguy hiểm" (1939), "Khát vọng đổi đời" (xuất bản lần đầu năm 1982, sau khi tác giả qua đời).</p><p>Zweig cũng gặt hái thành công với những tập tiểu luận hay tiểu sử viết rất sinh động về các văn sĩ (Balzac, Dickens, Dostoevsky, Rolland, Stendhal, Tolstoy), thi sĩ (Verlaine, Verhaeren), triết gia (Nietzsche), nhà tâm lý (Freud), nhà thám hiểm (Magellan), nhân vật lịch sử (Erasmus, Joseph Fouché, Marie Stuart, Marie Antoinette) … Ngoài ra, ông còn sáng tác một số vở kịch lịch sử, tham gia soạn phần lời (libretto) cho vở opera Người đàn bà im lặng của nhà soạn nhạc Richard Strauss năm 1935. Trong Thế chiến I (1914-1918), vì lý do sức khỏe yếu, Stefan Zweig không phải ra trận, mà chỉ làm thủ thư trong Sở Lưu trữ Chiến tranh. Tuy nhiên, sau một thời gian chứng kiến cuộc chiến ở khoảng cách tương đối gần, ông sớm nhận ra sự điên rồ của chiến tranh và mau chóng trở thành người cổ vũ nhiệt thành cho hòa bình. Khi Hitler lên cầm quyền tại Đức và phong trào bài Do Thái bắt đầu bùng nổ, năm 1934 Zweig rời quê hương sang Anh sinh sống. Năm 1939, Thế chiến II chính thức bắt đầu, nhà văn cùng người vợ thứ hai, bà Lotte Altmann (1908-1942), tiếp tục di cư qua New York, Mỹ một thời gian ngắn, rồi tới Brazil vào tháng 8/1941. Họ sống tại Petropolis, một đô thị thuộc bang Rio de Janeiro ở miền Đông Nam Brazil. Trong bối cảnh cuộc đại chiến ở châu Âu và nhiều nơi trên thế giới chưa biết khi nào kết thúc, Zweig càng ngày càng rơi vào trạng thái u uất, tuyệt vọng về tương lai của loài người cũng như sự hủy diệt của những nền văn hóa. Ngay sau khi hoàn thành cuốn hồi ký "Thế giới những ngày qua" và gửi bản thảo cho nhà xuất bản, hai vợ chồng Stefan Zweig tự sát tại nhà riêng ngày 22.2.1942.</p>', '245000.00', 0, 'the_gioi_nhung_ngay_qua.jpg', '[""]', 3, 2, 4, 1, 1493983674),
(15, 17, 'Những Thuyền Trưởng Can Đảm', '<p>Mặt biển không ngừng cuộn sóng, những con sóng dữ tợn nối tiếp nhau, xô quật vào mạn thuyền, con thuyền Có chúng tôi đây! chao đảo như thể có một bàn tay khổng lồ vô hình nào đó trồi lên giữa biển khơi, đang hào hứng rung lắc thật mạnh cột buồm chính. Nếu giờ này Harvey vẫn còn đang ở trên chiếc du thuyền sang trọng kia, hẳn cậu sẽ không bao giờ được trực tiếp cảm nhận sự hùng vĩ của đại dương cũng như sự can trường của những người đánh cá vẫn ngày ngày đối mặt với những hiểm nguy nơi biển cả, thậm chí không quản cái chết cận kề.</p><p>Sau khi ngã xuống biển vì say sóng rồi được thuyền đánh cá Có chúng tôi đây! cứu sống và cưu mang, nhận được bài học nhớ đời từ thuyền trưởng Troop, từ một cậu ấm đích thực, Harvey phút chốc trở thành một thiếu niên trưởng thành và gan dạ. Chỉ sau vài tuần, cậu thành thạo như thể từ lâu cậu đã là một phần của con thuyền này vậy. Harvey rất lấy làm tự hào về điều này và nhận định con thuyền Có chúng tôi đây! không chỉ cứu sống một mạng người, mà còn cứu rỗi cả một tâm hồn đang trực chờ đứng trước bờ vực thẳm!</p><p>Rudyard Kipling (1865 – 1936) là nhà văn và nhà thơ nổi tiếng người Anh, sinh ra ở Ấn Độ. Ông được xem là “Nhà cách tân lớn cho nghệ thuật truyện ngắn” và là tác giả của những tác phẩm văn học kinh điển dành cho thiếu nhi. Vào năm 1907, ông nhận giải Nobel Văn học, cho đến nay ông vẫn là người trẻ tuổi nhất đạt được giải thưởng này.</p><p>Tác phẩm chính:</p><p>- The Jungle Book (Câu chuyện rừng xanh, 1894)</p><p>- The Second Jungle Book (Câu chuyện rừng xanh 2, 1895)</p><p>- Captains Courageous (Những thuyền trưởng can đảm, 1897)</p><p>- Just So Srories (Tạm dịch: Chuyện là như thế, 1902)</p><p>- Puck of Pook’s Hill (Tạm dịch: Quả bóng từ đồi Pook, 1906)</p><p>Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p></div>', '71500.00', 10022, 'nhung_thuyen_truong_can_dam.jpg', '[""]', 4, 1, 4, 1, 1493983674),
(24, 11, 'Truyện ngắn hay nhất của Nguyễn Minh Châu', '', '84150.00', 0, 'truyen_ngan_hay_nhat_nmc.jpg', '["truyen_ngan_hay_nhat_nmc.jpg"]', 36, 1, 9, 2, 1493983674),
(25, 11, 'Truyện Kiều', '<p>Bộ sách Hồng Ân Tùng Thư với mục đích lưu truyền các tác phẩm truyện Nôm khuyết danh, và những tác gia văn học cổ điển dành cho các bạn trẻ đọc thêm để giữ gìn và phát huy những tinh túy của văn học Việt Nam, đồng thời hiểu biết thêm một số tiếng Nôm thường gặp trong thơ văn cổ. Rất hữu ích đối với các bạn sinh viên, học sinh và nhất là đối với những ai muốn tìm hiểu về văn học nước nhà.</p>Các quyển sách được biên soạn theo một cấu trúc thống nhất:<ul> <li>Bối cảnh lịch sử</li><li>Thân thế - sự nghiệp của tác giả</li><li>Ỷ kiến các nhà nghiên cứu - phê bình</li></ul>', '50000.00', 13000, 'truyen_kieu.jpg', '[""]', 2, 1, 9, 2, 1493983674),
(26, 14, '30 Chủ đề tiếng anh (tập 1)', '<p>Ngữ pháp và từ vựng là hai mảng không thể thiếu trong quá trình học ngoại ngữ nói chung và học tiếng Anh nói riêng. Hai phạm trù này sẽ góp phần giúp chúng ta đạt được sự thành thạo về ngôn ngữ. Nếu như ngữ pháp có các quy tắc, có cấu trúc để tuân theo thì từ vựng lại không có bất cứ quy tắc nào. Do đó, đa số người học đều thấy rất khó để học và nhớ được từ vựng. Đó là còn chưa kể tới có rất nhiều từ có nghĩa giống nhau nhưng lại được sử dụng trong các ngữ cảnh khác nhau và một từ thì lại có rất nhiều nghĩa. Với mong muốn giúp người học có phương pháp học từ vựng hiệu quả, bộ sách 30 CHỦ ĐỀ TỪ VỰNG TIẾNG ANH được biên soạn thành 2 tập, mỗi tập gồm 15 chủ đề từ vựng bao quát tất cả những chủ đề từ vựng trọng tâm thuộc mọi lĩnh vực của đời sống. Ở mỗi bài, bên cạnh phần hệ thống từ vựng – cấu trúc theo chủ đề bài học, còn có một số lượng bài tập thực hành lớn với các dạng bài như phát âm, trọng âm, chọn đáp án đúng, đồng nghĩa-trái nghĩa, đọc hiểu, đọc điền. Bộ sách với mục tiêu cung cấp cho người học phương pháp học từ vựng theo chủ điểm để nhớ từ theo hệ thống, áp dụng vào bài tập thực hành, làm bài tập giúp nhớ từ và có vốn từ để đọc hiểu được đoạn văn tiếng Anh. Ngoài ra học từ vựng để không những giúp phát âm đúng mà còn chuẩn ngữ điệu. Với khoảng hơn 4000 từ vựng – cấu trúc và trên 2000 câu trắc nghiệm kèm đáp án có giải thích chi tiết, chắc chắn bộ sách sẽ là công cụ tự học hữu hiệu, giúp người học trau dồi vốn từ vựng một cách hiệu quả nhất.</p>', '190000.00', 0, '30_chu_de_tieng_anh.jpg', '[""]', 5, 1, 9, 2, 1493983674),
(27, 14, 'cẩm nang kiến trúc tiếng anh', '<p>Cuốn sách CẨM NANG CẤU TRÚC TIẾNG ANH gồm 25 phần, mỗi phần là một phạm trù kiến thức trong tiếng Anh được trình bày một cách ngắn gọn, đơn giản, cô đọng và hệ thống hoá dưới dạng sơ đồ, bảng biểu nhằm phát triển khả năng tư duy của người học và từ đó giúp người học nhớ kiến thức nhanh hơn và sâu hơn.</p><p>Sau hầu hết các phần lí thuyết đều có 20-30 câu bài tập áp dụng để kiểm tra cũng như khắc sâu kiến thức cho người học. Tuy dày chưa đến 250 trang nhưng cuốn sách lại có thể bao trọn toàn bộ kiến thức từ đơn giản đến phức tạp cộng với cách tận dụng tối đa và áp dụng triệt để cách học tiếng Anh bằng sơ đồ tư duy.</p>', '98000.00', 0, 'cam_nang_cau_truc_tieng_anh.jpg', '[""]', 2, 1, 4, 1, 1493983674),
(28, 13, 'Giáo trình kỹ thuật lập trình C câng bản đến nâng cao', '<p>Giáo trình kỹ thuật lập trình C căn bản và nâng cao được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học. Ở đây sinh viên được trang bị những kiến thức cơ bản nhất về lập trình, các kỹ thuật  tổ chức dữ liệu và lập trình căn bản với ngôn ngữ C.</p><p>Để đáp ứng nhu cầu học tập ngôn ngữ lập trình C của sinh viên cũng như nhu cầu về tài liệu cho mọi người trong nhiều ngành khoa học và kỹ thuật cần nghiên cứu C để giải quyết các bài toán của mình, tác giả biên soạn cuốn sách này. Nội dung cuốn sách là tập hợp một cách có chọn lọc các bài giảng của các tác giả.</p>', '135000.00', 0, 'lap_trinh_C.jpg', '[""]', 16, 1, 18, 4, 1493983674),
(29, 13, 'Lập trình hướng đối tượng JAVA', '<p><strong>I. Đôi điều về tác giả</strong></p><p>Tôi là NEOS.THÀNH (Nguyễn Văn Thành) – Một lập trình viên Java-Android, tác giả cuốn sách “Lập trình hướng đối tượng Java Core”, CEO của công ty TNHH MTV DV Giáo Dục Thành Nguyên, đồng thời là mentor tại trường ĐH trực tuyến FUNiX, giảng viên giảng dạy tại cao đẳng nghề PolyTechnic,&nbsp; công ty phần mềm Luvina và công ty phần mềm FPT.</p><p><strong>II. Quyển sách này nói về điều gì?</strong></p><ul><li>JAVA là ngôn ngữ lập trình rất phổ biến nhất hiện nay, học #JAVA_CORE bạn sẽ có rất nhiều hướng đi, từ lập trình Mobile app, Java web, Desktop App, Game, và tất cả đều sử dụng nền tảng của JAVA CORE.</li><li>Quyển sách này gồm 22 bài học từ Tư duy LTHĐT(Đa hình, kế thừ) đến các đối tượng #JavaCore (String, Array, File), lập trình giao diện Swing.</li></ul><p><em>Quyển sách này sẽ giúp bạn:</em></p><ul><li>Đi vào thế giới lập trình hết sức tự nhiên, thân thiện và dễ hiểu - LẬP TRÌNH HƯỚNG ĐỐI TƯỢNG LÀ TƯ DUY GẮN LIỀN VỚI CUỘC SỐNG HẰNG NGÀY</li><li>Nắm vững được thế nào là tư duy lập trình hướng đối tượng và cách phân tích một bài toán lập trình</li><li>Hiểu được các khái niệm lập trình Java cơ bản.</li><li>Thực hành xây dựng được các giao diện phần mềm desktop bằng ngôn ngữ JAVA</li><li>Sau khi có được nền tảng kiến thức lập trình JAVA core bạn có thể tự học các ngôn ngữ lập trình hướng đối tượng khác như C++/C, Python,</li></ul></div>', '300000.00', 120000, 'lap_trinh_java.jpg', '[""]', 23, 1, 4, 1, 1493983674);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'slide2.jpg', 'http://localhost/webshop/phoi-ren-p4', 1, '2017-04-25 15:24:43'),
(4, '2', 'slide3.jpg', 'http://localhost/webshop/ao-gia-dinh-ag0560-p16', 4, '2017-04-25 15:36:41'),
(5, '3', 'slide4.jpg', 'http://localhost/webshop/phong-cach-phoi-mau-p24', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(4, 1, 0, 'An Nhiên', 'annhien@gmail.com', '0166666666', 'Hoàng Mai - Hà Nội', 'Vui lòng trao hàng đến địa chỉ trên...', '350000.00', '', 1493983674),
(3, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'GUi hang den dia chi tren', '360000.00', '', 1493983674),
(5, 1, 0, 'Bình Nguyễn', 'binh@gmail.com', '0987654321', 'Hà Nội ', 'Gửi đến địa chỉ trên', '370000.00', '', 1494083674),
(6, 0, 0, 'Tô Nam', 'tonam@yahoo.com.vn', '098989876', 'Thủy Nguyên - Hải Phòng', 'Ship đến địa chỉ vào sáng ngày 23/5', '469000.00', '', 1494283674),
(7, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'Ship vào sáng mai.', '70000.00', '', 1494183674),
(8, 0, 0, 'Linh', 'ling@yahoo.com', '098798787', 'hai Phong', 'ship', '69000.00', '', 1494342674),
(9, 1, 0, 'Nhi', 'nhi@test.com', '0987654321', 'Long Biên - Hà Nội', 'Gửi hàng đến địa chỉ trên vào ngày mai', '200000.00', '', 1493983674),
(10, 0, 0, 'VIP User', 'test@gmail.com', '1234567890', 'Hải Phòng', 'Ship free', '450000.00', '', 1493983674),
(11, 0, 0, 'test', 'test@gmail.com', '1234567890', 'Hải Phòng', 'TESE', '300000.00', '', 1494383674),
(12, 0, 6, 'Nguyen An', 'khachhang1@gmail.com', '01201212222', 'Thủy Nguyên - Hải Phòng', 'SHIP TO', '169000.00', '', 1494407353);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(6, 'Nguyen An', 'khachhang1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01201212222', 'Thủy Nguyên - Hải Phòng', 2147483647),
(5, 'User', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2147483647),
(7, 'TEST@gmail.com', 'TEST@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2017);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
