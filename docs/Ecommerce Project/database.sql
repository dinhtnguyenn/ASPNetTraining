USE [master]
GO
/****** Object:  Database [QLQuanAo]    Script Date: 16/7/2022 9:14:12 PM ******/
CREATE DATABASE [QLQuanAo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLQuanAo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLQuanAo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLQuanAo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLQuanAo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLQuanAo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLQuanAo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLQuanAo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLQuanAo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLQuanAo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLQuanAo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLQuanAo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLQuanAo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLQuanAo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLQuanAo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLQuanAo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLQuanAo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLQuanAo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLQuanAo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLQuanAo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLQuanAo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLQuanAo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLQuanAo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLQuanAo] SET  MULTI_USER 
GO
ALTER DATABASE [QLQuanAo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLQuanAo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLQuanAo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLQuanAo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLQuanAo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLQuanAo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLQuanAo] SET QUERY_STORE = OFF
GO
USE [QLQuanAo]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaDonDatHang] [int] NOT NULL,
	[MaSanPham] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang_1] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1000,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[NgayDatHang] [date] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [varchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MaLoaiCha] [varchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanSanXuat]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSanXuat](
	[MaNhaSanXuat] [varchar](50) NOT NULL,
	[TenNhaSanXuat] [nvarchar](100) NULL,
	[QuocGia] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhanSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[MaNhaSanXuat] [varchar](50) NULL,
	[MaLoai] [varchar](50) NULL,
	[Thongtin] [nvarchar](200) NULL,
	[GiaBan] [float] NULL,
	[Hinh1] [varchar](100) NULL,
	[Hinh2] [varchar](100) NULL,
	[Hinh3] [varchar](100) NULL,
	[Hinh4] [varchar](100) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 16/7/2022 9:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[MaTinhTrang] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrang] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1000, N'SPG01', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1000, N'SPW57', 12)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1000, N'SPW58', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1000, N'SPW60', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1001, N'SPW58', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1001, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1002, N'SPM02', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1002, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1003, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1004, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1005, N'SPW56', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1005, N'SPW58', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1007, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1008, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1010, N'SPG04', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1011, N'SPW59', 1)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1012, N'SPW56', 2)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1012, N'SPW60', 2)
INSERT [dbo].[ChiTietDonDatHang] ([MaDonDatHang], [MaSanPham], [SoLuong]) VALUES (1013, N'SPW06', 1)
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1000, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-14' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1001, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-14' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1002, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-16' AS Date), 4)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1003, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-16' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1004, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-16' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1005, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-17' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1007, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-17' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1008, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-17' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1009, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-17' AS Date), 1)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1010, N'e1578959-48d0-4714-bc52-e131e614581c', CAST(N'2017-10-17' AS Date), 4)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1011, N'62faa0f5-bc06-4936-ac76-c4de6b97e464', CAST(N'2017-10-17' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1012, N'aad1d2ca-4835-4b13-b073-78b340921c76', CAST(N'2020-12-12' AS Date), 3)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [MaTaiKhoan], [NgayDatHang], [TinhTrang]) VALUES (1013, N'aad1d2ca-4835-4b13-b073-78b340921c76', CAST(N'2020-12-12' AS Date), 4)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L01', N'Nữ', N'L00')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L02', N'Nam', N'L00')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L03', N'Giày', N'L00')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L04', N'Phụ kiện', N'L00')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L05', N'Áo khoác nữ', N'L01')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L06', N'Áo thun kiểu', N'L01')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L07', N'Chân váy', N'L01')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L08', N'Đầm nữ', N'L01')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L09', N'Quần nữ ', N'L01')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L10', N'Áo khoác nam', N'L02')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L11', N'Áo thun nam', N'L02')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L12', N'Áo sơ mi', N'L02')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L13', N'Quần nam', N'L02')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L14', N'Giày nữ', N'L03')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L15', N'Giày nam', N'L03')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L16', N'Kính mát nữ ', N'L04')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L17', N'Cà vạt và nơ', N'L04')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L18', N'Khăn quàng nam', N'L04')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L19', N'Túi xách', N'L04')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L20', N'Khăn quàng nữ', N'L04')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MaLoaiCha]) VALUES (N'L21', N'Khác', N'L02')
GO
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX01', N'DOLCE & GABBANA', N'Trung Quốc')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX02', N'ARMANI', N'Spain')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX03', N'VERSACE', N'Turkey ')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX04', N'GUCCI', N'India')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX05', N'BURBERRY', N'Morocco')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX06', N'HERMÈS', N'Romania')
INSERT [dbo].[NhanSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [QuocGia]) VALUES (N'NSX07', N'PAMLE', N'Viet Nam')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG01', N'BỐT DA GÓT THẤP', N'NSX02', N'L10', N'<p>Bốt da cổ ngắn màu đen. Buộc d&acirc;y vải in chữ. Mũi gi&agrave;y tr&ograve;n. Đ&ecirc;́ c&oacute; r&atilde;nh răng cưa. Gót cao 3 cm.</p>', 2699000, N'SPG01_1.jpg', N'SPG01_2.jpg', N'SPG01_3.jpg', N'SPG01_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG02', N'BỐT DA CAO GÓT', N'NSX01', N'L10', N'Bốt da cổ ngắn màu đen. Đính ngọc trai ở lỗ xỏ dây. Cài khóa kéo bên thân. Quai xỏ giày phía sau. Gót vuông. 

Gót cao 7 cm.', 2999000, N'SPG02_1.jpg', N'SPG02_2.jpg', N'SPG02_3.jpg', N'SPG02_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG03', N'BỐT GÓT THẤP ', N'NSX02', N'L14', N'Bốt cỡ XL cao gót màu đen phối nhiều chất liệu. Ống co giãn. Cài bằng khóa kéo bên hông.

Gót cao 3,3 cm.', 1599000, N'SPG03_1.jpg', N'SPG03_2.jpg', N'SPG03_3.jpg', N'SPG03_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG04', N'BỐT CAO GÓT', N'NSX03', N'L14', N'Bốt cao gót cổ ngắn màu đen. Gót hình trụ. Ống co giãn.

Gót cao 7,5 cm.', 1599000, N'SPG04_1.jpg', N'SPG04_2.jpg', N'SPG04_3.jpg', N'SPG04_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG05', N'BỐT ĐẾ BẰNG', N'NSX04', N'L14', N'Bốt đế bằng màu đen. Họa tiết đường chỉ may. Ống co giãn. Khóa kéo phía bên trong. Mũi tròn.

Gót cao 1,0 cm.', 1599000, N'SPG05_1.jpg', N'SPG05_2.jpg', N'SPG05_3.jpg', N'SPG05_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG06', N'GIÀY DA CAO GÓT', N'NSX05', N'L14', N'Giày da cao gót màu trắng. Đính bèo nhún một bên thân giày. Gót vuông. Mũi nhọn.

Gót cao 6,5 cm.', 1999000, N'SPG06_1.jpg', N'SPG06_2.jpg', N'SPG06_3.jpg', N'SPG06_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG07', N'GIÀY CAO ĐÍNH ĐÁ', N'NSX06', N'L14', N'Giày da cao gót màu đen. Chi tiết quai đeo đính hạt cườm ở cổ chân có thể tháo rời và thay thế được. Mũi giày hơi ngước. Mũi nhọn.

Gót cao 10,0 cm.', 2699000, N'SPG07_1.jpg', N'SPG07_2.jpg', N'SPG07_3.jpg', N'SPG07_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG08', N'GIÀY CAO VẢI REN', N'NSX01', N'L14', N'Giày gót cao vừa bằng vải ren màu xanh. Miệng giày xẻ chữ V. Mũi nhọn.

Gót cao 7,0 cm.', 1599000, N'SPG08_1.jpg', N'SPG08_2.jpg', N'SPG08_3.jpg', N'SPG08_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG09', N'BỐT CAO GÓT', N'NSX02', N'L14', N'Bốt cao gót màu nâu. Thân bốt bằng vải dạ. Mũi vuông. 

Gót cao 9,5 cm.', 1999000, N'SPG09_1.jpg', N'SPG09_2.jpg', N'SPG09_3.jpg', N'SPG09_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG10', N'BỐT DA LỘN', N'NSX03', N'L14', N'Bốt cổ ngắn, gót thấp, chất liệu da lộn màu đen. Cố định bằng dây buộc phía sau. Dải trang trí kết hợp quai hỗ trợ xỏ giày phía trước. Khóa kéo bên hông. Mũi dài.

Gót cao 3,0 cm.', 1999000, N'SPG10_1.jpg', N'SPG10_2.jpg', N'SPG10_3.jpg', N'SPG10_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG11', N'BỐT DA CAO GÓT', N'NSX04', N'L14', N'Bốt da cổ ngắn màu đen. Dập đinh tán mini ở chính giữa phía trước thân bốt. Cài bằng khóa kéo có đầu khóa kèm quai nắm phía sau. 

Gót cao 7,5 cm.', 2299000, N'SPG11_1.jpg', N'SPG11_2.jpg', N'SPG11_3.jpg', N'SPG11_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG12', N'BỐT DA CAO GÓT', N'NSX05', N'L14', N'Bốt da cổ ngắn, gót nhọn thấp, màu xanh dương ánh kim. Thân bốt bằng da kiểu nứt rạn. Khóa kéo bên hông. Mũi nhọn.

Gót cao 6,0 cm.', 2299000, N'SPG12_1.jpg', N'SPG12_2.jpg', N'SPG12_3.jpg', N'SPG12_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG13', N'GIÀY SỤC DA', N'NSX06', N'L15', N'Giày sục da. Màu đỏ bordeaux. Mu giày đính quả tua rua, thân giày bằng da dập vân nổi.', 2299000, N'SPG13_1.jpg', N'SPG13_2.jpg', N'SPG13_3.jpg', N'SPG13_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG14', N'GIÀY DA MÀU XANH', N'NSX01', N'L15', N'Giày blucher bằng da bóng nhẹ. Màu xanh biển đậm. Có 4 lỗ xỏ dây. Đế có rãnh răng cưa.', 2499000, N'SPG14_1.jpg', N'SPG14_2.jpg', N'SPG14_3.jpg', N'SPG14_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG15', N'GIÀY DA BÓNG', N'NSX02', N'L15', N'Giày da bóng kiểu Anh. Màu đen. Có 6 lỗ xỏ giày. Mũi nhọn.', 1999000, N'SPG15_1.jpg', N'SPG15_2.jpg', N'SPG15_3.jpg', N'SPG15_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG16', N'BỐT DA ĐẾ XUỒNG', N'NSX03', N'L15', N'Bốt cổ ngắn bằng da lộn buộc dây. Màu be đậm. Có 3 lỗ xỏ giày. May kiểu chần bông hai bên. Có quai xỏ giầy ở phía sau. Đế dày, màu nâu caramel.', 1999000, N'SPG16_1.jpg', N'SPG16_2.jpg', N'SPG16_3.jpg', N'SPG16_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG17', N'BỐT DA MÀU BE', N'NSX04', N'L15', N'Bốt da có dây. Màu be đậm. Phối nhiều chất liệu. Có 10 lỗ xỏ dây giày. Có đường may ở viền. Đế có rãnh răng cưa.', 2199000, N'SPG17_1.jpg', N'SPG17_2.jpg', N'SPG17_3.jpg', N'SPG17_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG18', N'BỐT DA MÀU ĐEN', N'NSX05', N'L15', N'Bốt da có dây. Màu đen. Có 7 lỗ xỏ dây giầy. Cài bằng khóa kéo bên hông. Có quai xỏ giầy ở phía sau. Khuôn giày tròn. Đế có rãnh răng cưa.', 2999000, N'SPG18_1.jpg', N'SPG18_2.jpg', N'SPG18_3.jpg', N'SPG18_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG19', N'GIÀY THỂ THAO', N'NSX06', N'L15', N'Giày thể thao đế mềm. Màu trắng. Thiết kế kiểu đục lỗ nhỏ. Có 7 lỗ xỏ dây giày. Phối chi tiết màu đen sau gót.', 699000, N'SPG19_1.jpg', N'SPG19_2.jpg', N'SPG19_3.jpg', N'SPG19_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG20', N'BỐT DA CỔ NGẮN', N'NSX01', N'L15', N'Bốt cổ ngắn bằng da. Dáng Chelsea, có hai đai co giãn hai bên thân để dễ mang giày. Có quai nắm trang trí phía sau.', 2999000, N'SPG20_1.jpg', N'SPG20_2.jpg', N'SPG20_3.jpg', N'SPG20_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG21', N'BỐT BUỘC DÂY', N'NSX02', N'L15', N'Bốt buộc dây. Có 4 lỗ xỏ dây và 3 móc kim loại, bề mặt thân giày bằng da lì. Có đường may ở viền.', 1999000, N'SPG21_1.jpg', N'SPG21_2.jpg', N'SPG21_3.jpg', N'SPG21_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG22', N'GIÀY DA ĐỤC LỖ', N'NSX03', N'L15', N'Giày da. Có dây buộc với 5 hàng lỗ xỏ dây. Họa tiết dập lỗ tạo các đường hoa văn.', 2499000, N'SPG22_1.jpg', N'SPG22_2.jpg', N'SPG22_3.jpg', N'SPG22_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG23', N'GIÀY DA MÀU NÂU', N'NSX04', N'L15', N'Giày da bóng. Màu nâu. Đính dải tua rua màu đen ở mu giày, thân giày có chi tiết đục lỗ. Khóa cài bằng kim loại.', 2499000, N'SPG23_1.jpg', N'SPG23_2.jpg', N'SPG23_3.jpg', N'SPG23_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG24', N'BỐT DA MÀU ĐEN', N'NSX05', N'L15', N'Bốt bằng da dập vân nổi. Màu đen. Chi tiết khuy giả họa tiết cổ ở mu giày để cố định và buộc dây giày. Đục lỗ trang trí ở thân giày, dập đinh tán kim loại ở mũi giày và hai bên thân', 3999000, N'SPG24_1.jpg', N'SPG24_2.jpg', N'SPG24_3.jpg', N'SPG24_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPG25', N'Giày Bost', N'NSX02', N'L15', N'Giày test', 1900000, N'6150710040_1_1_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM01', N'ÁO KHOÁC CÓ ĐÁP', N'NSX06', N'L10', N'Áo khoác giả da có miếng đáp trang trí và dập đinh tán sau lưng. Cài bằng khóa kéo. Cổ ve lật cài khuy bấm, dập đinh tán trang trí. CỠ L', 3999000, N'SPM01_1.jpg', N'SPM01_2.jpg', N'SPM01_3.jpg', N'SPM01_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM02', N'ÁO KHOÁC BLAZER', N'NSX01', N'L10', N'Áo khoác blazer theo bộ vest, in họa tiết hình chim phượng hoàng. Ve áo nhọn khác màu. Cài khuy bọc vải. Có túi ngực. Túi hai bên. . CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 50 CHÂU ÂU', 3999000, N'SPM02_1.jpg', N'SPM02_2.jpg', N'SPM02_3.jpg', N'SPM02_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM03', N'ÁO KHOÁC DENIM', N'NSX02', N'L10', N'Áo khoác chất liệu denim cơ bản. Khuy cài. Túi ngực có nắp và khuy cài. Túi xéo. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM03_1.jpg', N'SPM03_2.jpg', N'SPM03_3.jpg', N'SPM03_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM04', N'ÁO POLO RẰN RI', N'NSX03', N'L10', N'Áo polo giữ nhiệt có khóa kéo. Cộc tay. Bo cổ và bo tay bằng vải gân nổi khác màu. Xẻ tà nhỏ 2 bên. 
CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 799000, N'SPM04_1.jpg', N'SPM04_2.jpg', N'SPM04_3.jpg', N'SPM04_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM05', N'ÁO NỈ THÊU HỌA TIẾT', N'NSX04', N'L10', N'Áo nỉ thêu họa tiết hình huy hiệu. Cổ tròn, dài tay.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1599000, N'SPM05_1.jpg', N'SPM05_2.jpg', N'SPM05_3.jpg', N'SPM05_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM06', N'ÁO NỈ CHUI ĐẦU', N'NSX05', N'L10', N'Áo nỉ dập đinh tán trang trí. Cổ tròn, dài tay.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1599000, N'SPM06_1.jpg', N'SPM06_2.jpg', N'SPM06_3.jpg', N'SPM06_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM07', N'ÁO KHOÁC CÓ MŨ', N'NSX06', N'L10', N'Áo khoác kiểu bomber có mũ trùm đầu, tay áo khác màu. Cài bằng khóa kéo. Có túi bên ngoài cài bằng khuy bấm.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1999000, N'SPM07_1.jpg', N'SPM07_2.jpg', N'SPM07_3.jpg', N'SPM074.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM08', N'ÁO KHOÁC CHẦN BÔNG', N'NSX01', N'L10', N'Áo khoác chần bông có mũ trùm đầu. Dài tay, cài bằng khóa kéo.
Cổ áo kiểu cổ điển. 

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 1999000, N'SPM08_1.jpg', N'SPM08_2.jpg', N'SPM08_3.jpg', N'SPM08_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM09', N'ÁO KHOÁC BIKER', N'NSX02', N'L10', N'Áo khoác kiểu biker. Cài bằng khóa kéo. Túi hai bên có khóa kéo. Cổ tay có khóa kéo. Thắt lưng có khóa cài bằng kim loại ở gấu áo.
CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 2499000, N'SPM09_1.jpg', N'SPM09_2.jpg', N'SPM09_3.jpg', N'SPM09_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM10', N'ÁO KHOÁC BLAZER', N'NSX03', N'L10', N'Áo khoác blazer cơ bản. Ve áo nhọn cổ điển. Khuy cài. Túi ngực và túi hai bên. Cổ tay áo có khuy cài. Xẻ lưng. Có vải lót.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1599000, N'SPM10_1.jpg', N'SPM10_2.jpg', N'SPM10_3.jpg', N'SPM10_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM11', N'ÁO KHOÁC BLAZER', N'NSX04', N'L10', N'Áo khoác blazer cơ bản. Ve áo nhọn cổ điển. Khuy cài. Túi ngực và túi hai bên. Cổ tay áo có khuy cài. Xẻ lưng. Có vải lót.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1599000, N'SPM11_1.jpg', N'SPM11_2.jpg', N'SPM11_3.jpg', N'SPM11_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM12', N'ÁO KHOÁC BIKER', N'NSX05', N'L10', N'Áo khoác biker có khóa và gim cài bằng kim loại. Con đỉa ở vai áo, cổ tay áo có khóa kéo. Túi trước kéo khóa.
CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 2499000, N'SPM12_1.jpg', N'SPM12_2.jpg', N'SPM12_3.jpg', N'SPM12_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM13', N'ÁO POLO KẺ SỌC', N'NSX06', N'L11', N'Áo polo kẻ ngang. Cổ áo khác màu, dài tay. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM13_1.jpg', N'SPM13_2.jpg', N'SPM13_3.jpg', N'SPM13_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM14', N'ÁO POLO HỌA TIẾT', N'NSX01', N'L11', N'Áo polo in họa tiết nhí. Cổ và tay áo phối viền khác màu. Cộc tay. CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 799000, N'SPM14_1.jpg', N'SPM14_2.jpg', N'SPM14_3.jpg', N'SPM14_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM15', N'ÁO POLO VẢI PIQUÉ', N'NSX02', N'L11', N'Áo polo kiểu cơ bản bằng vải piqué, dài tay. Khuy cài.
CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 799000, N'SPM15_1.jpg', N'SPM15_2.jpg', N'SPM15_3.jpg', N'SPM15_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM16', N'ÁO POLO VẢI PIQUÉ', N'NSX03', N'L11', N'Áo polo bằng vải piqué, cổ đôi phối vải poplin. Dài tay. Khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM16_1.jpg', N'SPM16_2.jpg', N'SPM16_3.jpg', N'SPM16_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM17', N'ÁO POLO VẢI PIQUÉ', N'NSX04', N'L11', N'Áo polo kiểu cơ bản bằng vải piqué, dài tay. Khuy cài.
CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 799000, N'SPM17_1.jpg', N'SPM17_2.jpg', N'SPM17_3.jpg', N'SPM17_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM18', N'ÁO POLO KẺ SỌC', N'NSX05', N'L11', N'Áo polo vải piqué. Khuy cài. Cộc tay. Họa tiết thêu ở ngực áo.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 999000, N'SPM18_1.jpg', N'SPM18_2.jpg', N'SPM18_3.jpg', N'SPM18_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM19', N'ÁO POLO KẺ SỌC', N'NSX06', N'L11', N'Áo polo vải piqué. Khuy cài. Cộc tay. Họa tiết thêu ở ngực áo.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 499000, N'SPM19_1.jpg', N'SPM19_2.jpg', N'SPM19_3.jpg', N'SPM19_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM20', N'ÁO POLO CỔ ĐIỂN', N'NSX01', N'L11', N'Áo polo bằng vải dệt kim, thiết kế kiểu cổ điển. Dài tay. Khuy cài. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM20_1.jpg', N'SPM20_2.jpg', N'SPM20_3.jpg', N'SPM20_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM21', N'ÁO POLO HỌA TIẾT', N'NSX02', N'L11', N'Áo polo cộc tay, in họa tiết hoa. Khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 499000, N'SPM21_1.jpg', N'SPM21_2.jpg', N'SPM21_3.jpg', N'SPM21_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM22', N'ÁO POLO THÊU HOA', N'NSX03', N'L11', N'Áo polo thêu họa tiết hoa hồng. Cộc tay. Cổ cài khuy.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 799000, N'SPM22_1.jpg', N'SPM22_2.jpg', N'SPM22_3.jpg', N'SPM22_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM23', N'ÁO POLO HỌA TIẾT', N'NSX04', N'L11', N'Áo polo cộc tay, in họa tiết hoa. Khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 799000, N'SPM23_1.jpg', N'SPM23_2.jpg', N'SPM23_3.jpg', N'SPM23_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM24', N'ÁO POLO KẺ CA RÔ', N'NSX05', N'L11', N'Áo polo bằng vải piqué họa tiết kẻ ca rô to. Cổ trơn màu cài khuy, ngắn tay.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 499000, N'SPM24_1.jpg', N'SPM24_2.jpg', N'SPM24_3.jpg', N'SPM24_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM25', N'ÁO SƠ MI HỌA TIẾT', N'NSX06', N'L12', N'Áo sơ mi in họa tiết lá cây. Dài tay. Khuy cài. Cổ tay áo có khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM25_1.jpg', N'SPM25_2.jpg', N'SPM25_3.jpg', N'SPM25_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM26', N'SƠ MI HỌA TIẾT', N'NSX01', N'L12', N'Áo sơ mi bằng vải viscose in họa tiết. Cổ kiểu cơ bản. Có hàng khuy cài. Dài tay. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM26_1.jpg', N'SPM26_2.jpg', N'SPM26_3.jpg', N'SPM26_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM27', N'ÁO SƠ MI HÌNH VẬT', N'NSX02', N'L12', N'Áo sơ mi in họa tiết hoa và chim chóc. Dài tay. Khuy cài. Cổ tay áo có khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM27_1.jpg', N'SPM27_2.jpg', N'SPM27_3.jpg', N'SPM27_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM28', N'SƠ MI HỌA TIẾT', N'NSX03', N'L12', N'Áo sơ mi bằng vải viscose in họa tiết hoa hồng lớn. Dài tay. Cổ đức kiểu cổ điển, cài khuy. Cổ tay áo có khuy cài. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM28_1.jpg', N'SPM28_2.jpg', N'SPM28_3.jpg', N'SPM28_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM29', N'SƠ MI HỌA TIẾT', N'NSX04', N'L12', N'Áo sơ mi bằng vải viscose in họa tiết. Dáng slim fit. Cổ kiểu cơ bản. Có hàng khuy cài. Dài tay.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 999000, N'SPM29_1.jpg', N'SPM29_2.jpg', N'SPM29_3.jpg', N'SPM29_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM30', N'ÁO SƠ MI KẺ SỌC', N'NSX05', N'L12', N'Áo sơ mi kẻ sọc oversize. Cổ kiểu cơ bản. Có hàng khuy cài. Dài tay. Cổ tay áo có khuy cài. 

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 1099000, N'SPM30_1.jpg', N'SPM30_2.jpg', N'SPM30_3.jpg', N'SPM30_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM31', N'SƠ MI DẠ', N'NSX06', N'L12', N'Áo sơ mi vải dạ họa tiết kẻ ca rô. Có hàng khuy cài. Dài tay. Khuy ở cổ tay áo. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM31_1.jpg', N'SPM31_2.jpg', N'SPM31_3.jpg', N'SPM31_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM32', N'ÁO SƠ MI MÀI SỜN', N'NSX01', N'L12', N'Áo sơ mi vải dạ, kẻ ca rô. Dáng rộng. Cổ bằng vải oxford có khuy cài. Dài tay. Khuy cài. Cổ tay áo có khuy cài. Gấu tua rua không vắt sổ.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM32_1.jpg', N'SPM32_2.jpg', N'SPM32_3.jpg', N'SPM32_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM33', N'ÁO SƠ MI VẢI DẠ', N'NSX02', N'L12', N'Áo sơ mi bằng vải dạ kẻ ca rô. Cổ kiểu cơ bản. Có hàng khuy cài. Dài tay. Khuy ở cổ tay áo.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM33_1.jpg', N'SPM33_2.jpg', N'SPM33_3.jpg', N'SPM33_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM34', N'ÁO SƠ MI VẢI DẠ', N'NSX03', N'L12', N'Áo sơ mi bằng vải dạ kẻ ca rô. Cổ kiểu cơ bản. Có hàng khuy cài. Dài tay. Khuy ở cổ tay áo.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM34_1.jpg', N'SPM34_2.jpg', N'SPM34_3.jpg', N'SPM34_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM35', N'ÁO SƠ MI VẢI DẠ', N'NSX04', N'L12', N'Áo sơ mi bằng vải dạ in họa tiết kẻ ca rô kiểu đáp vải. Dáng rộng. Dài tay. Khuy cài. Túi kiểu kangaroo. Cổ tay áo có khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 1099000, N'SPM35_1.jpg', N'SPM35_2.jpg', N'SPM35_3.jpg', N'SPM35_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM36', N'SƠ MI CỔ ĐÔI', N'NSX05', N'L12', N'Áo sơ mi họa tiết chấm bi, dài tay, có cổ đôi phối màu tương phản. Khuy cài. Cổ tay áo có khuy cài.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ L', 999000, N'SPM36_1.jpg', N'SPM36_2.jpg', N'SPM36_3.jpg', N'SPM36_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM37', N'QUẦN DÁNG RỘNG', N'NSX06', N'L13', N'QUẦN DÁNG RỘNG', 1099000, N'SPM37_1.jpg', N'SPM37_2.jpg', N'SPM37_3.jpg', N'SPM37_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM38', N'QUẦN ỐNG RỘNG', N'NSX01', N'L13', N'Quần ống rộng. Cạp điều chỉnh được. Túi hai bên. 

CHIỀU CAO NGƯỜI MẪU: 188 CM CỠ 40 CHÂU ÂU', 1099000, N'SPM38_1.jpg', N'SPM38_2.jpg', N'SPM38_3.jpg', N'SPM38_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM39', N'QUẦN ỐNG RỘNG', N'NSX02', N'L13', N'Quần ống rộng. Cạp điều chỉnh được. Túi hai bên. 

CHIỀU CAO NGƯỜI MẪU: 188 CM CỠ 40 CHÂU ÂU', 1099000, N'SPM39_1.jpg', N'SPM39_2.jpg', N'SPM39_3.jpg', N'SPM39_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM40', N'QUẦN LỬNG', N'NSX03', N'L13', N'Quần bằng vải nhung lông có chi tiết xếp li. Cạp co giãn điều chỉnh bằng dây rút. Túi hai bên. Túi sau. Gấu lửng.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 1099000, N'SPM40_1.jpg', N'SPM40_2.jpg', N'SPM40_3.jpg', N'SPM40_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM41', N'QUẦN THỂ THAO ', N'NSX04', N'L13', N'Quần jogging có dải kẻ sọc màu trắng hai bên. Kiểu cơ bản. Cạp chun có dây rút. Túi hai bên. 

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ 40 CHÂU ÂU', 999000, N'SPM41_1.jpg', N'SPM41_2.jpg', N'SPM41_3.jpg', N'SPM41_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM42', N'QUẦN JOGGER', N'NSX05', N'L13', N'Quần jogging có viền màu nổi bật hai bên ống quần. Cạp chun có dây rút. Có túi hai bên và túi sau.

CHIỀU CAO NGƯỜI MẪU: 189 cm. CỠ L', 1099000, N'SPM42_1.jpg', N'SPM42_2.jpg', N'SPM42_3.jpg', N'SPM42_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM43', N'QUẦN KẺ SỌC', N'NSX06', N'L13', N'Quần chino có đường kẻ sọc khác màu hai bên. Dáng ống bó. Khuy cài và khóa kéo. Có 5 túi.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 1099000, N'SPM43_1.jpg', N'SPM43_2.jpg', N'SPM43_3.jpg', N'SPM43_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM44', N'QUẦN KẺ SỌC', N'NSX01', N'L13', N'Quần trang trí bằng đường kẻ sọc hai bên. Dáng carrot fit. 4 túi. Khóa kéo và khuy bấm. Cạp quần co giãn. 

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 1099000, N'SPM44_1.jpg', N'SPM44_2.jpg', N'SPM44_3.jpg', N'SPM44_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM45', N'QUẦN KẺ CA RÔ', N'NSX02', N'L13', N'Quần tây kẻ ca rô màu ghi theo bộ. Dáng slim fit. Khuy cài và khóa kéo. Túi hai bên. Túi sau.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 1599000, N'SPM45_1.jpg', N'SPM45_2.jpg', N'SPM45_3.jpg', N'SPM45_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM46', N'QUẦN KAKI', N'NSX03', N'L13', N'Quần kaki cắt cúp kiểu cơ bản. Dáng slim fit. Khuy cài và khóa kéo. 4 túi.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 799000, N'SPM46_1.jpg', N'SPM46_2.jpg', N'SPM46_3.jpg', N'SPM46_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM47', N'QUẦN KAKI', N'NSX04', N'L13', N'Quần kaki cắt cúp kiểu cơ bản. Dáng slim fit. Khuy cài và khóa kéo. 4 túi.

CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 799000, N'SPM47_1.jpg', N'SPM47_2.jpg', N'SPM47_3.jpg', N'SPM47_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM48', N'QUẦN CHINOS ÔM', N'NSX05', N'L13', N'Quần chino dáng cổ điển với ống bó, vải kiểu phai màu. Khuy cài và khóa kéo. CHIỀU CAO NGƯỜI MẪU: 189 CM CỠ 40 CHÂU ÂU', 1099000, N'SPM48_1.jpg', N'SPM48_2.jpg', N'SPM48_3.jpg', N'SPM48_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM49', N'ABCDEF', N'NSX02', N'L10', N'â', 3999999, N'banner44.webp', N'logo.png', N'sale_bg1.jpg', N'sale_bg2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM50', N'Sản Phẩm Test', N'NSX02', N'L10', N'áda', 3999999, N'banner43.jpg', N'banner43.webp', N'banner44.jpg', N'banner44.webp')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM51', N'Sản Phẩm Test23424', N'NSX02', N'L10', N'ưerwr', 3999999, N'banner44.jpg', N'banner44.webp', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM52', N'Giày Bostư', N'NSX02', N'L10', N'ádad', 12313, N'PAM.jpg', N'PAM.webp', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPM53', N'ádasda', N'NSX02', N'L10', N'ấda', 3999999, N'SPM53_1.jpg', N'SPM53_2.jpg', N'SPM53_3.jpg', N'SPM53_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP01', N'NƠ BƯỚM HỌA TIẾT', N'NSX06', N'L17', N'Nơ bướm in họa tiết hình chim phượng hoàng. Dây buộc điều chỉnh được.', 799000, N'SPP01_1.jpg', N'SPP01_2.jpg', N'SPP01_1.jpg', N'SPP01_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP02', N'NƠ BƯỚM HỌA TIẾT', N'NSX01', N'L17', N'Nơ bướm in họa tiết hình chim phượng hoàng. Dây buộc điều chỉnh được.', 599000, N'SPP02_1.jpg', N'SPP02_2.jpg', N'SPP02_1.jpg', N'SPP02_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP03', N'NƠ BƯỚM', N'NSX02', N'L17', N'Nơ bướm thêu hình động vật. Có đai điều chỉnh ở phía sau', 599000, N'SPP03_1.jpg', N'SPP03_2.jpg', N'SPP03_1.jpg', N'SPP03_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP04', N'NƠ BƯỚM TRƠN', N'NSX03', N'L17', N'Nơ bướm vải mềm trơn màu', 399000, N'SPP04_1.jpg', N'SPP04_2.jpg', N'SPP04_1.jpg', N'SPP04_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP05', N'NƠ BƯỚM TRƠN', N'NSX04', N'L17', N'Nơ bướm trơn màu có đầu nhon. Quay điều chỉnh được, cài phía sau.', 599000, N'SPP05_1.jpg', N'SPP05_2.jpg', N'SPP05_1.jpg', N'SPP05_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP06', N'NƠ BƯỚM TRƠN', N'NSX05', N'L17', N'Nơ bướm vải mềm trơn màu', 399000, N'SPP06_1.jpg', N'SPP06_2.jpg', N'SPP06_1.jpg', N'SPP06_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP07', N'CÀ VẠT HOA', N'NSX06', N'L17', N'Cà vạt bản to in họa tiết hoa.', 799000, N'SPP07_1.jpg', N'SPP07_2.jpg', N'SPP07_1.jpg', N'SPP07_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP08', N'CÀ VẠT HỌA TIẾT', N'NSX01', N'L17', N'Cà vạt bản to in họa tiết hình sư tử', 799000, N'SPP08_1.jpg', N'SPP08_2.jpg', N'SPP08_1.jpg', N'SPP08_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP09', N'CÀ VẠT HỌA TIẾT PAISLEY', N'NSX02', N'L17', N'Cà vạt trang trí họa tiết paisley.', 799000, N'SPP09_1.jpg', N'SPP09_2.jpg', N'SPP09_1.jpg', N'SPP09_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP10', N'CÀ VẠT CHẤM BI', N'NSX03', N'L17', N'Cà vạt bản to chấm bi', 799000, N'SPP10_1.jpg', N'SPP10_2.jpg', N'SPP10_1.jpg', N'SPP10_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP11', N'CÀ VẠT VẢI', N'NSX04', N'L17', N'Cà vạt bản to bằng vải jacquard in họa tiết chấm bi.', 799000, N'SPP11_1.jpg', N'SPP11_2.jpg', N'SPP11_1.jpg', N'SPP11_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP12', N'CÀ VẠT KẺ SỌC', N'NSX05', N'L17', N'Cà vạt bản to in họa tiết kẻ sọc chéo khác màu.', 799000, N'SPP12_1.jpg', N'SPP12_2.jpg', N'SPP12_1.jpg', N'SPP12_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP13', N'KHĂN QUÀNG HỌA TIẾT', N'NSX06', N'L18', N'MÀU: Màu xanh nước biển
6247/327', 299000, N'SPP13_1.jpg', N'SPP13_2.jpg', N'SPP13_1.jpg', N'SPP13_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP14', N'KHĂN TAY', N'NSX01', N'L18', N'Khăn vuông bằng vải cotton thô in họa tiết bộ xương.', 299000, N'SPP14_1.jpg', N'SPP14_2.jpg', N'SPP14_1.jpg', N'SPP14_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP15', N'KHĂN QUÀNG HỌA TIẾT', N'NSX02', N'L18', N'Khăn vuông in họa tiết đầu sọ và kashmir', 299000, N'SPP15_1.jpg', N'SPP15_2.jpg', N'SPP15_1.jpg', N'SPP15_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP16', N'KHĂN QUÀNG HỌA TIẾT', N'NSX03', N'L18', N'Khăn vuông in họa tiết paisley, bọc kim loại ở góc viền.', 299000, N'SPP16_1.jpg', N'SPP16_2.jpg', N'SPP16_1.jpg', N'SPP16_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP17', N'KHĂN VUÔNG VẢI THÔ', N'NSX04', N'L18', N'Khăn vuông bằng vải thô, in họa tiết thổ cẩm', 299000, N'SPP17_1.jpg', N'SPP17_2.jpg', N'SPP17_1.jpg', N'SPP17_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP18', N'KHĂN QUÀNG HỌA TIẾT ', N'NSX05', N'L18', N'Khăn quàng họa tiết thổ cẩm.', 299000, N'SPP18_1.jpg', N'SPP18_1.jpg', N'SPP18_1.jpg', N'SPP18_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP19', N'KHĂN QUÀNG HỌA TIẾT', N'NSX06', N'L18', N'Khăn quàng có họa tiết kiểu thổ cẩm.', 299000, N'SPP19_1.jpg', N'SPP19_2.jpg', N'SPP19_1.jpg', N'SPP19_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP20', N'KHĂN VUÔNG HỌA TIẾT ', N'NSX01', N'L18', N'Khăn vuông họa tiết ngôi sao, con sói và vệt màu vẽ.', 299000, N'SPP20_1.jpg', N'SPP20_2.jpg', N'SPP20_1.jpg', N'SPP20_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP21', N'KHĂN CHOÀNG DỆT', N'NSX02', N'L18', N'Khăn quàng màu trơn, vải đan dày kiểu chập vòng.', 699000, N'SPP21_1.jpg', N'SPP21_2.jpg', N'SPP21_1.jpg', N'SPP21_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP22', N'KHĂN QUÀNG HỌA TIẾT ', N'NSX03', N'L18', N'Khăn quàng bằng vải dệt họa tiết sao, phối tua rua.', 599000, N'SPP22_1.jpg', N'SPP22_2.jpg', N'SPP22_1.jpg', N'SPP22_1.jpg')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP23', N'KHĂN QUÀNG VẢI DỆT', N'NSX04', N'L18', N'Khăn quàng bằng vải dệt. Hiệu ứng bạc màu, phối tua rua.', 599000, N'SPP23_1.jpg', N'SPP23_1.jpg', N'SPP23_1.jpg', N'SPP23_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP24', N'KHĂN QUÀNG MÀU ', N'NSX05', N'L18', N'Khăn quàng bằng vải phối màu, đính tua rua.', 799000, N'SPP24_1.jpg', N'SPP24_2.jpg', N'SPP24_1.jpg', N'SPP24_1.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP25', N'TÚI VUÔNG MINI', N'NSX06', N'L19', N'Túi vuông nhỏ, có sẵn nhiều màu. Quai xách tay bọc khăn phối nhiều màu. Dây đeo tháo rời được. Khóa nam châm. 

Cao x Rộng x Sâu: 14 x 21 x 9 cm.', 999000, N'SPP25_1.jpg', N'SPP25_2.jpg', N'SPP25_3.jpg', N'SPP25_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP26', N'TÚI XÁCH MAXI', N'NSX01', N'L19', N'Túi shopper cỡ maxi phối nhiều màu. Cài bằng khóa kéo có quai. 

Cao x Rộng x Sâu: 38 x 56 x 2 cm.', 1099000, N'SPP26_1.jpg', N'SPP26_2.jpg', N'SPP26_3.jpg', N'SPP26_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP27', N'TÚI XÁCH LỘN NGƯỢC ', N'NSX02', N'L19', N'Túi xách màu đen. Mặt trong có thể lộn ngược được, in họa tiết chấm bi nhiều màu. Quai cầm tay. Cài bằng dây cột.

Cao x Rộng x Sâu: 30 x 48 x 17 cm.', 899000, N'SPP27_1.jpg', N'SPP27_2.jpg', N'SPP27_3.jpg', N'SPP27_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP28', N'TÚI VẢI ĐEO CHÉO', N'NSX03', N'L19', N'Túi đeo chéo bằng vải nhiều màu. Nắp túi đính ngọc trai và tua rua. Khóa nam châm.

Cao x Rộng x Sâu: 19 x 29 x 10 cm.', 1099000, N'SPP28_1.jpg', N'SPP28_2.jpg', N'SPP28_3.jpg', N'SPP28_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP29', N'TÚI XÁCH DẬP', N'NSX04', N'L19', N' Bên trong có một ngăn cài khóa kéo. Có một túi nhỏ hình tròn phối dây xích treo bên thân túi, có thể tháo rời để đeo riêng được. Cài bằng dây đai đục lỗ. 

Cao x Rộng x Sâu: 33 x 39 x 14 cm.', 1399000, N'SPP29_1.jpg', N'SPP29_2.jpg', N'SPP29_3.jpg', N'SPP29_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP30', N'TÚI DA ĐEO CHÉO', N'NSX05', N'L19', N'Đính dây xích theo viền nắp túi. Mặt sau có khóa kéo. Bên trong có lớp lót với hai ngăn chính và túi phụ. Dây đeo vai dạng xích. 

Cao x Rộng x Sâu: 17 x 28 x 9 cm.', 2999000, N'SPP30_1.jpg', N'SPP30_2.jpg', N'SPP30_3.jpg', N'SPP30_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP31', N'TÚI VUÔNG  DA ', N'NSX06', N'L19', N' Bên trong có chia ngăn. Dây đeo vai điều chỉnh được. Khuyên luồn dây bằng kim loại màu vàng. 
Cao x Rộng x Sâu: 24 x 35 x 12 cm.', 2999000, N'SPP31_1.jpg', N'SPP31_2.jpg', N'SPP31_3.jpg', N'SPP31_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP32', N'TÚI XÁCH VIỀN', N'NSX01', N'L19', N'Túi dây rút màu đỏ bordeaux. Đính hàng bi bằng kim loại quanh viền túi. Bên trong có chia ngăn. Cài bằng khóa kéo. Dây đeo vai điều chỉnh được. 

Cao x Rộng x Sâu: 36 x 31 x 14 cm.', 2999000, N'SPP32_1.jpg', N'SPP32_2.jpg', N'SPP32_3.jpg', N'SPP32_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP33', N'TÚI ĐEO CHÉO', N'NSX02', N'L19', N'Mặt sau có khóa kéo. Chi tiết trang trí kim loại màu vàng. Quai cầm tay tháo rời được. Dây đeo vai dạng xích. Cài bằng khóa kim loại trên nắp. 

Cao x Rộng x Sâu: 19 x 7 x 17 cm.', 999000, N'SPP33_1.jpg', N'SPP33_2.jpg', N'SPP33_3.jpg', N'SPP33_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP34', N'TÚI HỘP', N'NSX03', N'L19', N'Quay xách tay và dây deo vai bằng xích. Chi tiết trang trí bằng kim loại. Bên trong lót vải, có chia ngăn. Khóa cài kim loại.

Cao x Rộng x Sâu: 22 x 23 x 12 cm.', 1099000, N'SPP34_1.jpg', N'SPP34_2.jpg', N'SPP34_3.jpg', N'SPP34_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP35', N'TÚI SHOPPER CỨNG', N'NSX04', N'L19', N'Dây đeo vai điều chỉnh được. Chi tiết kim loại trang trí màu vàng. Bên trong lót vải. Khóa nam châm. 

Cao x Rộng x Sâu: 22 x 30 x 15 cm.', 2999000, N'SPP35_1.jpg', N'SPP35_2.jpg', N'SPP35_3.jpg', N'SPP35_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP36', N'TÚI SHOPPER', N'NSX05', N'L19', N'Quai cầm tay và dây đeo vai điều chỉnh được. Trang trí kim loại màu vàng. Khóa nam châm.

Cao x Dài x Rộng: 22 x 29 x 15 cm.', 2999000, N'SPP36_1.jpg', N'SPP36_2.jpg', N'SPP36_3.jpg', N'SPP36_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP37', N'KHĂN QUÀNG LÔNG', N'NSX06', N'L20', N'Khăn quàng chất liệu lông thú. Màu đỏ tím', 899000, N'SPP37_1.jpg', N'SPP37_2.jpg', N'SPP37_3.jpg', N'SPP37_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP38', N'KHĂN QUÀNG VẢI', N'NSX01', N'L20', N'Khăn quàng bằng vải mềm mịn phối tua rua.

KÍCH THƯỚC: 50 cm x 200 cm', 899000, N'SPP38_1.jpg', N'SPP38_2.jpg', N'SPP38_3.jpg', N'SPP38_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP39', N'KHĂN QUÀNG CHẦN BÔNG', N'NSX02', N'L20', N'Khăn quàng chần bông có khóa cài kim loại.

KÍCH THƯỚC: 183 cm X 33 cm', 1199000, N'SPP39_1.jpg', N'SPP39_2.jpg', N'SPP39_3.jpg', N'SPP39_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP40', N'KHĂN QUÀNG DỆT', N'NSX03', N'L20', N'Khăn quàng dệt kim co giãn, có thể quàng được nhiều kiểu. Dệt kiểu gân nổi. ', 699000, N'SPP40_1.jpg', N'SPP40_2.jpg', N'SPP40_3.jpg', N'SPP40_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP41', N'KHĂN QUÀNG VẢI', N'NSX04', N'L20', N'Khăn quàng bằng vải mềm mịn phối tua rua.

KÍCH THƯỚC: 50 cm x 200 cm', 899000, N'SPP41_1.jpg', N'SPP41_2.jpg', N'SPP41_3.jpg', N'SPP41_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP42', N'KHĂN QUÀNG MỀM', N'NSX05', N'L20', N'Khăn quàng bằng vải lông mềm, in họa tiết hoa và đường kẻ zig zag.

KÍCH THƯỚC: 200 cm X 100 cm', 699000, N'SPP42_1.jpg', N'SPP42_2.jpg', N'SPP42_3.jpg', N'SPP42_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP43', N'RUY BĂNG ĐEO CỔ', N'NSX06', N'L20', N'Ruy băng màu trơn phối vải lông để đeo cổ. Buộc dây nơ.

Mặt hàng này phải được trả lại nguyên kiện như ban đầu.', 699000, N'SPP43_1.jpg', N'SPP43_2.jpg', N'SPP43_3.jpg', N'SPP43_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP44', N'KHĂN QUÀNG VẢI', N'NSX01', N'L20', N'Khăn quàng bằng vải tuýt phối nhiều màu.

KÍCH THƯỚC: 200 cm x 80 cm', 899000, N'SPP44_1.jpg', N'SPP44_2.jpg', N'SPP44_3.jpg', N'SPP44_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP45', N'KHĂN VUÔNG KẺ SỌC', N'NSX02', N'L20', N'Khăn vuông họa tiết kẻ nhiều màu.

KÍCH THƯỚC: 55 CM x 55 CM', 259000, N'SPP45_1.jpg', N'SPP45_2.jpg', N'SPP45_3.jpg', N'SPP45_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP46', N'KHĂN QUÀNG NHUNG ', N'NSX03', N'L20', N'Khăn quàng dài bằng vải nhung, đính tua rua.', 499000, N'SPP46_1.jpg', N'SPP46_2.jpg', N'SPP46_3.jpg', N'SPP46_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP47', N'KHĂN QUÀNG NHỎ', N'NSX04', N'L20', N'Khăn vuông in họa tiết chủ đề không gian vũ trụ.

KÍCH THƯỚC: 55 cm x 55 cm.', 259000, N'SPP47_1.jpg', N'SPP47_2.jpg', N'SPP47_3.jpg', N'SPP47_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP48', N'KHĂN VUÔNG', N'NSX05', N'L20', N'Khăn vuông in họa tiết chủ đề không gian vũ trụ.

KÍCH THƯỚC: 55 cm x 55 cm.', 259000, N'SPP48_1.jpg', N'SPP48_2.jpg', N'SPP48_3.jpg', N'SPP48_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP49', N'KÍNH MÁT MẮT TRÒN ', N'NSX06', N'L16', N'Kính mát dáng mắt mèo tròn. Gọng kính hiệu ứng đồi mồi, có quai đeo bản rộng. Mắt kinh bằng thủy tinh bảo vệ 100% khỏi tia UV, kèm bao đựng.', 699000, N'SPP49_1.jpg', N'SPP49_2.jpg', N'SPP49_1.jpg', N'SPP49_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP50', N'KÍNH MẮT GỌNG DA', N'NSX01', N'L16', N'Kính mắt có mắt hình oval và gọng bọc da. Quai đeo phối chất liệu.
', 499000, N'SPP50_1.jpg', N'SPP50_2.jpg', N'SPP50_3.jpg', N'SPP50_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP51', N'KÍNH GỌNG ACETATE', N'NSX02', N'L16', N'Kính có gọng tròn bằng nhựa acetate. Quai đeo dập chi tiết nổi hai màu. Mắt kính thủy tinh 100% chống tia UV.', 799000, N'SPP51_1.jpg', N'SPP51_2.jpg', N'SPP51_3.jpg', N'SPP51_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP52', N'KÍNH MẮT MÈO', N'NSX03', N'L16', N'Kính có gọng tròn bằng nhựa acetate. Quai đeo dập chi tiết nổi hai màu. Mắt kính thủy tinh 100% chống tia UV.', 590000, N'SPP52_1.jpg', N'SPP52_2.jpg', N'SPP52_3.jpg', N'SPP52_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP53', N'KÍNH GỌNG NHỰA', N'NSX04', N'L16', N'Kính gọng nhựa có quai đeo bằng kim loại. 

Các loại kính có mắt trong suốt sẽ không có chức năng bảo vệ khỏi ánh nắng mặt trời.', 499000, N'SPP53_1.jpg', N'SPP53_2.jpg', N'SPP53_3.jpg', N'SPP53_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP54', N'KÍNH MẮT MÈO', N'NSX05', N'L16', N'Kính mát mắt mèo gọng kim loại.', 590000, N'SPP54_1.jpg', N'SPP54_2.jpg', N'SPP54_2.jpg', N'SPP54_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP55', N'KÍNH GỌNG NHỰA', N'NSX06', N'L16', N'Kính gọng nhựa, mắt thủy tinh tráng gương. Mặt kính thủy tinh bảo vệ 100% khỏi tia UV.', 590000, N'SPP55_1.jpg', N'SPP55_2.jpg', N'SPP55_3.jpg', N'SPP55_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP56', N'KÍNH MÁT MẮT', N'NSX01', N'L16', N'Kính mát gọng kim loại hình tròn có mắt tráng gương. Mắt kính bằng thủy tinh chống tia UV.', 590000, N'SPP56_1.jpg', N'SPP56_2.jpg', N'SPP56_3.jpg', N'SPP56_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP57', N'KÍNH NHỰA MÀU SẮC', N'NSX02', N'L16', N'Kính gọng nhựa màu. Có dây phụ phối hạt và nhiều màu. Chống tia UV 100%.', 590000, N'SPP57_1.jpg', N'SPP57_2.jpg', N'SPP57_3.jpg', N'SPP57_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP58', N'KÍNH MÁT THỦY TINH', N'NSX03', N'L16', N'Kính mát gọng tròn bằng kim loại. Tròng kính bằng thủy tinh màu vàng. Chống tia UV.', 590000, N'SPP58_1.jpg', N'SPP58_2.jpg', N'SPP58_3.jpg', N'SPP58_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP59', N'KÍNH GỌNG KIM LOẠI ', N'NSX04', N'L16', N'Kính gọng kim loại. Gọng kính mảnh, phối chất liệu.

Các loại kính có mắt trong suốt sẽ không có chức năng bảo vệ khỏi ánh nắng mặt trời.', 590000, N'SPP59_1.jpg', N'SPP59_2.jpg', N'SPP59_3.jpg', N'SPP59_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPP60', N'KÍNH MÁT', N'NSX05', N'L16', N'Kính mát gọng nhựa họa tiết đồi mồi có quai đeo bằng kim loại. Chống tia UV.', 590000, N'SPP60_1.jpg', N'SPP60_2.jpg', N'SPP60_1.jpg', N'SPP60_2.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW01', N'ÁO KHOÁC OVERSIZE ', N'NSX01', N'L05', N'Áo khoác oversize cổ ve lật. Dài tay. Túi đáp phía trước. Hàng khuy cài chéo phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 3999000, N'SPW01_1.jpg', N'SPW01_2.jpg', N'SPW01_3.jpg', N'SPW01_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW02', N'ÁO KHOÁC DA NÂU ', N'NSX02', N'L05', N'Áo khoác dáng dài over size, cổ  ve lật, dây thắt ngang eo', 3999000, N'SPW02_1.jpg', N'SPW02_2.jpg', N'SPW02_3.jpg', N'SPW02_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW03', N'ÁO KHOÁC LÔNG VẢI', N'NSX03', N'L05', N'Áo khoác cổ cao, phối chi tiết bằng vải cùng màu. Dài tay. Túi phía trước có viền phối vải. Cài phía trước bằng khóa kéo ẩn dưới nẹp áo cài khuy bấm.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 2299000, N'SPW03_1.jpg', N'SPW03_2.jpg', N'SPW03_3.jpg', N'SPW03_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW04', N'ÁO KHOÁC PHỐI', N'NSX03', N'L05', N'Áo khoác dài trên gối. Cổ tròn. Dài tay, bo chun ở cổ tay áo. Khóa kéo phía trước. Túi trước có khóa kéo. Có lớp lót bên trong.

CHIỀU CAO NGƯỜI MẪU: 178 CM.', 269000, N'SPW04_1.jpg', N'SPW04_2.jpg', N'SPW04_3.jpg', N'SPW04_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW05', N'ÁO KHOÁC CHẦN BÔNG', N'NSX04', N'L05', N'Áo khoác ngắn chân bông, có nón', 2299000, N'SPW05_1.jpg', N'SPW05_2.jpg', N'SPW05_3.jpg', N'SPW05_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW06', N'ÁO MĂNG TÔ CA RÔ', N'NSX05', N'L05', N'Áo măng tô kẻ ca rô phía trong', 4999000, N'SPW06_1.jpg', N'SPW06_2.jpg', N'SPW06_3.jpg', N'SPW06_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW07', N'ÁO KHOÁC THỦ CÔNG', N'NSX06', N'L05', N'Áo khoác may đo, cổ có ve, dài tay. Túi hai bên hông có nắp. Cài phía trước bằng khuy, xẻ gấu phía sau. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 2999000, N'SPW07_1.jpg', N'SPW07_2.jpg', N'SPW07_3.jpg', N'SPW07_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW08', N'ÁO KHOÁC DÁNG NAM', N'NSX01', N'L05', N'Áo khoác cổ ve lật, dài tay. Túi hai bên. Xẻ gấu sau lưng, phía trước có hai khuy cài.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 3499000, N'SPW08_1.jpg', N'SPW08_2.jpg', N'SPW08_3.jpg', N'SPW08_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW09', N'ÁO CHOÀNG VẢI DẠ', N'NSX02', N'L05', N'Áo choàng dáng dài bằng vải dạ, cổ tròn, xẻ hai bên thân áo. Xếp li sau lưng. Cài bằng khuy bọc vải ở cổ áo phía trước. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 2999000, N'SPW09_1.jpg', N'SPW09_2.jpg', N'SPW09_3.jpg', N'SPW09_4jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW10', N'ÁO KHOÁC CA RÔ', N'NSX03', N'L05  ', N'Áo khoác vạt chéo, cổ ve lật, dài tay. Có túi hai bên, xẻ gấu sau lưng. Khuy cài ở phía trước. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1999000, N'SPW10_1.jpg', N'SPW10_2.jpg', N'SPW10_3.jpg', N'SPW10_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW11', N'ÁO KHOÁC LEN', N'NSX04', N'L05', N'Áo khoác bằng vải len, có ve áo lật bản lớn, dài tay. Túi hai bên có nắp. Cài bằng hàng khuy đôi.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 2699000, N'SPW11_1.jpg', N'SPW11_2.jpg', N'SPW11_3.jpg', N'SPW11_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW12', N'ÁO GI LÊ NHUNG', N'NSX05', N'L05', N'Hình ảnh 2 / ÁO GI LÊ NHUNG THÊU HỌA TIẾT từ Zara
Áo gi lê bằng vải nhung thêu họa tiết trang trí. Tua rua ở gấu áo.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1999000, N'SPW12_1.jpg', N'SPW12_2.jpg', N'SPW12_3.jpg', N'SPW12_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW13', N'ÁO SƠ MI DÁNG DÀI', N'NSX06', N'L06', N'Áo sơ mi dáng dài bằng vải rũ in họa tiết hoa. Eo điều chỉnh được bằng dây rút. Xẻ gấu bên hông. Cài khuy phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW13_1.jpg', N'SPW13_2.jpg', N'SPW13_3.jpg', N'SPW13_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW14', N'ÁO THÊU HỌA TIẾT', N'NSX01', N'L06', N'Áo cánh in và thêu họa tiết, dài tay. Cổ xẻ, buộc dây nơ phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW14_1.jpg', N'SPW14_2.jpg', N'SPW14_3.jpg', N'SPW14_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW15', N'ÁO TUNIC ĐÍNH TUA', N'NSX02', N'L06', N'Áo tunic cổ trụ, tay dài may con đỉa. Xẻ gấu bên hông. Đính tua rua hai bên thân áo. Có hàng khuy phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW15_1.jpg', N'SPW15_2.jpg', N'SPW15_3.jpg', N'SPW15_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW16', N'ÁO SƠ MI CA RÔ', N'NSX03', N'L06', N'Áo sơ mi cổ cánh én, kẻ ca rô', 999000, N'SPW16_1.jpg', N'SPW16_2.jpg', N'SPW16_3.jpg', N'SPW16_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW17', N'ÁO PHỐI REN', N'NSX04', N'L06', N'Áo cổ tròn, dài tay. Dáng xòe. Vải họa tiết hoa phối vải ren. Cài khuy, xẻ sau lưng.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 999000, N'SPW17_1.jpg', N'SPW17_2.jpg', N'SPW17_3.jpg', N'SPW17_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW18', N'ÁO FORM DÀI', N'NSX05', N'L06', N'Áo cổ tròn form dài, cài khuy ngang eo', 999000, N'SPW18_1.jpg', N'SPW18_2.jpg', N'SPW18_3.jpg', N'SPW18_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW19', N'ÁO SƠ MI CÀI KHUY', N'NSX06', N'L06', N'Áo sơ mi vải rũ, cổ cao, dài tay. Dáng thụng. Cài phía trước bằng khuy cỡ lớn khác màu.

CHIỀU CAO NGƯỜI MẪU: 1789 CM', 1599000, N'SPW019_1.jpg', N'SPW019_2.jpg', N'SPW019_3.jpg', N'SPW019_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW20', N'ÁO VẢI VOAN HẠT NỔI', N'NSX01', N'L06', N'Áo bằng vải voan hạt nổi, cổ tròn, dài tay. Buộc dây nơ ở cổ và cổ tay áo. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 699000, N'SPW19_1.jpg', N'SPW19_2.jpg', N'SPW19_3.jpg', N'SPW19_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW21', N'ÁO SƠ MI KẺ', N'NSX02', N'L06', N'Áo sơ mi kẻ mặc được nhiều kiểu, cổ đứng, dài tay. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW21_1.jpg', N'SPW21_2.jpg', N'SPW21_3.jpg', N'SPW21_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW22', N'ÁO PHỐI REN PHỒNG', N'NSX03', N'L06', N'Áo cổ cao phối ren trang trí. Tay dài phồng, cổ tay co giãn. Sau lưng cài khuy và buộc dây nơ vải.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 999000, N'SPW22_1.jpg', N'SPW22_2.jpg', N'SPW22_3.jpg', N'SPW22_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW23', N'ÁO KIỂU SỌC KẺ', N'NSX04', N'L06', N'Áo vạt chéo in họa tiết kẻ. Dài tay, cổ chữ V. Thắt lưng bằng vải cùng loại.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW23_1.jpg', N'SPW23_2.jpg', N'SPW23_3.jpg', N'SPW23_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW24', N'ÁO SƠ MI VẢI DỆT CHÉO', N'NSX05', N'L06', N'Áo sơ mi bằng vải dệt chéo, cổ ve lật, tay dài xếp nếp. Có hàng khuy ẩn phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW24_1.jpg', N'SPW24_2.jpg', N'SPW24_3.jpg', N'SPW24_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW25', N'CHÂN VÁY CA RÔ', N'NSX06', N'L07', N'Chân váy midi cạp cao. Vạt thẳng. Cài khuy bọc vải bên thân váy.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 1599000, N'SPW25_1.jpg', N'SPW25_2.jpg', N'SPW25_3.jpg', N'SPW25_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW26', N'CHÂN VÁY GẤU LỆCH', N'NSX01', N'L07', N'Chân váy midi vạt lệch. Cài khuy một bên hông. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW26_1.jpg', N'SPW26_2.jpg', N'SPW26_3.jpg', N'SPW26_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW27', N'CHÂN VÁY GIẢ DA', N'NSX02', N'L07', N'Chân váy mini cài khuy bấm ở cạp. Khóa kéo bên hông.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 799000, N'SPW27_1.jpg', N'SPW27_2.jpg', N'SPW27_3.jpg', N'SPW27_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW28', N'QUẦN VÁY XẾP LI', N'NSX03', N'L07', N'Quần giả váy kẻ ca rô, xếp li lớn phía trước. Có túi hai bên, cài khóa kéo bên hông.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW28_1.jpg', N'SPW28_2.jpg', N'SPW28_3.jpg', N'SPW28_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW29', N'CHÂN VÁY MINI', N'NSX04', N'L07', N'Chân váy chữ A phối chi tiết peplum đính ngọc trai trang trí phía trước. Cài bằng khóa kéo ẩn ở đường may sau lưng.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 999000, N'SPW29_1.jpg', N'SPW29_2.jpg', N'SPW29_3.jpg', N'SPW29_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW30', N'CHÂN VÁY MINI HỌA TIẾT', N'NSX05', N'L07', N'Chân váy xòe chữ A. Cài bằng khóa kéo ẩn ở đường may sau lưng.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 1199000, N'SPW30_1.jpg', N'SPW30_2.jpg', N'SPW30_3.jpg', N'SPW30_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW31', N'CHÂN VÁY TUA RUA', N'NSX06', N'L07', N'Chân váy cạp lỡ, phối tua rua bất đối xứng. Cài bằng khóa kéo ẩn ở đường may bên hông.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW31_1.jpg', N'SPW31_2.jpg', N'SPW31_3.jpg', N'SPW31_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW32', N'CHÂN VÁY  NHUNG', N'NSX01', N'L07', N'Chân váy bằng vải nhung thêu họa tiết. Vạt chéo, buộc dây nơ một bên hông. Đính chi tiết trang trí bằng kim loại.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW32_1.jpg', N'SPW32_2.jpg', N'SPW32_3.jpg', N'SPW32_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW33', N'CHÂN VÁY MINI', N'NSX02', N'L07', N'Chân váy mini đính kim sa nhiều màu. Cạp co giãn. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW33_1.jpg', N'SPW33_2.jpg', N'SPW33_3.jpg', N'SPW33_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW34', N'CHÂN VÁY XÀ RÔNG', N'NSX03', N'L07', N'Chân váy midi kiểu xà rông kẻ ca rô. Cài phía trước bằng khuy lớn khác màu.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW34_1.jpg', N'SPW34_2.jpg', N'SPW34_3.jpg', N'SPW34_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW35', N'CHÂN VÁY MIDI', N'NSX04', N'L07', N'Chân váy midi có cạp khác màu và xếp li phía trước. Xẻ vạt bất đối xứng phía trước.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW35_1.jpg', N'SPW35_2.jpg', N'SPW35_3.jpg', N'SPW35_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW36', N'CHÂN VÁY GIẢ DA', N'NSX05', N'L07', N'Chân váy dáng ngắn vạt chéo kiểu xà rông, có khóa cài bằng kim loại. Khóa kéo ẩn ở đường may bên hông.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 899000, N'SPW36_1.jpg', N'SPW36_2.jpg', N'SPW36_3.jpg', N'SPW36_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW37', N'ĐẦM ỐNG MIDI', N'NSX06', N'L08', N'Đầm dài tay, cổ tròn. Đường may nổi phía trước. Xẻ gấu sau lưng. Cài bằng khóa kéo ẩn ở đường may sau lưng.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW37_1.jpg', N'SPW37_2.jpg', N'SPW37_3.jpg', N'SPW37_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW38', N'ĐẦM NHUNG PHỐI REN', N'NSX01', N'L08', N'Đầm hai dây bằng vải nhung, phối chi tiết ren ở cổ và dưới gấu. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW38_1.jpg', N'SPW38_2.jpg', N'SPW38_3.jpg', N'SPW38_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW39', N'ĐẦM DỆT KIM DÀI TAY', N'NSX02', N'L08', N'Đầm dệt kim cổ tròn, dài tay. Cài bằng khóa kéo sau lưng. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 799000, N'SPW39_1.jpg', N'SPW39_2.jpg', N'SPW39_3.jpg', N'SPW39_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW40', N'ÁO NỈ OVERSIZE PHỐI VẢI', N'NSX03', N'L08', N'Áo nỉ oversize cổ tròn, dài tay. Gấu áo phối ren.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 999000, N'SPW40_1.jpg', N'SPW40_2.jpg', N'SPW40_3.jpg', N'SPW40_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW41', N'ĐẦM MIDI DÀI TAY', N'NSX04', N'L08', N'Đầm Midi tay dài, cổ lọ', 2299000, N'SPW41_1.jpg', N'SPW41_2.jpg', N'SPW41_3.jpg', N'SPW41_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW42', N'ĐẦM HOA BUỘC DÂY', N'NSX05', N'L08', N'Đầm hoa dài buộc dây thắt lưng', 1599000, N'SPW42_1.jpg', N'SPW42_2.jpg', N'SPW42_3.jpg', N'SPW42_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW43', N'ĐẦM CAMISOLE', N'NSX06', N'L08', N'Đầm midi. Cổ chữ V. Hai dây mảnh. Phối ren ở phía trên, dưới gấu và sau lưng. Xẻ gấu hai bên hông.


CHIỀU CAO NGƯỜI MẪU: 181 CM', 999000, N'SPW43_1.jpg', N'SPW43_2.jpg', N'SPW43_3.jpg', N'SPW43_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW44', N'ĐẦM OVERSIZE', N'NSX01', N'L08', N'Đầm dáng thụng, cổ tròn, dài tay.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 699000, N'SPW44_1.jpg', N'SPW44_2.jpg', N'SPW44_3.jpg', N'SPW44_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW45', N'VÁY ĐẦM HỌA TIẾT', N'NSX02', N'L08', N'Đầm dài tay, cổ tròn. Họa tiết hoa tráng cao su phía trước.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 799000, N'SPW45_1.jpg', N'SPW45_2.jpg', N'SPW45_3.jpg', N'SPW45_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW46', N'ĐẦM REN', N'NSX03', N'L08', N'Đầm cổ chữ V, tay ngắn rộng. May ráp ở eo, dáng xòe. Vải lót bên trong cùng màu. Cài bằng khóa kéo ẩn ở đường may sau lưng.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 1999000, N'SPW46_1.jpg', N'SPW46_2.jpg', N'SPW46_3.jpg', N'SPW46_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW47', N'VÁY TAY BỒNG', N'NSX04', N'L08', N'Đầm cổ chữ V, tay lỡ, phồng. Túi hai bên ẩn ở đường may. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW47_1.jpg', N'SPW47_2.jpg', N'SPW47_3.jpg', N'SPW47_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW48', N'ÁO KHOÁC KIMONO', N'NSX05', N'L08', N'Áo kimono cổ chữ V, dài tay. Xẻ trước. Vạt đắp chéo kiểu xà rông, có dây buộc bên hông khác màu.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1999000, N'SPW48_1.jpg', N'SPW48_2.jpg', N'SPW48_3.jpg', N'SPW48_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW49', N'QUẦN KẺ CA RÔ', N'NSX06', N'L09', N'Quần có cạp cao lật ngược và đính khuy kim loại. Túi hai bên. Khóa kéo ẩn ở đường may bên hông.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 1199000, N'SPW49_1.jpg', N'SPW49_2.jpg', N'SPW49_3.jpg', N'SPW49_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW50', N'QUẦN TUXEDO', N'NSX01', N'L09', N'Quần tuxedo có dải trang trí hai bên và cạp phối vải. Túi hai bên và túi sau. Cài phía trước bằng khóa kéo, móc gài và khuy.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1199000, N'SPW50_1.jpg', N'SPW50_2.jpg', N'SPW50_3.jpg', N'SPW50_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW51', N'QUẦN LEGGING', N'NSX02', N'L09', N'Quần legging dáng dài, có đường kẻ sọc hai bên ống quần đính chi tiết kim loại màu vàng trang trí.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 899000, N'SPW51_1.jpg', N'SPW51_2.jpg', N'SPW51_3.jpg', N'SPW51_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW52', N'QUẦN LEGGING', N'NSX03', N'L09', N'Quần legging dáng dài có dải kẻ sọc đính trang trí hai bên ống quần.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 899000, N'SPW52_1.jpg', N'SPW52_2.jpg', N'SPW52_3.jpg', N'SPW52_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW53', N'QUẦN KẺ CA RÔ', N'NSX04', N'L09', N'Quần in họa tiết kẻ ca rô. Túi hai bên và túi sau. Cài trước bằng khóa kéo, móc gài và khuy. 

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW53_1.jpg', N'SPW53_2.jpg', N'SPW53_3.jpg', N'SPW53_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW54', N'QUẦN VẢI NHỰA VINYL', N'NSX05', N'L09', N'Quần ống đứng bằng vải nhựa vinyl. Xẻ gấu bên hông. Cài phía trước bằng khóa kéo, khuy cài và khuy bấm.CHIỀU CAO NGƯỜI MẪU: 178 CM ', 1599000, N'SPW54_1.jpg', N'SPW54_2.jpg', N'SPW54_3.jpg', N'SPW54_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW55', N'QUẦN CẠP XẾP LI', N'NSX06', N'L09', N'Quần họa tiết rằn ri nhuộm màu, cạp xếp nếp. Thắt lưng bằng vải cùng loại. Gấu co giãn. Túi hai bên và túi sau.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1999000, N'SPW55_1.jpg', N'SPW55_2.jpg', N'SPW55_3.jpg', N'SPW55_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW56', N'QUẦN LEGGING LỬNG', N'NSX01', N'L09', N'Quần legging có dải kẻ sọc khác màu hai bên ống quần.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 499000, N'SPW56_1.jpg', N'SPW56_2.jpg', N'SPW56_3.jpg', N'SPW56_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW57', N'QUẦN KẺ PHỐI VẢI', N'NSX02', N'L09', N'Quần cạp cao, kèm thắt lưng màu tương phản bằng vải nhung. Xếp li phía trước. Túi ở đường may. CHIỀU CAO NGƯỜI MẪU: 178 CM', 1599000, N'SPW57_1.jpg', N'SPW57_2.jpg', N'SPW57_3.jpg', N'SPW57_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW58', N'QUẦN HỌA TIẾT HOA', N'NSX03', N'L09', N'Quần ống suông cạp lỡ. Túi hai bên. Túi sau lưng có viền. Cài phía trước bằng khóa kéo và móc kim loại.

CHIỀU CAO NGƯỜI MẪU: 179 CM', 1199000, N'SPW58_1.jpg', N'SPW58_2.jpg', N'SPW58_3.jpg', N'SPW58_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW59', N'QUẦN ỐNG RỘNG', N'NSX04', N'L09', N'Quần dệt kim ống rộng có cạp bằng vải gân nổi co giãn.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1399000, N'SPW59_1.jpg', N'SPW59_2.jpg', N'SPW59_3.jpg', N'SPW59_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW60', N'QUẦN JOGGING KẺ SỌC', N'NSX05', N'L09', N'Quần jogging có đường kẻ sọc khác màu hai bên ống quần. Có túi hai bên hông, xẻ gấu hai bên ống quần. Cạp co giãn.

CHIỀU CAO NGƯỜI MẪU: 178 CM', 1999000, N'SPW60_1.jpg', N'SPW60_2.jpg', N'SPW60_3.jpg', N'SPW60_4.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaNhaSanXuat], [MaLoai], [Thongtin], [GiaBan], [Hinh1], [Hinh2], [Hinh3], [Hinh4]) VALUES (N'SPW61', N'Sản Phẩm Test', N'NSX02', N'L05', N'ádad', 3999999, N'SPW61_1.jpg', N'SPW61_2.webp', N'SPW61_3.jpg', NULL)
GO
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Đang xử lý')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Hoàn thành')
INSERT [dbo].[TinhTrang] ([MaTinhTrang], [TenTinhTrang]) VALUES (4, N'Hủy bỏ')
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhanSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhanSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhanSanXuat]
GO
USE [master]
GO
ALTER DATABASE [QLQuanAo] SET  READ_WRITE 
GO
