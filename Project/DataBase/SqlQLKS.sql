CREATE DATABASE QuanLyKhachSan
GO

USE QuanLyKhachSan
GO
--DichVu--
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) primary key NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
	[MaNDV] [int] NULL,
	[Gia] [int] NOT NULL,
)

GO

------------HoaDon----------------

CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1)primary key NOT NULL,
	[MaTP] [int] NULL,
	[MaSDDV] [int] NULL,
	[MaNV] [int] NULL,
	[NgayLap] [date] NOT NULL,
	[ThanhTien] [int] NULL,
)
GO
------------KhachHang---------------
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1)primary key NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[CMND] [char](10) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [char](11) NOT NULL,
	[Email] [varchar](250) NOT NULL,
)

GO
-------------LoaiPhong------------

CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [int] IDENTITY(1,1) primary key NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
)

GO

-----------------NhanVien-------------

CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) primary key NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[CMND] [char](10) NOT NULL,
	[Email] [varchar](250) NOT NULL,
)

GO

---------------NhomDV--------------

CREATE TABLE [dbo].[NhomDV](
	[MaNDV] [int] IDENTITY(1,1) primary key NOT NULL,
	[TenNDV] [nvarchar](50) NOT NULL,
)

GO

------------Phong-------
CREATE TABLE [dbo].[Phong](
	[MaP] [int] IDENTITY(1,1) primary key NOT NULL,
	[TenP] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[MaLP] [int] NULL,
	[Anh] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,)
GO


----------------SDDV-----------
CREATE TABLE [dbo].[SDDichVu](
	[MaSDDV] [int] IDENTITY(1,1) primary key NOT NULL,
	[MaDV] [int] NULL,
	[MaKH] [int] NULL,

)
GO
---------------ThuePhong-------
CREATE TABLE [dbo].[ThuePhong](
	[MaTP] [int] IDENTITY(1,1) primary key NOT NULL,
	[MaP] [int] NULL,
	[MaKH] [int] NULL,
	[NgayDen] [date] NOT NULL,
	[NgayDi] [date] NOT NULL,
)

GO

CREATE TABLE PhanQuyen
(
id int identity primary key,
UserName nvarchar(30) unique not null,
PassWord nvarchar(30) not null,
Quyen int
)
go


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