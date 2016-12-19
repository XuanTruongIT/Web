USE master
GO

CREATE DATABASE QuanLyKhachSan
GO

USE QuanLyKhachSan
GO


CREATE TABLE LoaiPhong
(
MaLP INT IDENTITY PRIMARY KEY,
TenPhong NVARCHAR(50) NOT NULL,	
)


CREATE TABLE Phong
(
	MaP INT IDENTITY PRIMARY KEY,
	TenP NVARCHAR(50) NOT NULL,
	TrangThai NVARCHAR(50) NOT NULL,
	MaLP INT ,
	Anh NVARCHAR(50) NOT NULL,
	Gia INT NOT NULL,
	CONSTRAINT FK_LoaiPhong_MaLP FOREIGN KEY (MaLP) REFERENCES LoaiPhong(MaLP)
	ON DELETE CASCADE
	ON UPDATE CASCADE
)

CREATE TABLE KhachHang
(
	MaKH INT IDENTITY PRIMARY KEY,
	TenKH NVARCHAR(50) NOT NULL,
	CMND CHAR(10) NOT NULL,
	GioiTinh NVARCHAR(5) NOT NULL,
	DiaChi NVARCHAR(50) NOT NULL,
	SoDT CHAR(11) NOT NULL,
	Email VARCHAR(200) NOT NULL
)

CREATE TABLE ThuePhong
(
	MaTP INT IDENTITY PRIMARY KEY,
	MaP INT,
	MaKH INT ,
	NgayDen DATE NOT NULL,
	NgayDi DATE NOT NULL,
	CONSTRAINT FK_ThuePhong_MaP FOREIGN KEY (MaP)  REFERENCES Phong(MaP)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT FK_ThuePhong_MaKH FOREIGN KEY (MaKH)  REFERENCES KhachHang(MaKH)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
)

CREATE TABLE HoaDon
(
	MaHD INT IDENTITY PRIMARY KEY,
	MaTP INT,
	NgayLap DATE NOT NULL,
	ThanhTien INT NOT NULL,
	CONSTRAINT FK_HoaDon_MaTP FOREIGN KEY (MaTP)  REFERENCES ThuePhong(MaTP)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
)

CREATE TABLE NhanVien
(
	MaNV INT IDENTITY PRIMARY KEY,
	TenNV NVARCHAR(50) NOT NULL,
	GioiTinh NVARCHAR(5) NOT NULL,
	CMND CHAR(10) NOT NULL,
	Email VARCHAR(200) NOT NULL,
)

CREATE TABLE PhanQuyen
(
	id INT IDENTITY PRIMARY KEY,
	UserName VARCHAR(30) NOT NULL,
	PassWord NVARCHAR(30) NOT NULL,
	Quyen INT NOT NULL,
)

--------------- THÊM DỮ LIỆU ------------------


--------LOẠI PHÒNG -------------
INSERT INTO LoaiPhong VALUES(N'Phòng đơn')
INSERT INTO LoaiPhong VALUES(N'Phòng đôi')
INSERT INTO LoaiPhong VALUES(N'Phòng V.I.P')

----------PHÒNG-----------------


INSERT INTO Phong VALUES(N'Phòng 101',N'Trống',1,N'images/1.jpg',1000000)
INSERT INTO Phong VALUES(N'Phòng 102',N'Đã thuê',1,N'images/2.jpg',2000000)
INSERT INTO Phong VALUES(N'Phòng 103',N'Trống',2,N'images/3.jpg',3000000)
INSERT INTO Phong VALUES(N'Phòng 104',N'Trống',1,N'images/1.jpg',1000000)
INSERT INTO Phong VALUES(N'Phòng 201',N'Trống',2,N'images/3.jpg',3000000)
INSERT INTO Phong VALUES(N'Phòng 202',N'Trống',1,N'images/4.jpg',1500000)
INSERT INTO Phong VALUES(N'Phòng 203',N'Trống',3,N'images/5.jpg',5000000)
INSERT INTO Phong VALUES(N'Phòng 204',N'Đã thuê',3,N'images/8.jpg',5000000)


---------------------KHÁCH HÀNG -------------------

INSERT INTO KhachHang VALUES(N'Nguyễn Bảo Ngọc',012345678,N'Nữ',N'Hà Nội',0962218661,N'ngocnb@gmail.com')
INSERT INTO KhachHang VALUES(N'Hoàng Mạnh Quân',012345689,N'Nam',N'Hà Nội',0962218662,N'quanhm@gmail.com')


--------------THUÊ PHÒNG -----------------------


INSERT INTO ThuePhong VALUES(2,1,N'2016-10-10',N'2016-10-26')
INSERT INTO ThuePhong VALUES(8,2,N'2016-11-20',N'2016-12-06')


-------------HÓA ĐƠN --------------
INSERT INTO HoaDon VALUES(1,N'2016-10-26',32000000)
INSERT INTO HoaDon VALUES(2,N'2016-12-06',90000000)

-------------NHÂN VIÊN -------------

INSERT INTO NhanVien VALUES(N'Nguyễn Ngọc Khánh',N'Nam',012345689,N'khanhnn@gmail.com')
INSERT INTO NhanVien VALUES(N'Dương Hà My',N'Nữ',012345789,N'mydh@gmail.com')

-------------PHÂN QUYỀN --------------

INSERT INTO PhanQuyen VALUES(N'admin',123456,1)
INSERT INTO PhanQuyen VALUES(N'customer',123456,2)