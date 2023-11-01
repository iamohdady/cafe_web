CREATE DATABASE [DataTheSpaceCoffeeHuman]
USE [DataTheSpaceCoffeeHuman]
GO
/****** Object:  Table [dbo].[tbAdmin]    Script Date: Mon, 17-04-2023 9:21:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAdmin](
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbAdmin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbChiTietHDB]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietHDB](
	[SoLuong] [int] NOT NULL,
	[GiamGia] [int] NOT NULL,
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
	[MaKichThuoc] [nchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBan] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbChiTietHDN]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietHDN](
	[SoLuongNhap] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
	[MaHoaDonNhap] [nvarchar](14) NOT NULL,
	[MaVatTu] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC,
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbChiTietToppingHDB]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietToppingHDB](
	[SoLuong] [int] NOT NULL,
	[MaTopping] [nvarchar](2) NOT NULL,
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTopping] ASC,
	[MaHoaDonBan] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCuaHang]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCuaHang](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[TenCuaHang] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SoDienThoai] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Fanpage] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCuaHangBanSP]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCuaHangBanSP](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCuaHangTinTuc]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCuaHangTinTuc](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaTinTuc] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDonBan]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonBan](
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[MaKhachHang] [nvarchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDonNhap]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonNhap](
	[MaHoaDonNhap] [nvarchar](14) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[MaNhaCungCap] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhachHang]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachHang](
	[MaKhachHang] [nvarchar](6) NOT NULL,
	[TenKhachHang] [nvarchar](55) NOT NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Diem] [int] NOT NULL,
	[Hang] [nvarchar](10) NULL,
	[MatKhau] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhoVatTuCH]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhoVatTuCH](
	[SoLuong] [int] NOT NULL,
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaVatTu] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKichThuoc]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKichThuoc](
	[MaKichThuoc] [nchar](1) NOT NULL,
	[GiaThem] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhaCungCap]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhaCungCap](
	[MaNhaCungCap] [nvarchar](2) NOT NULL,
	[TenNhaCungCap] [nvarchar](256) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[Email] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhomSanPham]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhomSanPham](
	[MaNhomSP] [nvarchar](2) NOT NULL,
	[TenNhomSP] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSanPham]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanPham](
	[MaSanPham] [nvarchar](4) NOT NULL,
	[TenSanPham] [nvarchar](256) NOT NULL,
	[GiaBan] [money] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaNhomSP] [nvarchar](2) NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[Calories] [int] NULL,
	[TotalFat] [int] NULL,
	[SaturatedFat] [int] NULL,
	[Cholesterol] [int] NULL,
	[Sodium] [int] NULL,
	[TotalCarbohydrates] [int] NULL,
	[Sugars] [int] NULL,
	[Protein] [int] NULL,
	[Ingredients] [nvarchar](max) NULL,
	[Vote] [int] NULL,
	[Star] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTinTuc]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTinTuc](
	[MaTinTuc] [nvarchar](8) NOT NULL,
	[TieuDe] [nvarchar](256) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayDang] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTopping]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTopping](
	[MaTopping] [nvarchar](2) NOT NULL,
	[TenTopping] [nvarchar](256) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[Anh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTopping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbVatTu]    Script Date: Mon, 17-04-2023 9:21:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVatTu](
	[MaVatTu] [nvarchar](4) NOT NULL,
	[TenVatTu] [nvarchar](255) NOT NULL,
	[DonViTinh] [nvarchar](5) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbAdmin] ([username], [password]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[tbChiTietHDB] ([SoLuong], [GiamGia], [MaHoaDonBan], [MaSanPham], [MaKichThuoc]) VALUES (1, 0, N'10121803230001', N'CF01', N'S')
GO
INSERT [dbo].[tbChiTietHDN] ([SoLuongNhap], [GiaNhap], [MaHoaDonNhap], [MaVatTu]) VALUES (50, 50000, N'10111703230001', N'0101')
GO
INSERT [dbo].[tbChiTietToppingHDB] ([SoLuong], [MaTopping], [MaHoaDonBan], [MaSanPham]) VALUES (1, N'01', N'10121803230001', N'CF01')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'101', N'The Coffee Space Hồ Tùng Mậu
', N'Hồ Tùng Mậu - Mai Dịch - Cầu Giấy - Hà Nội
', N'0980094164', N'0101@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceHoTungMau
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'102', N'The Coffee Space Phạm Văn Đồng
', N'Phạm Văn Đồng - Cổ Nhuế 1 - Bắc Từ Liêm - Hà Nội
', N'0929433365', N'0102@thecoffeespace.com
', N'facebook.com/TheCoffeeSpacePhamVanDong
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'103', N'The Coffee Space TTTM Aeon Mall Long Biên
', N'TTTM Aeon Mall Long Biên - Long Biên - Hà Nội
', N'0965140821', N'0103@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceTTTMAeonMallLongBien
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'104', N'The Coffee Space TTTM Discovery Cầu Giấy
', N'TTTM Discovery Cầu Giấy - Cầu Giấy - Hà Nội
', N'0982210023', N'0104@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceTTTMDiscoveryCauGiay
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'105', N'The Coffee Space Láng Hạ
', N'Láng Hạ - Đống Đa - Hà Nội
', N'0942035303', N'0105@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceLangHa
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'106', N'The Coffee Space Trung Hoà
', N'Trung Hoà - Cầu Giấy - Hà Nội
', N'0920968265', N'0106@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceTrungHoa
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'107', N'The Coffee Space Yên Lãng
', N'Yên Lãng - Đống Đa - Hà Nội
', N'0919760526', N'0107@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceYenLang
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'108', N'The Coffee Space Đội Cấn
', N'Đội Cấn - Ba Đình - Hà Nội
', N'0928016210', N'0108@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceDoiCan
')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [SoDienThoai], [Email], [Fanpage]) VALUES (N'109', N'The Coffee Space Lạc Long Quân
', N'Lạc Long Quân - Tây Hồ - Hà Nội
', N'0914960028', N'0109@thecoffeespace.com
', N'facebook.com/TheCoffeeSpaceLacLongQuan
')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR07')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR08')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR09')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR10')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR12')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR13')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR14')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR16')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR17')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR18')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR19')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR20')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR21')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS02')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS03')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS05')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS06')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS07')
GO
INSERT [dbo].[tbHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaKhachHang]) VALUES (N'10121803230001', CAST(N'2023-03-18' AS Date), N'000001')
GO
INSERT [dbo].[tbHoaDonNhap] ([MaHoaDonNhap], [NgayLap], [MaNhaCungCap]) VALUES (N'10111703230001', CAST(N'2023-03-17' AS Date), N'01')
GO
INSERT [dbo].[tbHoaDonNhap] ([MaHoaDonNhap], [NgayLap], [MaNhaCungCap]) VALUES (N'10211703230001', CAST(N'2023-03-17' AS Date), N'02')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000001', N'Nguyễn Dương Anh', N'379806581', N'Hà Nội', 4995, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000002', N'Phạm Việt Anh', N'836233272', N'Cầu Giấy - Hà Nội', 4889, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000003', N'Vũ Hoàng Anh', N'795447293', N'Trần Phú - Hà Đông - Hà Nội', 2660, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000004', N'Bùi Thị Ánh', N'340163454', N'Vinhomes Ocean Park - Long Biên - Hà Nội', 4073, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000005', N'Khuất Quang Cảnh', N'856400713', N'Láng Hạ - Đống Đa - Hà Nội', 2753, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000006', N'Lê Hồng Chiến', N'337081378', N'Nguyễn Chánh - Mỹ Đình - Hà Nội', 3110, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000007', N'Phạm Hữu Chương', N'353209379', N'Yên Lãng - Đống Đa - Hà Nội', 3866, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000008', N'Chu Mạnh Cường', N'386920360', N'Cổ Nhuế - Bắc Từ Liêm - Hà Nội', 2656, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000009', N'Bùi Văn Đạt', N'818357936', N'Lạc Long Quân - Tây Hồ - Hà Nội', 3108, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000010', N'Phạm Quang Đức', N'383121300', N'Hà Nội', 4834, N'Special', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000011', N'Phạm Tiến Đức', N'786106992', N'Hà Nội', 2438, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000012', N'Trần Minh Đức', N'332481447', N'Hà Nội', 2353, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000013', N'Phùng Tiến Dũng', N'783103483', N'Hà Nội', 2298, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000014', N'Phạm Thái Dương', N'702912017', N'Thanh Xuân - Hà Nội', 2414, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000015', N'Lương Văn Duy', N'397067568', N'Trung Kính - Trung Hoà - Cầu Giấy - Hà Nội', 2015, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000016', N'Nguyễn Tuấn Giang', N'824842291', N'Nhổn - Hà Nội', 2004, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000017', N'Nguyễn Thị Kim Hằng', N'351641822', N'Phú Diễn - Nam Từ Liêm - Hà Nội', 2344, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000018', N'Vũ Hữu Hào', N'774203416', N'Cầu Diễn - Từ Liêm - Hà Nội', 2323, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000019', N'Phạm Trung Hiếu', N'798974467', N'Ba Đình - Hà Nội', 2348, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000020', N'Trần Ngọc Việt Hoàn', N'560947621', N'Lạc Long Quân - Tây Hồ - Hà Nội', 2191, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000021', N'Nguyễn Quốc Hùng', N'834720343', N'Âu Cơ - Tây Hồ - Hà Nội', 2282, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000022', N'Phạm Công Hùng', N'832241908', N'Trần Duy Hưng - Trung Hoà - Hà Nội', 2005, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000023', N'Phạm Văn Hùng', N'346581047', N'Hoàng Minh Giám - Hà Nội', 2162, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000024', N'Nguyễn Thế Hướng', N'824452834', N'Nguyễn Khang - Hà Nội', 2420, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000025', N'Nguyễn Sỹ Khánh', N'785068254', N'Trung Hoà - Cầu Giấy - Hà Nội', 2235, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000026', N'Vũ Duy Khánh', N'562301370', N'Láng - Láng Thượng - Hà Nội', 2023, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000027', N'Đỗ Đức Liêm', N'332158019', N'Hoài Đức - Hà Nội', 2321, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000028', N'Dương Thùy Linh', N'816129919', N'Thanh Xuân - Hà Nội', 2158, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000029', N'Vũ Khắc Đăng Linh', N'842586153', N'KĐT Linh Đàm - Hà Nội', 2155, N'Diamond', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000030', N'Nguyễn Xuân Lộc', N'813504690', N'Hai Bà Trưng - Hà Nội', 1526, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000031', N'Đinh Tiến Lộc', N'837485580', N'Phạm Văn Đồng - Hà Nội', 1838, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000032', N'Lò Duy Long', N'583029875', N'Đội Cấn - Ba Đình - Hà Nội', 1669, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000033', N'Nguyễn Minh Lượng', N'782488225', N'Hàm Nghi - Cầu Diễn - Nam Từ Liêm - Hà Nội', 1792, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000034', N'Lưu Đình Luyện', N'709836070', N'Lê Đức Thọ - Hà Nội', 1604, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000035', N'Nguyễn Nhật Minh', N'589169353', N'Trần Vĩ - Hà Nội', 1381, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000036', N'Nguyễn Hữu Nam', N'764525334', N'KĐT Golden park - Hà Nội', 1723, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000037', N'Bế Thành Nam', N'580125414', N'Trần Huy Liệu - Hà Nội', 1733, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000038', N'Nguyễn Minh Ngọc', N'815122491', N'Cù Chính Lan - Hà Nội', 1932, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000039', N'Khương Xuân Ninh', N'370034843', N'Trường Chinh - Hà Nội', 1726, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000040', N'Nguyễn An Phú', N'821525479', N'Chùa Láng - Hà Nội', 1830, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000041', N'Trần Đình Phúc', N'357969605', N'99 Nguyễn Chí Thanh - Đống Đa - Hà Nội', 1687, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000042', N'Vũ Thế Phương', N'848650605', N'Xã Đàn - Đống Đa - Hà Nội', 1214, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000043', N'Trần Minh Quân', N'361026530', N'Giải Phóng - Hà Nội', 1743, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000044', N'Nguyễn Đình Quý', N'831651969', N'Hà Nội', 1638, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000045', N'Lê Xuân Quỳnh', N'392781586', N'Hà Nội', 1493, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000046', N'Hoàng Văn Sang', N'378244174', N'Hà Nội', 1934, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000047', N'Lê Văn Sỹ', N'595913145', N'Hà Nội', 1461, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000048', N'Phùng Thị Mỹ Tâm', N'799923782', N'Hà Nội', 1865, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000049', N'Lê Đình Thái', N'377668524', N'Hà Nội', 1517, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000050', N'Đinh Quang Thắng', N'702132763', N'Đông Anh - Hà Nội', 1788, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000051', N'Vương Tiến Thành', N'375120000', N'Gia Lâm - Hà Nội', 1230, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000052', N'Phạm Hưng Thịnh', N'831941525', N'Long Biên - Hà Nội', 1733, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000053', N'Hà Văn Thời', N'789977331', N'Hoàn Kiếm - Hà Nội', 1440, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000054', N'Nguyễn Quang Thuần', N'337656022', N'Bờ Hồ - Hà Nội', 1495, N'Plantinum', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000055', N'Trần Xuân Tiến', N'397954548', N'Tràng Tiền - Hà Nội', 1162, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000056', N'Lê Thu Trang', N'830256571', N'Đinh Tiên Hoàng - Hà Nội', 1014, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000057', N'Doãn Thành Trung', N'373561772', N'Hoài Thanh - Hà Nội', 1042, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000058', N'Nguyễn Văn Trường', N'770735947', N'Trần Hữu Dực - Hà Nội', 882, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000059', N'Đỗ Gia Tuấn', N'380662330', N'Phạm Hùng - Hà Nội', 923, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000060', N'Đặng Đình Tùng', N'380362086', N'Phạm Hùng - Hà Nội', 857, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000061', N'Nhâm Văn Tùng', N'707423632', N'Phạm Hùng - Hà Nội', 797, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000062', N'Nguyễn Thị Ánh Tuyết', N'596199128', N'Phạm Hùng - Hà Nội', 827, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000063', N'Lỗ Nguyễn Thành Vinh', N'833947169', N'Mê Linh - Hà Nội', 726, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang], [MatKhau]) VALUES (N'000064', N'Nguyễn Văn Vũ', N'346639981', N'Sóc Sơn - Hà Nội', 579, N'Gold', N'12345678')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'101', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'102', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'103', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'104', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'105', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'106', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'107', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'108', N'0307')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0101')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0102')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0103')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0201')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0202')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0203')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0204')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0205')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0206')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0207')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0208')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0209')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0210')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0211')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0301')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0302')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0303')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0304')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0305')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0306')
GO
INSERT [dbo].[tbKhoVatTuCH] ([SoLuong], [MaCuaHang], [MaVatTu]) VALUES (100, N'109', N'0307')
GO
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'L', 20)
GO
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'M', 10)
GO
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'S', 0)
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'01', N'Công Ty TNHH Sữa Bột Hưng Yên
', N'Hưng Yên
', N'0382226394', N'hungyenmilkpow@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'02', N'Công Ty Cổ Phần VietFood
', N'Hải Dương
', N'0334756927', N'Vietfoodcompany@vietfood.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'03', N'Công Ty TNHH Bao Bì Sơn Nhất
', N'Nam Định
', N'0868224150', N'Sonnhat@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'04', N'Vật Tư Tiêu Hao Nam Giang
', N'Nguyễn Văn Giáp - Cầu Diễn - Hà Nội
', N'0971214173', N'namgiangvtth@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'05', N'Trà My Food And Drink
', N'Lê Quang Đạo - Mỹ Đình - Hà Nội
', N'0971343418', N'TraMyFood1250@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'06', N'Công Ty TNHH Tiêu Dùng Việt
', N'KCN Bắc Thăng Long - Đông Anh - Hà Nội
', N'0988105921', N'tieudungviet@tieudungviet.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'07', N'Công Ty TNHH Hải Hậu
', N'KCN Quang Minh - Mê Linh - Hà Nội
', N'0383356235', N'Haihau1907@haihaufood.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'08', N'Công Ty Cổ Phần Đông Phương
', N'KCN Bình Xuyên - Vĩnh Phúc
', N'0964273765', N'dongphuong@dongphuong.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'09', N'Cà Phê Sơn Nam
', N'Kon Tum
', N'0964480955', N'sonnamcoffee123@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'10', N'Tập Đoàn Chè Thái Nguyên
', N'Thái Nguyên
', N'0249352223', N'thainguyenteagroup@chethainguyen.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'11', N'Công Ty Cổ Phần Đóng Gói Và Phân Loại Chè
', N'Thái Nguyên
', N'0988315391', N'phanloaiche@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'12', N'Trà Nhài Nhất Dương
', N'Tuyên Quang
', N'0868739879', N'nhatduong888@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'13', N'Công Ty Cổ Phần Thực Phẩm Đài Loan Thọ Giang
', N'Bắc Ninh
', N'0383675347', N'taiwanSpecialfood@thucphamdailoan.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'14', N'Công Ty Cổ Phần Bảo Châu 
', N'Bắc Ninh
', N'0988695315', N'baochaubc@baochau.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'15', N'Đông Việt Food
', N'Thường Tín - Hà Nội
', N'0371733721', N'dongvietfood453@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'16', N'Công Ty Sản Xuất Hàng Tiêu Dùng Mỹ Thắng
', N'Quốc Oai - Hà Nội
', N'0964533033', N'mythang28@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'17', N'MISA
', N'Hà Nội
', N'0248880235', N'misa@misa.com.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'18', N'Việt Trung Group
', N'KCN Quang Minh - Mê Linh - Hà Nội
', N'0334716829', N'viettrung6969@viettrunggroup.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'19', N'Công Ty TNHH Đồ Thực Phẩm Long Châu
', N'Tuyên Quang
', N'0371409930', N'longchaufood99@longchaufood.vn
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'20', N'Thái Dương Văn
', N'Hải Dương
', N'0334346484', N'thaiduongvan3222@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'21', N'3G 
', N'Thanh Hoá
', N'0964565867', N'3gFood@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'22', N'Công Ty Cổ Phần Thuận Phát
', N'Ninh Bình
', N'0371387752', N'thuanphatcmp@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'23', N'Thảo Trang Décor
', N'Ninh Bình
', N'0334433964', N'ptthaotrang55@gmail.com
')
GO
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'24', N'Công Ty Cổ Phần Nhuận Phát
', N'Thái Bình
', N'0334591970', N'nhuanphattailoc@nhuanphat.com.vn
')
GO
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'CF', N'Cà phê')
GO
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'KH', N'Các loại đồ uống khác')
GO
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'NE', N'Nước ép/Sinh tố')
GO
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'TR', N'Trà')
GO
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'TS', N'Trà sữa')
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF01', N'Cà phê sữa đá', 39000.0000, N'ca-phe-sua-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Cà phê sữa đá pha theo phong cách Việt Nam gồm cà phê rang xay được pha phin hay pha sẵn với sữa đặc có đường. Món cà phê sữa này khi chế biến được người Sài Gòn và miền Nam Việt Nam dùng chung với nhiều đá vừa để thưởng thức và giải khát, do khí hậu nóng ẩm đặc trưng của miền Nam Việt Nam; món thức uống này sau dần được truyền bá và lan rộng trên cả nước.', 120, 4, 2, 15, 100, 12, 10, 8, N'Milk, Coffee', 104, 4.03846169)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF02', N'Cà phê sữa nóng', 39000.0000, N'ca-phe-sua-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', 110, 4, 2, 15, 100, 12, 10, 8, N'Milk, Coffee', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF03', N'Bạc xỉu đá', 29000.0000, N'bac-xiu-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Bạc xỉu là cách gọi tắt từ cụm từ “ bạc tẩy xỉu phé” xuất phát từ tiếng Quan Thoại (là tiếng Trung phổ biến trong công động người Hoa ở Sài Gòn) nhằm để chỉ món sữa nóng thêm một chút cafe. Trong tiếng Quan Thoại thì “Bạc” là màu trắng, “Tẩy” là cái ly không, “Xỉu” là một chút và “Phé” là cafe.', 110, 0, 0, 15, 100, 12, 8, 6, N'Milk, Coffee', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF04', N'Bạc xỉu nóng', 39000.0000, N'bac-xiu-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Bạc xỉu là cách gọi tắt từ cụm từ “ bạc tẩy xỉu phé” xuất phát từ tiếng Quan Thoại (là tiếng Trung phổ biến trong công động người Hoa ở Sài Gòn) nhằm để chỉ món sữa nóng thêm một chút cafe. Trong tiếng Quan Thoại thì “Bạc” là màu trắng, “Tẩy” là cái ly không, “Xỉu” là một chút và “Phé” là cafe.', 150, 2, 0, 10, 90, 8, 8, 6, N'Milk, Coffee', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF05', N'Cà phê đen', 29000.0000, N'ca-phe-den.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Cà phê đen có vị đắng không gắt, khi uống có hậu hơi ngọt, không đọng lại lâu vị đắng trong miệng tạo cho bạn cảm giác thanh ngọt dễ chịu.

Cà phê đen là một trong những loại thức uống quen thuộc của người Việt. Được làm từ cà phê nguyên chất 100%, cà phê đen mang hương vị đậm đà, mạnh mẽ, giúp bạn tỉnh táo và tái tạo năng lượng.', 130, 2, 0, 15, 50, 8, 8, 6, N'Coffee', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF06', N'Cà phê đen nóng', 39000.0000, N'ca-phe-den-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Cà phê đen có vị đắng không gắt, khi uống có hậu hơi ngọt, không đọng lại lâu vị đắng trong miệng tạo cho bạn cảm giác thanh ngọt dễ chịu.

Cà phê đen là một trong những loại thức uống quen thuộc của người Việt. Được làm từ cà phê nguyên chất 100%, cà phê đen mang hương vị đậm đà, mạnh mẽ, giúp bạn tỉnh táo và tái tạo năng lượng.', 110, 0, 0, 10, 90, 8, 12, 8, N'Coffee', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF07', N'Caramel Macchiato đá', 55000.0000, N'caramel-macchiato-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Khuấy đều trước khi sử dụng Caramel Macchiato sẽ mang đến một sự ngạc nhiên thú vị khi vị thơm béo của bọt sữa, sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng và vị ngọt đậm của sốt caramel được gói gọn trong một tách cà phê.

', 100, 4, 2, 15, 90, 8, 12, 10, N'Coffee, Caramel', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF08', N'Caramel Macchiato nóng', 55000.0000, N'caramel-macchiato-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Khuấy đều trước khi sử dụng Caramel Macchiato sẽ mang đến một sự ngạc nhiên thú vị khi vị thơm béo của bọt sữa, sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng và vị ngọt đậm của sốt caramel được gói gọn trong một tách cà phê.

', 90, 4, 2, 15, 100, 12, 8, 6, N'Coffee, Caramel', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF09', N'Latte đá', 55000.0000, N'latte-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 50, 3, 1, 15, 90, 8, 8, 6, N'Milk, Coffee Espresso ', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF10', N'Latte nóng', 55000.0000, N'latte-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 50, 3, 1, 10, 90, 8, 8, 6, N'Milk, Coffee Espresso ', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF11', N'Americano đá', 45000.0000, N'americano-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.', 110, 5, 3, 15, 70, 8, 10, 8, N'Coffee Espresso', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF12', N'Americano nóng', 45000.0000, N'americano-nong.jpeg', N'Không khả dụng', N'CF', N'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.', 120, 5, 3, 15, 90, 12, 10, 8, N'Coffee Espresso', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF13', N'Capucchino đá', 55000.0000, N'capucchino-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Capuchino là thức uống hòa quyện giữa hương thơm của sữa, vị béo của bọt kem cùng vị đậm đà từ cà phê Espresso. Tất cả tạo nên một hương vị đặc biệt, một chút nhẹ nhàng, trầm lắng và tinh tế.

', 70, 3, 2, 15, 70, 10, 10, 8, N'Milk, Coffee, Frappe Base', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF14', N'Capucchino nóng', 55000.0000, N'capucchino-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'CF', N'Capuchino là thức uống hòa quyện giữa hương thơm của sữa, vị béo của bọt kem cùng vị đậm đà từ cà phê Espresso. Tất cả tạo nên một hương vị đặc biệt, một chút nhẹ nhàng, trầm lắng và tinh tế.

', 85, 2, 1, 15, 90, 10, 10, 8, N'Milk, Coffee, Frappe Base', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF15', N'Espresso đá', 49000.0000, N'espresso-da.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Một tách Espresso nguyên bản được bắt đầu bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ cân đối hạt Robusta, cho ra vị ngọt caramel, vị chua dịu và sánh đặc.', 70, 1, 0, 15, 90, 8, 10, 8, N'Coffee Arabica, Coffee Robusta', 100, 4)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF16', N'Espresso nóng', 45000.0000, N'espresso-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Một tách Espresso nguyên bản được bắt đầu bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ cân đối hạt Robusta, cho ra vị ngọt caramel, vị chua dịu và sánh đặc.', 85, 2, 0, 15, 100, 8, 10, 8, N'Coffee Arabica, Coffee Robusta', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF17', N'Cold Brew truyền thống', 45000.0000, N'cold-brew-truyen-thong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Tại The Space Coffee, Cold Brew được ủ và phục vụ mỗi ngày từ 100% hạt Arabica Cầu Đất với hương gỗ thông, hạt dẻ, nốt sô-cô-la đặc trưng, thoang thoảng hương khói nhẹ giúp Cold Brew giữ nguyên vị tươi mới.', 90, 3, 1, 15, 100, 8, 10, 8, N'Coffee Arabica', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'CF18', N'Cold Brew sữa tươi', 49000.0000, N'cold-brew-sua-tuoi.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'CF', N'Tại The Space Coffee, Cold Brew được ủ và phục vụ mỗi ngày từ 100% hạt Arabica Cầu Đất với hương gỗ thông, hạt dẻ, nốt sô-cô-la đặc trưng, thoang thoảng hương khói nhẹ giúp Cold Brew giữ nguyên vị tươi mới.', 110, 4, 2, 15, 100, 8, 10, 8, N'Coffee Arabica', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'KH01', N'Cacao nóng', 30000.0000, N'cacao-nong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'KH', N'Bột chocolate nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.

', 160, 5, 2, 15, 100, 8, 10, 8, N'Cacao', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'KH02', N'Sữa chua mận', 28000.0000, N'sua-chua-man.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'KH', N'Kem mận sữa chua với vị chua chua ngọt ngọt vừa cải thiện các lợi khuẩn đường ruột lại không gây ngán.', 60, 2, 1, 0, 100, 6, 12, 8, N'Yogurt, Plum', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'KH03', N'Sữa chua dâu', 28000.0000, N'sua-chua-dau.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'KH', N'Sữa chua vị Dâu tây được làm từ sữa tươi nguyên chất của Thụy Sĩ với 5% là trái Dâu tây tươi, hàm lượng chất béo thấp (chỉ chiếm 1.6%). Sữa chua dâu được bổ sung Collagen và vitamin C giúp làn da săn chắc, mịn màng hơn.', 60, 2, 0, 0, 100, 6, 10, 8, N'Yogurt, Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE01', N'Nước táo ép', 45000.0000, N'nuoc-tao-ep.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Được làm từ táo tươi, Nước Ép Táo có vị chua ngọt hài hòa; cung cấp nước và các vitamin thiết yếu cho cơ thể, giúp tăng cường miễn dịch và mang lại làn da hoàn hảo. Hương táo nhẹ nhàng mang lại cảm giác thanh mát và tươi mới giữa những ngày hè nắng nóng.', 30, 0, 0, 0, 50, 6, 12, 8, N'Apple', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE02', N'Nước dâu ép', 45000.0000, N'nuoc-dau-ep.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Được làm từ dâu  tươi Đà Lạt, Nước Ép Dâu Tây có vị chua ngọt hài hòa; cung cấp nước và các vitamin thiết yếu cho cơ thể, giúp tăng cường miễn dịch và mang lại làn da hoàn hảo. Hương dâu  nhẹ nhàng mang lại cảm giác thanh mát và tươi mới giữa những ngày hè nắng nóng.', 30, 0, 0, 0, 50, 6, 12, 8, N'Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE03', N'Nước cam ép', 45000.0000, N'nuoc-cam-ep.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Nước cam chứa hàm lượng Vitamin C rất cao có thể hỗ trợ kích thích sản xuất các tế bào trắng, từ đó tăng cường hệ thống miễn dịch.', 30, 0, 0, 0, 50, 6, 12, 8, N'Orange', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE04', N'Sinh tố chanh', 50000.0000, N'sinh-to-chanh.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Sinh tố chanh có vị chua chua, ngọt ngọt nhẹ nhàng, không bị ngán như những loại sinh tố khác. Nếu bạn không thích ăn đồ ngọt thì đây là thức uống giải nhiệt tuyệt vời dành cho bạn.', 45, 2, 0, 0, 50, 6, 12, 8, N'Yogurt, Lemon', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE05', N'Sinh tố dâu', 55000.0000, N'sinh-to-dau.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Sinh tố dâu có vị chua chua, ngọt ngọt nhẹ nhàng, không bị ngán như những loại sinh tố khác. Nếu bạn không thích ăn đồ ngọt thì đây là thức uống giải nhiệt tuyệt vời dành cho bạn.', 45, 2, 0, 10, 50, 12, 10, 8, N'Yogurt, Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'NE06', N'Sinh tố xoài', 55000.0000, N'sinh-to-xoai.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'NE', N'Sinh tố xoài có vị chua chua, ngọt ngọt nhẹ nhàng, không bị ngán như những loại sinh tố khác. Nếu bạn không thích ăn đồ ngọt thì đây là thức uống giải nhiệt tuyệt vời dành cho bạn.', 45, 2, 0, 10, 100, 12, 10, 10, N'Yogurt, Mango', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR01', N'Trà nhãn', 50000.0000, N'tra-nhan.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Trà nhãn sẽ mang lại cho bạn những phút giây thư giãn và tận hưởng cuộc sống, giúp nhiều người vẫn tìm được cho mình một khoảng lặng yên bình của tâm hồn đằng sau mỗi li trà của xứ sở sương mù.', 65, 0, 0, 10, 100, 12, 10, 12, N'Tea, Longan', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR02', N'Trà vải', 50000.0000, N'tra-vai.jpeg', N'Không khả dụng', N'TR', N'Trà vải sẽ mang lại cho bạn những phút giây thư giãn và tận hưởng cuộc sống, giúp nhiều người vẫn tìm được cho mình một khoảng lặng yên bình của tâm hồn đằng sau mỗi li trà của xứ sở sương mù.', 65, 0, 0, 0, 50, 10, 10, 9, N'Tea, Lychee', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR03', N'Trà lài', 50000.0000, N'tra-lai.jpg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Trà lài sẽ mang lại cho bạn những phút giây thư giãn và tận hưởng cuộc sống, giúp nhiều người vẫn tìm được cho mình một khoảng lặng yên bình của tâm hồn đằng sau mỗi li trà của xứ sở sương mù.', 65, 0, 0, 0, 50, 12, 10, 8, N'Tea, Jasmine', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR04', N'Hồng trà', 70000.0000, N'hong-tra.png', N'Không khả dụng', N'TR', N'Hồng trà hay còn gọi là trà đen, trà đỏ, có tên tiếng Anh là Black tea; được tạo nên từ quá trình lên men toàn phần, oxy hóa 100% những búp trà xanh non của cây trà đen để chúng chuyển hóa từ màu xanh lục sang màu sậm hơn (màu đen), cho vị thơm đậm, đắng chát, dùng uống (trực tiếp hoặc qua pha chế), mang lại nhiều công dụng tốt cho sức khỏe.', 70, 2, 0, 0, 50, 12, 10, 8, N'Black Tea', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR05', N'Trà đào', 50000.0000, N'tra-dao.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Trà đào là một thức uống mang hương vị ngọt ngào, tươi mới, là sự kết hợp của những lát đào chua chua ngọt ngọt cùng hương đậm đà của trà.', 70, 2, 0, 0, 20, 12, 10, 8, N'Tea, Peach', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR06', N'Hồng trà chanh', 40000.0000, N'hong-tra-chanh.jpeg', N'Không khả dụng', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 30, 2, 0, 0, 20, 8, 10, 8, N'Black Tea, Lemon', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR07', N'Trà hoa hồng', 50000.0000, N'tra-hoa-hong.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 30, 2, 0, 10, 20, 8, 10, 8, N'Rose Tea', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR08', N'Trà đào sữa', 40000.0000, N'tra-dao-sua.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 85, 2, 0, 10, 20, 8, 10, 8, N'Tea, Peach, Milk', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR09', N'Trà chanh', 25000.0000, N'tra-chanh.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 30, 2, 0, 10, 20, 8, 10, 8, N'Lemon Tea', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR10', N'Trà đào dâu tây', 28000.0000, N'tra-dao-dau-tay.jpeg', N'Không khả dụng', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 50, 2, 0, 10, 20, 8, 10, 8, N'Tea, Peach, Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR11', N'Trà đào bưởi', 28000.0000, N'tra-dao-buoi.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 50, 2, 0, 10, 20, 12, 10, 8, N'Tea, Peach, Pomelo', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR12', N'Trà xoài', 28000.0000, N'tra-xoai.jpeg', N'Không khả dụng', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 30, 2, 0, 10, 20, 12, 10, 8, N'Mango Tea', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR13', N'Trà mận hạt sen', 28000.0000, N'tra-man-hat-sen.jpg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha chế của bạn thử thêm một lần nữa.', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 65, 2, 0, 10, 20, 8, 10, 8, N'Plum Tea, Lotus seeds', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR14', N'Hồng trà bưởi mật ong', 28000.0000, N'hong-tra-buoi-mat-ong.jpeg', N'Không khả dụng', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 70, 2, 0, 0, 30, 8, 10, 8, N'Black Tea, ,Pomelo', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR15', N'Trà dứa', 28000.0000, N'tra-dua.jpeg', N'Không khả dụng', N'TR', N'Thức uống với vị trà đậm đà nồng nàn, hòa quyện với vị chanh chua chua tươi mát, thêm một chút vị ngọt thanh nhẹ, mang đến một đồ uống giải nhiệt tức thì.', 30, 2, 0, 0, 30, 8, 10, 8, N'Pineapple Tea', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR16', N'Trà Ô Long dâu', 50000.0000, N'tra-o-long-dau.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TR', N'Trà oolong có chứa nhiều chất khoáng, vitamin, chất chống lão hóa, còn dâu tây là nguồn vitamin C tuyệt vời. Nếu kết hợp trà oolong và dâu ta có được một ly trà oolong dâu giàu dinh dưỡng, lại thanh mát, có tác dụng giải nhiệt cho những ngày hè bực nội.', 80, 2, 0, 0, 30, 6, 10, 8, N'Oolong Tea, Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR17', N'Trà Ô Long sữa', 45000.0000, N'tra-o-long-sua.jpeg', N'Không khả dụng', N'TR', N'Trà oolong có chứa nhiều chất khoáng, vitamin, chất chống lão hóa, còn dâu tây là nguồn vitamin C tuyệt vời. Nếu kết hợp trà oolong và dâu ta có được một ly trà oolong dâu giàu dinh dưỡng, lại thanh mát, có tác dụng giải nhiệt cho những ngày hè bực nội.', 110, 3, 0, 0, 30, 6, 10, 8, N'Oolong Tea, Milk', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR18', N'Trà Ô Long mãng cầu', 54000.0000, N'tra-o-long-mang-cau.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TR', N'Trà oolong có chứa nhiều chất khoáng, vitamin, chất chống lão hóa, còn dâu tây là nguồn vitamin C tuyệt vời. Nếu kết hợp trà oolong và dâu ta có được một ly trà oolong dâu giàu dinh dưỡng, lại thanh mát, có tác dụng giải nhiệt cho những ngày hè bực nội.', 110, 3, 1, 10, 30, 6, 10, 8, N'Oolong Tea, Annona', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR19', N'Trà Ô Long trân châu', 49000.0000, N'tra-o-long-tran-chau.jpeg', N'Không khả dụng', N'TR', N'Trà oolong có chứa nhiều chất khoáng, vitamin, chất chống lão hóa, còn dâu tây là nguồn vitamin C tuyệt vời. Nếu kết hợp trà oolong và dâu ta có được một ly trà oolong dâu giàu dinh dưỡng, lại thanh mát, có tác dụng giải nhiệt cho những ngày hè bực nội.', 110, 3, 0, 10, 30, 6, 10, 8, N'Oolong Tea, Sugar Pearls', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR20', N'Matcha', 45000.0000, N'matcha.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TR', N'Matcha có tác dụng tốt với thể chất và tinh thần, kích thích làm tỉnh táo và giảm căng thẳng. Với những công dụng diệu kỳ cho sức khỏe, các món ăn hay thức uống được làm từ trà xanh hiện đang nhận được rất nhiều sự quan tâm.', 60, 3, 1, 10, 50, 6, 10, 8, N'Matcha', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TR21', N'Matcha đậu đỏ', 49000.0000, N'matcha-dau-do.jpg', N'Không khả dụng', N'TR', N'Matcha có tác dụng tốt với thể chất và tinh thần, kích thích làm tỉnh táo và giảm căng thẳng. Với những công dụng diệu kỳ cho sức khỏe, các món ăn hay thức uống được làm từ trà xanh hiện đang nhận được rất nhiều sự quan tâm.', 110, 2, 0, 10, 50, 6, 10, 8, N'Matcha', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS01', N'Trà sữa', 20000.0000, N'tra-sua.jpeg', N'Không khả dụng', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 120, 3, 0, 0, 50, 6, 10, 8, N'Tea Milk', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS02', N'Trà sữa phô mai tươi', 28000.0000, N'tra-sua-pho-mai-tuoi.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 100, 3, 0, 0, 50, 10, 10, 8, N'Tea Milk, Cheese', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS03', N'Trà sữa matcha', 40000.0000, N'tra-sua-matcha.jpeg', N'Không khả dụng', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 100, 3, 1, 15, 50, 10, 10, 8, N'Tea Milk, Matcha', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS04', N'Trà sữa Ô Long', 22000.0000, N'tra-sua-o-long.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 110, 3, 1, 15, 50, 10, 12, 8, N'Tea Milk, Oolong', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS05', N'Trà sữa Sô cô la', 22000.0000, N'tra-sua-so-co-la.jpeg', N'Không khả dụng', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 120, 3, 0, 15, 50, 10, 12, 8, N'Tea Milk, Chocolate', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS06', N'Trà sữa bạc hà', 22000.0000, N'tra-sua-bac-ha.jpeg', N'Để tăng thêm hiệu quả, hãy yêu cầu nhân viên pha cà phê của bạn thử thêm một lần nữa (85 mg caffein mỗi lần).', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 110, 3, 2, 15, 50, 10, 12, 8, N'Tea Milk, Mint', NULL, NULL)
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [HinhAnh], [GhiChu], [MaNhomSP], [Mota], [Calories], [TotalFat], [SaturatedFat], [Cholesterol], [Sodium], [TotalCarbohydrates], [Sugars], [Protein], [Ingredients], [Vote], [Star]) VALUES (N'TS07', N'Trà sữa dâu tây', 22000.0000, N'tra-sua-dau-tay.jpeg', N'Không khả dụng', N'TS', N'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', 110, 3, 2, 15, 50, 10, 12, 8, N'Tea Milk, Strawberry', NULL, NULL)
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'01', N'Kem phô mai Macchiato', 10000, N'kem-pho-mai-macchiato.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'02', N'Trân châu trắng', 10000, N'tran-chau-trang.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'03', N'Sốt Caramel', 10000, N'sot-caramel.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'04', N'Thạch cà phê', 10000, N'thach-ca-phe.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'05', N'Sữa tươi', 10000, N'sua-tuoi')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'06', N'Coffee Jelly', 15000, N'thach-ca-phe.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'07', N'Whipped cream', 15000, N'whipped-cream.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'08', N'Bánh Flan', 20000, N'banh-flan.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'09', N'Đào', 15000, N'dao.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'10', N'Vải', 15000, N'vai.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'11', N'Nhãn', 15000, N'nhan.webp')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'12', N'Trân châu đen', 10000, N'tran-chau-den.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'13', N'Đậu đỏ', 15000, N'dau-do.jpg')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'14', N'Pudding trứng', 20000, N'pudding-trung.webp')
GO
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'15', N'Nha đam', 15000, N'nha-dam.jpg')
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0101', N'Cốc', N'Chiếc', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0102', N'Thìa', N'Chiếc', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0103', N'Túi ni lông', N'Cái', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0201', N'Cà phê bột', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0202', N'Đường', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0203', N'Sữa đặc', N'Lít', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0204', N'Sữa tươi', N'Lít', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0205', N'Sữa chua', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0206', N'Sữa bột', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0207', N'Bột trà sữa', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0208', N'Trà Ô Long', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0209', N'Trà đen', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0210', N'Sô cô la', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0211', N'Kem', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0301', N'Chanh', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0302', N'Đào', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0303', N'Bưởi', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0304', N'Nhãn', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0305', N'Táo', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0306', N'Dâu tây', N'Kg', NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0307', N'Mận', N'Kg', NULL)
GO
ALTER TABLE [dbo].[tbSanPham] ADD  DEFAULT ((100)) FOR [Vote]
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHoaDonBan])
REFERENCES [dbo].[tbHoaDonBan] ([MaHoaDonBan])
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaKichThuoc])
REFERENCES [dbo].[tbKichThuoc] ([MaKichThuoc])
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tbSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHoaDonNhap])
REFERENCES [dbo].[tbHoaDonNhap] ([MaHoaDonNhap])
GO
ALTER TABLE [dbo].[tbChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaVatTu])
REFERENCES [dbo].[tbVatTu] ([MaVatTu])
GO
ALTER TABLE [dbo].[tbChiTietToppingHDB]  WITH CHECK ADD FOREIGN KEY([MaTopping])
REFERENCES [dbo].[tbTopping] ([MaTopping])
GO
ALTER TABLE [dbo].[tbChiTietToppingHDB]  WITH CHECK ADD FOREIGN KEY([MaHoaDonBan], [MaSanPham])
REFERENCES [dbo].[tbChiTietHDB] ([MaHoaDonBan], [MaSanPham])
GO
ALTER TABLE [dbo].[tbCuaHangBanSP]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbCuaHangBanSP]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tbSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbCuaHangTinTuc]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbCuaHangTinTuc]  WITH CHECK ADD FOREIGN KEY([MaTinTuc])
REFERENCES [dbo].[tbTinTuc] ([MaTinTuc])
GO
ALTER TABLE [dbo].[tbHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tbKhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[tbNhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[tbKhoVatTuCH]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbKhoVatTuCH]  WITH CHECK ADD FOREIGN KEY([MaVatTu])
REFERENCES [dbo].[tbVatTu] ([MaVatTu])
GO
ALTER TABLE [dbo].[tbSanPham]  WITH CHECK ADD FOREIGN KEY([MaNhomSP])
REFERENCES [dbo].[tbNhomSanPham] ([MaNhomSP])
GO
USE [master]
GO
ALTER DATABASE [DataTheSpaceCoffee] SET  READ_WRITE 
GO
