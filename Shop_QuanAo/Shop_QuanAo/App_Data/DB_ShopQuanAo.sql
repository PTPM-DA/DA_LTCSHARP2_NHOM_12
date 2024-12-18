USE [ShopQuanAo]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[MaCuaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenCuaHang] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
	[MaDanhMucCha] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChiGiaoHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiGiaoHang](
	[MaDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[DiaChiChiTiet] [nvarchar](255) NOT NULL,
	[ThanhPho] [nvarchar](100) NOT NULL,
	[QuanHuyen] [nvarchar](100) NULL,
	[MaBuuChinh] [nvarchar](20) NULL,
	[QuocGia] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[MaCuaHang] [int] NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
	[TrangThaiDonHang] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKhoHang] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaCuaHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[MaVaiTro] [int] NOT NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](200) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[HinhAnh] [nvarchar](255) NULL,
	[MaDanhMuc] [int] NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[TrangThaiThanhToan] [nvarchar](50) NULL,
	[NgayThanhToan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[MaVaiTro] [int] IDENTITY(1,1) NOT NULL,
	[TenVaiTro] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VanChuyen]    Script Date: 11/27/2024 3:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanChuyen](
	[MaVanChuyen] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[NhaVanChuyen] [nvarchar](100) NULL,
	[MaVanDon] [nvarchar](100) NULL,
	[TrangThaiVanChuyen] [nvarchar](50) NULL,
	[NgayGiaoDuKien] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVanChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] ON 

INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MaDanhMucCha]) VALUES (1, N'Áo Thun', 1)
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MaDanhMucCha]) VALUES (2, N'Áo Sơ Mi', 2)
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MaDanhMucCha]) VALUES (3, N'Quần Short', 3)
INSERT [dbo].[DanhMucSanPham] ([MaDanhMuc], [TenDanhMuc], [MaDanhMucCha]) VALUES (4, N'Quần Dài', 4)
SET IDENTITY_INSERT [dbo].[DanhMucSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGioHang], [MaNguoiDung], [MaSanPham], [SoLuong]) VALUES (8, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [SoDienThoai], [MaVaiTro], [NgayTao]) VALUES (5, N'dat', N'dat@gmail.com', N'$2a$10$MFpzLK.QfehN88t6wy6yg.ELA0Ra9fAQIo/MvnwwOFltX.ECpSLf.', N'0123456789', 1, CAST(N'2024-11-26T01:34:05.373' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [SoDienThoai], [MaVaiTro], [NgayTao]) VALUES (10, N'dat1', N'dat1@gmail.com', N'$2a$10$.NiH2opTZeqZTYtUyhh/meSnemU8NX38luYxyG7IwvNw35GY0s3cK', N'1231231211', 2, CAST(N'2024-11-26T02:32:23.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (1, N'Bear10', N'Áo thun Bear10 unisex MONSTER X STREET phông tay lỡ nam nữ form rộng Local Brand', CAST(199000.00 AS Decimal(18, 2)), N'Bear10.jpg', 1, CAST(N'2024-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (2, N'Life', N'Thương hiệu: Monster X Street Xuất xứ: Việt Nam Chiều dài tay áo: Tay ngắn Dáng kiểu áo: Rộng Cổ áo: Cổ tròn Chất liệu: Cotton', CAST(110000.00 AS Decimal(18, 2)), N'2.jpg', 1, CAST(N'2024-10-25T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (3, N'Áo Thun Lót Trắng', N'Phong cách: Cơ bản Xuất xứ: Việt Nam Chiều dài tay áo: Tay ngắn Dáng kiểu áo: Rộng Cổ áo: Cổ tròn Chất liệu: Cotton Mẫu: Trơn, In Rất lớn: Có', CAST(30000.00 AS Decimal(18, 2)), N'3.jpg', 1, CAST(N'2024-11-24T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (4, N'Áo Thun ESEA', N'Thương hiệu: ESEA Phong cách: Thể thao, Cơ bản, Hàn Quốc, Retro, Đường phố Tall Fit: Không Chiều dài tay áo: Tay ngắn Dáng kiểu áo: Rộng Cổ áo: Cổ tròn Chất liệu: Cotton Mẫu: Khác, In Mùa: Mùa hè Rất lớn: Không', CAST(131000.00 AS Decimal(18, 2)), N'4.jpg', 1, CAST(N'2024-11-21T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (6, N'Áo Thun Unisex ', N'Áo Thun Unisex Local Brand Lourents Signature Tee - TEE1 Đen', CAST(300000.00 AS Decimal(18, 2)), N'6.jpg', 1, CAST(N'2024-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (7, N'Quần Kaki Nam', N'Thương hiệu: KRIK Chiều dài quần: Chiều dài đầy đủ Phong cách: Cơ bản, Hàn Quốc, Đường phố, Công sở Tall Fit: Không Loại khóa: Khóa kéo Chất liệu: kaki Xuất xứ: Việt Nam Mẫu: Trơn Kiểu dáng quần: Slim Fit Rất lớn: Không Bản eo: Khác', CAST(479000.00 AS Decimal(18, 2)), N'7.jpg', 4, CAST(N'2024-11-07T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (8, N'Quần Short Nam Nữ', N'Thương hiệu: PN STORE Tall Fit: Có Xuất xứ: Việt Nam Dịp: Hằng Ngày Loại quần short: Cargo Chất liệu: kaki Mẫu: Trơn Rất lớn: Có Bản eo: Giữa eo Sản phẩm đặt theo yêu cầu: Đúng Phong cách: Thể thao, Hàn Quốc, Đường phố', CAST(98000.00 AS Decimal(18, 2)), N'8.jpg', 3, CAST(N'2024-11-03T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (9, N'Quần Short LOUSON', N'Thương hiệu: LOUSON Phong cách: Hàn Quốc Xuất xứ: Việt Nam Loại quần short: Jersey Chất liệu: kaki Mẫu: Trơn', CAST(198000.00 AS Decimal(18, 2)), N'9.jpg', 3, CAST(N'2024-11-17T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (10, N'Quần Short ESEA', N'Thương hiệu: ESEA Phong cách: Thể thao, Cơ bản, Hàn Quốc, Retro, Đường phố Tall Fit: Không Dịp: Hằng Ngày Loại quần short: Bermudas Chất liệu: Khác Mẫu: Khác, Trơn Rất lớn: Không Bản eo: Giữa eo', CAST(118000.00 AS Decimal(18, 2)), N'10.jpg', 3, CAST(N'2024-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (11, N'Quần Thể Thao', N'Thương hiệu: MENTORIS Phong cách: Thể thao Loại khóa: Khóa kéo Xuất xứ: Việt Nam Dịp: Hằng Ngày Loại quần short: Jersey Chất liệu: Sợi tổng hợp Mẫu: Trơn Bản eo: Giữa eo', CAST(249000.00 AS Decimal(18, 2)), N'11.jpg', 3, CAST(N'2024-07-12T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (12, N'Quần Tianlesiwei ', N'Thương hiệu: TIANLESIWEI Chiều dài quần: Chiều dài đầy đủ Phong cách: Thể thao, Retro, Đường phố Tall Fit: Không Chất liệu: Cotton Xuất xứ: Trung Quốc Mẫu: Trơn Kiểu dáng quần: Đứng Rất lớn: Không Bản eo: Giữa eo', CAST(226000.00 AS Decimal(18, 2)), N'12.jpg', 4, CAST(N'2024-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (14, N'Áo Sơ Mi Basic', N'Áo Sơ Mi Basic Nữ Ninomaxx tay Tay Dài 2312009 Thương hiệu: NINOMAXX | Loại: Áo sơ mi', CAST(300300.00 AS Decimal(18, 2)), N'14.jpg', 2, CAST(N'2024-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (16, N'Áo sơ mi sọc', N'áo đẹp chất liệu vải tốt', CAST(300030.00 AS Decimal(18, 2)), N'16.jpg', 2, CAST(N'2024-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (17, N'Áo Sơ Mi Đen', N'Áo sơ mi nam tay dài giấu nút 3 màu trơn  - Chất liệu: lụa nến - Hàng có sẵn, ship toàn quốc. - Size : M (45-57KG), L (58-65KG), XL(66-75KG)', CAST(170000.00 AS Decimal(18, 2)), N'17.jpg', 2, CAST(N'2024-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (18, N'Sơ Mi Xanh', N'Thoáng mát, Phong cách cá tính', CAST(250000.00 AS Decimal(18, 2)), N'18.jpg', 2, CAST(N'2024-11-22T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (19, N'Quần Công Sở', N'Quần công sở nam công sở Quần thẳng, Quần vest co giãn, Quần dài nhẹ', CAST(359000.00 AS Decimal(18, 2)), N'19.jpg', 4, CAST(N'2024-11-03T00:00:00.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [HinhAnh], [MaDanhMuc], [NgayTao]) VALUES (20, N'Quần Ống Đứng', N'Quần ống đứng rộng rãi của Mỹ, quần dài nam cạp cao ống rộng, cạp chun có thể điều chỉnh viền, quần chạy bộ thường ngày', CAST(229000.00 AS Decimal(18, 2)), N'20.jpg', 4, CAST(N'2024-11-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([MaVaiTro], [TenVaiTro]) VALUES (1, N'Admin')
INSERT [dbo].[VaiTro] ([MaVaiTro], [TenVaiTro]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D10534DE5D7A9D]    Script Date: 11/27/2024 3:04:51 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT (N'Chờ xử lý') FOR [TrangThaiDonHang]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[KhoHang] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  DEFAULT (N'Chờ xử lý') FOR [TrangThaiThanhToan]
GO
ALTER TABLE [dbo].[VanChuyen] ADD  DEFAULT (N'Đang chuẩn bị') FOR [TrangThaiVanChuyen]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhMucSanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMucCha])
REFERENCES [dbo].[DanhMucSanPham] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[DiaChiGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VaiTro] ([MaVaiTro])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSanPham] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[VanChuyen]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
