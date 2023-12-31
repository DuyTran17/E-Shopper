USE [DoAn]
GO
/****** Object:  User [duy]    Script Date: 12/4/2022 9:28:50 PM ******/
CREATE USER [duy] FOR LOGIN [duy] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [duy]
GO
/****** Object:  Table [dbo].[CtDonHang]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CtDonHang](
	[soDH] [varchar](10) NOT NULL,
	[maSP] [varchar](10) NOT NULL,
	[soLuong] [int] NULL,
	[giaBan] [bigint] NULL,
	[giamGia] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[soDH] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[soDH] [varchar](10) NOT NULL,
	[maKH] [varchar](10) NOT NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[ngayDat] [datetime] NULL,
	[daKichHoat] [bit] NULL,
	[ngayGH] [datetime] NULL,
	[diaChiGH] [nvarchar](250) NULL,
	[ghiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[soDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [varchar](10) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[soDT] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[diaChi] [nvarchar](250) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [bit] NULL,
	[ghiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](88) NOT NULL,
	[ghiChu] [ntext] NULL,
	[hinhMau] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [varchar](10) NOT NULL,
	[tenSP] [nvarchar](500) NOT NULL,
	[hinhDD] [varchar](max) NULL,
	[ndTomTat] [nvarchar](2000) NULL,
	[ngayDang] [datetime] NULL,
	[maLoai] [int] NOT NULL,
	[noiDung] [nvarchar](4000) NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[dvt] [nvarchar](32) NULL,
	[daDuyet] [bit] NULL,
	[giaBan] [int] NULL,
	[giamGia] [int] NULL,
	[nhaSanXuat] [nvarchar](168) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/4/2022 9:28:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[taiKhoan] [varchar](20) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[hoDem] [nvarchar](50) NULL,
	[tenTV] [nvarchar](30) NOT NULL,
	[ngaysinh] [datetime] NULL,
	[gioiTinh] [bit] NULL,
	[soDT] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](250) NULL,
	[trangThai] [bit] NULL,
	[ghiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (1, N'Men''s Dresses', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (2, N'Women''s Dresses', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (3, N'Baby''s Dresses', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (4, N'Jacket', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (5, N'LipStick', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (6, N'Swimwear', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (7, N'Sleepwear', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (8, N'Sportswear', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (9, N'Hat', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (10, N'Bag', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (11, N'Accesories', N'', NULL)
INSERT [dbo].[LoaiSP] ([maLoai], [tenLoai], [ghiChu], [hinhMau]) VALUES (12, N'Shoes', N'', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP01', N'Sweatshirt Sets', N'/img/SP01.jpg', N'Áo Sơ Mi Nam dài tay dáng ôm body , chống nhăn cao cấp  chính là gợi ý tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ngày. 

Với những mẫu áo sơ mi nam thiết kế đơn giản và toát lên vẻ lịch lãm tinh tế, mang đến phong cách thời trang trẻ trung, năng động chắc chắn sẽ là lựa chọn hoàn hảo cho chàng trai hiện đại, nam tính. 

Những chiếc áo sơ mi dài tay dáng ôm body Hàn Quốc , chống nhăn cao cấp  dù kết hợp với quần âu, quần jeans khi đi làm hay diện cùng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI MÁI và PHONG CÁCH. 

Với form dáng vừa vặn các chàng có thể tự tin khoe body cực chuẩn của mình. Hãy bổ sung ngay vào tủ đồ item này để diện thật chất nhé!', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'+ MÀU ÁO : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ ĐÔ , GHI XÁM 
+ Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi 
+ Chất vải sờ mịn không bai, không nhăn, không xù
+ Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết
+ Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ
+ Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm
+ Chất lượng sản phẩm tốt, giá cả hợp lý', N'admin', N'Cái', 1, 325000, 0, N'h nhiệm sản xuất
Xưởng May Khải Anh')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP02', N'Tee basic', N'/img/SP02.jpg', N'- Áo thun nam nữ oversize sử dụng chất vải cotton 65/35 co giãn 4 chiều. Là loại vải có đặc điểm mềm mịn, độ co giãn cao, khả năng thấm hút tốt và được dệt hoàn toàn từ sợi cây bông tự nhiên. Chất vải cotton cực kỳ thân thiện với làn da.
- Áo thun nam nữ form rộng cổ tròn thoải mái
- Áo phông unisex form rộng dễ phối đồ. Bạn có thể phối với quần jean, chân váy, … kết hợp với một đôi sneaker cho bạn tự tin xuống phố', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'', N'admin', N'Cái', 1, 150000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP03', N'Áo thun form rộng Paradox', N'/img/SP03.jpg', N'Áo thun form rộng THE REVERIE là sản phẩm áo thun nghệ thuật với thiết kế độc đáo dựa trên nền chất liệu áo phông tay lỡ Basic, vừa đem lại cho bạn cảm giác thoải mái vừa thể hiện cá tính riêng của bạn thông qua những hoạ tiết, hình vẽ do chính đội ngũ Designer của Paradox thiết kế.', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'• Tự hào sản xuất tại Việt Nam bởi chính Paradox - là một Local Brand đã có mặt nhiều năm trên thị trường.

• Với chất liệu cotton 2 chiều dày dặn.

• Độ co giãn tốt: Độ co giãn vừa phải chính là ưu điểm lớn nhất của vải cotton 2 chiều này. Sự co giãn theo 2 chiều nhất định giúp chất liệu luôn là sự lựa chọn hoàn hảo cho người dùng khi thực hiện các hoạt động thể dục thể thao, hay phải làm công việc nguyên ngày. Bên cạnh đó còn giúp giữ được form áo lâu hơn so với loại vải cotton 2 chiều khi mà nhiều bạn không có thói quen giặt tay áo thun.

• Độ thoáng khí cao: Vải cotton 2 chiều được dệt từ các sợi bông nguyên chất tự nhiên, thân thiện với môi trường nên giúp cho vải luôn được thoáng mát và tạo cảm giác dễ chịu cho làn da khi sử dụng.

• Khả năng hút ẩm tốt: Bên cạnh sự thoáng mát, vải còn có khả năng hút ấm rất tốt. Giúp cho mồ hôi luôn thoát ra được bên ngoài vải, không gây bết dính hay làm cho da bị bức bí vì mồ hôi.

• Bề mặt vải mềm mại: Nhờ vào việc kết hơp một tỷ lệ nhỏ sợi spandex mà vải cotton 2 chiều có được sự mềm mại khi tiếp xúc với làn da và cũng như ít bị nhăn hơn.

• Họa tiết in nổi được sử dụng công nghệ in kéo lụa cho độ bền cao, hiệu ứng màu sắc đẹp và sắc nét hơn.

• Form áo Oversize phù hợp với nhiều kiểu hình thể, giúp che khuyết điểm tốt.', N'admin', N'Cái', 1, 229000, 0, N'Paradox')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP04', N'Áo thun SADBOIZ Toss White', N'/img/SP04.jpg', N'chất liệu: cotton 2 chiều

màu sắc : trắng

phân loại: casual & membership', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'bộ sưu tập sadboizvibes: 

- sadboizvibes collection được chia thành 2 loại sản phẩm khác nhau: casual và membership

"membership" là dòng sản phẩm dành cho các thành viên của @sadboizvibes, người mẫu độc quyền và những khách hàng muốn sự khác biệt.

"casual" là dòng sản phẩm phổ thông và có giá mềm hơn.

sự khác biệt của 2 dòng sản phẩm nằm ở bao bì đóng gói và tag "sadboizvibes" - chỉ có ở dòng sản phẩm "membership".

sadboizvibes collection là 1 bst lấy cảm hứng từ người thân, gia đình và những người bạn.

dòng chữ sadboizvibes nhiều màu sắc tượng trưng cho nhiều con người, nhiều tính cách nhưng điểm chung là ta đều mang trong mình 1 nỗi buồn thật đẹp.', N'admin', N'Cái', 1, 340000, 0, N'Toss White')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP05', N'Áo thun trơn N7', N'/img/SP05.jpg', N'Thông tin sản phẩm Áo thun trơn N7 tay lỡ unisex nam nữ Local Brand :

- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.

- Chất liệu: 95% cotton - 5% spandex, co giãn 4 chiều, vải mềm, vải mịn, thoáng mát, không xù lông.

- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.

- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.

- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'CHÚNG TÔI XIN CAM KẾT:

Áo thun trơn N7 tay lỡ unisex nam nữ Local Brand:

Đảm bảo vải chuẩn 95% cotton - 5% spandex 100% chất lượng .

Hàng có sẵn, giao hàng ngay khi nhận được đơn đặt hàng .

Hoàn tiền 100% nếu sản phẩm lỗi, nhầm hoặc không giống với mô tả.

Chấp nhận đổi hàng khi size không vừa (vui lòng nhắn tin riêng cho shop).

Giao hàng toàn quốc, thanh toán khi nhận hàng.

Hỗ trợ đổi trả theo quy định của Shopee .', N'admin', N'Cái', 1, 145000, 0, N'N7')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP06', N'Áo thun tay lỡ SWE form rộng', N'/img/SP06.jpg', N'❤️ Hướng dẫn chọn size 
✔️Size M : Dài 67cm Rộng 51cm (Dưới 1m6 , dưới 50kg Mặc rộng, dưới 65kg mặc vừa)
✔️Size L : Dài 70cm Rộng 53cm (Dưới 1m7, dưới 65kg Mặc rộng, dưới 75kg mặc vừa)
✔️Size XL : Dài 73cm Rộng 57cm (Dưới 1m8, dưới 80kg Mặc rộng, dưới 90kg mặc vừa)', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, N'❤️ Mô tả chi tiết sản phẩm Áo thun tay lỡ S.W.E HP Fashion:
✔️Kiểu dáng: From dáng thể thao dễ mặc, năng động, trẻ trung.
✔️Xuất xứ: Việt Nam
✔️Thương hiệu: HP Fashion
✔️Phong cách: Unisex - Nam nữ đều mặc được
✔️Chất liệu: Thun cotton 4 chiều dày, mềm mịn, mặc siêu mát không co rút , không xù lông. Mực in sắc nét, không phai màu, không độc hại cho sức khỏe
✔️Mực in: Công nghệ in Nhật Bản, không phai màu, bong tróc, chất lượng in cao cấp, thân thiện với da.
✔️Kích thước: 3 size M, L, XL

✔️Đặc điểm nổi bật nhất: 
- Thiết kế cổ tròn, tay ngắn trẻ trung
- Họa tiết in trẻ trung,nổi bật vô cùng bắt mắt tạo điểm nhấn của sản phẩm
- Chất liệu vải co giãn, khả năng hút ẩm, thấm mồ hôi tốt
- Phong cách khỏe khoắn, năng động phù hợp nhiều hoàn cảnh khác nhau

✔️Đóng gói: Đóng gói cẩn thận và an toàn, bạn luôn yên tâm khi nhận sản phẩm.', N'admin', N'Cái', 1, 280000, 0, N'SWE')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP07', N'Đầm váy trắng nơ ngực dạo phố xinh xắn', N'/img/SP07.jpg', N'Đầm trắng dự tiệc nơ trắng xinh xắn
1 màu trắng
Chất liệu: cotton full lót
Ảnh thật cận vải siêu đẹp ạ', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'Áp dụng chiều cao trung bình 1m60
Size XS dưới 42kg, 3 vòng < 80 60 85 
Size S dưới 48kg, 3 vòng < 85 65 90
Size M dưới 52kg, 3 vòng < 90 70 95
Size L dưới 57kg, 3 vòng < 95 75 100
Size XL dưới 60kg, 3 vòng < 100 80 105
Size XXL dưới 65kg, 3 vòng <105 85 110
Size XXXL dưới 70kg, 3 vòng <110 90 115

Tùy chất liệu các số đo có thể chênh lệch 2-3cm ạ.', N'admin', N'Cái', 1, 170000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP08', N'Đầm Babydoll Nữ', N'/img/SP08.jpg', N'🍃Mô  tả sản phẩm: 
•  Mẫu váy nhẹ nhàng tiểu thư cho các nàng bánh bèo vừa về kho Anie nha!
•  Mã mới xưởng bên anie mới thiết kế chào hàng các nàng luôn ạ
•  Thiết kế nơ ngưc buộc, tay bồng dáng dài xinh lắm nhé
•  Vải đũi xốp trắng mịn dày dặn
•  Dáng váy rất dễ phối với các phụ kiện nha, giày boots vs guốc cực hợp đó ạ', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'🍃Thông Tin Sản Phẩm
•  Full Size: M, L
          M: 40-51kg
          L:  52-61kg
•  Màu Sắc: Đen, Trắng
•  Dài 110cm', N'admin', N'Cái', 1, 173000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP09', N'Đầm polo nữ thêu positive GUMAC', N'/img/SP09.jpg', N'Sản phẩm đầm được thiết kế độc quyền bởi thương hiệu GUMAC -Thương hiệu "Thời trang hạnh phúc" với hệ thống hơn 80 showrooms trên toàn quốc từ Bắc vào Nam. GUMAC là thương hiệu uy tín, sản phẩm chất lượng, mẫu mã đa dạng luôn MỚI mỗi tháng. 



GUMAC không đơn thuần chỉ là quần áo, chúng tôi muốn mang lại vẻ đẹp tuyệt đối cho chị em phụ nữ, sự tự tin, niềm hạnh phúc làm chủ cuộc sống của chính mình. Hãy cùng GU trải nghiệm những sản phẩm đầm ĐẸP - MỚI - CHẤT LƯỢNG tại Shopee ngay nhé.', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'Màu Sắc: ĐEN, NÂU, XÁM, XANH ĐEN

Số Đo Vòng Ngực 86CM

Số Đo Vòng Eo 80CM

Số Đo Lai 102CM

Số Đo Vai 37CM

Số Đo Dài Tay 16.5CM

Số Đo Cửa Tay 28CM

Chiều Dài Đầm 87CM

Số Đo Size S

Chất Liệu Vải THUN BORIP

Độ Co Giãn NHIỀU

* Đầm polo form ôm, thêu chữ positive*', N'admin', N'Cái', 1, 330000, 0, N'GUMAC')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP10', N'Đầm trắng trễ vai', N'/img/SP10.jpg', N'Hẹn hò vớ 𝑐𝑟𝑢𝑠ℎ 𝑝ℎ𝑎̉𝑖 𝑚𝑎̣̆𝑐 #𝐴𝑢𝑡𝑜 𝑥𝑖𝑛ℎ 𝑡ℎ𝑎̣̂𝑡 #𝑋𝐼𝑁𝐻 
~~~~~~~~~~~~~~~
🌸Đầm trắng trễ vai so cute

🌱 Dễ thương quá cả nhà ơiiiiiiii !!!!', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'Màu: Trắng, Đen
Size XS dưới 42kg, 3 vòng 80 60 85
Size S dưới 48kg, 3 vòng 85 65 90 
Size M dưới 52kg, 3 vòng 90 70 95
Size L dưới 57kg, 3 vòng 95 75 100
Size XL dưới 60kg, 3 vòng 100 80 105
Các bạn đối chiều size để đặt hàng nhé, hoặc ib shop để được tư vấn kĩ hơn', N'admin', N'Cái', 1, 220000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP11', N'Đầm nữ dáng xòe cổ vuông', N'/img/SP11.jpg', N'Đầm nữ dáng xòe cổ vuông phối nơ sau lưng', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'- CAM KẾT ĐỔI, TRẢ HÀNG TRONG VÒNG 3 NGÀY NẾU HÀNG BỊ LỖI DO NHÀ SẢN XUẤT HOẶC KHÔNG ĐÚNG MẪU NHÉ 
☘️Chất liệu: Vải Kate
☘️Màu sắc: Đen nâu
☘️Size: Free size dưới 55kg đổ lại mặc vừa (tùy chiều cao nhé)
☘️ V1: dưới 86cm 
☘️ V2: dưới 71cm 
☘️ 1m50 – 1m55 từ 40 – 45kg vừa 
☘️ 1m55 – 1m6 từ 46 – 50kg vừa 
☘️ Trên 1m6 từ 51 – 54kg vừa 
Đầm nữ dáng xòe cổ vuông phối nơ sau lưng
- Đừng quên ấn THEO DÕI shop để cập nhật nhanh những mẫu mới, khi đặt hàng sản phẩm bạn vui lòng inbox cho Shop để check hàng và để được shop tư vấn kĩ hơn nhé.', N'duy', N'Cái', 1, 180000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP12', N'Váy đầm nữ trắng tinh khôi hai dây tay phồng màu trắng', N'/img/SP12.jpg', N'Váy đầm nữ trắng tinh khôi hai dây tay phồng', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2, N'  ☘️Chất liệu: Vải kate lụa
☘️Màu sắc: Trắng, Đen, Siêu sale giảm sốc là shop giao màu ngẫu nhiên nhé.
*Size: Free size dưới 55kg đổ lại mặc vừa (tùy chiều cao nhé)
☘️ V1: dưới 86cm 
☘️ V2: dưới 71cm 
☘️ 1m50 – 1m55 từ 40 – 45kg vừa 
☘️ 1m55 – 1m6 từ 46 – 50kg vừa 
☘️ Trên 1m6 từ 51 – 54kg vừa 
Váy đầm nữ trắng tinh khôi hai dây tay phồng
- Đừng quên ấn THEO DÕI shop để cập nhật nhanh những mẫu mới, khi đặt hàng sản phẩm bạn vui lòng inbox cho Shop để check hàng và để được shop tư vấn kĩ hơn nhé.', N'duy', N'Cái', 1, 250000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP13', N'Bộ pijama trẻ em đi biển', N'/img/SP13.jpg', N'Bộ pijama trẻ em đi biển Việt Thắng quần đùi áo cộc tay, chất lanh thoáng mát B63.2218', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 3, N'Thông số bộ đồ trẻ em VT:

-        Size 2-3: 12-15kg (98-107cm)

-        Size 4-5: 16-20kg (108-119cm)

-        Size 6-7: 21-26kg (120-130cm)

-        Size 8-9: 27-30kg (131-142cm)

-        Size 10-11: 30-35kg (143-152cm)

-        Size 11-12: 36-40kg (>152cm)', N'duy', N'Cái', 1, 120000, 0, N'Việt Thắng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP14', N'Áo Bóng Đá, Quần Áo Đá Banh Trẻ Em CLB TOTTENHAM', N'/img/SP14.jpg', N'*** 🛑 Lưu Ý: Áo và quần chưa in tên + số như ảnh mô tả khách có nhu  cầu in áo nhắn tin cho shop nhé***
• Chất liệu: thun lạnh cao cấp
•  Hàng chuẩn VNXK 
• KHÔNG NHĂN – KHÔNG XÙ – KHÔNG PHAI MÀU
• Thấm hút mồ hôi cực tốt
• Thiết kế đúng gần như tuyệt đối với mẫu đội bóng', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 3, N'
Size 1 : 10 - 13 kg (1-3 tuổi) cao 85-95cm
Size 3 : 14 - 16 kg (2-4 tuổi) cao 115-120cm
Size 5 : 16 - 19 kg (3-5 tuổi) cao 120-125cm
Size 7 :  19 - 23 kg (5-7 tuổi) cao 125-130cm
Size 9 :  23 - 26 kg (7-9 tuổi) cao 130-135cm
Size 11 : 26 - 29 kg (9-11 tuổi) cao 135--140cm
Size 13 : 30 - 35 kg (11-13 tuổi) cao 135-140cm
Size 15 : 35 - 40 kg (13-15 tuổi) cao 140-145cm', N'duy', N'Cái ', 1, 100000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP15', N'Đồ Bộ Nữ Áo Phông Nữ Cổ Tròn Tay', N'/img/SP15.jpg', N'💙 THÔNG TIN SẢN PHẨM
 1. Thiết kế: Áo phông tay ngắn phối lai khác màu in họa tiết cực phóng khoáng và bụi bặm. Logo được in chìm không gây ngứa và rách áo. Quần jogger lưng thun ống rộng bé thoải mái vận động
 2. Chất liệu: 100% Cotton cao cấp không gây bí hoặc xù lông như vải dệt từ sợi PE trên thị trường, co giãn được 4 chiều, vải mịn, mềm mại, thoáng mát, thấm hút tốt, rất dễ giặt và cực kỳ an toàn cho da của bé
 3. Kích cỡ: Dành cho bé gái từ 1 tuổi
 4. Xuất xứ: Sản xuất và gia công hoàn toàn tại công ty MCBB Việt Nam', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 3, N'', N'duy', N'Cái', 1, 230000, 0, N'MCCB')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP16', N'Bộ quần áo nữ trẻ em ống rộng', N'/img/SP16.jpg', N'Bộ quần áo cotton chất mát mịn cho bé từ 5 đến 12 tuổi. ', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 4, N'- Có được chọn size các mẹ nhé. 
- Chất liệu cotton, thun sờ mát tay, đường may tỉ mỉ chi tiết. 
- Thích hợp cho bé mặc vào mùa hè, mùa thu .
- Mặc nhà hoặc đi chơi, dự tiệc đều rất phù hợp, đẹp.', N'duy', N'Cái', 1, 170000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP17', N'Áo Khoác Bomber NEW YORK', N'/img/SP17.jpg', N'Áo Khoác Bomber NEW YORK - phong cách nam nữ WILL SHOP chất nỉ bông cotton
Áo khoác BOMBER vải nỉ bông cotton, đẹp, không co rút, Hình in không bong tróc, đặc biệt không những giúp bạn giữ ấm trong mùa lạnh mà còn có thể chống nắng, chống gió, chống bụi, chống rét, chống tia UV cực tốt, rất tiện lợi nhé!!!', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 4, N'Form rộng Unisex cho cả nam và nữ,  Hình Shop tự chụp
🌀 Đường may kỹ, tinh tế, sắc xảo.
🌀 Form chuẩn #ulzzang   #unisex Nam Nữ Couple đều mặc được.
Size: M L XL
Size M: 40 -54kg, cao từ 1m5
Size L: 55 -64kg, cao từ 1m66
Size XL: 65 -80kg, cao từ 1m73
✔️ Cam kết hàng form chuẩn và giống hình
✔️ Hoàn trả miễn phí nếu sản phẩm lỗi do sản xuất.', N'duy', N'Cái', 1, 144000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP18', N'Áo Khoác Cardigan Có Mũ Trùm', N'/img/SP18.jpg', N'Áo Khoác Cardigan Có Mũ Trùm', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 4, N' 🌸Chào mừng đến với cửa hàng DIDIKA



🌸 Ngập tràn mẫu mới 



🌸 Nhận THU HỘ ( ship COD ) toàn quốc 



🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh



🌸 Vải đẹp ,  mềm mịn  



🌸Hoàn trả không gặp rắc rối



🌸đảm bảo chất lượng



🌸Hỗ trợ giá bán buôn



🌸Niềm tin thương hiệu', N'duy', N'Cái', 1, 250000, 0, N'DIDIKA')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP19', N'BOMBER MARCUS', N'/img/SP19.jpg', N'ÁO BOMBER 2 LỚP 
  về thêm các MÀU THẦN THÁNH cho anh em nhé 
Hàng nhập trực tiếp từ Trung quốc nên bao chất lượng cho Anh em  .', CAST(N'2022-03-12T00:00:00.000' AS DateTime), 4, N'>> Full các màu nhiều option lựa chọn
>> Size : Dưới 70kg ( Fullsize ) 
>> Details : Áo 2 lớp siêu dày dặn siêu phê thích hợp cho tất cả các mùa trong năm', N'duy', N'Cái', 1, 150000, 0, N'')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP20', N'Váy nhung công chúa bé gái', N'', N'- Váy nhung công chúa bé gái dài tay có size từ 12-24kg, mẫu này from to nên các mẹ chọn size phù hợp nhé
- Váy công chúa bé gái dài tay được thiết kế với chất vải Nhung mềm và có đính nơ trước ngực và trên tay áo cho bé, cổ tay áo được bo chun cẩn thận, mẫu này có size cho bé từ 2-7 tuổi vừa ạ
- Váy công chúa bé gái dài tay có 2 màu: Đỏ và Nâu ạ, nên các mẹ lựa màu cho phù hợp ạ
- Váy bé gái được may với chất liệu vải nhung mềm mịn, co giãn, không bai nhão, thân thiện với làn da non nớt của bé 
- váy mặc vừa vặn, phù hợp cho bé đi học, đi chơi, đi múa...
- Đường may vô cùng chắc chắn và tinh tế , hàng lỗi shop cam kết đổi trả miễn phí ạ', CAST(N'2022-12-04T00:00:00.000' AS DateTime), 3, N'Size 2 cho bé từ 10- 12 kg  ( ≤ 2 tuổi)
Size 3 cho bé từ 12- 14 kg  (2 đến ≤4 tuổi)
size 4 cho bé từ 14- 16 kg  (4 tuổi đến 4 tuổi)
size 5  cho bé từ 16-18 kg  (4 tuổi đến 5 tuổi)
size 6  cho bé từ 18- 20 kg ( 5 tuổi 6 tuổi)
size 7  cho bé từ 20 - 22 kg  (6 đến 7 tuổi)
size 8  cho bé từ 22 - 24 kg  (7 tuổi)', N'duy', N'Cái', 1, 80000, 5, N'Baby kids')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [hinhDD], [ndTomTat], [ngayDang], [maLoai], [noiDung], [taiKhoan], [dvt], [daDuyet], [giaBan], [giamGia], [nhaSanXuat]) VALUES (N'SP21', N'Đồ bộ cho bé ngắn tay', N'', N'* Đồ bộ cho bé cộc tay ngắn hình [Siêu cưng] Bộ ngắn cộc tay thun lạnh quần áo trẻ em bộ hè ngắn tay quân đùi  Baby Kidshop 
*HÀNG MỚI VỀ - Đồ bộ cho bé gái bé trai cộc tay ngắn  THUN LẠNH
* Cưng xỉu luôn ạ
* Hàng cao cấp bao chất siêu xịn xò
* Kiểu dáng đáng yêu, dễ thương
* Bé gái hay bé trai đều mang được Mom nhé
Đồ bộ cho bé gái bé trai cộc tay ngắn THUN LẠNH  cotton lạnh 100% in hình siêu Dễ Thương Cho Bé
', CAST(N'2022-12-04T00:00:00.000' AS DateTime), 3, N'-Đồ bộ cho bé gái bé trai cộc tay ngắn THUN LẠNH  100% thun lạnh co giãn, thấm hút mồ hôi tốt. 
Chất vải Thun Lạnh còn được ưa chuộng bởi độ bền dài lâu, an toàn da bé và không gây ngứa ngáy và đặc biệt là chất mát rất phù hợp cho bé mặc mùa hè 
- Đồ bộ cộc/ ngắn tay cho bé trai bé gái trẻ em có đường may tỉ mỉ, bền đẹp: Từng đường viền may được thực hiện tỉ mỉ và tinh tế vừa đẹp mắt vừa đảm bảo độ bền theo thời gian. 
- Họa tiết gấu Panda hot hit được in chuẩn sắc nét và ko bị bong khi giặc
- Có Túi của hãng cực đẹp ạ

** Về giá cả: Shop nhập trực tiếp từ hãng với số lượng lớn phân phối sỉ cho các đại lý nên giá thành luôn là RẺ NHẤT với chất lượng TỐT NHẤT, luôn được các mẹ lựa chọn số 1
** Về giao hàng: Hàng sẵn kho số lượng lớn có đội ngũ đóng gói chuyên nghiệp nên hàng đến tay khách hàng là NHANH NHƯ CHỚP
Vì vậy các mẹ ko cần đắn đo khi Bộ ngắn cộc tay thun lạnh quần áo trẻ em mặc nhà mát
* Độ tuổi: từ 0 đến 4 tuổi (cân nặng từ 6- 17Kg) 
**Mom tham khảo bảng thông số size Bộ ngắn cộc tay thun lạnh quần áo trẻ em mặc nhà mát bên shop để chọn size phù hợp cho bé:

Thông số trên mặc form rộng nhưng tùy chiều cao/ vòng bụng nữa bạn nhé !
Nếu bé có bụng/ ốm cao vui lòng tăng thêm 1 size để bé mặc Bộ ngắn cộc tay thun lạnh quần áo trẻ em mặc nhà mát thoải mái
', N'duy', N'cái', 1, 50000, 0, N'')
GO
INSERT [dbo].[TaiKhoan] ([taiKhoan], [matKhau], [hoDem], [tenTV], [ngaysinh], [gioiTinh], [soDT], [email], [diaChi], [trangThai], [ghiChu]) VALUES (N'admin', N'123456', N'Tran', N'Duy', CAST(N'1999-11-17T00:00:00.000' AS DateTime), 1, N'0939437421', N'123456@gmail.com', N'273/57', 1, NULL)
INSERT [dbo].[TaiKhoan] ([taiKhoan], [matKhau], [hoDem], [tenTV], [ngaysinh], [gioiTinh], [soDT], [email], [diaChi], [trangThai], [ghiChu]) VALUES (N'duy', N'duydeptrai', N'Quoc', N'Duy', CAST(N'1999-11-12T00:00:00.000' AS DateTime), 1, N'0123456789', N'987645@gmail.com', N'273/58', 1, NULL)
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT ((1)) FOR [daKichHoat]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((1)) FOR [gioiTinh]
GO
ALTER TABLE [dbo].[LoaiSP] ADD  DEFAULT ('') FOR [ghiChu]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('') FOR [hinhDD]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('') FOR [ndTomTat]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [ngayDang]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('') FOR [noiDung]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (N'Cái') FOR [dvt]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [daDuyet]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [giaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [giamGia]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('') FOR [nhaSanXuat]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ((1)) FOR [gioiTinh]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[CtDonHang]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[CtDonHang]  WITH CHECK ADD FOREIGN KEY([soDH])
REFERENCES [dbo].[DonHang] ([soDH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[TaiKhoan] ([taiKhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[LoaiSP] ([maLoai])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[TaiKhoan] ([taiKhoan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([giamGia]>=(0) AND [giamGia]<=(100)))
GO
