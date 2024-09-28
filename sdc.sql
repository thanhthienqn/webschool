-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2024 lúc 01:09 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sdc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aboutus`
--

CREATE TABLE `aboutus` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `thumbnailAboutUs` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phoneNumber` varchar(191) DEFAULT NULL,
  `refreshTokenJWT` text DEFAULT NULL,
  `expriedAccessTokenJWT` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `name`, `email`, `password`, `phoneNumber`, `refreshTokenJWT`, `expriedAccessTokenJWT`, `created_at`) VALUES
('sdc-admin-02092002', 'admin', 'admin@gmail.com', '$2b$10$X6.U5KEqYOaTCMCfv5xhNOyFvWx7kU7nVU.VZ9YlGddToOxw2QJ6O', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6eyJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsIm5hbWUiOiJhZG1pbiIsImlkIjoic2RjLWFkbWluLTAyMDkyMDAyIiwicm9sZXMiOlsiQURNSU4iXX0sImlhdCI6MTcyNzQ4NDExNCwiZXhwIjoxNzMwMDc2MTE0LCJhdWQiOiIqKioqKmV0aGluLXNkYyoqKioqKiIsImlzcyI6Imh0dHBzOi8vZXRoaW4tc2RjKioqKioqKioiLCJzdWIiOiJzZGMtYWRtaW4tMDIwOTIwMDIifQ.zoLNvR8D3EAG0kT3LLAoyWMrBm4QHUq35guHMaEipIk', NULL, '2024-09-28 00:39:34.897');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admissions`
--

CREATE TABLE `admissions` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `communicate`
--

CREATE TABLE `communicate` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contentassetnews`
--

CREATE TABLE `contentassetnews` (
  `id` varchar(191) NOT NULL,
  `accountId` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
('CTSV@sdc', 'Phòng công tác sinh viên', 'Phòng Công tác Sinh viên là bộ phận chịu trách nhiệm hỗ trợ và quản lý các hoạt động liên quan đến sinh viên trong cơ sở giáo dục. Chức năng của phòng bao gồm tổ chức các hoạt động ngoại khóa', '2024-09-28 00:39:34.923', '2024-09-28 00:39:34.923'),
('daotao@sdc', 'Phòng đào tạo', 'Phòng đào tạo là bộ phận chịu trách nhiệm phát triển và quản lý các chương trình đào tạo cho nhân viên, đảm bảo họ có kiến thức và kỹ năng cần thiết để phát triển trong công việc. Phòng đào t', '2024-09-28 00:39:34.923', '2024-09-28 00:39:34.923'),
('taichinh@sdc', 'Phòng tài chính', 'Phòng Tài chính là bộ phận quản lý và giám sát tất cả các hoạt động tài chính của công ty. Chức năng của phòng bao gồm lập kế hoạch và giám sát ngân sách, thực hiện nghiệp vụ kế toán, và chuẩ', '2024-09-28 00:39:34.923', '2024-09-28 00:39:34.923');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `event`
--

CREATE TABLE `event` (
  `id` varchar(191) NOT NULL,
  `accountId` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `accountId` varchar(191) NOT NULL,
  `contentAssetNewsId` varchar(191) DEFAULT NULL,
  `newsId` varchar(191) DEFAULT NULL,
  `aboutUsId` varchar(191) DEFAULT NULL,
  `partnerId` varchar(191) DEFAULT NULL,
  `typeImageId` varchar(191) NOT NULL,
  `communicateId` varchar(191) DEFAULT NULL,
  `trainingfieldsId` varchar(191) DEFAULT NULL,
  `informationId` varchar(191) DEFAULT NULL,
  `admissionsId` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `thumbnailNews` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `description` text NOT NULL,
  `views` int(11) DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `thumbnailNews`, `body`, `description`, `views`, `created_at`, `updated_at`) VALUES
('23dadb28-9e1b-42f9-beac-6a329ca62f84', 'Nhiều hoạt động sôi nổi tại Ngày Hội Thanh niên khỏe năm 2024 ở Trường cao đẳng Quảng Nam	', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722871540/News/p0umyavzfmipghclym6z.jpg	', '<p><span style=\"color:rgb(0,0,0);\">Được biết, đây là hoạt động thường niên do Đoàn Thanh niên Cộng sản Hồ Chí Minh Trường Cao đẳng Quảng Nam phát động mà nòng cốt là 2 đơn vị trực thuộc (Liên chi đoàn Tổng hợp và Liên chi đoàn Kỹ thuật)...</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Ngày hội diễn ra sôi nổi, nhiều tình huống gay cấn, đề cao tính trung thực cũng như nỗ lực của cá nhân cùng sự phối hợp nhịp nhàng với đồng đội trên quan điểm mà BTC đã đề ra: “Học hết sức - chơi hết mình”, “Rèn luyện – Nâng cao thể lực”, “Vui – Khoẻ - Đoàn kết và học hỏi”… các bạn đoàn viên thanh niên đã có thể đánh giá sức khoẻ cũng như kiểm tra thể lực và kỹ năng thông qua một số nôi dung tranh tài: Chạy tiếp sức 2 người 3 chân; Thi truyền bột; Thi đè bóng bể; Lái xe an toàn; Nhảy bao bố… .. .với nhiều tình huống gay cấn cùng nỗ lực của cá nhân, đồng đội Sau một buổi tranh tài sôi nổi, nhiệt huyết và gay cấn… trên tinh thần thể thao trung thực và cao thượng, ngày hội thanh niên khỏe năm 2024 do Đoàn Thanh niên Cộng sản Hồ Chí Minh Trường Cao đẳng Quảng Nam tổ chức đã thành công tốt đẹp… Ban Tổ chức đã trao các giải Nhất, Nhì, Ba và Khuyến khích cho các đội chơi có thành tích vượt trội…</span><span style=\"color:rgb(0,0,0);\"> </span></p>', '(LĐXH) - Sáng Ngày 12/6, tại thành phố Tam Kỳ, tỉnh Quảng Nam, Đoàn Thanh niên Cộng sản Hồ Chí Minh Trường Cao đẳng Quảng Nam đã tổ chức Ngày Hội Thanh niên khỏe năm 2024 với sự tham gia của 10 đội thi và hơn 150 vận động viên là đoàn viên thanh niên…	', 0, '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('6576b465-6aa1-4d95-8c63-04d00baa3848', 'Đảng ủy Trường Cao đẳng Quảng Nam: Sơ kết 03 năm thực hiện Kết luận số 01-KL/TW của Bộ Chính trị', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722871893/News/t2joajcn4d1uzgir5grh.jpg', '<p><span style=\"color:rgb(0,0,0);\">Phát biểu khai mạc hội nghị, đồng chí Vũ Thị Phương Anh - Bí thư Đảng ủy - Hiệu trưởng nhà trường khẳng định: Việc học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh ở Đảng bộ Trường luôn được chú trọng và triển khai hiệu quả trong thời gian qua; đã gắn và phát huy vai trò, trách nhiệm của từng đồng chí đảng ủy viên, cấp ủy chi bộ và từng vị trí, nhiệm vụ công tác của mỗi đảng viên, viên chức. Đồng chí đề nghị đại biểu dự hội nghị thảo luận làm rõ thêm những kết quả đạt được, những điển hình tiên tiến, vấn đề còn vướng mắc, bất cập và nhiệm vụ, giải pháp để nâng cao hiệu quả thực hiện Kết luận số 01-KL/TW ở một tổ chức đảng có nhiều đặc thù như Đảng bộ Trường Cao đẳng Quảng Nam. </span></p><p><span style=\"color:rgb(0,0,0);\"> Quang cảnh hội nghị Báo cáo sơ kết cho thấy, qua 03 năm thực hiện Kết luận số 01-KL/TW của Bộ Chính trị ở Đảng bộ Trường đã đạt được một số kết quả quan trọng, góp phần hoàn thành tốt nhiệm vụ dạy và học, xây dựng tổ chức đảng, đơn vị, đoàn thể trong sạch, vững mạnh. Trong triển khai, cấp ủy đã kịp thời lãnh đạo, chỉ đạo; quan tâm đúng mức đến việc học tập, quán triệt nội dung Kết luận số 01-KL/TW, chuyên đề toàn khóa, hằng năm và gắn với thực hiện Kết luận số 21-KL/TW của Ban Chấp hành Trung ương khóa XIII; lồng ghép đưa tư tưởng, đạo đức, phong cách Hồ Chí Minh vào nội dung chương trình giảng dạy học sinh, sinh viên... Hội nghị được nghe đồng chí Võ Thanh Tùng - Phó Bí thư Đảng ủy - Phó Hiệu trưởng nhà trường quán triệt kế hoạch triển khai Kết luận số 01-KL/TW ở Đảng bộ Trường trong năm 2024, trong đó chú trọng việc nâng cao ý thức trách nhiệm, hiệu quả thực thi công vụ của đội ngũ cán bộ, đảng viên, viên chức tại đơn vị. Đ/c Vũ Thị Phương Anh - Bí thư Đảng ủy - Hiệu trưởng nhà trường trao Giấy khen cho các tập thể, cá nhân điển hình học và làm theo Bác Dịp ngày, Đảng ủy Trường đã tuyên dương, khen thưởng 02 tập thể và 03 cá nhân có thành tích tiêu biểu trong học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh giai đoạn 2021-2024.</span></p>	', 'Chiều 06/6/2024, Đảng ủy Trường Cao đẳng Quảng Nam tổ chức hội nghị sơ kết 03 năm thực hiện Kết luận số 01-KL/TW của Bộ Chính trị khóa XIII và triển khai kế hoạch học tập, làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh năm 2024. Các đồng chí Ủy viên Ban Chấp Đảng bộ, Ủy viên UBKT Đảng ủy, ủy viên ban chấp hành các chi bộ trực thuộc và đảng viên được khen thưởng đã về dự. Các đồng chí Vũ Thị Phương Anh - Bí thư Đảng ủy - Hiệu trưởng, Phạm Hồng Chương - Phó Bí thư Thường trực Đảng ủy - Phó Hiệu trưởng, Võ Thanh Tùng - Phó Bí thư Đảng ủy - Phó Hiệu trưởng cùng chủ trì hội nghị.	', 6, '2024-09-28 00:39:34.897', '2024-09-28 00:47:41.191'),
('ba831edd-8c90-4478-882c-db456659134e', 'Trường Cao đẳng Quảng Nam tiếp tục khẳng định sứ mệnh về đào tạo nguồn nhân lực trực tiếp cho sản xuất, kinh doanh, dịch vụ...', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722871927/News/kzdpoxprk0twxlrcwj0q.jpg	', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Về phía Trường Cao đẳng Quảng Nam có PGS.TS Vũ Thị Phương Anh – Bí Thư Đảng ủy – Hiệu trưởng cùng các Phó Hiệu trưởng, đại diện lãnh đạo một số Trung tâm, phòng, khoa trực thuộc... Phó tổng Cục trưởng Tổng cục GDNN, Phạm Vũ Quốc Bình ghi nhận sự nỗ lực của tập thể BGH... Thay mặt Ban Giám hiệu, PGS.TS Vũ Thị Phương Anh, giới thiệu: “Trong những năm qua Trường Cao đẳng Quảng Nam luôn nhận được sự quan tâm lãnh đạo, chỉ đạo toàn diện của Tỉnh ủy, HĐND, UBND tỉnh Quảng Nam, Bộ Lao động –Thương binh và Xã hội, Tổng cục Giáo dục nghề nghiệp, các sở, ban, ngành của tỉnh về mọi mặt, nhất là công tác đầu tư xây dựng cơ sở vật chất kỹ thuật, nguồn nhân lực có chất lượng cao, nghiệp vụ chuyên môn đào tạo. Trước yêu cầu của sự phát triển giáo dục nghề nghiệp trong xu thế mới và cơ cấu sắp xếp các cơ sở giáo dục nghề nghiệp, Trường Cao đẳng Quảng Nam được thành lập theo Quyết định số 359/QĐ-LĐTBXH ngày 24/3/2021 của Bộ trưởng Bộ Lao động - Thương binh và Xã hội trên cơ sở sáp nhập từ 6 cơ sở đào tạo trên địa bàn tỉnh Quảng Nam, là cơ sở đào tạo công lập trực thuộc UBND tỉnh, một trong những cơ sở đào tạo đa ngành nghề, bậc học, có quy mô lớn. Sứ mệnh của nhà trường đào tạo nguồn nhân lực trực tiếp cho sản xuất, kinh doanh, dịch vụ, có kiến thức, kỹ năng, năng lực tự chủ, tự chịu trách nhiệm ở trình độ cao đẳng, trung cấp, sơ cấp đáp ứng yêu cầu xã hội, góp phần thúc đẩy phát triển kinh tế- xã hội của tỉnh Quảng Nam và cả nước. Kết hợp việc đào tạo với nghiên cứu ứng dụng, chuyển giao công nghệ về lĩnh vực công nghệ kỹ thuật, kinh tế, dịch vụ, du lịch, văn hóa cho xã hội... Đặc biệt, trong thời gian tới, nhà trường tiếp tục mở rộng và liên kết với các doanh nghiệp trong và ngoài nước đẩy mạnh công tác khởi nghiệp, tạo việc làm ngay khi học sinh sinh viên còn ngồi trên ghế nhà trường với mục tiêu lấy học sinh sinh viên là trung tâm, doanh nghiệp và nhà trường hỗ trợ tối đa giúp các em phát triển bền vững...” ... và chụp ảnh lưu niệm cùng đại diện lãnh đạo, giáo viên Trường Cao đẳng Quảng Nam Tại chuyến thăm và làm việc này, Phó Tổng cục trưởng Phạm Vũ Quốc Bình đã ghi nhận và đánh giá cao những nỗ lực mà tập thể Ban Giám hiệu, giáo viên và người lao động ở Trường Cao đẳng Quảng Nam đã đạt được trong thời gian qua, đồng thời cũng đề cập đến một số vấn đề nhà trường cần lưu ý, cụ thể là: “Tiếp tục quan tâm đến phát triển đội ngũ nhà giáo, tạo điều kiện cho quý thầy, cô được học tập nâng cao trình độ. Phát huy những kết quả đã đạt được trong công tác phối hợp với doanh nghiệp đặc biệt trong việc đào tạo lao động chất lượng cao theo đơn đặt hàng, nâng cao chất lượng đào tạo lại cho doanh nghiệp. Chủ động áp chuyển đổi số vào công tác đào tạo và quản lý, quản trị của Nhà trường để theo kịp xu hướng thời đại, nhất là trong thời điểm Nhà trường đang từng bước chuẩn bị các giai đoạn để tiến hành xây dựng Trường Cao đẳng Quảng Nam thành trường chất lượng cao. Chú ý đến công tác quản lý HSSV, lấy người học làm trung tâm, tăng cường tổ chức các hoạt động, tạo điều kiện cho các em được phát triển một cách toàn diện. Chuyển đổi chương trình phù hợp, hài hòa với điều kiện phát triển, nhu cầu của xã hội. Đặc biệt là duy trì khối đoàn kết thống nhất cao của tập thể lãnh đạo, đội ngũ nhà giáo của Trường Cao đẳng Quảng Nam trong công cuộc xây dựng, định hướng, phát triển và trở thành trường chất lượng cao trong thời gian không xa...”</span></p>', '(LĐXH) - Đó là ghi nhận cũng như động viên, khích lệ của Phó Tổng Cục trưởng Tổng Cục Giáo dục nghề nghiệp Phạm Vũ Quốc Bình trong chuyến thăm và làm việc với nhà trường vào chiều ngày 31/5/2023...', 0, '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('c753ad2e-2a8e-4976-8fef-87d2901cedfb', 'Trường Cao đẳng Quảng Nam là đối tác tiềm năng với Azerbeijan về cung cấp nguồn nhân lực chất lượng cao…”	', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722871801/News/yxo8w6vdoxnzajd72wnh.jpg	', '<p><span style=\"color:rgb(0,0,0);\">Tại lễ kỷ niệm, Ngài Đại sứ vui mừng chào đón đoàn và xem Trường Cao đẳng Quảng Nam là đối tác tiềm năng, là những người bạn thân thương, mong muốn hai bên sẽ phối hợp tổ chức nhiều hoạt động có ý nghĩa nhằm đào tạo nguồn nhân lực chất lượng cao. Ngài mong rằng sẽ hỗ trợ được nhiều cho các hoạt động hợp tác quốc tế trong các lĩnh vưc về khối ngành nghề du lịch, chế biến món ăn. Đặc biệt, Đại sứ hẹn mùa thu năm 2025 sẽ quay lại Trường Cao đẳng Quảng Nam với ý tưởng mong muốn mang đến cơ hội tốt để nhà trường có thể tham gia một số hoạt động cùng các dự án khả thi, chẳng hạn như: Tổ chức hội thi đầu bếp giỏi quốc tế; Giao lưu giữa giảng viên, sinh viên với Hội đầu bếp thế giới... ...trao quà và chụp ảnh lưu niệm với các thành viên “Tôi đánh giá rất cao về chất lượng Hội thảo quốc tế: “Phát triển ý tưởng khởi nghiệp của học sinh, sinh viên kết nối với doanh nghiệp, định hướng đào tạo nguồn nhân lực chất lượng cao trong nước và quốc tế” do Trường Cao đẳng Quảng Nam tổ chức vừa qua. Đây là lần đầu tiên tôi dự một hội thảo Quốc tế với tầm vóc, quy mô và hàm lượng khoa học được đánh giá cao… với nhiều Đại sứ quán các nước, các trường Đại học, cao đẳng cùng nhiều Tập đoàn kinh tế, doanh nghiệp trong và ngoài nước tham dự…” Ngài Đại sứ Đặc mệnh toàn quyền Azerbaijan đặc biệt nhấn mạnh. PGS.TS Vũ Thị Phương Anh trao quà lưu niệm cho ngài Đại sứ và chúc hợp tác hữu nghị giữa hai nước ngày càng bền chặt Thay mặt Ban Giám hiệu cùng tập thể cán bộ, giáo viên Trường Cao đẳng Quảng Nam, PGS.TS Vũ Thị Phương Anh - Hiệu trưởng, đã chân thành cảm ơn Ngài Đại sứ đến dự Hội thảo và có bài phát biểu quan trọng… “Chúng tôi rất vui mừng khi đươc ngài đánh giá cao về hội thảo quốc tế vừa qua và rất vui vì ngài đã dành những tình cảm tốt đẹp cho nhà trường và cho cá nhân tôi. Nhân dip Kỷ niệm 106 năm Quốc khánh nước Công hoà Azerbeijan, xin chúc Azerbeijan ngày càng phát triển, chúc cho tình hợp tác hữu nghĩ giữa hai quốc gia ngày càng bền chặt. Trong thời gian tới mong rằng ngài Đại sứ và Trường Cao đẳng Quảng Nam sẽ có những phối hợp, tổ chức nhiều các hoạt động hợp tác quốc tế, tạo điều kiện giúp giảng viên và sinh viên nhà trường trao đổi, học hỏi góp phần nâng cao chất lượng đào tạo nguồn nhân lực đáp ứng yêu cầu của thị trường lao động trong nước và quốc tế.</span></p>	', '(LĐXH) – Đó là ý kiến của Ông Shovgi Mehdizde - Đại sứ Đặc mệnh toàn quyền Azerbaijan tại Hội thảo quốc tế “Phát triển ý tưởng khởi nghiệp của học sinh sinh viên…” do trường Cao đẳng Quảng Nam tổ chức vào trung tuần tháng 5/2024. Đặc biệt, nhân kỷ niệm 106 năm quốc khánh nước công hoà Azerbeijan, PGS.TS Vũ Thị Phương Anh đã đến chúc mừng Ngài Đại sứ cùng Văn phòng Đại sứ quán nước Cộng hoà Azerbeijan tại thủ đô Hà Nội…	', 0, '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('ee1c4fc3-0ad9-4a27-95fc-af9ed837226e', 'Sinh viên cao đẳng Quảng Nam: Người tốt việc tốt', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722871240/News/ecmylruiehxhpgds6sr8.jpg	', '<p><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdd/1/16/1f9d0.png\" alt=\"🧐\" width=\"16\" height=\"16\"> Bạn đã bao giờ tự hỏi, tại sao trong thế giới hiện đại, văn minh, con người ta vẫn phải gánh chịu những tổn thương từ những mối quan hệ độc hại? Tại sao, thay vì dũng cảm bước đi, họ lại chọn \"cam chịu\", ôm ấp hy vọng mong manh vào một hạnh phúc xa vời? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/td0/1/16/1f327.png\" alt=\"🌧️\" width=\"16\" height=\"16\"></p><p>Câu chuyện tưởng chừng như chỉ có trong phim ảnh, nay lại trở nên nhức nhối, day dứt giữa chính thế hệ trẻ của chúng ta. <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tff/1/16/1f3a5.png\" alt=\"🎥\" width=\"16\" height=\"16\"> Bạo hành, một vấn đề tưởng chừng đã lùi xa vào quá khứ, nay lại âm thầm len lỏi, gieo rắc những vết thương lòng cho biết bao trái tim GenZ. <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te7/1/16/1f494.png\" alt=\"💔\" width=\"16\" height=\"16\"></p><p>Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health đi sâu vào chủ đề này hơn nhé. <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t69/1/16/1f331.png\" alt=\"🌱\" width=\"16\" height=\"16\"></p><p><a href=\"https://www.facebook.com/hashtag/genzmentalhealth?__eep__=6&amp;__cft__[0]=AZXfAGftyId2yrmvPRfKfJmW1iJDO2KCKVA_y1jc4bVrdZiuxz0USTTTo3sjRwAsiU3yONcVbw3LxE3H2aB0wjyemFQgs5s2ZfMyCCm9m7AeBeRX2QnLWNEb0Fb7gAkWukjZmDmmd1_plcCl24MfHzb18ZDdC9wve0KL8vdsdjR1ZKbsLxxxMVBNWU_cgiwZ230jwQi1tepeaSbjyElSuHuv&amp;__tn__=*NK-R\">#GenZmentalHealth</a> <a href=\"https://www.facebook.com/hashtag/traumabond?__eep__=6&amp;__cft__[0]=AZXfAGftyId2yrmvPRfKfJmW1iJDO2KCKVA_y1jc4bVrdZiuxz0USTTTo3sjRwAsiU3yONcVbw3LxE3H2aB0wjyemFQgs5s2ZfMyCCm9m7AeBeRX2QnLWNEb0Fb7gAkWukjZmDmmd1_plcCl24MfHzb18ZDdC9wve0KL8vdsdjR1ZKbsLxxxMVBNWU_cgiwZ230jwQi1tepeaSbjyElSuHuv&amp;__tn__=*NK-R\">#traumabond</a> <a href=\"https://www.facebook.com/hashtag/genz?__eep__=6&amp;__cft__[0]=AZXfAGftyId2yrmvPRfKfJmW1iJDO2KCKVA_y1jc4bVrdZiuxz0USTTTo3sjRwAsiU3yONcVbw3LxE3H2aB0wjyemFQgs5s2ZfMyCCm9m7AeBeRX2QnLWNEb0Fb7gAkWukjZmDmmd1_plcCl24MfHzb18ZDdC9wve0KL8vdsdjR1ZKbsLxxxMVBNWU_cgiwZ230jwQi1tepeaSbjyElSuHuv&amp;__tn__=*NK-R\">#genz</a> <a href=\"https://www.facebook.com/hashtag/positivity?__eep__=6&amp;__cft__[0]=AZXfAGftyId2yrmvPRfKfJmW1iJDO2KCKVA_y1jc4bVrdZiuxz0USTTTo3sjRwAsiU3yONcVbw3LxE3H2aB0wjyemFQgs5s2ZfMyCCm9m7AeBeRX2QnLWNEb0Fb7gAkWukjZmDmmd1_plcCl24MfHzb18ZDdC9wve0KL8vdsdjR1ZKbsLxxxMVBNWU_cgiwZ230jwQi1tepeaSbjyElSuHuv&amp;__tn__=*NK-R\">#positivity</a>Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><figure class=\"image image_resized image-style-align-left\" style=\"width:51.17%;\"><img style=\"aspect-ratio:200/200;\" src=\"http://localhost:3000/_next/image?url=https%3A%2F%2Fmygenzmentalheath.s3.ap-southeast-2.amazonaws.com%2Fblogs%2F1721492477206-451405318_122138280098257943_2014782822504991462_n.jpg&amp;w=640&amp;q=75\" alt=\"image asset\" srcset=\"/_next/image?url=https%3A%2F%2Fmygenzmentalheath.s3.ap-southeast-2.amazonaws.com%2Fblogs%2F1721492477206-451405318_122138280098257943_2014782822504991462_n.jpg&amp;w=256&amp;q=75 1x, /_next/image?url=https%3A%2F%2Fmygenzmentalheath.s3.ap-southeast-2.amazonaws.com%2Fblogs%2F1721492477206-451405318_122138280098257943_2014782822504991462_n.jpg&amp;w=640&amp;q=75 2x\" sizes=\"100vw\" width=\"200\" height=\"200\"></figure><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health Vậy đâu là lý do khiến GenZ chúng mình, những con người tự do, cá tính, lại \"cam chịu\" khi bị bạo hành? <img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t34/1/16/1f914.png\" alt=\"🤔\" width=\"16\" height=\"16\"></p><p>&nbsp;</p><p>Hãy cùng GenZ Mental Health&nbsp;</p>', 'Chiều ngày 5/8/2024 một sinh viên trường ta đã giúp đỡ một cụ già', 0, '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifi`
--

CREATE TABLE `notifi` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `departmentId` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifi`
--

INSERT INTO `notifi` (`id`, `title`, `content`, `departmentId`, `created_at`, `updated_at`) VALUES
('5568e232-ee8c-46d1-98ad-fa6bedef2d88', 'Trường Cao đẳng Quảng Nam là đối tác tiềm năng với Azerbeijan về cung cấp nguồn nhân lực chất lượng cao…”', 'Trường Cao đẳng Quảng Nam là đối tác tiềm năng với Azerbeijan về cung cấp nguồn nhân lực chất lượng cao…”', 'daotao@sdc', '2024-09-28 00:43:52.098', '2024-09-28 00:43:52.098'),
('b5d887b5-e9c7-48e9-949d-37759b76f436', 'Trường Cao đẳng Quảng Nam: Những kỳ vọng khi hợp tác với Nhật Bản phát triển ngành công nghệ ô tô', '(LĐXH) – Trong chuyến thăm, làm việc và ký kết hợp tác toàn diện của Đoàn Nhật Bản với Trường Cao đẳng Quảng Nam, Ông Kiyomoya Toshiaki - Giám đốc công ty cổ phần Car Flame (chuyên về công nghệ ô tô) đã giành nhiều thời gian thăm quan, làm việc với Ban Giám hiệu và mong muốn được hợp tác lâu dài, nhất là tuyển dụng sinh viên ngành công nghệ ô tô sang làm việc tại Nhật Bản', 'daotao@sdc', '2024-09-28 00:44:41.486', '2024-09-28 00:44:41.486');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pageview`
--

CREATE TABLE `pageview` (
  `id` varchar(191) NOT NULL,
  `pageName` varchar(191) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pageview`
--

INSERT INTO `pageview` (`id`, `pageName`, `views`) VALUES
('', 'Home Page', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `thumbnailPartner` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` varchar(191) NOT NULL,
  `nameRole` varchar(191) NOT NULL,
  `descriptionRole` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `nameRole`, `descriptionRole`, `created_at`, `updated_at`) VALUES
('sdc@role_admin1157025', 'ADMIN', 'run the system', '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `startDate` datetime(3) NOT NULL,
  `endDate` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessionaccount`
--

CREATE TABLE `sessionaccount` (
  `id` varchar(191) NOT NULL,
  `accessTokenJWT` text DEFAULT NULL,
  `refreshTokenJWT` text DEFAULT NULL,
  `expriedAccessTokenJWT` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessionaccount`
--

INSERT INTO `sessionaccount` (`id`, `accessTokenJWT`, `refreshTokenJWT`, `expriedAccessTokenJWT`) VALUES
('94f6415d-24e7-471c-ae1c-9c344f3eb24b', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6eyJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsIm5hbWUiOiJhZG1pbiIsImlkIjoic2RjLWFkbWluLTAyMDkyMDAyIiwicm9sZXMiOlsiQURNSU4iXX0sImlhdCI6MTcyNzQ4NDEwOSwiZXhwIjoxNzI3NTcwNTA5LCJhdWQiOiIqKioqKmV0aGluLXNkYyoqKioqKiIsImlzcyI6Imh0dHBzOi8vZXRoaW4tc2RjKioqKioqKioiLCJzdWIiOiJzZGMtYWRtaW4tMDIwOTIwMDIifQ.wkyZ9RZh0gJhSsiQkhxJMHgh-fM91kUL3vUkxC0qbw4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6eyJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsIm5hbWUiOiJhZG1pbiIsImlkIjoic2RjLWFkbWluLTAyMDkyMDAyIiwicm9sZXMiOlsiQURNSU4iXX0sImlhdCI6MTcyNzQ4NDEwOSwiZXhwIjoxNzMwMDc2MTA5LCJhdWQiOiIqKioqKmV0aGluLXNkYyoqKioqKiIsImlzcyI6Imh0dHBzOi8vZXRoaW4tc2RjKioqKioqKioiLCJzdWIiOiJzZGMtYWRtaW4tMDIwOTIwMDIifQ.0J30aa1u_CIfdflHfpvFNQ7SWs5asjqT3rbmqPOAaoM', NULL),
('e1ae3e39-d7e4-41c9-afba-6496c33fcf51', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6eyJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsIm5hbWUiOiJhZG1pbiIsImlkIjoic2RjLWFkbWluLTAyMDkyMDAyIiwicm9sZXMiOlsiQURNSU4iXX0sImlhdCI6MTcyNzQ4NDExNCwiZXhwIjoxNzI3NTcwNTE0LCJhdWQiOiIqKioqKmV0aGluLXNkYyoqKioqKiIsImlzcyI6Imh0dHBzOi8vZXRoaW4tc2RjKioqKioqKioiLCJzdWIiOiJzZGMtYWRtaW4tMDIwOTIwMDIifQ.yKuB9iR7edbxkOLIh6U3PYyJ4P305xtgkx5zezVaaYk', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6eyJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsIm5hbWUiOiJhZG1pbiIsImlkIjoic2RjLWFkbWluLTAyMDkyMDAyIiwicm9sZXMiOlsiQURNSU4iXX0sImlhdCI6MTcyNzQ4NDExNCwiZXhwIjoxNzMwMDc2MTE0LCJhdWQiOiIqKioqKmV0aGluLXNkYyoqKioqKiIsImlzcyI6Imh0dHBzOi8vZXRoaW4tc2RjKioqKioqKioiLCJzdWIiOiJzZGMtYWRtaW4tMDIwOTIwMDIifQ.zoLNvR8D3EAG0kT3LLAoyWMrBm4QHUq35guHMaEipIk', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` varchar(191) NOT NULL,
  `fullName` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `schoolYears` varchar(191) DEFAULT NULL,
  `information` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trainingfields`
--

CREATE TABLE `trainingfields` (
  `id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `thumbnailTrainingFields` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trainingfields`
--

INSERT INTO `trainingfields` (`id`, `title`, `body`, `thumbnailTrainingFields`, `created_at`, `updated_at`) VALUES
('daotaocongnghekithuatxaydung123', 'Công Nghệ Kĩ Thuật Xây Dựng', '<p>Ngành kỹ thuật xây dựng ở trường cao đẳng là một lĩnh vực trọng yếu tập trung vào việc thiết kế, thi công và quản lý các công trình xây dựng. Nội dung học bao gồm các kiến thức cơ bản về toán học, vật lý và hóa học, kết hợp với các môn chuyên ngành như cơ học đất, vật liệu xây dựng, kỹ thuật kết cấu, nền móng và kỹ thuật thi công. Sinh viên sẽ được trang bị kiến thức về các phương pháp và công nghệ xây dựng hiện đại, từ công nghệ bê tông đến các hệ thống xây dựng bền vững và tiết kiệm năng lượng.<br>Chương trình đào tạo ngành kỹ thuật xây dựng phát triển các kỹ năng sau:</p><p>- Sử dụng phần mềm CAD để thiết kế các bản vẽ kỹ thuật và mô phỏng kết cấu công trình.<br>- Hiểu và áp dụng các nguyên lý cơ học để phân tích và tính toán độ bền của kết cấu.<br>- Học các phương pháp và kỹ thuật thi công các công trình xây dựng, từ nền móng đến hoàn thiện.<br>- Lập kế hoạch, quản lý thời gian, tài nguyên và ngân sách cho các dự án xây dựng.<br>- Hiểu về các loại vật liệu xây dựng, đặc tính và cách sử dụng chúng hiệu quả.<br>- Phương pháp bảo dưỡng và duy trì chất lượng công trình sau khi hoàn thành.<br>- Phối hợp và làm việc hiệu quả trong các nhóm dự án.<br>- Giao tiếp rõ ràng và hiệu quả với các bên liên quan, từ khách hàng đến đội ngũ thi công.</p><p>Mục Tiêu Nghề Nghiệp</p><p>Ngành kỹ thuật xây dựng ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực xây dựng dân dụng, xây dựng công nghiệp, quản lý dự án và tư vấn xây dựng. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kỹ thuật viên thiết kế, kỹ thuật viên thi công, kỹ thuật viên giám sát công trình và kỹ thuật viên quản lý dự án. Với sự phát triển không ngừng của ngành xây dựng và nhu cầu về các công trình hiện đại và bền vững, các chuyên gia kỹ thuật xây dựng cũng có thể tham gia vào các dự án đổi mới sáng tạo, phát triển các giải pháp kỹ thuật tiên tiến và hiệu quả. Mục tiêu cuối cùng là đào tạo những kỹ thuật viên có khả năng giải quyết các vấn đề kỹ thuật phức tạp, đảm bảo chất lượng và an toàn cho các công trình xây dựng, đóng góp vào sự phát triển bền vững của ngành và xã hội.</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722929937/Training-Fields/ywehmtosbenvorkehdlk.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaocongngheoto123', 'Công nghệ oto', '<p>Ngành Công Nghệ Ô Tô - Cơ Hội Và Thách Thức</p><p>Ngành công nghệ ô tô đang nổi lên như một lĩnh vực đầy tiềm năng và thách thức trong bối cảnh công nghiệp 4.0. Với sự phát triển không ngừng của khoa học và công nghệ, ngành này đã và đang có những bước tiến đáng kể, mang lại nhiều cơ hội nghề nghiệp hấp dẫn. Dưới đây là những đánh giá chi tiết về ngành công nghệ ô tô.Công nghệ ô tô không chỉ đơn thuần là việc sản xuất và lắp ráp các loại xe, mà còn bao gồm các hoạt động nghiên cứu, phát triển và tích hợp công nghệ mới. Từ các hệ thống an toàn tiên tiến đến các giải pháp tiết kiệm nhiên liệu, ngành này đang chuyển mình mạnh mẽ để đáp ứng nhu cầu ngày càng cao của thị trường.Ngành công nghệ ô tô là một lựa chọn hấp dẫn cho những ai đam mê công nghệ và mong muốn góp phần vào sự phát triển bền vững của xã hội. Với sự tiến bộ không ngừng và nhu cầu ngày càng cao về các phương tiện giao thông hiện đại, ngành này hứa hẹn sẽ tiếp tục mang lại nhiều cơ hội phát triển trong tương lai.</p><p><br>Chương trình đào tạo:- Kiến thức:</p><p>+ Vận dụng được kiến thức kỹ thuật cơ sở vào việc tiếp thu các kiến thức chuyên môn nghề Công nghệ ô tô;<br>+ Trình bày được cấu tạo và nguyên lý hoạt động các hệ thống, cơ cấu trong ô tô;<br>+ Hiểu được cách đọc các bản vẽ kỹ thuật và phương pháp tra cứu các tài liệu kỹ thuật chuyên ngành ô tô;<br>+ Giải thích được nội dung các công việc trong quy trình tháo, lắp, kiểm tra, hiệu chỉnh, bảo dưỡng và sửa chữa ôtô;<br>+ Trình bày được các chỉ tiêu, tiêu chuẩn đánh giá chất lượng và phương pháp đo kiểm của từng loại chi tiết, hệ thống trong ôtô;<br>+ Trình bày được nguyên lý hoạt động của các hệ thống điều khiển bằng điện tử, khí nén và thủy lực của ôtô hiện đại;<br>+ Giải thích được các phương pháp chẩn đoán sai hỏng của các cơ cấu và hệ thống trong ôtô;<br>+ Trình bày được yêu cầu cơ bản và các bước tiến hành khi lập quy trình kiểm tra, bảo dưỡng và sửa chữa ôtô;<br>+ Trình bày được nguyên lý, phương pháp vận hành và phạm vi sử dụng các trang thiết bị trong nghề Công nghệ ô tô;<br>+ Nêu được các nội dung, ý nghĩa của kỹ thuật an toàn và vệ sinh công nghiệp.<br>+ Nêu được nội dung và những nguyên lý cơ bản trong công tác quản lý và tổ chức sản xuất.</p><p><br>- Kỹ năng:</p><p>+ Lựa chọn đúng và sử dụng thành thạo các loại dụng cụ, thiết bị tháo, lắp, đo và kiểm tra trong nghề Công nghệ ôtô;<br>+ Thực hiện công việc tháo, lắp, kiểm tra, chẩn đoán, bảo dưỡng và sửa chữa các cơ cấu và các hệ thống cơ bản trong ôtô đúng quy trình kỹ thuật và đảm bảo an toàn lao động;<br>+ Thực hiện được công việc kiểm tra, chẩn đoán và khắc phục các sai hỏng của các hệ thống điều khiển bằng điện tử; khí nén và thủy lực trong ôtô;<br>+ Lập được quy trình kiểm tra, chẩn đoán, bảo dưỡng và sửa chữa ôtô đảm bảo các chỉ tiêu kinh tế, kỹ thuật và an toàn;<br>+ Lập được kế hoạch sản xuất; tổ chức và quản lý các hoạt động sản xuất đạt tiêu chuẩn kỹ thuật, tiêu chuẩn an toàn, tiêu chuẩn vệ sinh công nghiệp;<br>+ Giao tiếp được bằng tiếng Anh trong công việc; sử dụng máy vi tính tra cứu được các tài liệu chuyên môn và soạn thảo văn bản;<br>+ Làm được các công việc cơ bản của người thợ nguội, thợ hàn và thợ điện phục vụ cho quá trình sửa chữa ô tô;<br>+ Có khả năng tiếp thu và chuyển giao công nghệ mới trong lĩnh vực ô tô;<br>+ Đào tạo, bồi dưỡng được về kiến thức, kỹ năng nghề cho thợ bậc thấp hơn.<br>Mục tiêu nghề nghiệp:- Người lao động kỹ thuật có trình độ Cao đẳng nghề sau khi tốt nghiệp có nhiều cơ hội việc làm tại các doanh nghiệp sản xuất phụ tùng ôtô, nhà máy lắp ráp và các trung tâm bảo dưỡng và sửa chữa ôtô và các cơ sở đào tạo nghề; được phân công làm việc ở các vị trí:</p><p>- Thợ sửa chữa tại các xí nghiệp bảo dưỡng và sửa chữa ôtô;<br>- Chuyên viên kỹ thuật tại các công ty vận tải ô tô;<br>- Nhân viên tư vấn dịch vụ tại các đại lý bán hàng và các trung tâm dịch vụ sau bán hàng của các hãng ô tô;<br>- Công nhân các nhà máy sản xuất phụ tùng và lắp ráp ôtô.<br>- Giáo viên giảng dạy trong các cơ sở đào tạo nghề.</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722914814/Training-Fields/gxkvsgrbkxbbysydg0us.png	', '2024-09-28 00:39:34.956', '2024-09-28 00:39:34.957'),
('daotaocongnghethongtin123', 'Công nghệ thông tin', '<p>Ngành công nghệ thông tin (CNTT) đang trở thành một trong những lĩnh vực phát triển nhanh nhất và có tầm ảnh hưởng lớn nhất đến mọi khía cạnh của đời sống xã hội. Với sự bùng nổ của internet và các công nghệ kỹ thuật số, CNTT không chỉ mở ra những cơ hội việc làm hấp dẫn mà còn thay đổi cách chúng ta sống và làm việc. CNTT bao gồm một loạt các hoạt động liên quan đến việc tạo ra, xử lý, lưu trữ và truyền tải thông tin. Từ phát triển phần mềm, quản lý hệ thống mạng, bảo mật thông tin đến trí tuệ nhân tạo (AI) và dữ liệu lớn (Big Data), CNTT bao trùm nhiều lĩnh vực khác nhau. Ngành này đóng vai trò then chốt trong việc thúc đẩy sự đổi mới và tăng trưởng kinh tế.Ngành công nghệ thông tin là một lựa chọn lý tưởng cho những ai đam mê công nghệ và muốn đóng góp vào sự phát triển của xã hội số. Với sự tiến bộ không ngừng và nhu cầu ngày càng cao về các giải pháp công nghệ, ngành này hứa hẹn sẽ tiếp tục mang lại nhiều cơ hội phát triển và thành công trong tương lai.<br>Chương trình đào tạo:Sau khi tốt nghiệp, người học đạt được kiến thức và khả năng:</p><p>- Kiến thức chuyên sâu về máy tính, công nghệ thông tin, về hệ cơ sở dữ liệu phổ biến hiện nay;</p><p>- Thao tác tốt với hầu hết phần cứng máy tính, cách lắp ráp, bảo trì;</p><p>- Thi công, lắp đặt mạng máy tính và quản trị hệ thống mạng;</p><p>- Đảm bảo được an toàn cho máy tính, bảo mật và an toàn thông tin;</p><p>- Sử dụng thành thạo các ngôn ngữ lập trình như Java, C++, PhP, Swift, C# để xây dựng các ứng dụng trên máy tính cũng như các thiết bị di động;</p><p>- Có khả năng xây dựng hoàn chỉnh một modul công việc trong chuỗi dự án phần mềm;</p><p>- Sử dụng thành thạo hệ quản trị cơ sở dữ liệu để quản lý thông tin;</p><p>- Thiết kế và quản trị được một web site theo yêu cầu;</p><p>- Xây dựng được ứng dụng nhỏ và vừa trên máy tính hoặc trên thiết bị di động với hệ điều hành Android hoặc iOS;</p><p>- Có kiến thức và kỹ năng về đồ họa, xử lý ảnh.</p><p>- Có kiến thức về tiếng Anh trong lĩnh vực công nghệ thông tin.<br>Mục tiêu nghề nghiệp:Sau khi tốt nghiệp sinh viên sẽ làm việc trong các cơ quan, doanh nghiệp có<br>nhu cầu ứng dụng phần mềm tin học trong các hoạt động quản lý, nghiệp vụ kinh<br>doanh sản xuất. Cụ thể:<br>- Chuyên viên tư vấn và chuyển giao phần mềm ứng dụng;<br>- Lập trình viên phần mềm ứng dụng;<br>- Chuyên viên quản trị hệ thống phần mềm và cơ sở dữ liệu;<br>- Chuyên viên bảo trì hệ thống máy tính;<br>- Chuyên viên thiết kế và quản trị website;<br>- Chuyên viên an toàn - bảo mật thông tin;<br>- Chuyên viên thiết kế đa phương tiện;<br>- Chuyên viên kiểm thử phần mềm;<br>- Chuyên viên quản lý dự án phần mềm;<br>- Làm giáo viên trong các cơ sở dạy nghề có đào tạo công nghệ thông tin;<br>- Tự khởi nghiệp trong lĩnh vực phát triển phần mềm ứng dụng.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722931033/Training-Fields/gjmsxfnvapdtuv6vdfhf.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaocongnghetudonghoa123', 'Công Nghệ Tự Động Hoá', '<p>Trong xu thế hội nhập toàn cầu, đất nước ta đang bước vào giai đoạn thực hiện công nghiệp hóa hiện đại hóa, bất cứ ngành nghề kỹ thuật nào cũng cần đến tự động hóa. Phải khẳng định rằng, hệ thống điều khiển và tự động hóa có mặt trong mọi dây chuyền sản xuất của tất cả các ngành kinh tế. Hiện nay, ngành này luôn có thu nhập cao và không bao giờ sợ thất nghiệp trong hiện tại và cả tương lai.Tự động hoá là ngành học nghiên cứu, thiết kế, vận hành các hệ thống tự động, các dây chuyền sản xuất tự động tại các nhà máy (xi măng, sắt thép, nước giải khát, dược phẩm,…); thiết kế, điều khiển và chế tạo robot; quản lý sản phẩm tại các công ty trong và ngoài nước kinh doanh về các thiết bị điện tử tự động…Cụ thể, nếu theo học chương trình đào tạo ngành Tự động hoá &nbsp;sinh viên sẽ được cung cấp các kiến thức và kỹ năng chuyên môn thuộc một trong các lĩnh vực như Điều khiển các thiết bị và hệ thống tự động; Tự động hóa sản xuất và truyền thông trong công nghiệp; Lĩnh vực chế tạo và điều khiển robot.<br>Chương trình đào tạo kiến thức nền tảng bao gồm khối kiến thức về cơ khí, kiến thức về điện tử, kiến thức về công nghệ thông tin và máy tính. Cơ khí, điện tử, máy tính là những thành phần không thể thiếu trên hệ thống tự động hóa.</p><p>- Khối kiến thức về thiết bị tự động: như role, các cảm biến công nghệ cao, các cơ cấu chấp hành, các thiết bị khí nén thủy lực và các thiết bị liên quan...</p><p>- Khối kiến thức về kỹ năng lập trình điều khiển hệ thống trên máy tính PC, trên hệ thống nhúng, FPGA, trên các thiết bị điều khiển chuyên ngành như PLC, ZEN, LOGO… Đặc biệt PLC là thiết bị điều khiển rất phổ biến trong công nghiệp, chuyên sâu về PLC giúp cho người kỹ sư có rất nhiều cơ hội nghề nghiệp.</p><p>- Khối kiến thức về điều khiển và tự động hóa.</p><p>- Khối kiến thức về tự động hoá quá trình sản xuất (tự động hóa chế tạo cơ khí, lắp ráp ô tô, dầu khí, dệt, luyện kim, hoá học, xi măng, chế biến thực phẩm: sữa, bánh kẹo…).<br>Mục tiêu nghề nghiệp:ngành này thực hiện điều khiển và tự động hóa các dây chuyền sản xuất công nghiệp trong các nhà máy. Kỹ thuật điều khiển có một cơ sở nền tảng khoa học vững chắc, đảm bảo cho việc điều khiển một cách nhanh chóng, chính xác đạt hiệu suất cao với các dây chuyền sản xuất phức tạp.Với sự ra đời của các mạch điều khiển điện tử, các cảm biến tự động, thủy lực, khí nén... người ta có đủ cơ sở và công cụ để tăng lên mức tự động hóa của các máy móc công nghiệp.</p><p>Sinh viên tốt nghiệp ngành này có thể công tác tại các Viện Nghiên cứu Điện tử – Tin học – Tự động hóa, Viện ứng dụng công nghệ, Trung tâm thiết kế vi mạch, các Khu công nghệ cao,… Các doanh nghiệp sản xuất trong nước và nước ngoài trong tất cả các lĩnh vực; các doanh nghiệp tư vấn kỹ thuật, kinh doanh thiết bị tự động hoặc chuyển giao công nghệ…<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722929734/Training-Fields/wugywsvkorgmenqcm62x.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaodatdai123', 'Quản Lý Đất Đai', '<p>Ngành quản lý đất đai ở trường cao đẳng tập trung vào việc quản lý, sử dụng và phát triển bền vững tài nguyên đất đai. Nội dung học bao gồm các kiến thức về luật đất đai, quy hoạch sử dụng đất, kinh tế đất đai, kỹ thuật đo đạc và bản đồ, và quản lý tài nguyên thiên nhiên. Sinh viên sẽ được trang bị kiến thức về các nguyên tắc và phương pháp quản lý đất đai, từ việc lập kế hoạch sử dụng đất đến giám sát và thực thi các quy định liên quan đến đất đai.<br>Chương trình đào tạo ngành quản lý đất đai ở trường &nbsp;tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng đo đạc và lập bản đồ: Sử dụng các công cụ và kỹ thuật đo đạc để lập bản đồ đất đai, đo đạc địa chính và phân tích không gian.<br>- Kỹ năng quản lý tài nguyên đất đai: Quản lý và bảo vệ tài nguyên đất đai, đảm bảo sử dụng đất đai một cách hiệu quả và bền vững.<br>- Kỹ năng lập kế hoạch sử dụng đất: Phát triển và thực hiện các kế hoạch sử dụng đất để đáp ứng nhu cầu phát triển kinh tế, xã hội và bảo vệ môi trường.<br>- Kiến thức về luật đất đai: Hiểu và áp dụng các quy định pháp lý liên quan đến quản lý đất đai, bao gồm quyền sở hữu, quyền sử dụng và chuyển nhượng đất đai.<br>- Kỹ năng phân tích kinh tế đất đai: Đánh giá giá trị kinh tế của đất đai và phân tích các yếu tố ảnh hưởng đến giá trị đất đai.<br>- Kỹ năng quản lý dự án: Quản lý các dự án phát triển và sử dụng đất đai, từ giai đoạn lập kế hoạch đến triển khai và giám sát.<br>- Kỹ năng giải quyết tranh chấp đất đai: Giải quyết các tranh chấp và xung đột liên quan đến quyền sở hữu và sử dụng đất đai.<br>- Kỹ năng ứng dụng công nghệ thông tin: Sử dụng các phần mềm và công cụ công nghệ thông tin trong quản lý đất đai, bao gồm hệ thống thông tin địa lý (GIS) và quản lý dữ liệu đất đai.<br>- Kỹ năng nghiên cứu và phân tích dữ liệu: Thu thập, phân tích và sử dụng dữ liệu đất đai để hỗ trợ việc ra quyết định và lập kế hoạch.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành quản lý đất đai ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực quản lý tài nguyên đất đai, quy hoạch và phát triển đô thị, và bảo vệ môi trường. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như chuyên viên quản lý đất đai, cán bộ địa chính, chuyên viên quy hoạch sử dụng đất, và chuyên viên phân tích kinh tế đất đai tại các cơ quan nhà nước, tổ chức phi chính phủ, công ty tư vấn và các doanh nghiệp bất động sản. Với sự phát triển không ngừng của xã hội và nhu cầu về sử dụng tài nguyên đất đai một cách bền vững, các chuyên gia quản lý đất đai cũng có thể tham gia vào các dự án nghiên cứu, phát triển các chính sách và giải pháp mới để quản lý và bảo vệ tài nguyên đất đai hiệu quả. Mục tiêu cuối cùng là đào tạo những chuyên viên quản lý đất đai có khả năng đáp ứng yêu cầu của ngành, bảo vệ và phát triển tài nguyên đất đai một cách bền vững, và đóng góp vào sự phát triển kinh tế, xã hội và môi trường của đất nước.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930748/Training-Fields/nkoras0i4zypoedozpgv.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaodichvuthuy123', 'Dịch Vụ Thú Y', '<p>Ngành dịch vụ thú y ở trường cao đẳng tập trung vào việc chăm sóc sức khỏe và điều trị bệnh cho động vật. Nội dung học bao gồm các kiến thức về giải phẫu, sinh lý học, bệnh học, dược lý, và kỹ thuật chăm sóc thú y. Sinh viên sẽ được trang bị kiến thức về các loại bệnh thường gặp ở động vật, cách chẩn đoán và điều trị, cũng như kỹ năng thực hành chăm sóc và phẫu thuật cơ bản. Ngành học cũng chú trọng đến việc hiểu biết về các quy định pháp lý liên quan đến ngành thú y và đạo đức nghề nghiệp<br>Chương trình đào tạo ngành dịch vụ thú y ở trường tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng chăm sóc sức khỏe động vật: Hiểu và áp dụng các phương pháp chăm sóc sức khỏe cơ bản cho động vật, bao gồm tiêm chủng, dinh dưỡng và vệ sinh.<br>- Kỹ năng chẩn đoán và điều trị: Chẩn đoán và điều trị các bệnh thường gặp ở động vật, từ các bệnh nội khoa đến ngoại khoa.<br>- Kỹ năng phẫu thuật cơ bản: Thực hiện các phẫu thuật cơ bản và xử lý các vết thương cho động vật.<br>- Kỹ năng sử dụng dược phẩm: Hiểu về các loại thuốc và cách sử dụng chúng một cách an toàn và hiệu quả trong điều trị bệnh cho động vật.<br>- Kỹ năng xét nghiệm: Thực hiện các xét nghiệm cơ bản để hỗ trợ chẩn đoán bệnh, bao gồm xét nghiệm máu, nước tiểu và phân.<br>- Kỹ năng chăm sóc sau phẫu thuật: Theo dõi và chăm sóc động vật sau phẫu thuật để đảm bảo quá trình hồi phục diễn ra thuận lợi.<br>- Kỹ năng giao tiếp: Giao tiếp hiệu quả với chủ nuôi động vật, cung cấp thông tin về tình trạng sức khỏe và hướng dẫn chăm sóc sau điều trị.<br>- Kỹ năng quản lý cơ sở thú y: Quản lý các hoạt động hàng ngày của một phòng khám thú y, bao gồm quản lý hồ sơ bệnh án, trang thiết bị và tài chính.<br>- Kiến thức pháp lý và đạo đức: Hiểu và tuân thủ các quy định pháp lý và đạo đức nghề nghiệp liên quan đến ngành thú y.<br>- Kỹ năng cấp cứu: Xử lý các tình huống cấp cứu y tế cho động vật một cách nhanh chóng và hiệu quả.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành dịch vụ thú y ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực chăm sóc và điều trị động vật. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kỹ thuật viên thú y, trợ lý bác sĩ thú y, chuyên viên chăm sóc động vật, và nhân viên xét nghiệm thú y tại các phòng khám thú y, bệnh viện thú y, trại nuôi động vật, và các tổ chức bảo vệ động vật. Với sự phát triển không ngừng của ngành thú y và nhu cầu ngày càng cao về các dịch vụ chăm sóc sức khỏe cho động vật, các chuyên gia dịch vụ thú y cũng có thể tham gia vào các dự án nghiên cứu y học thú y, phát triển các phương pháp điều trị mới, và nâng cao chất lượng dịch vụ chăm sóc sức khỏe cho động vật. Mục tiêu cuối cùng là đào tạo những kỹ thuật viên thú y có khả năng đáp ứng yêu cầu của ngành, chăm sóc sức khỏe và điều trị bệnh cho động vật một cách hiệu quả và nhân đạo, đóng góp vào sự phát triển bền vững của ngành thú y.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930689/Training-Fields/jitc4dox88arcqjjqwab.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaohuongdandulich123', 'Hướng Dẫn Du Lịch', '<p>Ngành hướng dẫn du lịch ở trường cao đẳng tập trung vào việc đào tạo các kỹ năng và kiến thức cần thiết để trở thành một hướng dẫn viên du lịch chuyên nghiệp. Nội dung học bao gồm các kiến thức về lịch sử, văn hóa, địa lý, và phong tục tập quán của các điểm đến du lịch. Sinh viên sẽ được trang bị kỹ năng giao tiếp, thuyết trình, quản lý nhóm, và xử lý tình huống. Ngành học cũng chú trọng đến việc hiểu biết về quy trình tổ chức tour, dịch vụ khách hàng và các quy định pháp lý liên quan đến ngành du lịch<br>Chương trình đào tạo ngành hướng dẫn du lịch ở trường tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng thuyết trình và giao tiếp: Cải thiện khả năng thuyết trình trước đám đông và giao tiếp hiệu quả với du khách.<br>- Kiến thức về điểm đến: Hiểu biết sâu rộng về lịch sử, văn hóa, địa lý và các điểm tham quan nổi tiếng.<br>- Kỹ năng quản lý nhóm: Quản lý và dẫn dắt nhóm du khách trong suốt hành trình, đảm bảo sự an toàn và hài lòng của họ.<br>- Kỹ năng xử lý tình huống: Giải quyết các tình huống phát sinh trong quá trình hướng dẫn tour, từ vấn đề sức khỏe của du khách đến các tình huống khẩn cấp.<br>- Kỹ năng dịch vụ khách hàng: Cung cấp dịch vụ khách hàng chuyên nghiệp, từ việc chào đón đến giải đáp thắc mắc và xử lý khiếu nại.<br>- Kỹ năng tổ chức và lập kế hoạch: Lên kế hoạch và tổ chức các chuyến tham quan, bao gồm lịch trình, phương tiện di chuyển và hoạt động.<br>- Kiến thức pháp lý và quy định: Hiểu và tuân thủ các quy định pháp lý liên quan đến ngành du lịch và hướng dẫn viên.<br>- Kỹ năng ngoại ngữ: Phát triển khả năng sử dụng ngoại ngữ (như tiếng Anh, tiếng Pháp, tiếng Trung, v.v.) để hướng dẫn du khách quốc tế.<br>- Kỹ năng sử dụng công nghệ: Sử dụng các công cụ công nghệ để hỗ trợ công việc hướng dẫn du lịch, từ việc tra cứu thông tin đến sử dụng thiết bị hướng dẫn.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành hướng dẫn du lịch ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong lĩnh vực du lịch và lữ hành. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như hướng dẫn viên du lịch, chuyên viên tổ chức tour, quản lý điểm đến du lịch, và nhân viên hỗ trợ du lịch tại các công ty lữ hành, khách sạn, và khu du lịch. Với sự phát triển không ngừng của ngành du lịch và nhu cầu ngày càng cao về các trải nghiệm du lịch độc đáo và chất lượng, các chuyên gia hướng dẫn du lịch cũng có thể tham gia vào các dự án phát triển du lịch cộng đồng, quảng bá các điểm đến mới và bền vững, và nâng cao chất lượng dịch vụ du lịch. Mục tiêu cuối cùng là đào tạo những hướng dẫn viên du lịch chuyên nghiệp, có khả năng mang lại trải nghiệm du lịch tuyệt vời cho du khách, và đóng góp vào sự phát triển bền vững của ngành du lịch.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930626/Training-Fields/domejfi3jip6ifb1y8zx.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaoketoan123', 'Kế Toán', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Nội Dung Tổng Quan Ngành kế toán ở trường cao đẳng là một lĩnh vực tập trung vào việc ghi chép, phân tích và báo cáo tài chính cho các doanh nghiệp và tổ chức. Nội dung học bao gồm các kiến thức cơ bản về kế toán tài chính, kế toán quản trị, thuế, kiểm toán và các nguyên tắc kế toán. Sinh viên sẽ được trang bị kiến thức về các hệ thống kế toán, quy trình lập báo cáo tài chính, và cách thức quản lý tài chính doanh nghiệp một cách hiệu quả.</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Chương trình đào tạo ngành kế toán&nbsp;</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng ghi chép và phân tích tài chính: Sử dụng các phần mềm kế toán để ghi chép các giao dịch tài chính và phân tích số liệu tài chính. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng lập báo cáo tài chính: Xây dựng và lập các báo cáo tài chính như bảng cân đối kế toán, báo cáo thu nhập, và báo cáo lưu chuyển tiền tệ. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng kế toán quản trị: Hiểu và áp dụng các kỹ thuật kế toán quản trị để hỗ trợ ra quyết định trong doanh nghiệp. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng thuế: Hiểu và tuân thủ các quy định về thuế, lập báo cáo thuế và khai thuế. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng kiểm toán: Thực hiện các quy trình kiểm toán nội bộ và bên ngoài để đảm bảo tính chính xác và tuân thủ các quy định kế toán. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng sử dụng phần mềm kế toán: Sử dụng các phần mềm kế toán phổ biến như QuickBooks, Xero, và SAP. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng phân tích tài chính: Phân tích và diễn giải các số liệu tài chính để đưa ra các đề xuất cải thiện hiệu quả tài chính. </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Kỹ năng giao tiếp: Giao tiếp rõ ràng và hiệu quả với các bên liên quan, từ khách hàng đến các cơ quan thuế.</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Mục Tiêu Nghề Nghiệp </span></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\"> Ngành kế toán ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực kế toán tài chính, kế toán quản trị, thuế, kiểm toán và tư vấn tài chính. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kế toán viên, kiểm toán viên, chuyên viên thuế, phân tích tài chính, và kế toán quản trị. Với sự phát triển không ngừng của nền kinh tế và sự phức tạp ngày càng tăng của các quy định tài chính, các chuyên gia kế toán cũng có thể tham gia vào các dự án cải tiến quy trình tài chính, phát triển các hệ thống kế toán hiện đại và đảm bảo tính minh bạch và chính xác của báo cáo tài chính. Mục tiêu cuối cùng là đào tạo những kế toán viên có khả năng giải quyết các vấn đề tài chính phức tạp, hỗ trợ quản lý tài chính hiệu quả và đóng góp vào sự phát triển bền vững của doanh nghiệp và xã hội.</span></p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722948301/Training-Fields/bpprnp4mwkw56bhswf8e.png', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaokithuatcokhi123', 'Kĩ Thuật Cơ Khí', '<p>Ngành kỹ thuật cơ khí ở trường cao đẳng là một lĩnh vực tập trung vào việc thiết kế, phân tích, chế tạo và bảo trì các hệ thống cơ khí. Nội dung học bao gồm các kiến thức cơ bản về toán học, vật lý và hóa học, kết hợp với các môn chuyên ngành như cơ học chất rắn, cơ học chất lỏng, nhiệt động lực học, lý thuyết máy và kỹ thuật vật liệu. Sinh viên sẽ được trang bị kiến thức về các công nghệ sản xuất hiện đại, từ gia công cơ khí truyền thống đến công nghệ in 3D và tự động hóa. Chương trình học giúp sinh viên phát triển tư duy kỹ thuật và kỹ năng giải quyết vấn đề.<br>Chương trình đào tạo ngành kỹ thuật cơ khí ở trường cao đẳng thường kéo dài từ 2 đến 3 năm, với cấu trúc bao gồm cả lý thuyết và thực hành. Các khóa học lý thuyết cung cấp nền tảng kiến thức về các nguyên lý cơ học và kỹ thuật, trong khi các phòng thí nghiệm và xưởng thực hành giúp sinh viên áp dụng những kiến thức đã học vào thực tế. Chương trình cũng bao gồm các dự án thực tế và thực tập tại các công ty, giúp sinh viên có cơ hội trải nghiệm môi trường làm việc chuyên nghiệp. Ngoài ra, các khóa học bổ sung về kỹ năng mềm như làm việc nhóm, giao tiếp và quản lý dự án cũng được tích hợp để phát triển toàn diện năng lực của sinh viên.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành kỹ thuật cơ khí ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực như sản xuất, ô tô, hàng không, năng lượng và công nghệ y tế. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kỹ thuật viên thiết kế, kỹ thuật viên sản xuất, kỹ thuật viên bảo trì và kỹ thuật viên nghiên cứu phát triển. Với sự phát triển của công nghệ và yêu cầu ngày càng cao về tự động hóa và năng lượng tái tạo, các chuyên gia kỹ thuật cơ khí cũng có thể tham gia vào các dự án đổi mới sáng tạo, phát triển các giải pháp kỹ thuật tiên tiến và bền vững. Mục tiêu cuối cùng là đào tạo những kỹ thuật viên có khả năng giải quyết các vấn đề kỹ thuật phức tạp, đóng góp vào sự phát triển công nghiệp và xã hội.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722929835/Training-Fields/orwmqu251buthy383dxw.jpg	', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaokithuatdien123', 'Kĩ thuật điện - điện tử', '<p>Ngành Công nghệ kỹ thuật điện – điện tử là chuyên ngành đào tạo, nghiên cứu về lĩnh vực điện, điện tử, năng lượng, hệ thống điều khiển, hệ thống xử lý tín hiệu, tự động hóa… nhằm giúp tối ưu các cho hoạt động của con người, tiết kiệm thời gian, nhân lực, công sức cũng như tiền bạc.Bên cạnh đó, sinh viên sẽ được cung cấp và trang bị kiến thức để đưa ra các kỹ năng phân tích, nhận định đưa ra giải pháp chế tạo các thiết bị điện điện tử phục vụ cho các hoạt động tự động hóa cho các hoạt động dây chuyền sản xuất.Song song với đó, các bạn sinh viên cũng sẽ được trang bị các kiến thức nền tảng nhằm tiếp cận với kiến thức mới cùng thành tựu khoa học tiên tiến trên thế giới. Cũng như, giúp các bạn có thể thích ứng với điều kiện môi trường công nghệ và khoa học không ngừng phát triển và đổi mới trong tương lai.Có thể nói chuyên ngành kỹ thuật điện – điện tử là chuyên ngành khó đòi hỏi khá nhiều về năng lực trình độ cũng như sự đam mê, tìm tòi của các bạn sinh viên. Tuy nhiên, đây là ngành học có tính ứng dụng cao, nhu cầu việc làm và nguồn năng lực của xã hội khá cao. Có thể nói đây là ngành học rất có tương lai mà các bạn trẻ không nên bỏ qua.</p><p>Chương trình đào nội dung cơ bản của đo lường dung sai, vẽ kỹ thuật, công nghệ chế tạo cơ khí, nguyên lý chi tiết máy, công nghệ CAD/CAM/CNC;</p><p>- Trình bày được các loại năng lượng truyền động trong công nghiệp: khí nén, thủy lực, truyền động điện, các dạng năng lượng tái tạo;</p><p>- Trình bày được những kiến thức về điện - điện tử: điện kỹ thuật, điện tử, điều khiển truyền động điện, cảm biến đo lường, điện tử công suất; các kỹ thuật về điều khiển: điều khiển bằng rơ le, điều khiển bằng PLC, vi điều khiển, robot công nghiệp, máy điều khiển theo chương trình số CNC; mô phỏng và tính toán: Autocad, Inventor, Win CC, SCADA, Robotino View…;</p><p>- Trình bày được những kiến thức cơ bản về hệ thống cơ điện tử, hệ modul sản xuất linh hoạt MPS, hệ thống điều khiển quá trình PCS, mạng truyền thông;</p><p>- Trình bày, giải đáp được các vấn đề thuộc lĩnh vực hệ thống cơ điện tử hoặc các loại sản phẩm cơ điện tử; tư vấn thiết kế, chuyển giao công nghệ; phương pháp khai thác và ứng dụng thực tiễn các công nghệ sản xuất hiện đại;</p><p>- Trình bày được phương pháp lập kế hoạch, tổ chức thực hiện và giám sát, đánh giá các quá trình sản xuất công nghiệp thực tế và các mối quan hệ kỹ thuật - công nghệ - kinh tế giữa các công đoạn trong sản xuất công nghiệp;</p><p>Mục tiêu nghề nghiệp Sinh viên tốt nghiệp ngành Công nghệ kỹ thuật điện, điện tử có thể làm việc trong các lĩnh vực sau:</p><p>Lĩnh vực điện lực: thiết kế, thi công, lắp đặt, vận hành, bảo trì hệ thống điện, hệ thống truyền tải, phân phối, cung cấp điện.<br>Lĩnh vực điện tử: thiết kế, chế tạo, lắp ráp, sửa chữa, bảo trì các thiết bị điện tử, điện gia dụng, thiết bị viễn thông, thiết bị đo lường, điều khiển, tự động hóa.<br>Lĩnh vực năng lượng: nghiên cứu, phát triển, ứng dụng các công nghệ năng lượng mới, năng lượng sạch, năng lượng tái tạo.<br>Lĩnh vực công nghệ thông tin: thiết kế, phát triển phần mềm, hệ thống điện tử, mạng máy tính.<br>Lĩnh vực y tế: thiết kế, chế tạo, lắp ráp, vận hành các thiết bị y tế điện tử, điện sinh học.<br>Lĩnh vực quốc phòng: nghiên cứu, phát triển, sản xuất các thiết bị điện tử, điện tử quân sự.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722929786/Training-Fields/pvhfdne6uo75rfgdoow4.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaokithuatmaylanh123', 'Kĩ Thuật Máy Lạnh và Điều Hoà Không Khí', '<p>Ngành kỹ thuật máy lạnh và điều hòa không khí ở trường cao đẳng tập trung vào việc thiết kế, lắp đặt, bảo trì và sửa chữa các hệ thống làm lạnh và điều hòa không khí. Nội dung học bao gồm các kiến thức cơ bản về nhiệt động lực học, cơ học chất lỏng, điện tử cơ bản và kỹ thuật điện lạnh. Sinh viên sẽ được trang bị kiến thức về các loại thiết bị và hệ thống điều hòa không khí, từ các hệ thống nhỏ trong gia đình đến các hệ thống công nghiệp lớn.<br>Chương trình đào tạo ngành kỹ thuật máy lạnh và điều hòa không khí tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng thiết kế hệ thống: Thiết kế các hệ thống làm lạnh và điều hòa không khí dựa trên các yêu cầu cụ thể của không gian và mục đích sử dụng.<br>- Kỹ năng lắp đặt: Lắp đặt và vận hành các thiết bị và hệ thống điều hòa không khí, đảm bảo chúng hoạt động hiệu quả và an toàn.<br>- Kỹ năng bảo trì và sửa chữa: Bảo trì định kỳ và sửa chữa các hệ thống làm lạnh và điều hòa không khí để đảm bảo chúng hoạt động ổn định và kéo dài tuổi thọ.<br>- Kỹ năng đo lường và kiểm tra: Sử dụng các thiết bị đo lường để kiểm tra hiệu suất và chẩn đoán các vấn đề kỹ thuật của hệ thống.<br>- Kỹ năng điện tử cơ bản: Hiểu và áp dụng các nguyên lý điện tử cơ bản trong việc điều khiển và vận hành các thiết bị điều hòa không khí.<br>- Kỹ năng an toàn lao động: Tuân thủ các quy định an toàn lao động trong quá trình làm việc với các thiết bị điện lạnh và hệ thống điều hòa không khí.<br>- Kỹ năng quản lý năng lượng: Quản lý và tối ưu hóa việc sử dụng năng lượng của các hệ thống làm lạnh và điều hòa không khí, hướng tới các giải pháp tiết kiệm năng lượng và thân thiện với môi trường.<br>- Kỹ năng giao tiếp: Giao tiếp hiệu quả với khách hàng và các bên liên quan để cung cấp dịch vụ tốt nhất và giải quyết các vấn đề kỹ thuật.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành kỹ thuật máy lạnh và điều hòa không khí ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực lắp đặt, bảo trì và sửa chữa hệ thống làm lạnh và điều hòa không khí. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kỹ thuật viên điều hòa không khí, kỹ thuật viên bảo trì, chuyên viên lắp đặt hệ thống làm lạnh và điều hòa không khí, và kỹ sư thiết kế hệ thống điều hòa không khí. Với sự phát triển không ngừng của ngành công nghiệp xây dựng và nhu cầu ngày càng cao về các giải pháp điều hòa không khí hiệu quả và tiết kiệm năng lượng, các chuyên gia kỹ thuật máy lạnh và điều hòa không khí cũng có thể tham gia vào các dự án đổi mới sáng tạo, phát triển các hệ thống làm lạnh và điều hòa không khí tiên tiến và bền vững. Mục tiêu cuối cùng là đào tạo những kỹ thuật viên có khả năng giải quyết các vấn đề kỹ thuật phức tạp, đảm bảo hiệu quả và an toàn cho các hệ thống làm lạnh và điều hòa không khí, đóng góp vào sự phát triển bền vững của ngành và xã hội.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930387/Training-Fields/jugamsdrlicderpeiqyi.jpg	', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaokithuatnongnghiep123', 'Kĩ Thuật Nông Nghiệp', '<p>Ngành kỹ thuật nông nghiệp ở trường cao đẳng tập trung vào việc ứng dụng các kiến thức khoa học và công nghệ trong sản xuất nông nghiệp. Nội dung học bao gồm các kiến thức về trồng trọt, chăn nuôi, bảo vệ thực vật, công nghệ sinh học nông nghiệp, quản lý tài nguyên đất và nước, và kỹ thuật nông nghiệp bền vững. Sinh viên sẽ được trang bị kiến thức và kỹ năng cần thiết để tối ưu hóa quy trình sản xuất nông nghiệp, nâng cao năng suất và chất lượng sản phẩm nông nghiệp, đồng thời bảo vệ môi trường và tài nguyên thiên nhiên.<br>Chương trình đào tạo ngành kỹ thuật nông nghiệp &nbsp;tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng trồng trọt và chăn nuôi: Hiểu biết và áp dụng các kỹ thuật trồng trọt và chăn nuôi tiên tiến để nâng cao năng suất và chất lượng sản phẩm.<br>- Kỹ năng bảo vệ thực vật: Áp dụng các biện pháp bảo vệ thực vật khỏi sâu bệnh và dịch hại, sử dụng thuốc bảo vệ thực vật một cách an toàn và hiệu quả.<br>- Kỹ năng công nghệ sinh học nông nghiệp: Sử dụng các công nghệ sinh học trong cải tiến giống cây trồng và vật nuôi, phát triển các sản phẩm nông nghiệp có giá trị cao.<br>- Kỹ năng quản lý tài nguyên đất và nước: Quản lý và sử dụng hiệu quả tài nguyên đất và nước trong sản xuất nông nghiệp, bảo vệ và cải tạo đất, tiết kiệm nước tưới.<br>- Kỹ năng cơ giới hóa nông nghiệp: Sử dụng và bảo trì các thiết bị và máy móc nông nghiệp, áp dụng cơ giới hóa trong các khâu sản xuất nông nghiệp.<br>- Kỹ năng phân tích và đánh giá: Phân tích dữ liệu sản xuất, đánh giá hiệu quả kinh tế và môi trường của các hoạt động nông nghiệp.<br>- Kỹ năng quản lý sản xuất nông nghiệp: Lập kế hoạch, tổ chức và quản lý các hoạt động sản xuất nông nghiệp, từ giai đoạn trồng trọt đến thu hoạch và tiêu thụ.<br>- Kỹ năng tiếp thị và tiêu thụ sản phẩm nông nghiệp: Hiểu biết về thị trường nông sản, phát triển các chiến lược tiếp thị và tiêu thụ sản phẩm nông nghiệp.<br>- Kỹ năng ứng dụng công nghệ thông tin: Sử dụng các công cụ và phần mềm công nghệ thông tin trong quản lý và sản xuất nông nghiệp.<br>- Kỹ năng bảo vệ môi trường và phát triển bền vững: Áp dụng các phương pháp sản xuất nông nghiệp bền vững, giảm thiểu tác động tiêu cực đến môi trường.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành kỹ thuật nông nghiệp ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực sản xuất, quản lý và phát triển nông nghiệp. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như kỹ thuật viên nông nghiệp, chuyên viên bảo vệ thực vật, chuyên viên quản lý trang trại, chuyên viên phát triển nông thôn, và cán bộ khuyến nông tại các cơ quan nhà nước, tổ chức phi chính phủ, công ty nông nghiệp, và các trang trại. Với sự phát triển không ngừng của ngành nông nghiệp và nhu cầu ngày càng cao về các sản phẩm nông nghiệp chất lượng cao và bền vững, các chuyên gia kỹ thuật nông nghiệp cũng có thể tham gia vào các dự án nghiên cứu, phát triển các giống cây trồng và vật nuôi mới, và ứng dụng các công nghệ tiên tiến trong sản xuất nông nghiệp. Mục tiêu cuối cùng là đào tạo những chuyên viên kỹ thuật nông nghiệp có khả năng đáp ứng yêu cầu của ngành, tối ưu hóa quy trình sản xuất nông nghiệp, và đóng góp vào sự phát triển bền vững của nông nghiệp và môi trường.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930899/Training-Fields/cy0ioep4cg9smq32wisv.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaolamnghiep123', 'Lâm Nghiệp', '<p>Ngành lâm nghiệp ở trường cao đẳng tập trung vào việc quản lý, bảo vệ và phát triển tài nguyên rừng. Nội dung học bao gồm các kiến thức về sinh thái rừng, quản lý tài nguyên rừng, kỹ thuật lâm nghiệp, luật lâm nghiệp, và bảo tồn đa dạng sinh học. Sinh viên sẽ được trang bị kiến thức về cách bảo vệ và phục hồi rừng, quản lý các hệ sinh thái rừng, và sử dụng bền vững các sản phẩm và dịch vụ từ rừng.<br>Chương trình đào tạo ngành lâm nghiệp ở trường tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng quản lý tài nguyên rừng: Quản lý và sử dụng bền vững tài nguyên rừng, bao gồm việc lập kế hoạch, đánh giá và giám sát các dự án lâm nghiệp.<br>- Kỹ năng bảo vệ và phục hồi rừng: Áp dụng các biện pháp bảo vệ rừng khỏi các nguy cơ như cháy rừng, sâu bệnh, và khai thác quá mức; thực hiện các dự án phục hồi rừng.<br>- Kiến thức về sinh thái rừng: Hiểu biết về cấu trúc và chức năng của các hệ sinh thái rừng, và cách chúng tương tác với môi trường xung quanh.<br>- Kỹ thuật lâm nghiệp: Áp dụng các kỹ thuật lâm nghiệp trong trồng rừng, chăm sóc rừng, và thu hoạch lâm sản.<br>- Kỹ năng đo đạc và lập bản đồ rừng: Sử dụng các công cụ và kỹ thuật đo đạc để lập bản đồ và quản lý tài nguyên rừng.<br>- Kiến thức về luật và chính sách lâm nghiệp: Hiểu và tuân thủ các quy định pháp lý liên quan đến quản lý và bảo vệ rừng.<br>- Kỹ năng quản lý dự án lâm nghiệp: Quản lý các dự án lâm nghiệp từ giai đoạn lập kế hoạch đến triển khai và giám sát.<br>- Kỹ năng bảo tồn đa dạng sinh học: Bảo tồn và quản lý các loài động, thực vật quý hiếm và các hệ sinh thái quan trọng trong rừng.<br>- Kỹ năng giao tiếp và giáo dục môi trường: Truyền thông và giáo dục cộng đồng về tầm quan trọng của bảo vệ rừng và sử dụng bền vững tài nguyên rừng.<br>- Kỹ năng sử dụng công nghệ thông tin: Sử dụng các phần mềm và công cụ công nghệ thông tin trong quản lý và nghiên cứu lâm nghiệp.</p><p>Mục Tiêu Nghề Nghiệp</p><p>Ngành lâm nghiệp ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực quản lý rừng, bảo tồn đa dạng sinh học, và phát triển lâm nghiệp bền vững. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như cán bộ quản lý rừng, chuyên viên bảo tồn đa dạng sinh học, chuyên viên kỹ thuật lâm nghiệp, và chuyên viên quản lý dự án lâm nghiệp tại các cơ quan nhà nước, tổ chức phi chính phủ, công ty lâm nghiệp, và các khu bảo tồn. Với sự phát triển không ngừng của ngành lâm nghiệp và nhu cầu ngày càng cao về bảo vệ môi trường và sử dụng bền vững tài nguyên rừng, các chuyên gia lâm nghiệp cũng có thể tham gia vào các dự án nghiên cứu, phát triển các chính sách và giải pháp mới để quản lý và bảo vệ tài nguyên rừng hiệu quả. Mục tiêu cuối cùng là đào tạo những chuyên viên lâm nghiệp có khả năng đáp ứng yêu cầu của ngành, bảo vệ và phát triển tài nguyên rừng một cách bền vững, và đóng góp vào sự phát triển kinh tế, xã hội và môi trường của đất nước.</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930798/Training-Fields/viixbn2in0e8ql58pgpk.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaomaythoitrang123', 'May Thời Trang', '<p>Ngành may thời trang ở trường cao đẳng tập trung vào việc thiết kế, sản xuất và kinh doanh các sản phẩm thời trang. Nội dung học bao gồm các kiến thức về thiết kế thời trang, kỹ thuật cắt may, phát triển mẫu, và xu hướng thời trang. Sinh viên sẽ được trang bị kiến thức về các loại vải, kỹ thuật may, và quy trình sản xuất từ ý tưởng đến sản phẩm hoàn thiện. Ngoài ra, ngành học cũng chú trọng đến việc phát triển khả năng sáng tạo và kỹ năng kinh doanh trong lĩnh vực thời trang.<br>Chương trình đào tạo ngành may thời trang ở trường tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng thiết kế thời trang: Sử dụng phần mềm thiết kế và kỹ thuật vẽ để tạo ra các bản thiết kế thời trang sáng tạo.<br>- Kỹ năng cắt may: Học cách cắt và may các loại trang phục, từ quần áo hàng ngày đến trang phục dạ hội và đồ cưới.<br>- Kỹ năng phát triển mẫu: Tạo và điều chỉnh các mẫu thiết kế để sản xuất hàng loạt.<br>- Kỹ năng chọn vải và phụ liệu: Hiểu về các loại vải, đặc tính của chúng và cách sử dụng phụ liệu phù hợp cho từng loại trang phục.<br>- Kỹ năng may công nghiệp: Sử dụng các máy móc và thiết bị may công nghiệp để sản xuất các sản phẩm thời trang với số lượng lớn.<br>- Kỹ năng quản lý sản xuất: Quản lý quy trình sản xuất, từ việc lựa chọn nguyên liệu đến kiểm tra chất lượng sản phẩm cuối cùng.<br>- Kỹ năng kinh doanh thời trang: Nghiên cứu thị trường, phát triển thương hiệu và tiếp thị sản phẩm thời trang.<br>- Kỹ năng sáng tạo: Khuyến khích sự sáng tạo và đổi mới trong thiết kế và sản xuất thời trang.<br>- Kỹ năng giao tiếp: Giao tiếp hiệu quả với khách hàng, đồng nghiệp và nhà cung cấp để đảm bảo quá trình sản xuất diễn ra suôn sẻ.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành may thời trang ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực thiết kế thời trang, sản xuất trang phục, và kinh doanh thời trang. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như nhà thiết kế thời trang, kỹ thuật viên cắt may, chuyên viên phát triển mẫu, quản lý sản xuất, và nhà kinh doanh thời trang. Với sự phát triển không ngừng của ngành công nghiệp thời trang và nhu cầu về các sản phẩm thời trang độc đáo và chất lượng, các chuyên gia may thời trang cũng có thể tham gia vào các dự án thiết kế sáng tạo, phát triển các dòng sản phẩm mới và xây dựng thương hiệu thời trang riêng. Mục tiêu cuối cùng là đào tạo những chuyên viên thời trang có khả năng đáp ứng yêu cầu của thị trường, sáng tạo và đổi mới trong thiết kế, và đóng góp vào sự phát triển bền vững của ngành thời trang.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930445/Training-Fields/dtqgrpsgyhvuc1ukygsn.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaoquantridulich123', 'Quản Trị Du Lịch và Lữ Hành', '<p>Ngành quản trị du lịch và lữ hành ở trường cao đẳng tập trung vào việc quản lý, tổ chức và điều hành các hoạt động du lịch và dịch vụ lữ hành. Nội dung học bao gồm các kiến thức về quản lý du lịch, lập kế hoạch tour, marketing du lịch, quản lý khách sạn và nhà hàng, cùng với các nguyên tắc dịch vụ khách hàng. Sinh viên sẽ được trang bị kiến thức về các điểm đến du lịch, văn hóa và phong tục địa phương, cũng như kỹ năng quản lý và điều hành các hoạt động du lịch một cách hiệu quả và bền vững.<br>Chương trình đào tạo ngành quản trị du lịch và lữ hành ở trường tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng quản lý du lịch: Nắm vững các nguyên tắc và phương pháp quản lý các hoạt động du lịch và lữ hành, bao gồm lập kế hoạch, tổ chức và điều hành tour.<br>- Kỹ năng lập kế hoạch tour: Thiết kế và phát triển các chương trình tour, từ các chuyến đi ngắn ngày đến các hành trình dài hạn.<br>- Kỹ năng marketing du lịch: Áp dụng các chiến lược marketing để quảng bá các điểm đến du lịch và dịch vụ lữ hành, bao gồm sử dụng các kênh truyền thông xã hội và tiếp thị trực tuyến.<br>- Kỹ năng quản lý khách sạn và nhà hàng: Hiểu và quản lý các hoạt động dịch vụ khách sạn và nhà hàng, từ việc đặt phòng đến dịch vụ ẩm thực.<br>- Kỹ năng dịch vụ khách hàng: Cung cấp dịch vụ khách hàng chuyên nghiệp và hiệu quả, từ việc giải quyết khiếu nại đến tạo dựng mối quan hệ khách hàng.<br>- Kỹ năng tổ chức sự kiện: Lên kế hoạch và tổ chức các sự kiện, hội nghị và hội thảo du lịch.<br>- Kỹ năng giao tiếp: Giao tiếp hiệu quả với khách hàng, đối tác và các bên liên quan trong ngành du lịch.<br>- Kỹ năng giải quyết vấn đề: Phân tích và xử lý các vấn đề phát sinh trong quá trình tổ chức và điều hành các hoạt động du lịch và lữ hành.<br>- Kỹ năng hướng dẫn viên du lịch: Hướng dẫn và thuyết trình về các điểm đến du lịch, cung cấp thông tin và hỗ trợ du khách.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành quản trị du lịch và lữ hành ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực quản lý du lịch, điều hành tour, quản lý khách sạn và nhà hàng, và marketing du lịch. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như quản lý tour, chuyên viên marketing du lịch, quản lý khách sạn, quản lý nhà hàng, và hướng dẫn viên du lịch. Với sự phát triển không ngừng của ngành du lịch và nhu cầu ngày càng cao về trải nghiệm du lịch chất lượng và độc đáo, các chuyên gia quản trị du lịch và lữ hành cũng có thể tham gia vào các dự án phát triển du lịch bền vững, khám phá và quảng bá các điểm đến mới, và nâng cao chất lượng dịch vụ du lịch. Mục tiêu cuối cùng là đào tạo những chuyên viên du lịch có khả năng đáp ứng yêu cầu của thị trường, tạo ra những trải nghiệm du lịch đáng nhớ cho du khách, và đóng góp vào sự phát triển bền vững của ngành du lịch.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930528/Training-Fields/rhqygwekoysvpubnrwey.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957'),
('daotaoquantrikinhdoanh123', 'Quản Trị Kinh Doanh', '<p>Ngành quản trị kinh doanh ở trường cao đẳng là lĩnh vực tập trung vào việc điều hành và quản lý các hoạt động kinh doanh của tổ chức hoặc doanh nghiệp. Nội dung học bao gồm các kiến thức về quản lý, tiếp thị, tài chính, nhân sự, và chiến lược kinh doanh. Sinh viên sẽ được trang bị các kỹ năng cần thiết để lãnh đạo, ra quyết định chiến lược và tối ưu hóa hiệu quả hoạt động của doanh nghiệp.<br>Chương trình đào tạo ngành quản trị kinh doanh tập trung vào việc phát triển các kỹ năng sau:</p><p>- Kỹ năng quản lý: Nắm vững các nguyên tắc và phương pháp quản lý, bao gồm lập kế hoạch, tổ chức và kiểm soát các hoạt động kinh doanh.<br>- Kỹ năng tiếp thị: Hiểu và áp dụng các chiến lược tiếp thị, phân tích thị trường, và phát triển kế hoạch marketing để thu hút và giữ chân khách hàng.<br>- Kỹ năng tài chính: Quản lý ngân sách, phân tích tài chính và lập kế hoạch tài chính để đảm bảo sự ổn định tài chính của doanh nghiệp.<br>- Kỹ năng nhân sự: Quản lý đội ngũ nhân viên, từ tuyển dụng và đào tạo đến phát triển nghề nghiệp và giải quyết xung đột.<br>- Kỹ năng chiến lược: Xây dựng và triển khai các chiến lược kinh doanh để đạt được mục tiêu dài hạn của tổ chức.<br>- Kỹ năng giao tiếp: Giao tiếp hiệu quả với các bên liên quan, bao gồm nhân viên, khách hàng, và đối tác.<br>- Kỹ năng giải quyết vấn đề: Phân tích các vấn đề kinh doanh và đưa ra các giải pháp sáng tạo và thực tiễn.<br>- Kỹ năng quản lý dự án: Lập kế hoạch, theo dõi và quản lý các dự án kinh doanh để đạt được các mục tiêu đề ra.</p><p><br>Mục Tiêu Nghề Nghiệp</p><p>Ngành quản trị kinh doanh ở trường cao đẳng mở ra nhiều cơ hội nghề nghiệp trong các lĩnh vực quản lý doanh nghiệp, tiếp thị, tài chính, và nhân sự. Sinh viên tốt nghiệp có thể làm việc ở các vị trí như quản lý dự án, trưởng phòng tiếp thị, kế toán trưởng, quản lý nhân sự, và chuyên viên phân tích kinh doanh. Với sự phát triển không ngừng của thị trường và sự cạnh tranh ngày càng cao, các chuyên gia quản trị kinh doanh cũng có thể tham gia vào các dự án đổi mới sáng tạo, phát triển chiến lược tăng trưởng và tối ưu hóa quy trình hoạt động. Mục tiêu cuối cùng là đào tạo những nhà quản lý có khả năng lãnh đạo, đưa ra quyết định chiến lược, và đóng góp vào sự phát triển bền vững và thành công của doanh nghiệp.<br>&nbsp;</p>', 'http://res.cloudinary.com/dnftqye16/image/upload/v1722930085/Training-Fields/xrdlen3a3oz5myrz8v3k.jpg', '2024-09-28 00:39:34.957', '2024-09-28 00:39:34.957');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeimage`
--

CREATE TABLE `typeimage` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typeimage`
--

INSERT INTO `typeimage` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
('aboutUs@786521', 'AboutUs', 'AboutUs', '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('admission@786521', 'Admission', 'Admission', '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('News@786521', 'News', 'News', '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897'),
('traningFields@786521', 'traningFields', 'traningFields', '2024-09-28 00:39:34.897', '2024-09-28 00:39:34.897');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_accounttonews`
--

CREATE TABLE `_accounttonews` (
  `A` varchar(191) NOT NULL,
  `B` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_accounttonotifi`
--

CREATE TABLE `_accounttonotifi` (
  `A` varchar(191) NOT NULL,
  `B` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_accounttorole`
--

CREATE TABLE `_accounttorole` (
  `A` varchar(191) NOT NULL,
  `B` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_accounttorole`
--

INSERT INTO `_accounttorole` (`A`, `B`) VALUES
('sdc-admin-02092002', 'sdc@role_admin1157025');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('f0c269a6-5bf5-4639-8a09-3e42d203d848', '77a63960dea1d523cd96488e14aaeb2d1d14cf17cf8e59140a9a6137fac4c81d', '2024-09-27 16:15:53.233', '20240927160737_init', NULL, NULL, '2024-09-27 16:15:47.229', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `communicate`
--
ALTER TABLE `communicate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contentassetnews`
--
ALTER TABLE `contentassetnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ContentAssetNews_accountId_fkey` (`accountId`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_accountId_fkey` (`accountId`),
  ADD KEY `Image_contentAssetNewsId_fkey` (`contentAssetNewsId`),
  ADD KEY `Image_newsId_fkey` (`newsId`),
  ADD KEY `Image_aboutUsId_fkey` (`aboutUsId`),
  ADD KEY `Image_partnerId_fkey` (`partnerId`),
  ADD KEY `Image_typeImageId_fkey` (`typeImageId`),
  ADD KEY `Image_communicateId_fkey` (`communicateId`),
  ADD KEY `Image_trainingfieldsId_fkey` (`trainingfieldsId`),
  ADD KEY `Image_informationId_fkey` (`informationId`),
  ADD KEY `Image_admissionsId_fkey` (`admissionsId`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifi`
--
ALTER TABLE `notifi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Notifi_departmentId_fkey` (`departmentId`);

--
-- Chỉ mục cho bảng `pageview`
--
ALTER TABLE `pageview`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessionaccount`
--
ALTER TABLE `sessionaccount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trainingfields`
--
ALTER TABLE `trainingfields`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `typeimage`
--
ALTER TABLE `typeimage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `_accounttonews`
--
ALTER TABLE `_accounttonews`
  ADD UNIQUE KEY `_AccountToNews_AB_unique` (`A`,`B`),
  ADD KEY `_AccountToNews_B_index` (`B`);

--
-- Chỉ mục cho bảng `_accounttonotifi`
--
ALTER TABLE `_accounttonotifi`
  ADD UNIQUE KEY `_AccountToNotifi_AB_unique` (`A`,`B`),
  ADD KEY `_AccountToNotifi_B_index` (`B`);

--
-- Chỉ mục cho bảng `_accounttorole`
--
ALTER TABLE `_accounttorole`
  ADD UNIQUE KEY `_AccountToRole_AB_unique` (`A`,`B`),
  ADD KEY `_AccountToRole_B_index` (`B`);

--
-- Chỉ mục cho bảng `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contentassetnews`
--
ALTER TABLE `contentassetnews`
  ADD CONSTRAINT `ContentAssetNews_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `Image_aboutUsId_fkey` FOREIGN KEY (`aboutUsId`) REFERENCES `aboutus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_admissionsId_fkey` FOREIGN KEY (`admissionsId`) REFERENCES `admissions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_communicateId_fkey` FOREIGN KEY (`communicateId`) REFERENCES `communicate` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_contentAssetNewsId_fkey` FOREIGN KEY (`contentAssetNewsId`) REFERENCES `contentassetnews` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_informationId_fkey` FOREIGN KEY (`informationId`) REFERENCES `information` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_newsId_fkey` FOREIGN KEY (`newsId`) REFERENCES `news` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_partnerId_fkey` FOREIGN KEY (`partnerId`) REFERENCES `partner` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_trainingfieldsId_fkey` FOREIGN KEY (`trainingfieldsId`) REFERENCES `trainingfields` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Image_typeImageId_fkey` FOREIGN KEY (`typeImageId`) REFERENCES `typeimage` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `notifi`
--
ALTER TABLE `notifi`
  ADD CONSTRAINT `Notifi_departmentId_fkey` FOREIGN KEY (`departmentId`) REFERENCES `department` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `_accounttonews`
--
ALTER TABLE `_accounttonews`
  ADD CONSTRAINT `_AccountToNews_A_fkey` FOREIGN KEY (`A`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_AccountToNews_B_fkey` FOREIGN KEY (`B`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `_accounttonotifi`
--
ALTER TABLE `_accounttonotifi`
  ADD CONSTRAINT `_AccountToNotifi_A_fkey` FOREIGN KEY (`A`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_AccountToNotifi_B_fkey` FOREIGN KEY (`B`) REFERENCES `notifi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `_accounttorole`
--
ALTER TABLE `_accounttorole`
  ADD CONSTRAINT `_AccountToRole_A_fkey` FOREIGN KEY (`A`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_AccountToRole_B_fkey` FOREIGN KEY (`B`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
