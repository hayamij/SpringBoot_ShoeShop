-- T-SQL Script for ShopGiay Database
-- SQL Server Version
-- Generation Date: Oct 09, 2025

USE master;
GO

-- Create Database
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'shopgiay')
BEGIN
    CREATE DATABASE shopgiay;
END
GO

USE shopgiay;
GO

-- ============================================
-- Table: binhluan1
-- ============================================
IF OBJECT_ID('binhluan1', 'U') IS NOT NULL
    DROP TABLE binhluan1;
GO

CREATE TABLE binhluan1 (
    mabl INT PRIMARY KEY IDENTITY(1,1),
    mahh INT NOT NULL,
    makh INT NOT NULL,
    ngaybl DATE NOT NULL,
    noidung NVARCHAR(MAX) NOT NULL
);
GO

-- ============================================
-- Table: comment
-- ============================================
IF OBJECT_ID('comment', 'U') IS NOT NULL
    DROP TABLE comment;
GO

CREATE TABLE comment (
    idcomment INT PRIMARY KEY IDENTITY(1,1),
    idkh INT NOT NULL,
    idhanghoa INT NOT NULL,
    content NVARCHAR(MAX) NOT NULL,
    luotthich INT NOT NULL
);
GO

-- Insert data into comment
SET IDENTITY_INSERT comment ON;
INSERT INTO comment (idcomment, idkh, idhanghoa, content, luotthich) VALUES
(1, 3, 24, N'  đẹp', 0),
(2, 3, 22, N'  thấp', 0);
SET IDENTITY_INSERT comment OFF;
GO

-- ============================================
-- Table: mausac
-- ============================================
IF OBJECT_ID('mausac', 'U') IS NOT NULL
    DROP TABLE mausac;
GO

CREATE TABLE mausac (
    Idmau INT PRIMARY KEY IDENTITY(1,1),
    mausac NVARCHAR(100) NOT NULL
);
GO

-- Insert data into mausac
SET IDENTITY_INSERT mausac ON;
INSERT INTO mausac (Idmau, mausac) VALUES
(1, N'Màu Trắng'),
(2, N' Màu Hồng'),
(3, N'Màu Xanh Navy'),
(4, N'Màu Be Đậm'),
(5, N'Màu đen'),
(6, N'Màu be'),
(7, N'Màu kem'),
(8, N'Màu Xám Nhạt');
SET IDENTITY_INSERT mausac OFF;
GO

-- ============================================
-- Table: sizegiay
-- ============================================
IF OBJECT_ID('sizegiay', 'U') IS NOT NULL
    DROP TABLE sizegiay;
GO

CREATE TABLE sizegiay (
    Idsize INT PRIMARY KEY IDENTITY(1,1),
    size INT NOT NULL
);
GO

-- Insert data into sizegiay
SET IDENTITY_INSERT sizegiay ON;
INSERT INTO sizegiay (Idsize, size) VALUES
(1, 35),
(2, 36),
(3, 37),
(4, 38);
SET IDENTITY_INSERT sizegiay OFF;
GO

-- ============================================
-- Table: loai
-- ============================================
IF OBJECT_ID('loai', 'U') IS NOT NULL
    DROP TABLE loai;
GO

CREATE TABLE loai (
    maloai INT PRIMARY KEY IDENTITY(1,1),
    tenloai NVARCHAR(50) NOT NULL,
    idmenu INT NOT NULL
);
GO

-- Insert data into loai
SET IDENTITY_INSERT loai ON;
INSERT INTO loai (maloai, tenloai, idmenu) VALUES
(1, N'Giày Cao Gót', 3),
(3, N'Giày Sandals', 3),
(4, N'Giày Búp Bê', 3),
(5, N'Giày Sneaker', 3),
(6, N'Giày Boots', 3),
(7, N'Giày Da Thật', 3),
(8, N'Giày Lười', 3),
(10, N'Túi da', 4),
(13, N'túi da', 4),
(14, N'Túi cá sấu', 4),
(15, N'Túi đà điểu', 4),
(16, N'Túi da bò', 4),
(17, N'Túi thường', 4);
SET IDENTITY_INSERT loai OFF;
GO

-- ============================================
-- Table: hanghoa
-- ============================================
IF OBJECT_ID('hanghoa', 'U') IS NOT NULL
    DROP TABLE hanghoa;
GO

CREATE TABLE hanghoa (
    mahh INT PRIMARY KEY IDENTITY(1,1),
    tenhh NVARCHAR(60) NOT NULL,
    giamgia FLOAT NOT NULL,
    hinh NVARCHAR(50) NOT NULL,
    maloai INT NOT NULL,
    dacbiet BIT NOT NULL,
    soluotxem INT NOT NULL,
    ngaylap DATE NOT NULL,
    mota NVARCHAR(2000) NOT NULL
);
GO

-- Insert data into hanghoa
SET IDENTITY_INSERT hanghoa ON;
INSERT INTO hanghoa (mahh, tenhh, giamgia, hinh, maloai, dacbiet, soluotxem, ngaylap, mota) VALUES
(1, N'Giày Slingback Canvas', 0, '1.jpg', 1, 1, 5, '2020-08-08', N'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi'),
(2, N'Giày Slingback Canvas', 0, '2.jpg', 1, 1, 3, '2020-08-08', N'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi'),
(3, N'Giày Slingback Canvas  ', 300000, '3.jpg', 1, 0, 4, '2020-08-08', N'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi'),
(4, N'Giày Sandal Bệt Mũi Nhọn', 0, '4.jpg', 3, 0, 1, '2020-08-08', N'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học'),
(5, N'Giày Sandal Bệt Mũi Nhọn ', 0, '5.jpg', 3, 1, 0, '2020-08-08', N'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học'),
(6, N'Giày Sandal Bệt Mũi Nhọn', 0, '6.jpg', 3, 0, 0, '2020-08-08', N'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học'),
(9, N'Giày Sneaker Neon Light 2 ', 0, '7.jpg', 5, 1, 1, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi học'),
(10, N'Giày Sneaker Neon Light 2 ', 0, '8.jpg', 5, 1, 1, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi học'),
(11, N'Giày Cao Gót Bít Mũi Nhọn', 0, '9.jpg', 1, 0, 1, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc'),
(12, N'Giày Cao Gót Neon Light ', 350000, '10.jpg', 1, 0, 2, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc'),
(15, N'Giày Slingback Mũi Nhọn Quai Co Giãn ', 0, '11.jpg', 1, 0, 1, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc'),
(16, N'Giày Slingback Mũi Nhọn Quai Co Giãn', 300000, '12.jpg', 1, 0, 2, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc'),
(17, N'Giày Slingback Mũi Nhọn Quai Co Giãn ', 0, '13.jpg', 1, 1, 2, '2020-08-08', N'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc'),
(18, N'Dép Quai Chữ V Đan Chéo Vân Cá Sấu ', 300000, '14.jpg', 8, 0, 1, '2020-08-08', N'Da nhân tạo, Phù hợp đi chơi'),
(19, N'Dép Quai Chữ V Đan Chéo Vân Cá Sấu', 0, '15.jpg', 8, 1, 1, '2020-08-08', N'Da nhân tạo, Phù hợp đi chơi'),
(20, N'Dép Quai Chữ V Đan Chéo Vân Cá Sấu', 0, '16.jpg', 8, 0, 1, '2020-08-08', N'Da nhân tạo, Phù hợp đi chơi'),
(21, N'Giày Búp Bê Đính Nơ Phối Họa Tiết Nhiệt Đới', 0, '21.jpg', 4, 0, 1, '2020-08-15', N'Giày Búp Bê Đính Nơ Phối Họa Tiết Nhiệt Đới. Thích hợp đi làm, du lịch, đi dạo phố'),
(22, N'giày búp bê', 50000, '22.jpg', 4, 0, 1, '2020-08-04', N'Thoải mái, đẹp'),
(24, N'Giày cao gót - vàng', 0, '24.jpg', 7, 1, 1, '2020-07-04', N'Thời trang đi tiệc, đi chơi, dạ hội'),
(25, N'giày thể thao', 0, 'images.jpg', 5, 0, 4, '2023-10-30', N'đẹp'),
(26, N'giày lười dáng thể thao', 0, 'test.jpg', 5, 0, 4, '2023-10-30', N'đẹp, phong cách'),
(27, N'giày công sở', 0, 'book.jpg', 1, 0, 4, '2023-10-30', N'đẹp, phong cách'),
(28, N'Giày Slingback Canvas ', 0, 'test.jpg', 1, 0, 4, '2023-10-30', N'đẹp, phong cách'),
(29, N'giày lười dáng thể thao', 0, 'test.jpg', 5, 0, 5, '2023-10-30', N'đẹp, phong cách'),
(30, N'giày thể thao', 0, 'test.jpg', 5, 0, 3, '2023-10-30', N'đẹp, phong cách'),
(31, N'giày aab', 0, 'test.jpg', 1, 0, 3, '2023-10-30', N'đẹp, phong cách'),
(32, N'giày lười dáng thể thao', 0, 'images.jpg', 4, 0, 12, '2023-10-30', N'đẹp'),
(33, N'giày thể thao', 0, 'test.jpg', 4, 0, 0, '2023-10-30', N'đẹp'),
(34, N'giày thể thao', 0, '10.jpg', 1, 0, 3, '2023-10-30', N'đẹp'),
(35, N'giày thể thao', 0, '9.jpg', 4, 0, 5, '2023-10-09', N'đẹp'),
(36, N'giày lười dáng thể thao', 0, '8.jpg', 4, 0, 2, '2023-10-30', N'đẹp'),
(37, N'giày lười dáng thể thao', 0, '7.jpg', 3, 0, 0, '2023-10-30', N'đẹp'),
(39, N'giày lười dáng thể thao', 0, '6.jpg', 5, 0, 0, '2023-10-30', N'đẹp'),
(40, N'giày thể thao', 0, '5.jpg', 1, 0, 0, '2023-10-23', N'đẹp'),
(41, N'giày thể thao', 0, '4.jpg', 1, 0, 0, '2023-10-30', N'đẹp'),
(42, N'giày công sở', 300000, '3.jpg', 1, 0, 14, '2023-10-30', N'đẹp, phong cách, thời trang'),
(43, N'giày thể thao', 0, '2.jpg', 5, 0, 1, '2023-10-03', N'đẹp,hhhh'),
(44, N'giày thể thao', 0, '1.jpg', 5, 0, 15, '2023-10-03', N'đẹp, thời trang, công sở');
SET IDENTITY_INSERT hanghoa OFF;
GO

-- ============================================
-- Table: cthanghoa
-- ============================================
IF OBJECT_ID('cthanghoa', 'U') IS NOT NULL
    DROP TABLE cthanghoa;
GO

CREATE TABLE cthanghoa (
    idhanghoa INT NOT NULL,
    idmau INT NOT NULL,
    idsize INT NOT NULL,
    dongia FLOAT NOT NULL,
    soluongton INT NOT NULL,
    PRIMARY KEY (idhanghoa, idmau, idsize)
);
GO

-- Insert data into cthanghoa
INSERT INTO cthanghoa (idhanghoa, idmau, idsize, dongia, soluongton) VALUES
(1, 1, 1, 500000, 10),
(1, 2, 1, 600000, 12),
(2, 2, 1, 700000, 12),
(3, 1, 1, 800000, 12),
(4, 1, 1, 500000, 12),
(5, 1, 1, 500000, 12),
(6, 1, 1, 500000, 12),
(9, 1, 1, 500000, 12),
(11, 1, 1, 500000, 12),
(12, 1, 1, 500000, 12),
(15, 3, 1, 450000, 12),
(16, 1, 1, 500000, 12),
(17, 1, 1, 600000, 12),
(18, 1, 1, 500000, 12),
(19, 1, 1, 650000, 12),
(20, 1, 1, 500000, 12),
(21, 1, 1, 500000, 12),
(22, 1, 1, 500000, 12),
(22, 2, 2, 500000, 4),
(22, 3, 3, 500000, 4),
(24, 1, 1, 500000, 12),
(24, 2, 2, 500000, 5);
GO

-- ============================================
-- Table: khachhang
-- ============================================
IF OBJECT_ID('khachhang', 'U') IS NOT NULL
    DROP TABLE khachhang;
GO

CREATE TABLE khachhang (
    makh INT PRIMARY KEY IDENTITY(1,1),
    tenkh NVARCHAR(50) NOT NULL,
    username NVARCHAR(25) NOT NULL,
    matkhau NVARCHAR(100) NOT NULL,
    email NVARCHAR(50) NOT NULL,
    diachi NVARCHAR(MAX) NULL,
    sodienthoai NVARCHAR(12) NULL
);
GO

-- Insert data into khachhang
SET IDENTITY_INSERT khachhang ON;
INSERT INTO khachhang (makh, tenkh, username, matkhau, email, diachi, sodienthoai) VALUES
(1, N'tú trần', 'tutran', '8f8e2909a8f683c31159ee51d593a642', 'tu@gmail.com', 'hcm', '9090789678'),
(2, N'minh minh', 'minhminh', '8f8e2909a8f683c31159ee51d593a642', 'minh@gmail.com', N'bình định', '90907896789'),
(3, 'teo', 'teoteo', '3ff19fad9f5844248f601ab23381cc88', 'teo123@gmail.com', 'hcm', '9090789698'),
(4, N'ý nhi', 'nhinhi', '87f038af05196e3dfa958a521f6f400e', 'ngvynhi.itc@gmail.com', N'thoại ngọc hầu', '9090789699'),
(5, 'an new', 'namnam', '206a93184bcd24a5625312acf1a03922', 'nam@gmail.com', 'hcm', '13245'),
(6, 'an an', 'namnamnew', 'af57f975857768de31f3c083a1c163cc', 'chautrantrucly@gmail.com', 'hcm', '13245'),
(7, N'tuấn', 'tuantuan', '206a93184bcd24a5625312acf1a03922', 'tuan@gmail.com', 'hcm', '23455'),
(8, N'thúy', 'thuybui', '206a93184bcd24a5625312acf1a03922', 'thuy@gmail.com', 'hcm', '124324234'),
(9, 'nam anh', 'namnamanh', '206a93184bcd24a5625312acf1a03922', 'namanh@gmail.com', 'hcm', '123456');
SET IDENTITY_INSERT khachhang OFF;
GO

-- ============================================
-- Table: hoadon
-- ============================================
IF OBJECT_ID('hoadon', 'U') IS NOT NULL
    DROP TABLE hoadon;
GO

CREATE TABLE hoadon (
    masohd INT PRIMARY KEY IDENTITY(1,1),
    makh INT NOT NULL,
    ngaydat DATE NOT NULL,
    tongtien INT NOT NULL
);
GO

-- Insert data into hoadon
SET IDENTITY_INSERT hoadon ON;
INSERT INTO hoadon (masohd, makh, ngaydat, tongtien) VALUES
(1, 3, '2023-10-16', 1500000),
(2, 3, '2023-10-16', 1500000),
(3, 6, '2025-10-06', 0),
(4, 6, '2025-10-06', 2500000),
(5, 6, '2025-10-06', 2500000),
(6, 6, '2025-10-06', 0),
(7, 6, '2025-10-06', 1000000);
SET IDENTITY_INSERT hoadon OFF;
GO

-- ============================================
-- Table: cthoadon
-- ============================================
IF OBJECT_ID('cthoadon', 'U') IS NOT NULL
    DROP TABLE cthoadon;
GO

CREATE TABLE cthoadon (
    masohd INT NOT NULL,
    mahh INT NOT NULL,
    soluongmua INT NOT NULL,
    mausac NVARCHAR(20) NOT NULL,
    size INT NOT NULL,
    thanhtien INT NOT NULL,
    tinhtrang INT NOT NULL,
    PRIMARY KEY (masohd, mahh)
);
GO

-- Insert data into cthoadon
INSERT INTO cthoadon (masohd, mahh, soluongmua, mausac, size, thanhtien, tinhtrang) VALUES
(1, 22, 1, N'Màu Xanh Navy', 36, 500000, 0),
(1, 24, 2, N' Màu Hồng', 35, 1000000, 0),
(2, 22, 1, N'Màu Xanh Navy', 36, 500000, 0),
(2, 24, 2, N' Màu Hồng', 35, 1000000, 0),
(4, 21, 1, N'Màu Trắng', 35, 500000, 0),
(4, 22, 2, N'Màu Trắng', 35, 1000000, 0),
(4, 24, 2, N'Màu Trắng', 35, 1000000, 0),
(5, 21, 1, N'Màu Trắng', 35, 500000, 0),
(5, 22, 2, N'Màu Trắng', 35, 1000000, 0),
(5, 24, 2, N'Màu Trắng', 35, 1000000, 0),
(7, 12, 1, N'Màu Trắng', 35, 500000, 0),
(7, 22, 1, N' Màu Hồng', 36, 500000, 0);
GO

-- ============================================
-- Table: nhanvien
-- ============================================
IF OBJECT_ID('nhanvien', 'U') IS NOT NULL
    DROP TABLE nhanvien;
GO

CREATE TABLE nhanvien (
    idnv INT PRIMARY KEY IDENTITY(1,1),
    hoten NVARCHAR(250) NOT NULL,
    dia NVARCHAR(MAX) NOT NULL,
    username NVARCHAR(250) NOT NULL,
    matkhau NVARCHAR(MAX) NOT NULL
);
GO

-- Insert data into nhanvien
SET IDENTITY_INSERT nhanvien ON;
INSERT INTO nhanvien (idnv, hoten, dia, username, matkhau) VALUES
(1, N'nguyễn hạo vy', 'hcm', 'admin', '123456');
SET IDENTITY_INSERT nhanvien OFF;
GO

PRINT 'Database shopgiay created successfully!';