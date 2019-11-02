-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2019 lúc 09:17 AM
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
(25, 8, 4, 'Nói Hay', 'Nguyên Văn', 27000, 'chuc-mot-ngay-tot-lanh.jpg', 'Một cuốn sách dạy cách chúng ta nói hay trong giao tiếp hằng ngày.', 100, '2019-10-11 00:00:00', 3, 1);

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
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
