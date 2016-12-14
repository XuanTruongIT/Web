USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
	[MaNDV] [int] NULL,
	[Gia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaTP] [int] NULL,
	[MaSDDV] [int] NULL,
	[MaNV] [int] NULL,
	[NgayLap] [date] NOT NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/14/2016 4:01:58 PM ******/
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
	[GioiTinh] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [char](11) NOT NULL,
	[Email] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/14/2016 4:01:58 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[CMND] [char](10) NOT NULL,
	[Email] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomDV]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomDV](
	[MaNDV] [int] IDENTITY(1,1) NOT NULL,
	[TenNDV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[PassWord] [nvarchar](30) NOT NULL,
	[Quyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/14/2016 4:01:58 PM ******/
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
/****** Object:  Table [dbo].[SDDichVu]    Script Date: 12/14/2016 4:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SDDichVu](
	[MaSDDV] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [int] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSDDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 12/14/2016 4:01:58 PM ******/
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
SET IDENTITY_INSERT [dbo].[DichVu] ON 

GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [MaNDV], [Gia]) VALUES (1, N'Góc Internet', 1, 15000)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [MaNDV], [Gia]) VALUES (2, N'Bữa ăn trong ngày', 2, 50000)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [MaNDV], [Gia]) VALUES (3, N'Spa', 3, 200000)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [MaNDV], [Gia]) VALUES (4, N'Tổ chức sự kiện', 4, 1000000)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [MaNDV], [Gia]) VALUES (5, N'Buffer', 2, 200000)
GO
SET IDENTITY_INSERT [dbo].[DichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

GO
INSERT [dbo].[HoaDon] ([MaHD], [MaTP], [MaSDDV], [MaNV], [NgayLap], [ThanhTien]) VALUES (1, 1, 1, 1, CAST(N'2016-10-13' AS Date), 3500000)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (1, N'Nguyễn Vân Anh', N'123456987 ', N'Nữ', N'Hà Nội', N'0962218661 ', N'vananh@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (2, N'Nguyễn Phương Nam', N'022456789 ', N'Nam', N'Hà Nội', N'0965123789 ', N'panh@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (3, N'Lê Hữu Thọ', N'123446589 ', N'Nam', N'Hà Nội', N'0963214578 ', N'tholh@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (4, N'Nguyễn Xuân Phúc', N'011223456 ', N'Nam', N'Hà Nội', N'0978266881 ', N'phucnx@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (5, N'Trần Nguyễn Lương Lộc', N'012334789 ', N'Nam', N'Hà Nội', N'0978426556 ', N'loctn@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (6, N'Dương Hà My', N'022314589 ', N'Nữ', N'Hà Nội', N'0968686861 ', N'mydh@gmail.com')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [CMND], [GioiTinh], [DiaChi], [SoDT], [Email]) VALUES (7, N'Vũ Ngọc Minh', N'012648778 ', N'Nữ', N'Hà Nội', N'0978145223 ', N'minhvn@gmail.com')
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
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [Email]) VALUES (1, N'Dương Văn Thắng', N'Nam', N'122124998 ', N'duongthang995@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [Email]) VALUES (2, N'Phạm Xuân Trường', N'Nam', N'123456789 ', N'phamtruong9x@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [Email]) VALUES (3, N'Nguyễn Thị Vy', N'Nữ', N'122233345 ', N'vywalle@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomDV] ON 

GO
INSERT [dbo].[NhomDV] ([MaNDV], [TenNDV]) VALUES (1, N'Giải trí')
GO
INSERT [dbo].[NhomDV] ([MaNDV], [TenNDV]) VALUES (2, N'Ẩm thực')
GO
INSERT [dbo].[NhomDV] ([MaNDV], [TenNDV]) VALUES (3, N'Làm đẹp')
GO
INSERT [dbo].[NhomDV] ([MaNDV], [TenNDV]) VALUES (4, N'Dịch vụ khác')
GO
SET IDENTITY_INSERT [dbo].[NhomDV] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

GO
INSERT [dbo].[PhanQuyen] ([id], [UserName], [PassWord], [Quyen]) VALUES (1, N'admin', N'123456', 1)
GO
INSERT [dbo].[PhanQuyen] ([id], [UserName], [PassWord], [Quyen]) VALUES (3, N'customer', N'123456', 2)
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (1, N'Phòng 101', N'Trống', 1, N'../images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (2, N'Phòng 201', N'Đã thuê', 2, N'../images/2.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (3, N'Phòng 301', N'Trống', 3, N'../images/3.jpg', 2000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (4, N'Phòng 401', N'Đã thuê', 1, N'../images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (5, N'Phòng 501', N'Trống', 2, N'../images/2.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (6, N'Phòng 602', N'Đã thuê', 3, N'../images/3.jpg', 2000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (7, N'Phòng 102', N'Trống', 1, N'../images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (9, N'Phòng 202', N'Trống', 2, N'../images/2.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (10, N'Phòng 302', N'Trống', 1, N'../images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (11, N'Phòng 402', N'Trống', 2, N'../images/2.jpg', 1500000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (12, N'Phòng 502', N'Trống', 1, N'../images/1.jpg', 1000000)
GO
INSERT [dbo].[Phong] ([MaP], [TenP], [TrangThai], [MaLP], [Anh], [Gia]) VALUES (13, N'Phòng 601', N'Trống', 1, N'../images/1.jpg', 1000000)
GO
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[SDDichVu] ON 

GO
INSERT [dbo].[SDDichVu] ([MaSDDV], [MaDV], [MaKH]) VALUES (1, 1, 1)
GO
INSERT [dbo].[SDDichVu] ([MaSDDV], [MaDV], [MaKH]) VALUES (2, 2, 3)
GO
INSERT [dbo].[SDDichVu] ([MaSDDV], [MaDV], [MaKH]) VALUES (3, 3, 4)
GO
INSERT [dbo].[SDDichVu] ([MaSDDV], [MaDV], [MaKH]) VALUES (4, 4, 2)
GO
SET IDENTITY_INSERT [dbo].[SDDichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuePhong] ON 

GO
INSERT [dbo].[ThuePhong] ([MaTP], [MaP], [MaKH], [NgayDen], [NgayDi]) VALUES (1, 2, 1, CAST(N'2016-10-10' AS Date), CAST(N'2016-10-13' AS Date))
GO
INSERT [dbo].[ThuePhong] ([MaTP], [MaP], [MaKH], [NgayDen], [NgayDi]) VALUES (2, 4, 2, CAST(N'2016-11-11' AS Date), CAST(N'2016-11-12' AS Date))
GO
INSERT [dbo].[ThuePhong] ([MaTP], [MaP], [MaKH], [NgayDen], [NgayDi]) VALUES (3, 6, 3, CAST(N'2016-11-12' AS Date), CAST(N'2016-11-22' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ThuePhong] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__PhanQuye__C9F284561CD744C6]    Script Date: 12/14/2016 4:01:58 PM ******/
ALTER TABLE [dbo].[PhanQuyen] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([MaNDV])
REFERENCES [dbo].[NhomDV] ([MaNDV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaSDDV])
REFERENCES [dbo].[SDDichVu] ([MaSDDV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThuePhong] ([MaTP])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[SDDichVu]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[SDDichVu]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD FOREIGN KEY([MaP])
REFERENCES [dbo].[Phong] ([MaP])
GO
