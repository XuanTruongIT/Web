USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaTP] [int] NULL,
	[NgayLap] [date] NOT NULL,
	[ThanhTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[CMND] [char](10) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [char](11) NOT NULL,
	[Email] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[CMND] [char](10) NOT NULL,
	[Email] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[PassWord] [nvarchar](30) NOT NULL,
	[Quyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaP] [int] IDENTITY(1,1) NOT NULL,
	[TenP] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[MaLP] [int] NULL,
	[Anh] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 12/21/2016 12:21:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuePhong](
	[MaTP] [int] IDENTITY(1,1) NOT NULL,
	[MaP] [int] NULL,
	[MaKH] [int] NULL,
	[NgayDen] [date] NOT NULL,
	[NgayDi] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

GO
INSERT [dbo].[HoaDon] ([MaHD], [MaTP], [NgayLap], [ThanhTien]) VALUES (1, 1, CAST(N'2016-10-26' AS Date), 32000000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaTP], [NgayLap], [ThanhTien]) VALUES (2, 2, CAST(N'2016-12-06' AS Date), 90000000)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (1, N'Nguyễn Bảo Ngọc', N'12345678  ', N'Nữ', N'Hà Nội', N'962218661  ', N'ngocnb@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (2, N'Hoàng Mạnh Quân', N'12345689  ', N'Nam', N'Hà Nội', N'962218662  ', N'quanhm@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

GO
INSERT [dbo].[LoaiPhong] ([MaLP], [TenPhong]) VALUES (1, N'Phòng đơn')
GO
INSERT [dbo].[LoaiPhong] ([MaLP], [TenPhong]) VALUES (2, N'Phòng đôi')
GO
INSERT [dbo].[LoaiPhong] ([MaLP], [TenPhong]) VALUES (3, N'Phòng V.I.P')
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [Email]) VALUES (1, N'Nguyễn Ngọc Khánh', N'Nam', N'12345689  ', N'khanhnn@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [Email]) VALUES (2, N'Dương Hà My', N'Nữ', N'12345789  ', N'mydh@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

GO
INSERT [dbo].[PhanQuyen] ([id], [UserName], [PassWord], [Quyen]) VALUES (1, N'admin', N'123456', 1)
GO
INSERT [dbo].[PhanQuyen] ([id], [UserName], [PassWord], [Quyen]) VALUES (2, N'customer', N'123456', 2)
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (1, N'Phòng 101', N'Trống', 1, N'images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (2, N'Phòng 102', N'Đã thuê', 1, N'images/2.jpg', 2000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (3, N'Phòng 103', N'Trống', 2, N'images/3.jpg', 3000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (4, N'Phòng 104', N'Trống', 1, N'images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (5, N'Phòng 201', N'Trống', 2, N'images/3.jpg', 3000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (6, N'Phòng 202', N'Trống', 1, N'images/4.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (7, N'Phòng 203', N'Trống', 3, N'images/5.jpg', 7000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (8, N'Phòng 204', N'Đã thuê', 3, N'images/8.jpg', 5000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (9, N'Phòng 301', N'Trống', 1, N'images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (10, N'Phòng 302', N'Trống', 1, N'images/2.jpg', 800000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (11, N'Phòng 303', N'Trống', 2, N'images/3.jpg', 3000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (12, N'Phòng 404', N'Trống', 1, N'images/1.jpg', 600000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (13, N'Phòng 501', N'Trống', 2, N'images/3.jpg', 3000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (14, N'Phòng 502', N'Trống', 1, N'images/4.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (15, N'Phòng 503', N'Trống', 3, N'images/5.jpg', 10000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (16, N'Phòng 504', N'Trống', 3, N'images/8.jpg', 5000000)
GO
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuePhong] ON 

GO
INSERT [dbo].[ThuePhong] ([MaTP], [MaP], [MaKH], [NgayDen], [NgayDi]) VALUES (1, 2, 1, CAST(N'2016-10-10' AS Date), CAST(N'2016-10-26' AS Date))
GO
INSERT [dbo].[ThuePhong] ([MaTP], [MaP], [MaKH], [NgayDen], [NgayDi]) VALUES (2, 8, 2, CAST(N'2016-11-20' AS Date), CAST(N'2016-12-06' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ThuePhong] OFF
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_MaTP] FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThuePhong] ([MaTP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_MaTP]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_LoaiPhong_MaLP] FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_LoaiPhong_MaLP]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_MaKH]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_MaP] FOREIGN KEY([MaP])
REFERENCES [dbo].[Phong] ([MaP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_MaP]
GO
