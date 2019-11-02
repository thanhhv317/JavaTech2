-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2019 lúc 03:34 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlybansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  `BookName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `CreateBy` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`BookID`, `CategoryID`, `PublisherID`, `BookName`, `Author`, `Price`, `Image`, `Description`, `Quantity`, `CreateDate`, `CreateBy`, `Status`) VALUES
(19, 7, 3, '5 Centimet trên giây', 'Shinkai Makoto', 30000, '5cm.jpg', '5 Centimet Trên Giây\r\n\r\n5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu.\r\n\r\nBằng giọng văn tinh tế, truyền cảm, 5 centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua…\r\n\r\nKhác với những câu chuyện cuốn bạn chạy một mạch, truyện này khó mà đọc nhanh. Ngón tay bạn hẳn sẽ ngừng lại cả trăm lần trên mỗi trang sách. Chỉ vì một cử động rất khẽ, một câu thoại, hay một xúc cảm bất chợt có thể sẽ đánh thức những điều tưởng chừng đã ngủ quên trong tiềm thức, như ngọn đèn vừa được bật sáng trong tâm trí bạn. Và rồi có lúc nó vượt quá giới hạn chịu đựng, bạn quyết định gấp cuốn sách lại chỉ để tận hưởng chút ánh sáng từ ngọn đèn, hay đơn giản là để vết thương trong lòng mình có thời gian tự tìm xoa dịu.', 100, '2019-10-07 00:00:00', 4, 1),
(20, 3, 4, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'Nguyễn Nhật Ánh', 87000, 'toi_thay_hoa_vang.jpg', 'Ta bắt gặp trong Tôi Thấy Hoa Vàng Trên Cỏ Xanh một thế giới đấy bất ngờ và thi vị non trẻ với những suy ngẫm giản dị thôi nhưng gần gũi đến lạ. Câu chuyện của Tôi Thấy Hoa Vàng Trên Cỏ Xanh có chút này chút kia, để ai soi vào cũng thấy mình trong đó, kiểu như lá thư tình đầu đời của cu Thiều chẳng hạn... ngây ngô và khờ khạo.\r\n\r\nNhưng Tôi Thấy Hoa Vàng Trên Cỏ Xanh hình như không còn trong trẻo, thuần khiết trọn vẹn của một thế giới tuổi thơ nữa. Cuốn sách nhỏ nhắn vẫn hồn hậu, dí dỏm, ngọt ngào nhưng lại phảng phất nỗi buồn, về một người cha bệnh tật trốn nhà vì không muốn làm khổ vợ con, về một người cha khác giả làm vua bởi đứa con tâm thầm của ông luôn nghĩ mình là công chúa,... Những bài học về luân lý, về tình người trở đi trở lại trong day dứt và tiếc nuối.\r\n\r\nTôi Thấy Hoa Vàng Trên Cỏ Xanh lắng đọng nhẹ nhàng trong tâm tưởng để rồi ai đã lỡ đọc rồi mà muốn quên đi thì thật khó.\r\n\r\n\r\n“Tôi thấy hoa vàng trên cỏ xanh” truyện dài mới nhất của nhà văn vừa nhận giải văn chương ASEAN Nguyễn Nhật Ánh - đã được Nhà xuất bản Trẻ mua tác quyền và giới thiệu đến độc giả cả nước.\r\n\r\nCuốn sách viết về tuổi thơ nghèo khó ở một làng quê, bên cạnh đề tài tình yêu quen thuộc, lần đầu tiên Nguyễn Nhật Ánh đưa vào tác phẩm của mình những nhân vật phản diện và đặt ra vấn đề đạo đức như sự vô tâm, cái ác. 81 chương ngắn là 81 câu chuyện nhỏ của những đứa trẻ xảy ra ở một ngôi làng: chuyện về con cóc Cậu trời, chuyện ma, chuyện công chúa và hoàng tử, bên cạnh chuyện đói ăn, cháy nhà, lụt lội,... “Tôi thấy hoa vàng trên cỏ xanh” hứa hẹn đem đến những điều thú vị với cả bạn đọc nhỏ tuổi và người lớn bằng giọng văn trong sáng, hồn nhiên, giản dị của trẻ con cùng nhiều tình tiết thú vị, bất ngờ và cảm động trong suốt hơn 300 trang sách. Cuốn sách, vì thế có sức ám ảnh, thu hút, hấp dẫn không thể bỏ qua.', 200, '2019-10-03 00:00:00', 4, 1),
(21, 4, 5, 'Luyện Siêu Trí Nhớ', 'Nguyễn Anh Đức', 130000, 'luyen-sieu-tri-nho.jpg', 'Tác giả Nguyễn Anh Đức chia sẻ về ý tưởng viết cuốn sách Luyện siêu trí nhớ từ vựng của mình: Trong chương trình đào tạo lãnh đạo của trường Kinh doanh Harvard, tác giả đã tình cờ gặp và kết bạn với một anh bạn người Do Thái. Qua tiếp xúc, tác giả từ ngạc nhiên đến tò mò bởi chàng trai này giao tiếp tiếng Anh thành thạo như một người bản ngữ, thậm chí khó tìm thấy được dấu hiệu tiếng Anh là chỉ là ngoại ngữ đối với chàng trai này. Tác giả đã rất tò mò, bởi có thể nói tiếng Anh như người bản ngữ như anh chàng này không nhiều. Câu trả lời của Shimon Yakir khiến tác giả rất bất ngờ: “ở Israel mọi người đều nói tiếng Do Thái và tiếng Ả- Rập là ngôn ngữ chính thức, nhưng hầu hết dân Israel đều nói tốt tiếng Anh và tiếng Đức, đấy còn chưa kể không ít người dùng tốt tới bốn hay có thể là năm ngôn ngữ khác nhau.”', 123, '2019-10-05 00:00:00', 4, 1),
(22, 6, 4, 'Mắt Biếc', 'Nguyễn Nhật Ánh', 76000, 'mat-biec.jpg', 'Mắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản. \r\n\r\n“Tôi gửi tình yêu cho mùa hè, nhưng mùa hè không giữ nổi. Mùa hè chỉ biết ra hoa, phượng đỏ sân trường và tiếng ve nỉ non trong lá. Mùa hè ngây ngô, giống như tôi vậy. Nó chẳng làm được những điều tôi ký thác. Nó để Hà Lan đốt tôi, đốt rụi. Trái tim tôi cháy thành tro, rơi vãi trên đường về.”\r\n\r\n… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc buồn, rất buồn khi xuyên suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn …  ', 140, '2019-10-06 00:00:00', 4, 1),
(24, 11, 3, 'Toán cao cấp', 'N', 120000, 'CongPhaToan2.jpg', 'abc xyz', 50, '2019-10-08 00:00:00', 3, 1),
(25, 8, 4, 'Nói Hay', 'Nguyên Văn', 27000, 'chuc-mot-ngay-tot-lanh.jpg', 'Một cuốn sách dạy cách chúng ta nói hay trong giao tiếp hằng ngày.', 100, '2019-10-11 00:00:00', 3, 1),
(26, 8, 6, 'Nhà Giả Kim', 'Paulo Coelho', 55000, 'nha-gia-kim.jpg', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', 200, '2019-10-09 00:00:00', 9, 1),
(27, 7, 7, 'Cuốn Sách Khổng Lồ Về Cơ Thể Người', 'Minna Lacey', 124500, 'cuon-sach-khong-lo-ve-co-the-nguoi.jpg', 'Đây là một cuốn sách kích thước lớn, có những trang gấp khổng lồ, khơi gợi sự thích thú cho độc giả, nhất là trẻ em.\r\n\r\nCuốn sách rất trực quan và sinh động, có đầy đủ các thông tin cơ bản nhất về cơ thể người, được trình bày rất khoa học và sáng tạo: cơ thể được hình thành từ những gì, bộ xương cấu tạo ra sao, các loại cơ bắp trên cơ thể người, hệ tuần hoàn, hệ hô hấp, hệ tiêu hóa, bộ não và các dây thần kinh, và các số liệu đáng kinh ngạc về cơ thể.', 100, '2019-10-28 00:00:00', 6, 1),
(28, 4, 7, 'Sinh Vật Biển', 'Chorkung', 89000, 'sinh-vat-bien.jpg', 'Có rất nhiều loài sinh vật biển sống dưới biển sâu. Giữa những rạn san hô sặc sỡ sắc màu, đó là nơi mà rất nhiều loài sinh vật biển đang cư trú.\r\n\r\nBé sẽ tìm thấy gì ở biển sâu?\r\n\r\nMở sách để ĐẨY – KÉO – TRƯỢT nào!', 100, '2019-10-28 00:00:00', 6, 1),
(29, 7, 3, 'Cáo Ca Chuẩn Man', 'Q-rais', 53000, 'cao-ca-chuan-man.jpg', 'Cáo Ca Tây Tạng (Sunaokasan) là một nhân vật được tạo nên bởi mangaka/họa sĩ minh họa Q-rais.\r\n\r\nNgay từ khi xuất hiện trên mạng xã hội Twitter, nhân vật này đã gây được ấn tượng mạnh với bạn đọc, với hàng trăm ngàn người theo dõi.\r\n\r\nĐây là hình mẫu nhân vật Tsun điển hình, tuy bề ngoài có phần dữ dằn, lạnh lùng (nên hay bị hiểu nhầm) nhưng bên trong lại ẩn chứa một trái tim vô cùng ấm áp, mong manh. \r\n\r\nCáo Ca Chuẩn Man là truyện tranh màu 4 khung tập hợp những mẩu truyện xoay quanh cuộc đời của Cáo Ca Chuẩn Man - một ông bố đơn thân tốt bụng và thích giúp đỡ mọi người.', 150, '2019-10-28 00:00:00', 6, 1),
(30, 7, 3, 'Cáo Ca Chuẩn Man 2', 'Q-rais', 53000, 'cao-ca-chuan-man2.jpg', 'Phần truyện mới tiếp nối những câu chuyện bình dị và không kém phần hài hước về cuộc sống của gia đình Cáo Ca - Đặc biệt là những khoảnh khắc ấm áp của tình cha con trải suốt bốn mùa…\r\n\r\n===\r\n\r\nCáo Ca Tây Tạng (Sunaokasan) là một nhân vật được tạo nên bởi mangaka/ họa sĩ minh họa Q-rais. Ngay từ khi xuất hiện trên mạng xã hội Twitter, nhân vật này đã gây được ấn tượng mạnh với bạn đọc, với hàng trăm ngàn người theo dõi.\r\n\r\nĐây là hình mẫu nhân vật Tsun điển hình, tuy bề ngoài có phần dữ dằn, lạnh lùng (nên hay bị hiểu nhầm) nhưng bên trong lại ẩn chứa một trái tim vô cùng ấm áp, mong manh.\r\n\r\nCáo Ca Chuẩn Man là series truyện tranh màu 4 khung tập hợp những mẩu truyện xoay quanh cuộc đời của Cáo Ca Chuẩn Man - một ông bố đơn thân tốt bụng và thích giúp đỡ mọi người.', 150, '2019-10-28 00:00:00', 6, 1),
(31, 6, 5, 'Mai Sau Ai Sẽ Nắm Tay Mình', 'Hikaru', 61000, 'mai-sau-ai-se-nam-tay-minh.jpg', 'Có những ngày em ngồi lặng lẽ bên cốc café, nhìn ra ngoài đường phố đông đúc, từng dòng người qua lại, lòng tự hỏi không biết bao người đi qua cuộc đời, liệu có ai chịu dừng lại ở bên, cùng mình trải qua những ngày mưa nắng, sớm hôm.\r\n\r\nCó những ngày em đi ngang qua con phố quen, những góc phố bọn mình từng hò hẹn, tiếng cười đùa khúc khích ngày nào như vẫn vương lại từng hàng cây. Mọi thứ vẫn còn đây, chỉ có người cũ là chẳng bao giờ về nữa.\r\n\r\nCó những ngày, em thức trọn cả một đêm, lòng cô đơn hơn bao giờ khi nghĩ về anh và cuộc tình vỡ nát. Rảnh một phút là em nghĩ về anh một phút. Nước mắt cứ tự nhiên rơi. Xa nhau rồi, anh cũng đã kịp có người yêu mới, đã bắt đầu một cuộc sống hạnh phúc và kịp quên em. Chỉ còn em là cố chấp mãi không buông dù lòng bao đau đớn…\r\n\r\nCó những ngày, nắng vàng ruộm những con đường, lá me bay vương trên tóc ai, còn bao điều em chưa kịp nói cùng anh, bao điều chưa kịp làm cùng nhau, thì chúng mình đã phải nói lời tạm biệt.\r\n\r\nNhững ngày như vậy, em luôn tự hỏi vì sao mình lại yếu đuối đến thế? Mình sẽ ôm mãi những tổn thương và nỗi buồn này đến bao giờ? Rồi sau những vỡ nát này, đến bao giờ mới có thể trao tình cảm cho một người khác, liệu có ai chịu nắm tay em, hàn gắn những vết nứt và bảo vệ em khỏi những bão giông, mỏi mệt… Và rồi em lại tự co mình vào vỏ bọc tự tạo ra\r\n\r\nCon gái luôn mâu thuẫn vậy đấy, rất sợ cô đơn, sợ tổn thương nhưng trái tim vẫn mong chờ một tình yêu chân thành và chờ đợi một người nào đó đủ mạnh mẽ, vững chãi bảo vệ mình trong những tháng ngày còn lại. Những ngày lủi thủi một mình trong căn phòng vắng, lòng không ngừng câu hỏi: “Mai sau ai sẽ nắm tay mình?”\r\n\r\nMai sau ai sẽ nắm tay mình – cuốn sách dành cho những ngày cô đơn, chờ đợi một người như thế. Cuốn sách chứa đựng tất những rung động đầu đời trong trẻo, ngây ngô của những cô gái tuổi 18 khi trái tim vừa biết loạn nhịp vì một người, khi mắt cứ mải mê tìm kiếm một bóng lưng quen thuộc giữa sân trường, khi chân cứ vô tình đi theo bước chân của người ấy sau mỗi giờ tan học. Và cả những giọt nước mắt vỡ òa yếu đuối của ai đó sau mỗi một cuộc chia tay hay bị bỏ rơi mà chẳng bao giờ biết được lý do vì sao người ta lại làm vậy.', 100, '2019-10-28 00:00:00', 3, 1),
(32, 4, 7, 'Truyện Cổ Grimm', 'Stefania Leonardi Harley', 112500, 'truyen-co-grimm.jpg', 'Với hình minh họa đẹp mắt, lời kể sinh động và các nhân vật gần gũi, dễ thương, truyện cổ Grimm sẽ dẫn các bạn bước vào thế giới của những câu chuyện cổ tích thần tiên hay nhất và hấp dẫn nhất.', 50, '2019-10-28 00:00:00', 3, 1),
(33, 6, 4, 'Cô Gái Trong Trang Sách', 'Guillaume Musso', 90000, 'co-gai-trong-sach.jpg', 'Một màn kịch sắc sảo và hồi hộp…\r\n\r\nMột mối tình lãng mạn và hư ảo…\r\n\r\n...diễn ra khi sự sống chỉ phụ thuộc vào một cuốn sách!\r\n\r\n“Ướt sũng từ đầu đến chân và trên người không mặc bất cứ thứ gì, cô gái xuất hiện trên sân hiên nhà tôi giữa một đêm giông bão.\r\n\r\n- Cô từ đâu đến?\r\n\r\n- Tôi bị ngã.\r\n\r\n- Ngã từ đâu?\r\n\r\n- Từ một quyển sách. Từ câu chuyện của anh chứ còn từ đâu!”\r\n\r\nTom Boyd là một nhà văn nổi tiếng. Giữa lúc cạn kiệt cảm hứng thì anh bỗng gặp một cô gái tự xưng là nhân vật chính trong cuốn tiểu thuyết anh đang viết dở. Cô gái ấy xinh đẹp nhưng tuyệt vọng, bởi cô sẽ chết nếu anh ngừng viết. Chuyện có vẻ khó tin nhưng lại không có cách nào cưỡng lại được...\r\n\r\nVà như thế, Tom và Billie – tên cô gái ấy – đã cùng nhau trải qua một cuộc phiêu lưu dị thường nơi thực tại hòa lẫn với hư cấu tạo nên một cuộc chơi mê hoặc...', 100, '2019-10-28 00:00:00', 4, 1),
(34, 6, 4, 'Bông Cúc Nhỏ', 'Mộc Lam', 87000, 'bong-cuc-nho.png', '“Bông cúc nhỏ” - nguyên tác của “Đấu ngư – Những ngã rẽ cuộc đời” bộ phim truyền hình về tuổi thanh xuân nổi tiếng khắp Đài Loan và Trung hoa Đại lục một thời, chính thức được xuất bản tại Việt Nam vào tháng 8/2019.\r\n\r\n“Bông cúc nhỏ” kể về quãng thanh xuân của một nhóm bạn trẻ trung học vào đời với số phận và tính cách khác nhau. Cô nữ sinh ngây thơ, thánh thiện được các bạn đặt tên là “Bông cúc nhỏ” đem lòng yêu Lý Hoa Thành, chàng nam sinh có nụ cười và ánh mắt khiến trái tim mọi thiếu nữ xao động, nhưng cũng là thủ lĩnh của học sinh trong trường. Dù hoàn cảnh gia đình rất nhiều khác biệt nhưng chính sự chân thành của Lý Hoa Thành đã khiến Bông cúc nhỏ - cô gái nhỏ được cha mẹ yêu chiều - chấp nhận rời xa vòng tay gia đình để đi theo anh, dấn thân vào cuộc sống đầy gai góc và hiểm nguy của anh.\r\n\r\nLựa chọn một thời tuổi trẻ để lại những tiếc nuối, xót xa với cả nhân vật chính và độc giả, nhưng đọng lại nơi sâu thẳm tâm hồn mỗi chúng ta khi đọc tác phẩm này là vẻ đẹp, sự hi sinh của tình yêu, tình bạn, tình huynh đệ đáng quý.\r\n\r\nTừng câu từng chữ trong truyện đều rất chân thật và giàu tính hình ảnh, vì vậy, với nhiều người, “Bông cúc nhỏ” là bài ca của những tháng năm thanh xuân khó quên, mà trong đó ai cũng thấy mình được sống, hơn nữa còn sống rất ý nghĩa trong câu chuyện.', 100, '2019-10-28 00:00:00', 3, 1),
(35, 6, 4, 'Yêu Em Từ Cái Nhìn Đầu Tiên', 'Cố Mạn', 88000, 'yeu-em-tu-cai-nhin-dau-tien.jpg', 'Nhắc đến Yêu em từ cái nhìn đầu tiên có lẽ không cần dùng quá nhiều lời, bởi cùng với Sam Sam đến đây ăn nào, Bên nhau trọn đời, Yêu em từ cái nhìn đầu tiên đã làm nên tên tuổi của Cố Mạn tại Việt Nam.\r\n\r\nĐi cùng?\r\n\r\nHai chữ này kéo Vy Vy trở về hiện tại, lập tức hoàn hồn.Nhìn chiếc xe, lại nhìn Đại Thần, người đẹp Vy Vy lắp bắp:\r\n\r\n“Em… em…”\r\n\r\nTiêu Nại hơi cau mày. Vy Vy trấn tĩnh nói:\r\n\r\n“… Anh đèo em?”.\r\n\r\n“Ừ, đường xa thế chẳng lẽ đi bộ?”.\r\n\r\nĐường đến nhà thi đấu bóng rổ xa thế, đi bộ đương nhiên rất đáng sợ, nhưng… nhưng  đáng sợ hơn chính là anh đèo em! Vy Vy băn khoăn. Với danh tiếng nổi như cồn của Tiêu Nại, cộng thêm chút nổi tiếng nho nhỏ của Vy Vy, đèo nhau trên con đường này, chắc chắn sẽ có ngay những lời đồn hay ho cho coi! Tuy rằng họ hình như, hình như, có vẻ như đúng là đang tiến tới những nghi ngờ hay ho đó, nhưng hiện nay, bây giờ, lúc này họ tuyệt đối trắng tinh hơn cả lông cừu.\r\n\r\n“Như thế này... như thế này... không ổn lắm. Người khác nhìn thấy sẽ hiểu nhầm”.\r\n\r\nVy Vy cố từ chối khéo, hai tai bắt đầu đỏ dần.\r\n\r\n“Hiểu nhầm?”.\r\n\r\nChẳng lẽ anh không hiểu? Vy Vy đành nói thẳng:\r\n\r\n“Hiểu nhầm chúng ta… ôi, là kiểu quan hệ đó…”.\r\n\r\nTiêu Nại lặng lẽ nhìn cô, hồi lâu không nói, Vy Vy cảm thấy một nỗi căng thẳng khó hiểu… mình không nói gì sai chứ? Đúng khi Vy Vy cảm thấy mỗi lúc càng căng thẳng hơn, cuối cùng Nại Hà phá vỡ bầu không khí yên lặng:\r\n\r\n“Thế chúng ta không phải là kiểu quan hệ đó từ khi nào vậy?”.\r\n\r\nYêu em từ cái nhìn đầu tiên từ khi phát hành cho đến nay đã nhận được vô vàn lời khen tặng của độc giả:\r\n\r\n\"Văn chương của Cố Mạn lãng mạn, dịu dàng, khiến người đọc có cảm giác như đang trôi bồng bềnh trong mơ, vừa đọc vừa vén môi cười dịu dàng… Giồng như khi đối diện với mặt nước hồ phẳng lặng, Cố Mạn sẽ rải lên đó một vài cánh hoa hồng…\"\r\n\r\n(Độc giả Bluehopeatm)\r\n\r\n\"Thế giới của Yêu em từ cái nhìn đầu tiên là thế giới màu hồng dịu ngọt… Tuy không thực tế nhưng vẫn khiến ta phải mỉm cười, phải yêu mến.Độc giả Linh_SuriYêu em từ cái nhìn đầu tiên là một câu chuyện nhẹ nhàng ấm áp, một câu chuyện tình đẹp đến nỗi ta không dám tin nó có thực.\"', 150, '2019-10-28 00:00:00', 3, 1),
(36, 8, 5, 'NGƯỜI NHẠY CẢM - MÓN QUÀ HAY LỜI NGUYỀN', 'Elaine N Aron', 78000, 'nguoi-nhay-cam.jpg', '“NHẠY CẢM” KHÔNG PHẢI LÀ CÁI TỘI!\r\n\r\nBạn là người có đời sống nội tâm phức tạp?\r\n\r\nĐôi khi bạn cảm thấy dường như không ai hiểu được mình?\r\n\r\nBạn cũng là kiểu người thường để ý đến cái nhìn của người khác?\r\n\r\nLuôn cố gắng làm mọi thứ thật tốt, nhưng cũng vì vậy mà khiến bản thân không vui?\r\n\r\nVậy rất có thể bạn là kiểu người CỰC KỲ NHẠY CẢM (Highly Sensitive Person), và có đến 15-20% dân số thế giới là người giống bạn cơ, nên đừng lo, cũng đừng sợ, bạn không phải KẺ KỲ LẠ DUY NHẤT.\r\n\r\nNgười nhạy cảm được sinh ra với những xúc cảm tinh tế và mãnh liệt hơn người khác: dễ khóc, dễ cười, dễ đồng cảm với người khác, đôi khi thích thu mình, đôi khi lại muốn hòa nhập cùng mọi người, suy nghĩ về nhiều thứ, dễ cảm thấy lạc lõng, chỉ một kích thích nhỏ cũng khiến tinh thần bất ổn…\r\n\r\nBạn sở hữu nhiều ưu điểm vượt trội nhưng cũng gặp nhiều khó khăn trong cuộc sống thường ngày, nhất là việc kiểm soát cảm xúc. Cũng bởi vậy mà đôi khi người cực kì nhạy cảm (HSP) trở thành những kẻ lập dị trong mắt mọi người, dễ bị người khác hiểu nhầm là kiểu người thái quá, giả tạo, và bị số đông xa lánh.\r\n\r\n“Người nhạy cảm – món quà hay lời nguyền” là CUỐN SÁCH ĐẦU TIÊN CÔNG NHẬN GIÁ TRỊ CỦA SỰ NHẠY CẢM và xem đó như một điều thiết yếu cho xã hội. Cuốn sách sẽ cho bạn thấy:\r\n\r\nBạn không phải kẻ lập dị, càng không phải giả tạo. Bạn đơn chỉ là một người nhạy cảm\r\n\r\nThấu hiểu để đồng cảm với bản thân nhiều hơn\r\n\r\nBạn khác biệt nhưng bạn có giá trị của riêng mình\r\n\r\n“Người nhạy cảm – món quà hay lời nguyền” với tên gốc Highly Sensitive Person đã:\r\n\r\nTiêu thụ hàng triệu bản trên khắp thế giới, có mặt tại hàng chục quốc gia, trở thành INTERNATONAL BESTSELLER.\r\n\r\nMang lại thành công vang dội cho tác giả - tiến sĩ Elaine N Aron với những giải thưởng, sự ghi nhận danh giá\r\n\r\nMột trong số ít những cuốn sách được nhiều người nổi tiếng trên thế giới đặc biệt đánh giá cao như tác giả John Gray, Riane Eisler, ca sĩ kiêm nhạc sĩ đình đám Alanis Morissette…\r\n\r\nAi cũng mang trong mình những giá trị khác biệt từ khi sinh ra và điều đó tạo nên màu sắc cho thế giới này.', 100, '2019-10-28 00:00:00', 3, 1),
(37, 8, 5, 'CHỮA LÀNH ĐỨA TRẺ BÊN TRONG BẠN', 'Charles Whitfield', 585000, 'chua-lanh-dua-tre-ben-trong-ban.jpg', 'Cuốn sách này là quá trình khám phá và phục hồi dành cho những người trưởng thành gặp tổn thương từ gia đình.\r\n\r\nKhái niệm “Đứa trẻ nội tâm” trở thành một phần của nền văn minh nhân loại từ cách đây ít nhất 2000 năm. Carl Jung gọi khái niệm này là “Đứa trẻ thần thánh” (Divine Child), còn Emmet Fox gọi là “Đứa trẻ kì diệu” (Wonder Child).\r\n\r\nHai nhà tâm lý trị liệu Alice Miller và Donald Winnicott đã đề cập đến nó như là “chân ngã” (cái Tôi đích thực) của chúng ta. Nhiều chuyên gia khác trong lĩnh vực nghiên cứu chứng nghiện rượu và chất kích thích khác gọi nó là “Đứa trẻ nội tâm” (Inner Child).\r\n\r\nThuật ngữ Đứa trẻ nội tâm dùng để nói về phần tâm hồn vô cùng sôi nổi, tràn đầy sức sống, sáng tạo và mãn nguyện trong sâu thẳm mỗi người; đây chính là Đứa trẻ nội tâm - là Chân Ngã - là con người thực sự của chúng ta.\r\n\r\nNhững chấn thương tâm lý xuất hiện lặp đi lặp lại sẽ làm gián đoạn quá trình phát triển lành mạnh của một đứa trẻ, điều này sẽ khiến phản xạ “chiến đấu, chạy trốn hoặc tê liệt” của trẻ trở nên mất kiểm soát.\r\n\r\nTrải qua quá  trình 10 năm nghiên cứu và tìm hiểu hơn 330 báo cáo khoa học khác nhau được thực hiện trên 230.000 người ở trên khắp thế giới, tôi có thể khẳng định rằng: chấn thương tâm lý từ tuổi thơ tạo ra vô số những hậu quả gây tổn thương khác nhau và được biểu hiện theo nhiều cách, bao gồm một hoặc nhiều hội chứng phổ biến được gọi chung là những rối loạn tâm thần - từ trầm cảm, đến nghiện ngập, tâm thần phân liệt - kéo theo một loạt các rối loạn về thể chất khác.\r\n\r\nNhững căn bệnh còn được gọi là “rối loạn chấn thương phổ quát” này thể hiện mối liên hệ mật thiết với quá khứ tuổi thơ phải trải qua những tổn thương liên tiếp. Hơn nữa, trái ngược với những kiến thức tâm thần học hiện đại, có rất ít bằng chứng cho thấy nguyên nhân của những chứng bệnh này xuất phát từ một rối loạn chuyển hóa gen trong tính chất hóa học của bộ não.\r\n\r\nThực tế được ghi nhận qua các nghiên cứu về sự bất thường của não bộ cho thấy chính những sự bất thường này dường như mới là cơ chế gây ra sự rối loạn, với những tổn thương liên tiếp trong thời thơ ấu và giai đoạn sau đó là nguyên nhân cho cả rối loạn tâm thầm và cơ chế gây ra nó.\r\n\r\nPhần đông các gia đình trên khắp thế giới đều chưa thể hiện được vai trò của mình trong việc cung cấp và hỗ trợ các nhu cầu lành mạnh của con trẻ. Hậu quả là quá trình phát triển thần kinh cùng tâm lý bình thường và lành mạnh của trẻ từ sơ sinh cho tới giai đoạn trưởng thành bị gián đoạn nghiêm trọng.\r\n\r\nĐể có thể tồn tại, bản ngã thực sự của đứa trẻ - (Cái Tôi đích thực hay Đứa trẻ nội tâm) - thứ đã bị tổn thương nghiêm trọng phải lẩn trốn vào sâu bên trong khu vực vô thức của tâm trí. Thứ xuất hiện bên ngoài là một bản ngã hay tiềm thức giả mạo và nó đang cố gắng giành quyền kiểm soát cuộc đời của chúng ta, nhưng không thể thành công đơn giản bởi vì nó chỉ là một cơ chế phòng vệ để tránh không bị tổn thương và nó hoàn toàn không có thật. Động lực của cái tôi giả mạo này chủ yếu dựa trên nhu cầu phải luôn là người làm đúng và kiểm soát được mọi thứ.\r\n\r\nCách gọi tên chính xác những gì đã xảy ra với chúng ta cũng như những yếu tố tạo nên đời sống nội tâm của mình khi các sự kiện đó xuất hiện, bao gồm những cảm xúc phong phú mà chúng ta có và học cách cho phép bản thân trải qua những nỗi đau cảm xúc thay vì tránh né nó.\r\n\r\nMột trong số những nguyên tắc quan trọng nhất của việc chữa lành được gói gọn như sau “one day at a time”, tức là khi chúng ta làm gì thì hoàn toàn chú tâm vào việc mình làm mà không cần phải suy nghĩ hay lo lắng đến những việc khác, bởi vì suy nghĩ hay lo lắng cũng vô ích và không cần thiết. \r\n\r\nDù quá trình chữa lành có kéo dài bao lâu, chỉ cần áp dụng lời khuyên này, thì quan điểm của chúng ta có thể thay đổi ngay lập tức: giúp cho cuộc hành trình chữa lành tổn thương không chỉ dễ chịu hơn mà còn đầy ý nghĩa, để chúng ta luôn sống trọn vẹn và hết mình với khoảnh khắc hiện tại.\r\n\r\nVới từng chút kiên nhẫn, khi cho phép mình được trải nghiệm lại những nỗi đau từng bị đè nén và được quyền đau khổ, chúng ta có thể dần dần giải phóng bản thân khỏi những mâu thuẫn nội tâm chưa được giải quyết suốt bao nhiêu năm qua, đồng thời cũng khám phá ra rằng: tương lai sẽ luôn là một điểm đến còn chưa được xác định. Cuộc sống của chúng ta thuộc về hiện tại, là nơi mà cuối cùng chúng ta luôn có thể tìm thấy sự yên bình.', 80, '2019-10-28 00:00:00', 3, 1),
(38, 8, 5, 'LUẬT HẤP DẪN BÍ MẬT TỐI CAO', 'Som Sujeera', 60000, 'luat-hap-dan-bi-mat-toi-cao.jpg', 'Sự tiến hóa của loài người mới chỉ kéo dài hơn hai trăm nghìn năm trong khi hai loài chim và bò sát đã phát triển hơn một triệu năm. So với chúng, loài người chỉ là một giống loài non trẻ. Tuy nhiên, loài người đã tiến hóa rất nhanh và có những bước phát triển vượt trội bởi họ có khả năng nhận thức về bản thân cùng khả năng phát triển nhận thức và thúc đẩy những hiểu biết rõ ràng hơn về bản chất của sự vật và hiện tượng xung quanh. Họ luôn cố gắng tìm kiếm cho mình con đường hướng tới thành công và hướng tới sự giải thoát khỏi mọi nỗi đau.\r\nLuật hấp dẫn – Bí mật tối cao  mang lại cho bạn sự giải thích rõ ràng về sự tác động của Luật Hấp dẫn dựa trên tư tưởng của tâm lý học hiện đại và sự thấu hiểu bên trong về tinh thần có thể đạt được qua những hiểu biết về lời răn của đạo Phật. Thông qua Luật Hấp dẫn, những kết quả nghiên cứu mang tính khoa học và bằng cách luyện tập nhận thức khoảnh khắc hiện tại bạn sẽ hiểu tư duy của mình tạo ra thực tại như thế nào và làm sao bạn có thể sử dụng sức mạnh của những hiểu biết này để làm cho cuộc sống của mình trở nên hạnh phúc và ý nghĩa hơn. Cụ thể hơn, cuốn sách sẽ nhìn nhận vai trò của cảm xúc trong việc định hình thực tế. Để đạt được tới thành công thì con người cần trải qua một quá trình sáng tạo hoàn chỉnh gồm ba bước: yêu cầu, tin tưởng và đón nhận – gửi thông điệp tới thế giới về những mong muốn của mình, tin tưởng chắc chắn rằng mình sẽ đạt được mơ ước đó và đón nhận kết quả tốt đẹp để có thể có được một cuộc sống tốt đẹp, ý nghĩa hơn và thoát khỏi mọi nỗi đau.', 120, '2019-10-28 00:00:00', 3, 1),
(39, 8, 5, 'THAY ĐỔI SUY NGHĨ THAY ĐỔI CUỘC ĐỜI', 'Đức Minh', 60000, 'thay-doi-suy-ngh-thay-doi-cuoc-doi.jpg', '\"Có một quy luật tâm lý đó là nếu bạn tưởng tượng một bức tranh trong tâm trí về cái mà bạn muốn mình trở thành, bạn giữ và duy trì nó đủ lâu trong tâm trí bạn sẽ sớm trở nên hoàn toàn như bạn nghĩ.\"\r\n\r\n    Cuốn sách này chỉ cho các bạn cách thay đổi suy nghĩ và cách mở ra những cánh cửa tiềm năng không giới hạn. Đưa ra 12 phương pháp hiệu quả để giúp bạn tìm được con đường đến với một cuộc sống tốt hơn cả về sự nghiệp lẫn đời sống cá nhân.\r\n\r\n    Mỗi chương giới thiệu những câu chuyện truyền cảm và những phương pháp khiến bạn suy nghĩ tích cực, khuyến khích bạn bằng những bài tập tình huống để bạn rèn luyện bản thân nghĩ và hành động giống như một người thành công thực thụ.', 100, '2019-10-28 00:00:00', 3, 1),
(40, 8, 7, 'TÂM LÝ HỌC HÀI HƯỚC', 'Richard Wiseman', 79000, 'tam-ly-hoc-hai-huoc.jpg', 'Tâm Lý Học Hài Hước\r\n\r\nĐã bao giờ bạn tự hỏi tại sao nhạc sĩ dở tệ luôn luôn giành chiến thắng trong cuộc thi Eurovision Song Contest, hoặc làm thế nào mà những chính trị gia không đủ năng lực lại được bầu?\r\n\r\nTrong khi các nhà khoa học khác đi vào vấn đề hiển nhiên thì Richard Wiseman lại bận rộn khám phá những yếu tố bí mật của sự quyến rũ, khám phá tính cách con người được hình thành như thế nào khi chúng ta sinh ra và kiểm tra tại sao mọi người thường bỏ qua những dấu hiệu rõ ràng nhất của sự phản bội đối tác của mình. Sử dụng các phương pháp khoa học điều tra các chủ đề khác thường thu hút sự quan tâm của công chúng cũng như cộng đồng khoa học, TÂM LÝ HỌC HÀI HƯỚC mang đến hiểu biết mới cho những phần chưa được khám phá của tâm trí con người và đưa chúng ta đến những nơi các nhà khoa học chính thống sợ bước đến. Cuốn sách có thể so sánh với KINH TẾ HỌC HÀI HƯỚC, nhưng mang tính dân túy và hài hước hơn rất nhiều.\r\n\r\nCuốn sách TÂM LÝ HỌC HÀI HƯỚC hàm chứa những nghiên cứu, thí nghiệm độc đáo, dị thường của những nhà khoa học tò mò nhất trên thế giới. Trong đó có rất nhiều điều chúng ta cũng thường xuyên tự hỏi mỗi ngày. Mỗi chương sách hé lộ một mảng tâm lí học bí mật nằm dưới những khía cạnh khác nhau trong cuộc sống của chúng ta, từ sự lừa dối cho đến việc ra quyết định, từ tính ích kỉ cho đến sự mê tín. Trong quá trình này, chúng ta sẽ bắt gặp một vài mảnh ghép ưa thích về sự kì lạ nhưng hấp dẫn.', 99, '2019-10-28 00:00:00', 3, 1),
(41, 3, 3, 'TRẢ CHO ANH TỰ DO, TRẢ CHO EM BÌNH YÊN', 'Trí', 90000, 'tra-cho-em-tu-do-tra-cho-em-binh-yen.jpg', '“Trả cho anh tự do\r\nTrả cho em bình yên\r\nTrả nhau thôi muộn phiền\r\nNhư lần yêu đầu tiên”.\r\n\r\nĐây là quyển sách đánh dấu sự trở lại của Trí. Quyển sách hứa hẹn sẽ mang đến thật nhiều cung bậc cảm xúc cho những ai từng đi qua vài cuộc tình không trọn vẹn.\r\n\r\nNếu đã không thể bên nhau, không thể nắm tay đi đến cùng trời cuối đất, không thể bao dung và thứ tha cho nhau. Thay vì bên cạnh nhưng chẳng còn cảm xúc, thôi thì buông tay để “Trả cho anh tự do. Trả cho em bình yên”. Từ nay, đời ai nấy sống, tim ai nấy giữ, chẳng còn ai bận lòng về nhau nữa!\r\n\r\nBằng một cách nào đó, nếu duyên phận đã hết thì hãy rời bỏ nhau nhẹ nhàng nhất, văn minh nhất. Bởi có níu kéo thì cái mà mình giữ cũng chỉ là thể xác chứ nào có phải tâm hồn của người ta.\r\n\r\nThôi thì, sau một cuộc tình, hãy trả cho người tự do và trả lại cho chính trái tim nhỏ bé của bản thân sự bình yên. Bình yên sống, bình yên vui, bình yên đón nhận cuộc đời tươi đẹp phía trước. Vì suy cho cùng, không ai vì thiếu đi một người mà không thể tiếp tục cuộc đời.\r\n\r\n“Trả cho anh tự do. Trả cho em bình yên” là tập hợp những câu nói được Trí ấp ủ trong một khoảng thời gian đủ dài để gửi đến các bạn độc giả. Tin chắc rằng khi đọc những dòng tâm sự trong quyển sách này, bạn sẽ thấy mình đâu đó của một thời thanh xuân!\r\n\r\n“Về đi em nhé\r\nMột lần không yêu\r\nVạn lần không yêu\r\nNói chi thêm nhiều\r\nCũng là thế thôi...!”\r\n\r\n“Một buổi chiều nọ\r\nChúng ta ngồi đó\r\nNgó tình trôi đi\r\nChẳng giữ được gì...!”\r\n\r\n“Đôi khi chúng ta chẳng cần xác định một mối quan hệ rõ ràng, chỉ cần mỗi ngày được gặp người ấy, ở cùng người ấy, đi cùng đến bất cứ nơi đâu người ấy muốn, đó đã là một niềm hạnh phúc!”\r\n\r\n“Tuổi trẻ của em đã giao cho anh, đáng lẽ ra anh phải trao lại cho em yêu thương. Cớ sao lại trao nhầm nỗi đau!?”\r\n\r\n“Năm tháng ấy, chúng ta là những đứa trẻ dại, phải lòng nhau trên đoạn đường thanh xuân”\r\n\r\n“Không cần ta phải thương nhiều', 100, '2019-10-28 00:00:00', 3, 1),
(42, 3, 5, 'CÀ PHÊ CÙNG TONY', 'Tony Buổi Sáng', 63000, 'ca-phe-cung-tony.jpg', 'Cà Phê Cùng Tony\r\n\r\nCó đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.\r\n\r\nChúng tôi tin rằng những người trẻ tuổi luôn mang trong mình khát khao vươn lên và tấm lòng hướng thiện, và có nhiều cách để động viên họ biến điều đó thành hành động. Nếu như tập sách nhỏ này có thể khơi gợi trong lòng bạn đọc trẻ một cảm hứng tốt đẹp, như tách cà phê thơm vào đầu ngày nắng mới, thì đó là niềm vui lớn của tác giả Tony Buổi Sáng.\r\n\r\nTony Buổi Sáng cũng là tác giả của Trên đường băng, tác phẩm hiện đã bán hơn 200.000 bản.\r\n\r\n***\r\n\r\nTrích đoạn:\r\n\r\n... Thật ra Tony hiểu vì sao các bác giáo sư tiến sĩ soạn sách đã phải đưa vào nhiều nội dung như vậy. Rất là tâm huyết và đáng trân trọng. Vì ngày xưa, kiến thức rất khó tìm. Nhiều điều hữu ích chỉ nằm trong sách, trong thư viện các thành phố lớn, các trường các viện đại học lớn và người ta phải nhớ mọi thứ, nên phải cộng điểm cho học sinh nông thôn vì ít cơ hội tiếp cận kiến thức. Nhưng, bây giờ kiến thức nằm hết trên mạng, trong file máy tính, truy cập là ra ngay, nên các nước đã phải thay đổi chương trình học phổ thông sau khi máy tính và internet ra đời. Học sinh chỉ cần nhớ những gì cốt lõi, và PHƯƠNG PHÁP tìm kiếm tài liệu. Vì chữ nghĩa rồi cũng sẽ rụng rơi theo thời gian, kiến thức mới lại bổ sung liên tục, nên phương pháp tìm kiếm thông tin tốt sẽ giúp ích cho các bạn trong cuộc sống sau này. Làm ngành nghề gì cũng phải cập nhật cái mới...', 100, '2019-10-28 00:00:00', 4, 1),
(43, 3, 3, 'VÔ THƯỜNG', 'Nguyễn Bảo Trung', 79000, 'vo-thuong.jpg', '\"Hy sinh vì người khác luôn cho hương thơm bay ngược chiều gió. Gánh nặng vì tình yêu luôn song hành cùng sức mạnh vô song. Bất cứ gỗ đá nào chạm phải tình yêu đều trở nên bao dung mềm mại.\r\n\r\nTôi thấy lòng mình bỗng chật. Những gì trước đây tôi cho là đúng, bây giờ tôi đâm nghi ngờ. Những gì trước đây tôi luôn theo đuổi, giành giật để có, bây giờ thấy chẳng còn quan trọng nữa.\r\n\r\nNhững tay thét ra lửa, những tay sừng sỏ mà tôi từng kính nể, bỗng dưng tôi thấy họ bình thường. Họ cố gắng dùng đôi bàn tay chứng tỏ mình, khuếch trương mình, những cái họ có được chỉ là thứ trơ trẽn. Họ không bình yên trên vật chất họ có được. Họ khoác những chiếc áo sang trọng, tay đeo đầy những kim cương, xịt toàn nước hoa hảo hạng, nhưng không bao giờ có mùi hương thanh tao, dịu ngọt, toả lan khắp bầu trời.\r\n\r\nTôi bị ám ảnh, vì trong tôi hoài thai một lối sống. Tôi muốn thoát khỏi bàn tay của chính mình. Tôi là người tìm kiếm bàn tay đẹp.\r\n\r\nBàn tay biết dang ra, biết sẻ chia là bàn tay đẹp. Bàn tay biết nắm lấy tay người bất hạnh hơn mình để cùng bước là bàn tay đẹp. Bàn tay biết nâng niu, gìn giữ cái đẹp, cái chân, cái thiện, là bàn tay đẹp. Và hàng ngàn định nghĩa về bàn tay đẹp khác.\r\n\r\nCó bàn tay cầm nắm rất nhiều, có thể điều khiển người khác. Có bàn tay xòe ra ăn xin từng đồng lẻ bố thí. Có bàn tay khéo léo làm nên những tuyệt tác nghệ thuật. Có bàn tay vụng về chỉ làm đổ vỡ mọi thứ khi chạm vào. Có bàn tay cho đi. Có bàn tay giữ lại. Nhưng khi về với đất, bàn tay nào cũng rỗng. Rỗng tuyệt đối.\r\n\r\nVậy sao không ướp hương cho đôi tay mình, tôi tự hỏi lòng như thế. Có hàng ngàn cách ướp hương,  ướp hương thánh thiện, âm thầm, khiêm cung, bé nhỏ, mà hương thơm lại bay vượt mọi không gian.\r\n\r\nKhi sinh ra, tay tôi nắm chặt. Khi chết đi tay tôi buông thõng. Từ nắm chặt đến buông thõng, một hành trình dài đầy nụ cười hạnh phúc và nước mắt đau thương.”', 100, '2019-10-28 00:00:00', 3, 1),
(44, 3, 5, 'SẼ CÓ CÁCH ĐỪNG LO', 'Tuệ Nghi', 69000, 'se-co-cach-dung-lo.jpg', 'TOP 100 BEST SELLER - Tản văn “Sẽ có cách, đừng lo” với lối viết gần gũi, những tự sự, trăn trở về tình yêu, chuyện đời- chuyện người. Cuốn sách như một người bạn động viên tác giả cũng như đem lại niềm tha thiết yêu cuộc sống cho độc giả, thể hiện năng lượng sống tích cực khi đứng trước những điều tưởng chừng như rất khó vượt qua.\r\n\r\nNhững câu trích dẫn bật lên tinh thần tác phẩm “Sẽ có cách, đừng lo”:\r\nNếu cánh cửa này đóng lại, bạn sẽ chọn mở tiếp cánh cửa khác hay bất lực trong oán trách vô vọng?\r\n\r\nNgười có thể dối ta, nhưng ta tuyệt đối không bao giờ tự dối chính mình. Không có điều gì là mãi mãi, kể cả những nỗi buồn cũng thế!\r\n\r\nCuộc sống là muôn vạn những chữ \"Ngờ\", chúng ta không học được chữ \"Ngờ\", càng không thể đoán biết trước được nó sẽ đến lúc nào. Nhưng chúng ta hoàn toàn có thể học cách đón nhận nó, một cách tích cực và thanh thản nhất có thể...\r\n\r\nCó người sẽ vì những đắng cay ngang trái ở đời mà gục ngã, mất hết niềm tin sống lẫn nhuệ khí sinh tồn. Nhưng cũng có người càng bất hạnh, càng nghịch cảnh thì động lực vươn lên trong họ lại càng lớn. Họ nén hết cay đắng xuống, tạo thành một lực đẩy để bật ra khỏi vũng lầy dưới chân mình. \r\n\r\nMọi thứ đều sẽ có cách giải quyết, nút thắt nào cũng sẽ có cách để mở, người cần đến sẽ đến và người cần đi sẽ buộc phải ra đi. Sẽ có cách, đừng lo!\r\n\r\nNhận xét về Tuệ Nghi:\r\n\r\nCô nàng tổng giám đốc 9x xinh đẹp khiến nhiều bạn trẻ khâm phục bởi sự nghị lực, không đầu hàng nghịch cảnh, thể hiện năng lực qua việc kinh doanh, viết sách... Tờ New York Times của Mỹ từng nhắc đến Tuệ Nghi là một cô gái có tuổi thơ khốn khó nhưng nhờ sự bền bỉ, không đầu hàng số phận để đi đến thành công. Vừa qua, Tuệ Nghi xuất hiện trên sóng truyền hình quốc gia nước cộng hoà Slovenia trong một đoạn phỏng vấn về vai trò của người phụ nữ Việt Nam trong giai đoạn đổi mới. Phong thái chững chạc của một nữ doanh nhân trẻ khiến nhiều bạn trẻ vừa thán phục vừa mơ ước.\r\n(Theo Vnexpress)\r\n\r\nSau những sóng gió, Tuệ Nghi thu mình lại, đem hết những chất chứa về chuyện mình, chuyện đời… vào những trang sách. Ra mắt tác phẩm “Sẽ có cách, đừng lo” không phải để Nghi chứng tỏ “tôi vẫn ổn!”, mà hơn hết nó là một người bạn đã cùng Nghi đi qua những tháng ngày tưởng chừng như khó khăn nhất. Tác phẩm như một sự động viên cho Nghi, cho những ai đang gặp phải những chuyện không vui, những lo toan thường nhật, những đớn đau rất con người… \r\n(Hoàng Trang- Biên Tập Viên NXB Văn Học)\r\n\r\nGặp Tuệ Nghi lần đầu trong một buổi trà chiều Sài Gòn, trước mắt tôi là một cô gái mong manh nhưng ánh mắt đầy \"nội lực\"... Không còn \"gồng\" mình với những con số kinh doanh, những kế hoạch chiến lược..., chỉ còn lại những câu chuyện dung dị rất đời, rất phụ nữ, rất bình thường... Bất giác, cô ấy khóc! Tôi biết cô ấy không dễ khóc. Và đột nhiên tôi nghĩ, người phụ nữ này xứng đáng được yêu thương! Tác phẩm \"Sẽ có cách, đừng lo\" ra đời cũng từ những giọt nước mắt ấy, như một món quà của niềm ủi an, niềm hân hoan cuộc sống... trân thương dành tặng các quý độc giả. (Thảo Minh Châu- Giám đốc Minh Châu Books)\r\n\r\nProfile tác giả:\r\nTuệ Nghi\r\nTên thật: Phan Thanh Bảo Ngọc.\r\nSinh năm: 1993\r\nLà một người làm kinh doanh, học ngành luật và yêu viết lách. Khởi nghiệp từ năm 15 tuổi, sáng lập công ty riêng ở tuổi 17 và nhận biểu tượng Top 10 Ngôi Sao Kinh Doanh Châu Á Thái Bình Dương ở tuổi 20. Đã ra mắt tiểu thuyết Luật Ngầm ở tuổi 21 và được tập đoàn Galaxy mua lại để chuyển thể thành phim chỉ sau 43 ngày phát hành.\r\n\r\nTuệ Nghi từng nhận các giải thưởng: Nhân tố mới thời đại Hồ Chí Minh 2013; Doanh nhân Tiên Phong... Tuệ Nghi hiện là Tổng giám đốc của một công ty chuyên về tư vấn đầu tư, phát triển và vận hành các dự án bất động sản du lịch theo thương hiệu quốc tế.\r\n\r\n\"Nhưng rốt cuộc rồi tôi cũng chỉ là một người phụ nữ như vô vàn phụ nữ khác trên thế gian này...\"', 100, '2019-10-28 00:00:00', 3, 1),
(45, 3, 4, 'NHÀ', 'Nguyễn Bảo Trung', 87000, 'nha.jpg', '\"Có nhiều người đã trải qua biết bao lần thăng trầm, đã hiểu được thế nào là mái nhà thế nào là mái ấm... họ sẽ đi thật chậm, nương vào nhau mà bước. Họ hiểu ai cũng có lỡ lầm, không trọn vẹn..., vì thế họ biết giữ nhau bằng sự rộng lượng và bao dung.\"\r\n\r\nKhác với tác phẩm đầu tiên kể về những câu chuyện như mảnh đất chưa được vỡ hoang để mọi người đến chiêm nghiệm, nhìn lại cuộc sống hằng ngày của mình và nảy sinh ước muốn gieo trồng thì ở Nhà – mảnh đất ấy đã có những mầm xanh hy vọng, những cây cổ thụ vững chãi, những đóa hoa tươi thắm, những bóng mát thảnh thơi... Khi đọc Nhà, ta cứ như đang được tưới tẩm những giọt nước trong ngần, giúp lòng chuyển hóa và thăng hoa.\r\n\r\nChắc hẳn tác giả phải đi nhiều lắm, phải chạm nhiều lắm và phải khóc nhiều lắm mới có thể viết ra được như vậy, bởi Nhà như chiếc lá đã chín cùng với tháng năm. Trong Nhà vẫn là những câu chuyện sinh lão bệnh tử của bác sĩ và bệnh nhân, vẫn là những giọt nước mắt, những nụ cười giữa cuộc đời quá nhiều chìm nổi, thay đổi... nhưng Nguyễn Bảo Trung đã nhuộm vào đó một tình thương, một tấm lòng “mong mọi người hãy sống thiết tha với nhau hơn nữa, hãy là NHÀ thật sự để người thương có thể trở về. Bởi biết đâu, chớp mắt một cái chỉ còn lại tro tàn”.', 100, '2019-10-28 00:00:00', 3, 1),
(46, 3, 4, 'YÊU ĐI ĐỪNG SỢ', 'Kim Oanh', 79000, 'yeu-di-dung-so.jpg', 'YÊU ĐI ĐỪNG SỢ - Món quà dành tặng chính mình của các cô gái.\r\n\r\n\"Thanh xuân còn gì đâu nếu thiếu đi những cuồng nhiệt điên rồ...\"\r\n\r\nCuốn sách dành tặng những trái tim còn lẻ bóng, còn nhiều hoài nghi nhiều ngần ngại. Thanh xuân ngắn ngủi, SỢ GÌ KHÔNG YÊU.\r\n\r\nNgọt ngào hay đắng chát?\r\n\r\nDịu mát hay gắt nồng?\r\n\r\nBạn bỏ gì trong tách trà tình yêu của mình?\r\n\r\nBạn biết không:\r\n\r\nTách trà của ai đó có thể có vị ngọt ngào thơm nồng của mối tình đầu, của tuổi trẻ đầy bồng bột nhưng cũng đầy đam mê.\r\n\r\nTách trà của ai đó có thể có vị đắng chát của hoài nghi, tổn thương và sợ hãi.\r\n\r\nNhưng ít nhất họ đều dám yêu, dám cho đi đều can đảm để bước vào tình yêu, hết mình vì tình yêu và dẫu có thất bại cũng đừng ngại đứng dậy.\r\n\r\nBạn có thể sợ hãi cái nắm tay của một ai đó bởi sợ rằng người một mai sẽ buông tay . Bạn có thể tổn thương vì một lần buông bỏ. Bạn cũng có thể luôn cho rằng hạnh phúc chỉ đến một lần, để vụt mất nghĩa là không có cơ hội tìm lại.Bạn có thể sợ rất nhiều thứ, hoài nghi rất nhiều thứ.\r\n\r\nNhưng bạn biết không: bạn còn trẻ. Và nếu bạn không yêu, nghĩa là bạn đánh mất đi những đặc quyền điên rồ mà tuyệt vời nhất của tuổi trẻ.\r\n\r\nSợ gì không rung động.\r\n\r\nSợ gì không mở lòng mình.\r\n\r\nSợ gì không đón nhận một ai đó.\r\n\r\nCô gái à, rồi sẽ đến một ngày, bạn sẽ lại được yêu, được nâng niu và mọi vết thương sẽ được chữa lành. Cô gái à, đừng cố chấp, đừng gạt bỏ mọi cơ hội đến với bạn. Đừng khó tính quá với chính bản thân và trái tim mình. Trái tim nào cũng cần yêu thương, cần điểm tựa cần mảnh ghép phù hợp với chính mình .\r\n\r\nMột cô gái thông minh, là một cô gái biết chọn những hương vị tuyệt nhất cho tách trà tình yêu của mình.\r\n\r\nYêu đi đừng sợ! Hãy cứ yêu như chưa từng tổn thương đến thế!', 100, '2019-10-28 00:00:00', 3, 1),
(47, 8, 5, 'TÂM LÝ HỌC ĐÀM PHÁN', 'Doãn Húc Thăng', 82000, 'tam-ly-hoc-dam-phan.jpg', 'Đàm phán là một phần không thể thiếu trong cuộc sống. Dù bạn có thích hay không, thì cũng sẽ có lúc trở thành người trong cuộc. Do đó, sở hữu kỹ năng đàm phán là điều hết sức cần thiết. \r\nThắng hay thua trong đàm phán không phải do thế lực hùng hậu phía sau hay miệng lưỡi giảo hoạt, mà phụ thuộc vào việc bạn có nắm chắc tâm lý con người hay không.\r\n“Tâm lý học đàm phán” kết hợp chặt chẽ giữa lý thuyết và thực tế, đi sâu vào quá trình và các kỹ năng cần có trong đàm phán; kết hợp với các ví dụ điển hình, phân tích chi tiết phản ứng tâm lý con người. Đây là một cuốn sách ứng dụng không thể thiếu đối với mỗi người chúng ta.\r\n\r\nCác chuyên gia tâm lý đã phát hiện rằng khi ở thế bị động, người ta sẽ hình thành nên tâm lý yếu thế. Điều này dẫn tới việc họ dần lùi bước và thoả hiệp, đánh mất ưu thế trong đàm phán.\r\n\r\nNhẫn nại chính là nền tảng tâm lý của đàm phán thành công, đó cũng là một chiến thuật tâm lý quan trọng giúp đánh bại đối phương trên bàn đàm phán. Trong đàm phán, nhẫn nại thể hiện qua cách giành được ưu thế một cách từ tốn, giỏi kiềm chế cảm xúc, và tấn công đúng lúc.', 100, '2019-10-28 00:00:00', 3, 1),
(48, 8, 5, 'TÂM LÝ HỌC GIAO TIẾP', 'Phổ Tường', 97000, 'tam-ly-hoc-giao-tiep.jpg', 'Trong đời người, từ xin việc cho đến thăng chức, từ xã giao cho đến kết bạn, từ trò chuyện cho đến thuyết phục, tất cả đều cần đến khả năng ăn nói. Do đó, người nắm bắt được kỹ năng giao tiếp cũng giống như có được con át chủ bài của sự thành công.\r\n“Tâm lý học giao tiếp” tập trung phân tích các hiệu ứng tâm lý và các bí quyết giao tiếp, giải mã tâm hồn đối phương. Đồng thời giúp bạn vận dụng lý thuyết tâm lý học vào những trường hợp giao tiếp thực tế trong cuộc sống. Cách giải quyết các tình huống khó xử, cách nhờ vả, đàm phán, diễn thuyết, bán hàng, phỏng vấn, cách ứng xử với lãnh đạo, cấp dưới, đồng nghiệp và cả người yêu, đều sẽ được lý giải trong từng ví dụ cụ thể.', 100, '2019-10-28 00:00:00', 3, 1),
(49, 3, 5, 'BỐ GIÀ', 'Mario Puzo', 97500, 'bo_gia.jpg', 'Bố già là cuốn tiểu thuyết văn học hiện đại Mỹ được đông đảo bạn đọc trên thế giới nói chung và tại Việt Nam nói riêng đón nhận một cách \"nồng hậu\", và cũng không ngạc nhiên khi bộ phim ra đời ăn theo kịch bản cũng được chào đón nồng nhiệt không kém.  Không hẳn là vì cuốn tiểu thuyết viết về cuộc đời của một \"trùm mafia\" khét tiếng trôi dạt từ hòn đảo Xixili sang đất Mỹ và làm mưa làm gió trên mảnh đất \"tự do\" này, mà đằng sau đó là những thân phận, những cuộc đời mà lẽ ra vô cùng bình dị và yên ấm như bao gia đình khác. Cái \"đế chế vương quyền\" bất thành văn ấy, ai đã vào trong, ai đã \"cưỡi lên lưng hổ\" thì chỉ có con đường tiến, không có đường lui. Là nổ súng, tư thù, đâm thuê chém mướn, tranh giành lãnh địa, tranh hùng tranh bá thiên hạ, vậy mà vẫn ẩn chứa những đằm thắm, mặn mà, nhân hậu và \"có thuỷ có chung\". Ai đã xây dựng nên, ai là người đại diện xứng đáng, ai danh tiếng lưu truyền? chính là \"Bố già - Ông trùm Don Vitô Côrleône\".', 100, '2019-10-28 00:00:00', 3, 1),
(50, 3, 5, 'BÁ TƯỚC MONTE CRISTO', 'Alexandre Dumas Cha', 130000, 'ba-tuoc-monte-cristo.jpg', 'Sắp được giao trọng trách làm một thuyền trưởng, chuẩn bị cưới nàng Mercédès xinh đẹp dịu dàng, có một người cha hết mực thương yêu, được anh em bè bạn mến phục, tương lai của chàng thanh niên Edmond Dantès thật rạng ngời hạnh phúc. Nhưng số mệnh nghiệt ngã, vẽ nên viễn cảnh tươi sáng để rồi bôi đen tất cả. Đúng trong ngày hạnh phúc nhất đời, anh bị bắt giam vào hầm ngục lâu đài If khi chưa đầy hai mươi tuổi bởi âm mưu của những kẻ ghen ghét, đố kị và cơ hội.\r\n\r\nSau mười bốn năm trời bị đầy đọa, bị cướp đi tuổi trẻ và tình yêu, Edmond Dantès, khi vượt ngục đã hoàn toàn lột xác thành bá tước Monte Cristo nhờ sự giáo dục và kho báu bí mật của người bạn tù là nhà bác học - linh mục Faria, bắt đầu hành trình trả ân báo oán. Mang trong mình hai con người: một Edmond Dantès nặng nghĩa nặng tình, một bá tước Monte Cristo lạnh lùng thực thi công lí, liệu chàng thanh niên đầy hoài bão năm xưa có tìm thấy và được hưởng hạnh phúc?\r\n\r\nBá tước Monte Cristo là một câu chuyện tuyệt vời về tình yêu, lòng thù hận và sự vị tha. Bốn chữ: HI VỌNG và CHỜ ĐỢI chính là bài học cuộc sống mà tác phẩm dành tặng cho độc giả. Hãy luôn nhớ rằng: “Trên đời này không có hạnh phúc mà cũng chẳng có bất hạnh, chỉ là sự chuyển biến từ trạng thái này qua trạng thái khác. Chỉ có những người nào đã trải qua cảnh khổ cực mới hưởng thụ được cảnh sung sướng. Chỉ có kẻ nào sắp chết mới biết cuộc sống là thiên đường.”', 100, '2019-10-28 00:00:00', 3, 1),
(51, 3, 5, 'ÔNG GIÀ VÀ BIỂN CẢ', 'Ernest Hemingway', 45000, 'ong-gia-va-bien-ca.jpg', 'Ông già và Biển cả (tên tiếng Anh: The Old Man and the Sea) là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được viết bởi Hemingway. Đây cũng là tác phẩm nổi tiếng và là một trong những đỉnh cao trong sự nghiệp sáng tác của nhà văn. Tác phẩm này đoạt giải Pulitzer cho tác phẩm hư cấu năm 1953. Nó cũng góp phần quan trọng để nhà văn được nhận Giải Nobel văn học năm 1954.\r\n\r\nTrong tác phẩm này, ông đã triệt để dùng nguyên lý mà ông gọi là “tảng băng trôi”, chỉ mô tả một phần nổi còn lại bảy phần chìm, khi mô tả sức mạnh của con cá, sự chênh lệch về lực lượng, về cuộc chiến đấu không cân sức giữa con cá hung dữ với ông già. Tác phẩm ca ngợi niềm tin, sức lao động và khát vọng của con người.', 100, '2019-10-28 00:00:00', 3, 1),
(52, 3, 5, 'ODYSSEY', 'Homer', 219000, 'odyssey.jpg', 'Odyssêy (Tái Bản 2018)\r\n\r\nBản anh hùng ca Odyssêy là bức tranh hoành tráng, hào hùng của người Hy Lạp trong cuộc chinh phục thiên nhiên và di dân mở đất. Tác phẩm gồm 12.110 câu thơ, chia làm 24 khúc ca, kể lại hành trình gian nan của Odysseus trên đường trở về quê hương sau khi quân Hy Lạp hạ được thành Troa.\r\n\r\nOdyssêy phản ánh giai đoạn cao trào trong quá trình tan rã của chế độ công xã thị tộc : Đó là thời kỳ những người Hy Lạp đã bước vào cuộc sống lao động hòa bình có khát vọng chinh phục thế giới xung quanh, thời kỳ hình thành gia đình một vợ một chồng với chế độ phụ quyền và quyền tư hữu tài sản. Ngoài ra ta còn thấy khát vọng sống văn minh, hữu ái, của người xưa như một nguyện vọng không riêng gì của thời đại Homer mà của nhân loại ở mọi thời đại.\r\n\r\nOdyssêy có sự kết hợp tài tình giữa những thứ giản dị với phong phú, thực tế với tưởng tượng, hữu hình với vô hình, thần linh với thế nhân, ảnh hưởng sâu dậm tới văn hóa, văn minh Tây phương, hơn bất kỳ sáng tác văn chương nào từ trước tới giờ.', 150, '2019-10-28 00:00:00', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Quantity`, `Status`) VALUES
(3, 'Văn Học', 200, 1),
(4, 'Thiếu Nhi', 250, 0),
(5, 'Tự Truyện', 175, 1),
(6, 'Ngôn Tình', 180, 1),
(7, 'Thiếu Nhi', 300, 1),
(8, 'Tâm Lý', 350, 1),
(11, 'Sách giáo khoa', 100, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Subject` text COLLATE utf8_unicode_ci NOT NULL,
  `Message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quatity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Total` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `PublisherID` int(11) NOT NULL,
  `PublisherName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`PublisherID`, `PublisherName`, `Address`, `Phone`, `Email`) VALUES
(3, 'Kim Đồng', '55 Quang Trung, Hai Bà Trưng, Hà Nội', '02439434730', 'kimdong@hn.vnn.vn'),
(4, 'Nhà xuất bản Trẻ', '161B Lý Chính Thắng, Phường 7, Quận 3, Thành phố Hồ Chí Minh', '02839316289', 'hopthubandoc@nxbtre.com.vn'),
(5, 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', '62 Nguyễn Thị Minh Khai, Phường Đa Kao, Quận 1, TP.HCM', '02838225340', 'tonghop@nxbhcm.com.vn'),
(6, 'Nhà xuất bản chính trị quốc gia', 'Số 6/86 Duy Tân, Cầu Giấy, Hà Nội', '0280.49221', 'suthat@nxbctqg.vn'),
(7, 'Nhà xuất bản giáo dục', '81 Trần Hưng Đạo, Hà Nội', '02438220801', 'hopthu@nxbgdhcm.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `SliderID` int(11) NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `Link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedDate` date NOT NULL,
  `CreatedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Level` tinyint(4) DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `Name`, `UserName`, `Password`, `Level`, `Address`, `Phone`, `Email`) VALUES
(3, 'Admin', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 1, '123', '123', '123'),
(4, 'Thành', 'thanhhv', '36fc0417a7a5beab37e3e490c4543d55', 1, '100', '123', 'thanhhv@gmail.com'),
(5, 'Minh', 'minhlc', 'minhlc', 2, '93', '0938964143', '.ll'),
(6, 'Admin', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 1, '123', '123', '123'),
(7, 'Thành', 'thanhhv', '36fc0417a7a5beab37e3e490c4543d55', 2, '100', '123', 'thanhhv@gmail.com'),
(8, 'Kỳ', 'kydq', '579cbb1fdf2da496711e71622c932112', 2, '100', '123', 'kydq@gmail.com'),
(9, 'Admin', 'admin', 'admin', 1, '81 Nghĩa Hòa, phường 6, quận Tân Bình', '031233231', 'ho-tro@admin.gmail');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `fk_CategoryID` (`CategoryID`),
  ADD KEY `fk_PublisherID` (`PublisherID`),
  ADD KEY `fk_CreateBy` (`CreateBy`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `BookID` (`BookID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`PublisherID`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`SliderID`),
  ADD KEY `fk_CreatedBy` (`CreatedBy`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `PublisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `SliderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `fk_CreateBy` FOREIGN KEY (`CreateBy`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `fk_PublisherID` FOREIGN KEY (`PublisherID`) REFERENCES `publishers` (`PublisherID`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`);

--
-- Các ràng buộc cho bảng `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `fk_CreatedBy` FOREIGN KEY (`CreatedBy`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
