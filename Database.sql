
CREATE DATABASE QuanLyDiemSV

USE [QuanLyDiemSV]
CREATE TABLE [dbo].[BangDiem](
	[maLopTC_PK] [nvarchar](30) NOT NULL,
	[maSV_PK] [nvarchar](30) NOT NULL,
	[diemChuyenCan] [float] NOT NULL,
	[diemGiuaKy] [float] NOT NULL,
	[diemThi] [float] NOT NULL,
	[diemTBC] [float] NOT NULL,
 CONSTRAINT [khoa_chinh_TBLop] PRIMARY KEY CLUSTERED 
(
	[maLopTC_PK] ASC,
	[maSV_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[maGV] [nvarchar](30) NOT NULL,
	[tenGV] [nvarchar](30) NOT NULL,
	[ngaySinh] [datetime] NOT NULL,
	[gioiTinh] [nvarchar](5) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[soDienThoai] [nchar](14) NOT NULL,
	[email] [nchar](50) NOT NULL,
	[hocHam] [nvarchar](30) NULL,
	[hocVi] [nvarchar](30) NULL,
	[maKhoaFK] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [nvarchar](30) NOT NULL,
	[tenKhoa] [nvarchar](50) NOT NULL,
	[namThanhLap] [int] NOT NULL,
	[soDienThoai] [nchar](13) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHanhChinh](
	[maLopHC] [nvarchar](30) NOT NULL,
	[maGVChuNhiemFK] [nvarchar](30)  NULL,
	[maKhoaFK] [nvarchar](30) NOT NULL,
	[namNhapHocCuaSV] [int] NULL,
 CONSTRAINT [PK_LopHanhChinh] PRIMARY KEY CLUSTERED 
(
	[maLopHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopTinChi](
	[maLopTC] [nvarchar](30) NOT NULL,
	[maMonFK] [nvarchar](30) NOT NULL,
	[maGiangVienFK] [nvarchar](30)  NULL,
	[hocKy] [int] NOT NULL,
	[namHoc] [nvarchar](15) NOT NULL,
	[maKhoaFK] [nvarchar](30) NULL,
 CONSTRAINT [PK_LopTinChi] PRIMARY KEY CLUSTERED 
(
	[maLopTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMon] [nvarchar](30) NOT NULL,
	[tenMon] [nchar](30) NOT NULL,
	[soTinChi] [int] NOT NULL,
	[maKhoaFK] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [nvarchar](30) NOT NULL,
	[tenSV] [nvarchar](30) NOT NULL,
	[ngaySinh] [datetime] NOT NULL,
	[gioiTinh] [nchar](10) NOT NULL,
	[diaChi] [nvarchar](100) NOT NULL,
	[soDienThoai] [nchar](15) NOT NULL,
	[email] [nchar](50) NOT NULL,
	[maLopHC_FK] [nvarchar](30)  NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0002', N'0002', 8, 10, 10, 9.8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'0003', 8.6, 7.5, 9.4, 8.94)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10001', 9, 8, 7, 7.4)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10002', 10, 9, 7.8, 8.26)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10003', 9, 7, 6, 6.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10004', 8, 7, 9, 8.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10006', 7, 5, 9, 8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10007', 5, 7, 8, 7.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0003', N'18A10009', 7, 6, 8, 7.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0004', N'0004', 8, 9, 9, 8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'0005', 10, 7, 7, 6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10001', 8, 0, 7, 5.7)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10002', 9, 7.6, 5, 5.92)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10003', 6, 7, 8, 7.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10004', 0, 0, 0, 0)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10006', 7, 6, 8, 7.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10007', 9, 8, 5, 6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0005', N'18A10009', 7, 6, 8, 7.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0006', N'0006', 8, 5, 5, 5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0007', N'0007', 5, 4, 7, 6.2)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0008', N'0008', 6, 5, 6, 5.8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0008', N'18A10001', 9, 8, 7, 7.4)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0008', N'18A10004', 8, 6, 3, 4.1)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0008', N'18A10007', 7, 9, 8, 8.1)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0008', N'18A10009', 9, 6, 7, 7)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'0009', 7, 8, 9, 8.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10001', 6, 7, 8, 7.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10002', 9, 8, 4, 5.3)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10003', 7, 8, 9, 8.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10004', 8, 7, 5, 5.7)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10006', 9, 6, 6, 6.3)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10007', 9, 8, 4, 5.3)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0009', N'18A10009', 9, 8, 3, 4.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'0010', 7, 9, 8, 8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'18A10001', 6, 8, 7, 7.1)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'18A10002', 9, 8, 4, 5.3)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'18A10004', 7, 4, 3, 3.6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'18A10006', 7, 5, 9, 8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0010', N'18A10009', 7, 6, 8, 7.5)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0011', N'0011', 4, 7, 7, 6.7)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0012', N'0012', 7, 8, 8, 7.9)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0013', N'0013', 5, 3, 4, 3.9)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0014', N'0014', 8, 6, 6, 6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0015', N'0015', 6, 8, 6, 6.4)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0016', N'0016', 10, 9, 8, 9)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0017', N'0017', 10, 6, 8, 7.8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0018', N'0018', 8, 8, 8, 8)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0001', 7, 8, 8, 7.9)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0002', 9, 9, 9, 9)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0004', 6, 6, 6, 6)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0010', 5.5, 5.5, 9, 7.95)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0017', 7.7, 8.8, 6.9, 7.36)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0019', N'0018', 5.4, 7.6, 9.7, 8.85)
INSERT [dbo].[BangDiem] ([maLopTC_PK], [maSV_PK], [diemChuyenCan], [diemGiuaKy], [diemThi], [diemTBC]) VALUES (N'0ltc', N'0ttt', 8, 8, 8, 8)
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0001', N'Nguyễn Thị Hương', CAST(N'1970-02-07T00:00:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'0339371056    ', N'thuyhuong@gmail.com                               ', N'Tiến Sĩ', NULL, N'0001')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0002', N'Lưu Thị Lan', CAST(N'1960-08-07T00:00:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'0231456987    ', N'lulan@gmail.com                                   ', N'Thạc Sĩ', NULL, N'0001')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0003', N'Đào Hương Giang', CAST(N'1970-12-06T00:00:00.000' AS DateTime), N'Nữ', N'Nghệ An', N'01239635478   ', N'huonggiang@gmail.com                              ', N'Cử Nhân', NULL, N'0001')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0004', N'Vũ Đình	Hòa', CAST(N'1965-06-09T00:00:00.000' AS DateTime), N'Nam', N'Nam Định', N'0893152355    ', N'dinhhoa@gmail.com                                 ', NULL, N'Giáo Sư', N'0001')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0005', N'Phạm Văn Việt', CAST(N'1975-09-12T00:00:00.000' AS DateTime), N'Nam', N'Quảng Nam', N'0123896547    ', N'phamviet@gmail.com                                ', NULL, N'P. Giáo Sư', N'0001')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0006', N'Vũ Thị Linh', CAST(N'1952-09-12T00:00:00.000' AS DateTime), N'Nữ', N'Thái Bình', N'0369874563    ', N'vulinh@gmail.com                                  ', N'Cử Nhân', NULL, N'0002')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0007', N'Hoàng Minh Tâm', CAST(N'1970-12-11T00:00:00.000' AS DateTime), N'Nữ', N'Ninh Bình', N'0325698741    ', N'minhtam@gmail.com                                 ', N'Cử Nhân', NULL, N'0002')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0008', N'Nguyễn Văn Hải', CAST(N'1960-01-11T00:00:00.000' AS DateTime), N'Nam', N'Nghệ An', N'0129658745    ', N'vanhai@gmail.com                                  ', N'Thạc Sĩ', NULL, N'0002')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0009', N'Nguyễn Thế Tài', CAST(N'1960-11-22T00:00:00.000' AS DateTime), N'Nam', N'Bình Định', N'0963587456    ', N'nguyenthe@gmail.com                               ', N'Tiến Sĩ', NULL, N'0002')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0010', N'Bùi Đức Trung', CAST(N'1975-05-30T00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'0189635478    ', N'ductrung@gmail.com                                ', N'Cử Nhân', NULL, N'0002')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0011', N'Nguyễn Hữu Hải', CAST(N'1970-05-15T00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'089632589     ', N'huuhai@gmail.com                                  ', N'Thạc Sĩ', NULL, N'0003')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0012', N'Nguyễn Thị Hải', CAST(N'1955-12-30T00:00:00.000' AS DateTime), N'Nữ', N'Nam Định', N'0963856478    ', N'nguyenhai@gmail.com                               ', N'Cử Nhân', NULL, N'0003')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0013', N'Hoàng Thị Phượng', CAST(N'1972-05-29T00:00:00.000' AS DateTime), N'Nữ', N'Thái Bình', N'0789632589    ', N'hoangphuong@gmail.com                             ', N'Thạc Sĩ', NULL, N'0003')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0014', N'Nguyễn Văn Thắng', CAST(N'1975-09-30T00:00:00.000' AS DateTime), N'Nam', N'Thái Bình', N'0963965956    ', N'nguyenthang@gmail.com                             ', N'Thạc Sĩ', NULL, N'0003')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0015', N'Bùi Thị Minh', CAST(N'1971-04-22T00:00:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'056325639     ', N'buiminh@gmail.com                                 ', N'Tiến Sĩ', NULL, N'0003')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0016', N'Nguyễn Văn Tiến', CAST(N'1962-06-15T00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'0978632145    ', N'nguyentien@gmail.com                              ', NULL, N'P. Giáo Sư', N'0004')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0017', N'Vũ Văn Việt', CAST(N'1989-06-27T00:00:00.000' AS DateTime), N'Nam', N'Hải Dương', N'0963258741    ', N'vuviet@gmail.com                                  ', N'Cử Nhân', NULL, N'0004')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0018', N'Đoàn Anh Thư', CAST(N'1970-03-25T00:00:00.000' AS DateTime), N'Nữ', N'Thanh Hóa', N'096325999     ', N'anhthu@gmail.com                                  ', N'Thạc Sĩ', NULL, N'0004')
INSERT [dbo].[GiangVien] ([maGV], [tenGV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [hocHam], [hocVi], [maKhoaFK]) VALUES (N'0019', N'Nguyễn Minh Tâm', CAST(N'1945-06-18T00:00:00.000' AS DateTime), N'Nam', N'Nghệ An', N'0836957896    ', N'minhtam@gmail.com                                 ', NULL, N'Giáo Sư', N'0004')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0001', N'CNTT', 1950, N'0123456780   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0002', N'Luật', 1950, N'0123456781   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0003', N'Tiếng Anh', 1950, N'0123456782   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0004', N'Du Lịch', 1950, N'0123456783   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0005', N'Tiếng Trung Quốc', 1958, N'0290838082   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0006', N'Thiết Kế Công Nghiệp', 1973, N'0928482019   ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa], [namThanhLap], [soDienThoai]) VALUES (N'0007', N'Điện Tử', 1982, N'0192830938   ')
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1710A01', N'0003', N'0002', 2017)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1710A02', N'0002', N'0001', 2017)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1710A03', N'0003', N'0001', 2017)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1710A04', N'0004', N'0001', 2017)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1710A05', N'0005', N'0001', 2017)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1810A01', N'0006', N'0002', 2018)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1810A02', N'0007', N'0002', 2018)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1810A03', N'0008', N'0002', 2018)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1810A04', N'0009', N'0002', 2018)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1810A05', N'0010', N'0002', 2018)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1910A01', N'0011', N'0002', 2019)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1910A02', N'0012', N'0003', 2019)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1910A03', N'0013', N'0003', 2019)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1910A04', N'0014', N'0003', 2019)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'1910A05', N'0015', N'0003', 2019)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'2010A01', N'0016', N'0004', 2020)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'2010A02', N'0017', N'0004', 2020)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'2010A03', N'0018', N'0004', 2020)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'2010A04', N'0019', N'0004', 2020)
INSERT [dbo].[LopHanhChinh] ([maLopHC], [maGVChuNhiemFK], [maKhoaFK], [namNhapHocCuaSV]) VALUES (N'2010B01', N'0002', N'0001', 2020)
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0001', N'0001', N'0001', 1, N'2019-2020', N'0001')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0002', N'0012', N'0002', 1, N'2019-2020', N'0003')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0003', N'0006', N'0003', 1, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0004', N'0004', N'0004', 1, N'2019-2020', N'0001')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0005', N'0007', N'0005', 1, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0006', N'0014', N'0006', 1, N'2019-2020', N'0003')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0007', N'0017', N'0007', 1, N'2019-2020', N'0004')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0008', N'0008', N'0008', 1, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0009', N'0009', N'0009', 1, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0010', N'0010', N'0010', 1, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0011', N'0011', N'0011', 2, N'2019-2020', N'0003')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0012', N'0017', N'0012', 2, N'2019-2020', N'0004')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0013', N'0009', N'0013', 2, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0014', N'0008', N'0014', 2, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0015', N'0010', N'0015', 2, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0016', N'0006', N'0016', 2, N'2019-2020', N'0002')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0017', N'0012', N'0017', 2, N'2019-2020', N'0003')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0018', N'0003', N'0018', 2, N'2019-2020', N'0001')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0019', N'0019', N'0019', 2, N'2019-2020', N'0004')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0ltc', N'0001', N'0016', 3, N'2019-2020', N'0001')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0them1', N'0001', N'0016', 3, N'2021-2022', N'0001')
INSERT [dbo].[LopTinChi] ([maLopTC], [maMonFK], [maGiangVienFK], [hocKy], [namHoc], [maKhoaFK]) VALUES (N'0them2', N'0020', N'0013', 2, N'2020-2021', N'0004')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0001', N'Quản Trị Mạng                 ', 3, N'0001')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0002', N'Mã Nguồn Mở                   ', 3, N'0001')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0003', N'Lập Trình Web                 ', 4, N'0001')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0004', N'Giải Tích 1                   ', 3, N'0001')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0005', N'Lập Trình Cơ Sở               ', 4, N'0001')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0006', N'Xã hội học đại cương          ', 3, N'0002')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0007', N'	Cơ sở văn hóa Việt Nam       ', 4, N'0002')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0008', N'Luật đất đai                  ', 3, N'0002')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0009', N'	Luật Tố tụng dân sự          ', 3, N'0002')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0010', N'	Tư pháp quốc tế              ', 4, N'0002')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0011', N'Tiếng Anh 1                   ', 3, N'0003')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0012', N'Ngoại ngữ cơ sở 1             ', 3, N'0003')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0013', N'	Kỹ năng bổ trợ             ', 3, N'0003')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0014', N'	Tiếng Việt thực hành       ', 3, N'0003')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0015', N'	Tư duy phê phán              ', 4, N'0003')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0016', N' Lịch sử văn minh thế giới    ', 3, N'0004')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0017', N'Văn hóa các nước ASEAN        ', 3, N'0004')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0018', N'	Ngôn ngữ học tiếng Anh 2     ', 3, N'0004')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0019', N'Đất nước học Anh-Mỹ           ', 3, N'0004')
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [soTinChi], [maKhoaFK]) VALUES (N'0020', N'Phiên dịch TA                 ', 4, N'0004')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0001', N'Lê Hà Chi', CAST(N'1999-03-19T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Nội', N'09325698745    ', N'hachi@gmail.com                                   ', N'1710A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0002', N'Nguyễn Thảo Nguyên', CAST(N'1999-08-20T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Nội', N'08965412369    ', N'thaonguyen@gmail.com                              ', N'1710A02')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0003', N'Lưu Thế Anh', CAST(N'1999-09-27T00:00:00.000' AS DateTime), N'Nam       ', N'Nam ĐỊnh', N'0965874521     ', N'thanh@gmail.com                                   ', N'1710A02')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0004', N'Nguyễn Văn Việt', CAST(N'1999-08-03T00:00:00.000' AS DateTime), N'Nam       ', N'Thái Bình', N'0987632589     ', N'nguyenvan@gmail.com                               ', N'1710A03')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0005', N'Nguyễn Thị An', CAST(N'1999-06-30T00:00:00.000' AS DateTime), N'Nam       ', N'Hà Nam', N'0986874563     ', N'nguyenan@gmail.com                                ', N'1710A04')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0006', N'Hoàng Văn Thắng', CAST(N'2000-06-30T00:00:00.000' AS DateTime), N'Nam       ', N'Thái Bình', N'0987456321     ', N'hoangthang@gmail.com                              ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0007', N'Bùi Trường Giang', CAST(N'2000-06-25T00:00:00.000' AS DateTime), N'Nam       ', N'Nam Định', N'0987456321     ', N'truonggiang@gmail.com                             ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0008', N'Nguyễn Phương Nga', CAST(N'2000-07-05T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Giang', N'0987456325     ', N'phuongnga@gmail.com                               ', N'1810A02')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0009', N'Nguyễn Thị Tuyết', CAST(N'2000-09-15T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Nội', N'0863245631     ', N'nguyenthi@gmail.com                               ', N'1810A03')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0010', N'Võ Thúy Hiền', CAST(N'2000-12-30T00:00:00.000' AS DateTime), N'Nữ        ', N'Thái Bình', N'0863254123     ', N'thuyhien@gmail.com                                ', N'1810A04')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0011', N'Nguyễn Phương Nam', CAST(N'2000-11-29T00:00:00.000' AS DateTime), N'Nam       ', N'Nghệ An', N'0986325412     ', N'phuongnam@gmial.com                               ', N'1910A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0012', N'Phạm Văn Hải', CAST(N'2000-01-30T00:00:00.000' AS DateTime), N'Nam       ', N'Hà Tĩnh', N'0863215652     ', N'vanhai@gmail.com                                  ', N'1910A02')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0013', N'Đinh Văn Nam', CAST(N'2000-06-28T00:00:00.000' AS DateTime), N'Nam       ', N'Hà Nam', N'0789652365     ', N'dinhhau@gmail.com                                 ', N'1910A03')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0014', N'Hà Đức Hiếu', CAST(N'2000-05-12T00:00:00.000' AS DateTime), N'Nam       ', N'Hải Phòng', N'0863254125     ', N'duchieu@gmail.com                                 ', N'1910A04')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0015', N'Nguyễn Thị  Việt', CAST(N'2000-01-12T00:00:00.000' AS DateTime), N'Nữ        ', N'Hải Dương', N'0896523214     ', N'nguyenviet@gmail.com                              ', N'1910A05')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0016', N'Nguyễn Hà Giang', CAST(N'2001-06-25T00:00:00.000' AS DateTime), N'Nữ        ', N'Nghệ An', N'0896523145     ', N'hagiang@gmail.com                                 ', N'2010A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0017', N'Lý Hoàng Tùng', CAST(N'2001-06-15T00:00:00.000' AS DateTime), N'Nam       ', N'Thanh Hóa', N'0856321451     ', N'hoangtung@gmail.com                               ', N'2010A02')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0018', N'Chu Thị Thảo', CAST(N'2001-03-12T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Nội', N'0896547895     ', N'chuthao@gmail.com                                 ', N'2010A03')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0019', N'Cao Thị Thu', CAST(N'2001-02-17T00:00:00.000' AS DateTime), N'Nữ        ', N'Hà Nội', N'0896541233     ', N'caothu@gmail.com                                  ', N'2010A04')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'0ttt', N'Sao Cũng được', CAST(N'2001-09-19T00:00:00.000' AS DateTime), N'Nam       ', N'Tkkkk', N'029840382      ', N'uuuu@gmail.com                                    ', N'2010A03')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10001', N'hoàng mạnh quân', CAST(N'2000-09-23T00:00:00.000' AS DateTime), N'Nam       ', N'hà nội', N'03948003848    ', N'ksifw@gmail.com                                   ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10002', N'trần mai nhi', CAST(N'2000-05-06T00:00:00.000' AS DateTime), N'Nữ        ', N'đà nẵng', N'030394803      ', N'kwoierw@gmail.com                                 ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10003', N'Trần Minh Quang', CAST(N'2000-05-03T00:00:00.000' AS DateTime), N'Nam       ', N'hà nội', N'029380238      ', N'kowir@gmail.com                                   ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10004', N'phạm như Quỳnh', CAST(N'2000-05-10T00:00:00.000' AS DateTime), N'Nữ        ', N'quảng ninh', N'0298403203     ', N'lskfiw3@gmail.com                                 ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10006', N'Đào Bá Lộc', CAST(N'2000-12-04T00:00:00.000' AS DateTime), N'Nam       ', N'thái nguyên', N'0984020482     ', N'alkdiw@gmail.com                                  ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10007', N'Đông Phương Bất Bại', CAST(N'2000-02-16T00:00:00.000' AS DateTime), N'Nữ        ', N'hà nội', N'0298202833     ', N'lakfiw@gmail.com                                  ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10009', N'Bạch Tử Họa', CAST(N'2000-09-27T00:00:00.000' AS DateTime), N'Nam       ', N'cao bằng', N'039489303      ', N'akfdjsi@gmail.com                                 ', N'1810A01')
INSERT [dbo].[SinhVien] ([maSV], [tenSV], [ngaySinh], [gioiTinh], [diaChi], [soDienThoai], [email], [maLopHC_FK]) VALUES (N'18A10011', N'Mai Văn Thêm', CAST(N'2000-09-17T00:00:00.000' AS DateTime), N'Nữ        ', N'Đà nẵng', N'029802888      ', N'kfhrq@gmail.com                                   ', N'1810A01')

select * from BangDiem
select * from GiangVien
select * from LopHanhChinh
select * from LopTinChi
select * from MonHoc
select * from SinhVien