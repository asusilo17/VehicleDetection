USE [ANPR]
GO
ALTER TABLE [dbo].[TransVehiceLicense] DROP CONSTRAINT [DF__TransVehi__tvl_r__5DCAEF64]
GO
ALTER TABLE [dbo].[TransVehiceLicense] DROP CONSTRAINT [DF__TransVehi__tvl_c__5CD6CB2B]
GO
ALTER TABLE [dbo].[TransVehiceLicense] DROP CONSTRAINT [DF__TransVehi__tvl_l__5BE2A6F2]
GO
ALTER TABLE [dbo].[TransVehiceLicense] DROP CONSTRAINT [DF__TransVehi__tvl_d__5AEE82B9]
GO
ALTER TABLE [dbo].[TransBlackListIdentification] DROP CONSTRAINT [DF__TransBlac__tbli___01142BA1]
GO
ALTER TABLE [dbo].[TransBlackList] DROP CONSTRAINT [DF__TransBlac__tbl_s__7F2BE32F]
GO
ALTER TABLE [dbo].[TransBlackList] DROP CONSTRAINT [DF__TransBlac__tbl_c__7E37BEF6]
GO
/****** Object:  Table [dbo].[TransVehiceLicense]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransVehiceLicense]') AND type in (N'U'))
DROP TABLE [dbo].[TransVehiceLicense]
GO
/****** Object:  Table [dbo].[TransBlackListIdentification]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransBlackListIdentification]') AND type in (N'U'))
DROP TABLE [dbo].[TransBlackListIdentification]
GO
/****** Object:  Table [dbo].[TransBlackList]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransBlackList]') AND type in (N'U'))
DROP TABLE [dbo].[TransBlackList]
GO
/****** Object:  Table [dbo].[MasterVehicles]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterVehicles]') AND type in (N'U'))
DROP TABLE [dbo].[MasterVehicles]
GO
/****** Object:  Table [dbo].[MasterOwners]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterOwners]') AND type in (N'U'))
DROP TABLE [dbo].[MasterOwners]
GO
/****** Object:  Table [dbo].[MasterLocationDevice]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterLocationDevice]') AND type in (N'U'))
DROP TABLE [dbo].[MasterLocationDevice]
GO
/****** Object:  Table [dbo].[MasterKodeWilayah]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterKodeWilayah]') AND type in (N'U'))
DROP TABLE [dbo].[MasterKodeWilayah]
GO
/****** Object:  Table [dbo].[MasterAssetRecoveryTeams]    Script Date: 6/24/2025 1:56:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterAssetRecoveryTeams]') AND type in (N'U'))
DROP TABLE [dbo].[MasterAssetRecoveryTeams]
GO
/****** Object:  Table [dbo].[MasterAssetRecoveryTeams]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterAssetRecoveryTeams](
	[mar_karyawan_id] [int] IDENTITY(1,1) NOT NULL,
	[mar_full_name] [varchar](150) NULL,
	[mar_birthdate] [date] NULL,
	[mar_gender] [char](1) NULL,
	[mar_address] [text] NULL,
	[mar_phone_number] [varchar](20) NULL,
	[mar_telegram_id] [int] NULL,
	[mar_email] [varchar](50) NULL,
	[mar_mld_location_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterKodeWilayah]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterKodeWilayah](
	[mkw_id] [int] IDENTITY(1,1) NOT NULL,
	[mkw_kode] [varchar](2) NOT NULL,
	[mkw_daerah] [varchar](100) NOT NULL,
	[mkw_provinsi] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterLocationDevice]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterLocationDevice](
	[mld_location_id] [int] IDENTITY(1,1) NOT NULL,
	[mld_location_name] [varchar](150) NULL,
	[mld_location_type] [varchar](25) NULL,
	[mld_location_address] [text] NULL,
	[mld_location_latitude] [float] NULL,
	[mld_location_longitude] [float] NULL,
	[mld_maps] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterOwners]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterOwners](
	[mo_owner_id] [int] IDENTITY(1,1) NOT NULL,
	[mo_nik] [varchar](30) NOT NULL,
	[mo_first_name] [varchar](50) NOT NULL,
	[mo_middle_name] [varchar](50) NOT NULL,
	[mo_last_name] [varchar](50) NOT NULL,
	[mo_gender] [varchar](15) NULL,
	[mo_birthdate] [date] NULL,
	[mo_address] [text] NULL,
	[mo_phone_number] [varchar](20) NULL,
	[mo_email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mo_owner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterVehicles]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterVehicles](
	[mv_vehicle_id] [int] IDENTITY(1,1) NOT NULL,
	[mv_license_plate] [varchar](20) NOT NULL,
	[mv_brand] [varchar](50) NOT NULL,
	[mv_model] [varchar](50) NULL,
	[mv_year] [int] NULL,
	[mv_color] [varchar](20) NULL,
	[mv_chassis_number] [varchar](50) NULL,
	[mv_engine_number] [varchar](50) NULL,
	[mv_fuel_type] [varchar](20) NULL,
	[mv_engine_capacity] [int] NULL,
	[mv_mo_owner_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mv_vehicle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransBlackList]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransBlackList](
	[tbl_license_number] [varchar](15) NULL,
	[tbl_payment_date] [date] NULL,
	[tbl_lastpayment_date] [date] NULL,
	[tbl_tenur] [int] NULL,
	[tbl_created_datetime] [datetime] NULL,
	[tbl_status] [varchar](10) NULL,
	[tbl_detection_datetime] [datetime] NULL,
	[tbl_mld_location_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransBlackListIdentification]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransBlackListIdentification](
	[tbli_id] [int] IDENTITY(1,1) NOT NULL,
	[tbli_license_number] [varchar](15) NULL,
	[tbli_mld_location_id] [int] NULL,
	[tbli_detection_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransVehiceLicense]    Script Date: 6/24/2025 1:56:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransVehiceLicense](
	[tvl_id] [int] IDENTITY(1,1) NOT NULL,
	[tvl_device_id] [int] NULL,
	[tvl_location_id] [int] NULL,
	[tvl_file_name] [varchar](50) NULL,
	[tvl_predict_pct] [numeric](18, 5) NULL,
	[tvl_license_number] [varchar](15) NULL,
	[tvl_capture_datetime] [datetime] NULL,
	[tvl_label] [nvarchar](200) NULL,
	[tvl_confidence] [nvarchar](200) NULL,
	[tvl_latitude] [nvarchar](200) NULL,
	[tvl_longitude] [nvarchar](200) NULL,
	[tvl_remark] [varchar](200) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MasterAssetRecoveryTeams] ON 
GO
INSERT [dbo].[MasterAssetRecoveryTeams] ([mar_karyawan_id], [mar_full_name], [mar_birthdate], [mar_gender], [mar_address], [mar_phone_number], [mar_telegram_id], [mar_email], [mar_mld_location_id]) VALUES (1, N'Agus Susilo', CAST(N'1987-07-22' AS Date), N'M', N'', N'087788863300', 1949501363, N'susilo.agus17@gmail.com', 1)
GO
INSERT [dbo].[MasterAssetRecoveryTeams] ([mar_karyawan_id], [mar_full_name], [mar_birthdate], [mar_gender], [mar_address], [mar_phone_number], [mar_telegram_id], [mar_email], [mar_mld_location_id]) VALUES (2, N'M. Raihan Alfarizi', CAST(N'1988-03-04' AS Date), N'M', N'', N'087788863300', 1949501363, N'susilo.agus17@gmail.com', 1)
GO
INSERT [dbo].[MasterAssetRecoveryTeams] ([mar_karyawan_id], [mar_full_name], [mar_birthdate], [mar_gender], [mar_address], [mar_phone_number], [mar_telegram_id], [mar_email], [mar_mld_location_id]) VALUES (3, N'Agus Susilo', CAST(N'1987-07-22' AS Date), N'M', N'', N'087788863300', 1949501363, N'susilo.agus17@gmail.com', 2)
GO
INSERT [dbo].[MasterAssetRecoveryTeams] ([mar_karyawan_id], [mar_full_name], [mar_birthdate], [mar_gender], [mar_address], [mar_phone_number], [mar_telegram_id], [mar_email], [mar_mld_location_id]) VALUES (4, N'M. Raihan Alfarizi', CAST(N'1988-03-04' AS Date), N'M', N'', N'087788863300', 1949501363, N'susilo.agus17@gmail.com', 2)
GO
SET IDENTITY_INSERT [dbo].[MasterAssetRecoveryTeams] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterKodeWilayah] ON 
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (1, N'A', N'Serang, Pandeglang, Cilegon, Lebak', N'Banten')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (2, N'B', N'DKI Jakarta, Tangerang, Bekasi', N'DKI Jakarta')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (3, N'D', N'Bandung, Cimahi, Sumedang', N'Jawa Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (4, N'E', N'Cirebon, Indramayu, Majalengka, Kuningan', N'Jawa Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (5, N'F', N'Bogor, Sukabumi, Cianjur', N'Jawa Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (6, N'G', N'Pekalongan, Tegal, Pemalang, Brebes, Batang', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (7, N'H', N'Semarang, Demak, Kendal', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (8, N'K', N'Pati, Rembang, Kudus, Jepara, Blora, Grobogan', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (9, N'L', N'Surabaya', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (10, N'M', N'Bangkalan, Sampang, Pamekasan, Sumenep', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (11, N'N', N'Malang, Pasuruan, Probolinggo', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (12, N'P', N'Banyuwangi, Jember, Situbondo, Bondowoso', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (13, N'R', N'Banyumas, Cilacap, Purbalingga, Banjarnegara', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (14, N'AA', N'Magelang, Temanggung, Wonosobo, Purworejo', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (15, N'AB', N'Yogyakarta', N'DI Yogyakarta')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (16, N'AD', N'Surakarta (Solo), Boyolali, Sukoharjo, Sragen', N'Jawa Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (17, N'AE', N'Madiun, Ngawi, Magetan, Ponorogo', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (18, N'AG', N'Kediri, Blitar, Tulungagung', N'Jawa Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (19, N'BA', N'Padang, Bukittinggi, Payakumbuh', N'Sumatra Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (20, N'BB', N'Sibolga, Tapanuli', N'Sumatra Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (21, N'BD', N'Bengkulu', N'Bengkulu')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (22, N'BE', N'Bandar Lampung, Metro', N'Lampung')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (23, N'BG', N'Palembang, Lubuklinggau', N'Sumatra Selatan')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (24, N'BH', N'Jambi', N'Jambi')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (25, N'BK', N'Medan dan sekitarnya', N'Sumatra Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (26, N'BL', N'Aceh', N'Aceh')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (27, N'BM', N'Pekanbaru, Dumai', N'Riau')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (28, N'BN', N'Bangka Belitung', N'Bangka Belitung')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (29, N'DA', N'Banjarmasin', N'Kalimantan Selatan')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (30, N'KB', N'Pontianak, Singkawang', N'Kalimantan Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (31, N'KH', N'Palangkaraya', N'Kalimantan Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (32, N'KT', N'Samarinda, Balikpapan', N'Kalimantan Timur')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (33, N'KU', N'Tarakan', N'Kalimantan Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (34, N'DB', N'Manado, Bitung', N'Sulawesi Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (35, N'DD', N'Makassar, Parepare', N'Sulawesi Selatan')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (36, N'DM', N'Gorontalo', N'Gorontalo')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (37, N'DN', N'Palu', N'Sulawesi Tengah')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (38, N'DT', N'Kendari', N'Sulawesi Tenggara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (39, N'DC', N'Mamuju', N'Sulawesi Barat')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (40, N'DL', N'Sulawesi Utara bagian utara', N'Sulawesi Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (41, N'DE', N'Maluku', N'Maluku')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (42, N'DG', N'Maluku Utara', N'Maluku Utara')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (43, N'PA', N'Jayapura', N'Papua')
GO
INSERT [dbo].[MasterKodeWilayah] ([mkw_id], [mkw_kode], [mkw_daerah], [mkw_provinsi]) VALUES (44, N'PB', N'Manokwari, Sorong', N'Papua Barat')
GO
SET IDENTITY_INSERT [dbo].[MasterKodeWilayah] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterLocationDevice] ON 
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (1, N'Universitas Pamulang Kampus 2 (UNPAM Viktor)', N'Universitas', N'Jl. Raya Puspitek, Buaran, Kec. Pamulang, Kota Tangerang Selatan, Banten 15310', -6.3453825690797245, 106.69735300831616, N'https://maps.app.goo.gl/h97eYPJL97YTCvya9')
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (2, N'Universitas Pamulang', N'Universitas', N'Jl. Suryakencana No.1, Pamulang Bar., Kec. Pamulang, Kota Tangerang Selatan, Banten 15417', -6.3402642331091892, 106.73717849333812, N'https://maps.app.goo.gl/2udwxWngu78k8MzW7')
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (3, N'Universitas Pamulang Witana Harja', N'Universitas', N'Jl. Witana Harja No.18b, Pamulang Bar., Kec. Pamulang, Kota Tangerang Selatan, Banten 15417', -6.3426527875002536, 106.73031203897433, N'https://maps.app.goo.gl/o1Lxku9E1GVV5M7u8')
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (4, N'SMK Sasmita Jaya 2', N'Sekolah', N'MP3P+FRP, Jl. Smk Sasmita Jaya 2, Pamulang Bar., Kec. Pamulang, Kota Tangerang Selatan, Banten 15417', -6.3460735523334533, 106.73773099688036, N'https://maps.app.goo.gl/HghyhRTEDGLbK7Dj8')
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (5, N'Pamulang Square', N'Mall', N'Jl. Siliwangi No.7, Pamulang Bar., Kec. Pamulang, Kota Tangerang Selatan, Banten 15417', -6.3425903472441307, 106.72467566882487, N'https://maps.app.goo.gl/GZWRDeaiuM17EAN88')
GO
INSERT [dbo].[MasterLocationDevice] ([mld_location_id], [mld_location_name], [mld_location_type], [mld_location_address], [mld_location_latitude], [mld_location_longitude], [mld_maps]) VALUES (6, N'Mall Paradise Walk Serpong', N'Mall', N'Paradise Walk Serpong, Jl. Raya Puspitek, Raya, Kec. Serpong, Kota Tangerang Selatan, Banten 15315', -6.3483643533212737, 106.69488200668651, N'https://maps.app.goo.gl/7WKJVCKhYBrtvvUq9')
GO
SET IDENTITY_INSERT [dbo].[MasterLocationDevice] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterOwners] ON 
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (1, N'392666885392', N'Okto', N'Hamima', N'Januar', N'M', CAST(N'1994-03-29' AS Date), N'Gg. Cihampelas No. 69, RT4/RW6, Bogor', N'+62 (061) 671-8703', N'okto.januar@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (2, N'932455647527', N'Wirda', N'Rafid', N'Anggraini', N'F', CAST(N'1968-01-29' AS Date), N'Gang Merdeka No. 2, RT10/RW9, Jakarta Utara', N'+62 (0268) 294 7461', N'wirda.anggraini@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (3, N'762656569603', N'Dalima', N'Prasetyo', N'Winarsih', N'F', CAST(N'1951-08-05' AS Date), N'Gg. KH Amin Jasuta No. 0, RT9/RW1, Jakarta Barat', N'+62 (0056) 604-0641', N'dalima.winarsih@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (4, N'715478589833', N'Yance', N'Paiman', N'Yuniar', N'F', CAST(N'2006-09-14' AS Date), N'Gg. Rajiman No. 404, RT3/RW1, Bogor', N'-2531', N'yance.yuniar@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (5, N'876730790543', N'Irma', N'Tami', N'Yulianti', N'F', CAST(N'2004-11-11' AS Date), N'Gg. Ciwastra No. 15, RT5/RW9, Depok', N'-4084', N'irma.yulianti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (6, N'438654534307', N'Hamima', N'Ivan', N'Gunawan', N'F', CAST(N'1954-07-04' AS Date), N'Gang Veteran No. 6, RT9/RW2, Bekasi', N'-5779', N'hamima.gunawan@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (7, N'320291355379', N'Kamila', N'Ani', N'Samosir', N'F', CAST(N'1968-02-03' AS Date), N'Gang Laswi No. 7, RT1/RW4, Jakarta Selatan', N'+62 (0247) 840-5154', N'kamila.samosir@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (8, N'487875480774', N'Ifa', N'Martaka', N'Aryani', N'F', CAST(N'1965-12-07' AS Date), N'Jl. Otto Iskandardinata No. 640, RT10/RW5, Depok', N'+62 (49) 830-0890', N'ifa.aryani@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (9, N'592062439847', N'Wasis', N'Virman', N'Prabowo', N'M', CAST(N'1983-09-27' AS Date), N'Jl. Cihampelas No. 2, RT7/RW3, Jakarta Selatan', N'-2607', N'wasis.prabowo@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (10, N'699930102508', N'Vivi', N'Tania', N'Saputra', N'F', CAST(N'1960-03-19' AS Date), N'Jalan Peta No. 73, RT3/RW9, Jakarta Timur', N'(017) 837 7956', N'vivi.saputra@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (11, N'203900639437', N'Talia', N'Halima', N'Novitasari', N'F', CAST(N'2000-05-26' AS Date), N'Gg. Laswi No. 460, RT4/RW2, Jakarta Utara', N'+62 (081) 841 5379', N'talia.novitasari@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (12, N'724954553903', N'Banara', N'Daliman', N'Nashiruddin', N'M', CAST(N'1975-04-12' AS Date), N'Jalan H.J Maemunah No. 735, RT7/RW10, Bogor', N'+62 (68) 954-1832', N'banara.nashiruddin@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (13, N'585949428221', N'Cakrabuana', N'Lintang', N'Permadi', N'M', CAST(N'1984-03-20' AS Date), N'Gg. Gardujati No. 224, RT5/RW7, Depok', N'(0565) 454 4329', N'cakrabuana.permadi@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (14, N'295106798828', N'Paiman', N'Syahrini', N'Salahudin', N'M', CAST(N'1952-07-20' AS Date), N'Jl. Soekarno Hatta No. 13, RT7/RW4, Bekasi', N'+62 (0319) 658-9405', N'paiman.salahudin@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (15, N'120914782616', N'Halima', N'Nyana', N'Tamba', N'F', CAST(N'1965-01-17' AS Date), N'Jl. Otto Iskandardinata No. 68, RT3/RW2, Jakarta Timur', N'+62 (007) 168 9312', N'halima.tamba@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (16, N'733796969589', N'Ciaobella', N'Belinda', N'Pradana', N'F', CAST(N'1996-10-31' AS Date), N'Gang Cikapayang No. 30, RT10/RW10, Bogor', N'+62 (007) 469-7150', N'ciaobella.pradana@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (17, N'610603814453', N'Jabal', N'Ganjaran', N'Uwais', N'M', CAST(N'1959-07-05' AS Date), N'Gg. Abdul Muis No. 0, RT5/RW6, Jakarta Pusat', N'+62 (876) 523 2758', N'jabal.uwais@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (18, N'181009514333', N'Zelaya', N'Olivia', N'Sihotang', N'F', CAST(N'1955-02-16' AS Date), N'Gang Jamika No. 9, RT5/RW6, Jakarta Timur', N'-8114', N'zelaya.sihotang@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (19, N'988701380368', N'Tomi', N'Padma', N'Kuswoyo', N'M', CAST(N'1969-09-11' AS Date), N'Gang W.R. Supratman No. 9, RT6/RW4, Depok', N'(0509) 831 0192', N'tomi.kuswoyo@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (20, N'927711212942', N'Dinda', N'Jelita', N'Situmorang', N'F', CAST(N'1970-05-20' AS Date), N'Jl. Yos Sudarso No. 47, RT10/RW1, Tangerang', N'-5006', N'dinda.situmorang@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (21, N'766662527041', N'Gilda', N'Hamima', N'Halim', N'F', CAST(N'1969-08-19' AS Date), N'Jalan Joyoboyo No. 4, RT4/RW3, Depok', N'-7976', N'gilda.halim@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (22, N'771110414817', N'Rini', N'Putu', N'Sinaga', N'F', CAST(N'1973-01-06' AS Date), N'Gg. Laswi No. 3, RT5/RW9, Jakarta Pusat', N'(041) 080-7830', N'rini.sinaga@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (23, N'738124672352', N'Hendri', N'Galih', N'Saputra', N'M', CAST(N'1965-10-11' AS Date), N'Gang K.H. Wahid Hasyim No. 6, RT1/RW10, Jakarta Pusat', N'+62 (374) 946-9661', N'hendri.saputra@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (24, N'632088156562', N'Jabal', N'Ade', N'Ramadan', N'M', CAST(N'1965-01-07' AS Date), N'Gang Sukabumi No. 959, RT1/RW3, Jakarta Utara', N'+62 (502) 091 9631', N'jabal.ramadan@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (25, N'552943350457', N'Soleh', N'Cakrabuana', N'Saptono', N'M', CAST(N'1955-03-16' AS Date), N'Jalan Kutai No. 75, RT10/RW8, Bekasi', N'+62 (114) 087-2989', N'soleh.saptono@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (26, N'104794267888', N'Nalar', N'Hamzah', N'Jailani', N'M', CAST(N'1964-08-21' AS Date), N'Gang Sukabumi No. 51, RT3/RW9, Jakarta Barat', N'+62 (87) 417 4409', N'nalar.jailani@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (27, N'782849161637', N'Karen', N'Cawisadi', N'Adriansyah', N'F', CAST(N'1984-06-10' AS Date), N'Gang KH Amin Jasuta No. 6, RT2/RW3, Bogor', N'+62 (98) 999-4272', N'karen.adriansyah@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (28, N'598962964589', N'Dwi', N'Emin', N'Yulianti', N'M', CAST(N'1996-07-07' AS Date), N'Gg. Pasteur No. 01, RT3/RW4, Bekasi', N'-982', N'dwi.yulianti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (29, N'329457117773', N'Lulut', N'Bagya', N'Widiastuti', N'M', CAST(N'1958-10-13' AS Date), N'Gang Soekarno Hatta No. 85, RT7/RW4, Jakarta Utara', N'-10196', N'lulut.widiastuti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (30, N'233998938920', N'Hartaka', N'Lintang', N'Samosir', N'M', CAST(N'1962-01-26' AS Date), N'Jalan Dipatiukur No. 274, RT3/RW5, Jakarta Selatan', N'+62 (64) 601-1109', N'hartaka.samosir@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (31, N'478213157574', N'Asmadi', N'Intan', N'Mayasari', N'M', CAST(N'1993-02-27' AS Date), N'Gg. Kutai No. 756, RT2/RW4, Depok', N'-4096', N'asmadi.mayasari@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (32, N'321841828612', N'Putri', N'Halim', N'Hardiansyah', N'F', CAST(N'1979-07-08' AS Date), N'Gang Suniaraja No. 98, RT8/RW1, Tangerang', N'+62 (290) 206 7834', N'putri.hardiansyah@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (33, N'759911759670', N'Zaenab', N'Satya', N'Latupono', N'F', CAST(N'1967-01-09' AS Date), N'Gang Ahmad Yani No. 356, RT1/RW4, Depok', N'+62 (323) 691-5525', N'zaenab.latupono@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (34, N'178408718894', N'Jagapati', N'Dina', N'Mardhiyah', N'M', CAST(N'2004-05-26' AS Date), N'Jalan Cikutra Timur No. 791, RT3/RW2, Depok', N'+62 (72) 527-4117', N'jagapati.mardhiyah@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (35, N'968582523903', N'Nabila', N'Wasis', N'Pranowo', N'F', CAST(N'1981-11-27' AS Date), N'Gg. Sukajadi No. 685, RT4/RW1, Jakarta Utara', N'(058) 341-0122', N'nabila.pranowo@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (36, N'614277991431', N'Carla', N'Syahrini', N'Yuliarti', N'F', CAST(N'1951-02-21' AS Date), N'Jl. Kendalsari No. 68, RT3/RW4, Jakarta Pusat', N'080 632 6986', N'carla.yuliarti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (37, N'438716982160', N'Jaeman', N'Talia', N'Winarno', N'M', CAST(N'1950-03-26' AS Date), N'Gang Astana Anyar No. 12, RT1/RW4, Jakarta Barat', N'-5171', N'jaeman.winarno@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (38, N'431583482268', N'Heru', N'Shania', N'Tampubolon', N'M', CAST(N'1964-07-29' AS Date), N'Gg. Cikutra Timur No. 132, RT7/RW8, Jakarta Selatan', N'(057) 390 6639', N'heru.tampubolon@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (39, N'434592132705', N'Zulfa', N'Raihan', N'Uwais', N'F', CAST(N'1959-06-07' AS Date), N'Jalan R.E Martadinata No. 42, RT8/RW6, Depok', N'(052) 921 5432', N'zulfa.uwais@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (40, N'943796320790', N'Almira', N'Nrima', N'Dabukke', N'F', CAST(N'2006-11-12' AS Date), N'Gg. Gardujati No. 7, RT3/RW10, Bogor', N'-8232', N'almira.dabukke@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (41, N'127742140639', N'Lembah', N'Kartika', N'Latupono', N'M', CAST(N'1952-01-06' AS Date), N'Gg. Jamika No. 437, RT6/RW7, Jakarta Timur', N'-9429', N'lembah.latupono@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (42, N'476868644406', N'Sarah', N'Ismail', N'Mustofa', N'F', CAST(N'1971-10-12' AS Date), N'Jl. Moch. Toha No. 744, RT10/RW2, Bekasi', N'-6913', N'sarah.mustofa@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (43, N'683690905703', N'Ega', N'Xanana', N'Kurniawan', N'M', CAST(N'1986-08-10' AS Date), N'Jl. Gedebage Selatan No. 2, RT2/RW9, Jakarta Pusat', N'+62 (93) 758 1673', N'ega.kurniawan@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (44, N'947140287884', N'Bella', N'Cengkal', N'Putra', N'F', CAST(N'2004-07-12' AS Date), N'Jl. Gedebage Selatan No. 69, RT8/RW7, Bogor', N'+62 (80) 279-7671', N'bella.putra@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (45, N'445282147932', N'Gamblang', N'Luthfi', N'Saefullah', N'M', CAST(N'1996-03-27' AS Date), N'Jl. Rajawali Timur No. 2, RT9/RW8, Jakarta Pusat', N'(0727) 569 2050', N'gamblang.saefullah@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (46, N'935337385503', N'Nabila', N'Ganjaran', N'Santoso', N'F', CAST(N'1954-01-13' AS Date), N'Jl. Antapani Lama No. 82, RT10/RW1, Bogor', N'+62 (0835) 240 4566', N'nabila.santoso@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (47, N'792081208794', N'Halima', N'Cakrawangsa', N'Pranowo', N'F', CAST(N'1992-06-09' AS Date), N'Gg. Jayawijaya No. 167, RT4/RW10, Jakarta Selatan', N'(054) 004-2627', N'halima.pranowo@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (48, N'678989304280', N'Victoria', N'Aurora', N'Damanik', N'F', CAST(N'1954-10-20' AS Date), N'Jl. Waringin No. 86, RT10/RW3, Tangerang', N'800437080', N'victoria.damanik@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (49, N'357490951005', N'Darijan', N'Alika', N'Utama', N'M', CAST(N'1960-01-05' AS Date), N'Jl. Jend. A. Yani No. 2, RT4/RW4, Jakarta Pusat', N'(0586) 087-6413', N'darijan.utama@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (50, N'441339677988', N'Tirta', N'Paulin', N'Utama', N'M', CAST(N'1987-03-14' AS Date), N'Jl. HOS. Cokroaminoto No. 740, RT2/RW7, Jakarta Utara', N'(095) 429-6539', N'tirta.utama@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (51, N'281294733899', N'Mariadi', N'Adiarja', N'Yolanda', N'M', CAST(N'1997-11-23' AS Date), N'Jl. Ronggowarsito No. 99, RT2/RW4, Tangerang', N'+62 (057) 933 2121', N'mariadi.yolanda@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (52, N'377427925987', N'Panji', N'Rini', N'Pertiwi', N'M', CAST(N'1996-11-30' AS Date), N'Gang Jayawijaya No. 6, RT1/RW10, Jakarta Selatan', N'(062) 660 6514', N'panji.pertiwi@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (53, N'346425952756', N'Yunita', N'Gandewa', N'Laksita', N'F', CAST(N'1955-10-18' AS Date), N'Jl. Ahmad Dahlan No. 93, RT10/RW10, Jakarta Pusat', N'801314655', N'yunita.laksita@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (54, N'553036601929', N'Endra', N'Ilyas', N'Novitasari', N'M', CAST(N'1975-06-27' AS Date), N'Gg. Ir. H. Djuanda No. 92, RT7/RW2, Jakarta Utara', N'+62 (33) 171-1673', N'endra.novitasari@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (55, N'482596647492', N'Kuncara', N'Ulva', N'Utami', N'M', CAST(N'1967-03-29' AS Date), N'Gg. Kiaracondong No. 1, RT10/RW9, Tangerang', N'+62 (029) 100 9086', N'kuncara.utami@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (56, N'118190444922', N'Rizki', N'Indah', N'Aryani', N'M', CAST(N'1956-11-10' AS Date), N'Gg. Siliwangi No. 95, RT5/RW7, Jakarta Utara', N'(043) 351 6562', N'rizki.aryani@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (57, N'875297745389', N'Jane', N'Gamani', N'Prasetya', N'F', CAST(N'1991-01-02' AS Date), N'Jl. Cihampelas No. 7, RT1/RW6, Jakarta Utara', N'080 309 3253', N'jane.prasetya@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (58, N'833694136170', N'Cawisono', N'Liman', N'Hardiansyah', N'M', CAST(N'1998-02-27' AS Date), N'Gg. Rungkut Industri No. 0, RT10/RW10, Jakarta Pusat', N'-4845', N'cawisono.hardiansyah@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (59, N'456356312598', N'Timbul', N'Rina', N'Setiawan', N'M', CAST(N'1983-03-03' AS Date), N'Gg. Pasteur No. 7, RT7/RW9, Bogor', N'(0816) 200-8020', N'timbul.setiawan@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (60, N'384626437143', N'Cindy', N'Maya', N'Prayoga', N'F', CAST(N'1993-07-06' AS Date), N'Gang Sukajadi No. 7, RT3/RW8, Bekasi', N'-9393', N'cindy.prayoga@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (61, N'506595322522', N'Hafshah', N'Sarah', N'Ardianto', N'F', CAST(N'1965-01-04' AS Date), N'Jalan Antapani Lama No. 1, RT9/RW4, Depok', N'082 432 7567', N'hafshah.ardianto@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (62, N'857678156085', N'Nova', N'Hardana', N'Widiastuti', N'F', CAST(N'1976-11-30' AS Date), N'Jl. Kutisari Selatan No. 5, RT2/RW6, Jakarta Pusat', N'894278058', N'nova.widiastuti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (63, N'133786659472', N'Harto', N'Opan', N'Kurniawan', N'M', CAST(N'1970-10-21' AS Date), N'Jl. Rungkut Industri No. 893, RT9/RW2, Jakarta Timur', N'+62 (14) 263-9261', N'harto.kurniawan@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (64, N'981701167599', N'Fitriani', N'Mursinin', N'Melani', N'F', CAST(N'1974-09-19' AS Date), N'Gang KH Amin Jasuta No. 956, RT8/RW7, Bogor', N'-1444', N'fitriani.melani@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (65, N'770190802567', N'Vanya', N'Soleh', N'Wulandari', N'F', CAST(N'1951-01-15' AS Date), N'Jl. H.J Maemunah No. 464, RT7/RW4, Jakarta Timur', N'(052) 185-2700', N'vanya.wulandari@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (66, N'427229922632', N'Yulia', N'Najam', N'Thamrin', N'F', CAST(N'1975-09-22' AS Date), N'Jl. Medokan Ayu No. 5, RT8/RW6, Jakarta Timur', N'-7511', N'yulia.thamrin@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (67, N'234473811820', N'Elvina', N'Padma', N'Ardianto', N'F', CAST(N'1958-07-10' AS Date), N'Gg. Stasiun Wonokromo No. 29, RT1/RW10, Jakarta Selatan', N'-9250', N'elvina.ardianto@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (68, N'908450989758', N'Cornelia', N'Cengkal', N'Kusumo', N'F', CAST(N'1984-06-14' AS Date), N'Jl. Veteran No. 7, RT6/RW8, Jakarta Pusat', N'(031) 778 0683', N'cornelia.kusumo@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (69, N'512532502345', N'Drajat', N'Pardi', N'Purnawati', N'M', CAST(N'1962-01-17' AS Date), N'Gg. Ciumbuleuit No. 3, RT2/RW7, Bekasi', N'-5687', N'drajat.purnawati@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (70, N'305772526261', N'Viman', N'Bambang', N'Pradipta', N'M', CAST(N'1999-09-19' AS Date), N'Jalan Jend. A. Yani No. 348, RT6/RW6, Depok', N'(032) 275-4575', N'viman.pradipta@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (71, N'997902966245', N'Kani', N'Fitria', N'Astuti', N'F', CAST(N'1975-06-20' AS Date), N'Gg. Kiaracondong No. 674, RT9/RW2, Jakarta Timur', N'-8197', N'kani.astuti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (72, N'256853933204', N'Almira', N'Cemeti', N'Yulianti', N'F', CAST(N'1992-04-08' AS Date), N'Jalan Antapani Lama No. 7, RT4/RW2, Jakarta Timur', N'+62 (29) 303-9898', N'almira.yulianti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (73, N'543808551728', N'Kalim', N'Cakrabirawa', N'Riyanti', N'M', CAST(N'1981-04-06' AS Date), N'Gang Ronggowarsito No. 1, RT6/RW2, Bekasi', N'(0396) 388-7725', N'kalim.riyanti@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (74, N'748053986133', N'Elma', N'Ratna', N'Rahmawati', N'F', CAST(N'1990-05-17' AS Date), N'Jl. R.E Martadinata No. 92, RT2/RW9, Depok', N'-4550', N'elma.rahmawati@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (75, N'435286983398', N'Slamet', N'Genta', N'Hasanah', N'M', CAST(N'1969-12-01' AS Date), N'Jl. Cempaka No. 27, RT5/RW8, Jakarta Timur', N'+62 (68) 398-3914', N'slamet.hasanah@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (76, N'753774433763', N'Winda', N'Okto', N'Prastuti', N'F', CAST(N'1969-03-31' AS Date), N'Jalan Suryakencana No. 65, RT8/RW3, Jakarta Timur', N'+62 (046) 339 0928', N'winda.prastuti@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (77, N'660848258376', N'Hamzah', N'Viman', N'Hassanah', N'M', CAST(N'1954-02-06' AS Date), N'Gang Merdeka No. 378, RT5/RW7, Jakarta Barat', N'+62 (093) 234-6862', N'hamzah.hassanah@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (78, N'159890291786', N'Ozy', N'Kanda', N'Putra', N'M', CAST(N'1986-03-09' AS Date), N'Jalan KH Amin Jasuta No. 24, RT1/RW10, Jakarta Utara', N'+62 (28) 708-7701', N'ozy.putra@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (79, N'613116680952', N'Oliva', N'Harjaya', N'Mustofa', N'F', CAST(N'1964-03-11' AS Date), N'Jl. Veteran No. 53, RT2/RW1, Jakarta Selatan', N'+62 (009) 943 2247', N'oliva.mustofa@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (80, N'404358524819', N'Ifa', N'Cahyanto', N'Mulyani', N'F', CAST(N'1987-05-06' AS Date), N'Gang Rawamangun No. 515, RT9/RW4, Jakarta Utara', N'(0080) 607 1482', N'ifa.mulyani@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (81, N'350431445477', N'Almira', N'Jaga', N'Farida', N'F', CAST(N'2002-06-19' AS Date), N'Gg. K.H. Wahid Hasyim No. 4, RT1/RW3, Depok', N'+62 (056) 086-8567', N'almira.farida@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (82, N'405972191871', N'Adikara', N'Eja', N'Winarsih', N'M', CAST(N'1987-12-19' AS Date), N'Gg. Cikutra Timur No. 5, RT2/RW8, Jakarta Selatan', N'+62 (057) 584-8229', N'adikara.winarsih@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (83, N'231330830828', N'Kani', N'Edison', N'Zulaika', N'F', CAST(N'1987-06-01' AS Date), N'Gg. Kutai No. 0, RT6/RW6, Jakarta Utara', N'898073059', N'kani.zulaika@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (84, N'903139194642', N'Prayoga', N'Hadi', N'Hartati', N'M', CAST(N'1955-01-27' AS Date), N'Gg. Ciumbuleuit No. 5, RT10/RW2, Jakarta Timur', N'(0424) 076 6490', N'prayoga.hartati@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (85, N'503087774409', N'Belinda', N'Cahyanto', N'Suartini', N'F', CAST(N'1993-05-24' AS Date), N'Gg. Erlangga No. 8, RT8/RW10, Depok', N'+62 (649) 595-0660', N'belinda.suartini@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (86, N'541461932866', N'Gada', N'Panji', N'Novitasari', N'M', CAST(N'1977-06-17' AS Date), N'Gg. Gedebage Selatan No. 065, RT10/RW1, Bekasi', N'+62 (342) 981 5601', N'gada.novitasari@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (87, N'884842366066', N'Yulia', N'Luhung', N'Salahudin', N'F', CAST(N'1973-09-19' AS Date), N'Gang Siliwangi No. 9, RT4/RW4, Jakarta Pusat', N'+62 (290) 573 4695', N'yulia.salahudin@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (88, N'182406733553', N'Ikhsan', N'Zulfa', N'Gunarto', N'M', CAST(N'1998-08-09' AS Date), N'Gg. Suniaraja No. 3, RT1/RW5, Jakarta Utara', N'+62 (0744) 053 8633', N'ikhsan.gunarto@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (89, N'275513911983', N'Cornelia', N'Pranawa', N'Iswahyudi', N'F', CAST(N'1992-07-21' AS Date), N'Gang Abdul Muis No. 471, RT10/RW6, Tangerang', N'(0871) 942 1078', N'cornelia.iswahyudi@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (90, N'705654289481', N'Lala', N'Cinta', N'Fujiati', N'F', CAST(N'1963-01-05' AS Date), N'Jalan Asia Afrika No. 19, RT4/RW9, Bekasi', N'(042) 370 9019', N'lala.fujiati@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (91, N'309118713369', N'Zelda', N'Edward', N'Sirait', N'F', CAST(N'1988-02-06' AS Date), N'Jalan Cikutra Barat No. 81, RT6/RW10, Depok', N'(068) 241-3182', N'zelda.sirait@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (92, N'213838765594', N'Respati', N'Dadi', N'Wibowo', N'M', CAST(N'1992-11-24' AS Date), N'Jalan Ahmad Yani No. 4, RT9/RW7, Bogor', N'+62 (250) 354 3020', N'respati.wibowo@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (93, N'107301695641', N'Pardi', N'Uli', N'Wastuti', N'M', CAST(N'1998-12-25' AS Date), N'Jl. R.E Martadinata No. 09, RT2/RW8, Jakarta Pusat', N'854897192', N'pardi.wastuti@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (94, N'199349336121', N'Cengkal', N'Dewi', N'Marpaung', N'M', CAST(N'2004-02-20' AS Date), N'Jalan Sukabumi No. 7, RT10/RW4, Bogor', N'+62 (981) 199-2202', N'cengkal.marpaung@yahoo.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (95, N'105608586315', N'Almira', N'Luis', N'Siregar', N'F', CAST(N'1960-01-11' AS Date), N'Gang Raya Ujungberung No. 9, RT1/RW3, Jakarta Utara', N'+62 (093) 705 8081', N'almira.siregar@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (96, N'525771785526', N'Ajimin', N'Novi', N'Mandasari', N'M', CAST(N'1997-10-23' AS Date), N'Jl. Jakarta No. 27, RT8/RW2, Depok', N'+62 (085) 804 6567', N'ajimin.mandasari@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (97, N'440506630583', N'Aswani', N'Silvia', N'Wijaya', N'M', CAST(N'1975-01-05' AS Date), N'Jl. Kendalsari No. 403, RT2/RW5, Jakarta Pusat', N'(0398) 159 6040', N'aswani.wijaya@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (98, N'763053400774', N'Raditya', N'Umi', N'Uyainah', N'M', CAST(N'1980-01-25' AS Date), N'Jl. Sentot Alibasa No. 2, RT5/RW8, Jakarta Timur', N'+62 (604) 598-7084', N'raditya.uyainah@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (99, N'689407215003', N'Akarsana', N'Hasim', N'Hidayat', N'M', CAST(N'1996-03-22' AS Date), N'Jalan HOS. Cokroaminoto No. 61, RT2/RW1, Depok', N'+62 (16) 357-4359', N'akarsana.hidayat@gmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (100, N'381868303110', N'Suci', N'Maida', N'Marbun', N'F', CAST(N'2000-03-06' AS Date), N'Gg. Rumah Sakit No. 360, RT10/RW6, Tangerang', N'-8490', N'suci.marbun@hotmail.com')
GO
INSERT [dbo].[MasterOwners] ([mo_owner_id], [mo_nik], [mo_first_name], [mo_middle_name], [mo_last_name], [mo_gender], [mo_birthdate], [mo_address], [mo_phone_number], [mo_email]) VALUES (101, N'330688303110', N'Andika', N'', N'Marbun', N'M', CAST(N'1986-03-06' AS Date), N'Gg. Rumah Sakit No. 360, RT10/RW6, Tangerang', N'087733234467', N'andika.marbun03@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[MasterOwners] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterVehicles] ON 
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (1, N'WE 1754 NM', N'Toyota', N'Avanza', 2024, N'Silver', N'262407507820', N'77582683819', N'Listrik', 1500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (2, N'FH 945 FZP', N'Toyota', N'Avanza', 2021, N'Kuning', N'664198117065', N'33642549124', N'Listrik', 3000, 68)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (3, N'C 134 RMX', N'Toyota', N'Avanza', 2022, N'Merah', N'558105177945', N'30780299043', N'Listrik', 1000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (4, N'P 077 RU', N'Toyota', N'Avanza', 2024, N'Biru', N'655491406317', N'95876833561', N'Bensin', 1800, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (5, N'GV 2750 ZJ', N'Toyota', N'Avanza', 2023, N'Abu-abu', N'593656435404', N'34704078580', N'Hybrid', 2500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (6, N'W 985 RMU', N'Toyota', N'Avanza', 2022, N'Merah', N'326136948893', N'54998781072', N'Diesel', 2500, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (7, N'SS 3762 UGM', N'Toyota', N'Avanza', 2021, N'Hitam', N'485706219007', N'37982187901', N'Bensin', 1800, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (8, N'B 6438 YZ', N'Toyota', N'Avanza', 2022, N'Merah', N'463261192987', N'71438747560', N'Listrik', 3000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (9, N'YU 848 BV', N'Toyota', N'Avanza', 2022, N'Hitam', N'183625904913', N'56840436006', N'Diesel', 1800, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (10, N'M 7194 IX', N'Toyota', N'Avanza', 2024, N'Merah', N'871764644018', N'50565429551', N'Diesel', 2000, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (11, N'AM 8389 FX', N'Toyota', N'Avanza', 2023, N'Kuning', N'540361683442', N'72309673739', N'Diesel', 1500, 55)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (12, N'MZ 922 YM', N'Toyota', N'Avanza', 2024, N'Biru', N'990311186608', N'35768577860', N'Diesel', 1800, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (13, N'P 173 FB', N'Toyota', N'Avanza', 2024, N'Hitam', N'620142715114', N'54272778484', N'Bensin', 3000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (14, N'D 1374 BJB', N'Toyota', N'Avanza', 2023, N'Merah', N'374217269950', N'45812951866', N'Diesel', 1500, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (15, N'PP 037 OZ', N'Toyota', N'Avanza', 2021, N'Silver', N'490369338270', N'73369878979', N'Listrik', 3000, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (16, N'EP 9211 HGE', N'Toyota', N'Avanza', 2022, N'Silver', N'995815343094', N'93470916007', N'Hybrid', 3000, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (17, N'N 8069 YKX', N'Toyota', N'Avanza', 2022, N'Abu-abu', N'555254282355', N'30445518633', N'Bensin', 3000, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (18, N'J 580 GX', N'Toyota', N'Avanza', 2023, N'Kuning', N'698680779708', N'91910143618', N'Bensin', 1500, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (19, N'MT 1595 PLO', N'Toyota', N'Avanza', 2023, N'Silver', N'658274409431', N'33677792333', N'Diesel', 1800, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (20, N'M 408 JZE', N'Toyota', N'Avanza', 2022, N'Silver', N'946259212056', N'44844677630', N'Hybrid', 3000, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (21, N'M 532 NDM', N'Toyota', N'Fortuner', 2024, N'Putih', N'317171579553', N'15507796959', N'Listrik', 1000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (22, N'JW 330 IE', N'Toyota', N'Fortuner', 2024, N'Hitam', N'343777973922', N'90405627412', N'Hybrid', 2500, 78)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (23, N'U 085 IX', N'Toyota', N'Fortuner', 2024, N'Kuning', N'987526812645', N'52786761475', N'Hybrid', 1000, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (24, N'D 493 CYD', N'Toyota', N'Fortuner', 2024, N'Kuning', N'586629947642', N'27865295638', N'Bensin', 1800, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (25, N'YW 2207 OH', N'Toyota', N'Fortuner', 2022, N'Abu-abu', N'261665903483', N'55063779735', N'Hybrid', 1000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (26, N'O 1242 ZAA', N'Toyota', N'Fortuner', 2024, N'Biru', N'576182596872', N'13882225891', N'Hybrid', 1500, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (27, N'PX 465 QLD', N'Toyota', N'Fortuner', 2024, N'Silver', N'962036485582', N'22337333561', N'Hybrid', 2000, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (28, N'S 763 YZL', N'Toyota', N'Fortuner', 2021, N'Merah', N'903120420822', N'32565775287', N'Hybrid', 2500, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (29, N'SA 012 PYJ', N'Toyota', N'Fortuner', 2022, N'Kuning', N'992161208537', N'50909144547', N'Bensin', 3000, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (30, N'RN 7420 WLN', N'Toyota', N'Fortuner', 2023, N'Biru', N'961871736101', N'88683719724', N'Bensin', 1000, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (31, N'TK 5313 WP', N'Toyota', N'Fortuner', 2021, N'Kuning', N'248738783239', N'36885383512', N'Hybrid', 3000, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (32, N'PZ 924 MOX', N'Toyota', N'Fortuner', 2021, N'Biru', N'986590166690', N'65455404701', N'Listrik', 1000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (33, N'J 629 VR', N'Toyota', N'Fortuner', 2024, N'Merah', N'264486565930', N'24061681555', N'Listrik', 2000, 91)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (34, N'F 8278 OY', N'Toyota', N'Fortuner', 2023, N'Biru', N'489868629226', N'34497977167', N'Listrik', 2000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (35, N'G 886 IIY', N'Toyota', N'Fortuner', 2022, N'Merah', N'798914882879', N'28559366505', N'Hybrid', 1000, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (36, N'S 1603 QLE', N'Toyota', N'Fortuner', 2021, N'Silver', N'644453517022', N'82726762945', N'Bensin', 1000, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (37, N'OY 3362 VY', N'Toyota', N'Fortuner', 2024, N'Putih', N'128891541010', N'67132387525', N'Bensin', 1800, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (38, N'Y 1747 AGX', N'Toyota', N'Fortuner', 2024, N'Abu-abu', N'148973889463', N'48037686540', N'Listrik', 1800, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (39, N'HU 5792 JY', N'Toyota', N'Fortuner', 2021, N'Biru', N'164090406240', N'26124604500', N'Listrik', 2500, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (40, N'EB 014 VVW', N'Toyota', N'Fortuner', 2023, N'Abu-abu', N'928035430564', N'89403875397', N'Hybrid', 3000, 97)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (41, N'U 8430 VA', N'Toyota', N'Innova', 2021, N'Putih', N'266078886557', N'93228257678', N'Bensin', 2000, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (42, N'N 8495 FYY', N'Toyota', N'Innova', 2022, N'Putih', N'728578834562', N'94282559309', N'Diesel', 3000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (43, N'Y 1972 HIG', N'Toyota', N'Innova', 2024, N'Silver', N'960097631627', N'76716745783', N'Diesel', 1000, 91)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (44, N'L 3990 PFC', N'Toyota', N'Innova', 2023, N'Merah', N'261507393852', N'93494518747', N'Diesel', 1000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (45, N'X 378 YVR', N'Toyota', N'Innova', 2021, N'Putih', N'482516966441', N'96013926866', N'Hybrid', 2000, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (46, N'Z 8907 ELO', N'Toyota', N'Innova', 2023, N'Kuning', N'517768276116', N'87190365025', N'Listrik', 2000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (47, N'WX 337 IM', N'Toyota', N'Innova', 2023, N'Kuning', N'609185489423', N'45426958161', N'Bensin', 2500, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (48, N'R 371 VW', N'Toyota', N'Innova', 2023, N'Silver', N'550667626980', N'96673722547', N'Listrik', 1000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (49, N'LW 6682 NMG', N'Toyota', N'Innova', 2022, N'Silver', N'672800451172', N'45890736468', N'Hybrid', 2500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (50, N'TH 1614 WYW', N'Toyota', N'Innova', 2021, N'Merah', N'888572494913', N'93208214847', N'Hybrid', 2000, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (51, N'LP 2520 HZ', N'Toyota', N'Innova', 2023, N'Biru', N'251324563950', N'79709469003', N'Hybrid', 1500, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (52, N'D 3116 QRW', N'Toyota', N'Innova', 2024, N'Biru', N'799844184478', N'91159657900', N'Hybrid', 3000, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (53, N'HY 1576 RI', N'Toyota', N'Innova', 2022, N'Biru', N'513757105757', N'43703282946', N'Listrik', 1000, 56)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (54, N'G 1749 TPB', N'Toyota', N'Innova', 2024, N'Abu-abu', N'734367415268', N'81381794689', N'Diesel', 1500, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (55, N'IE 5211 UG', N'Toyota', N'Innova', 2022, N'Kuning', N'917778518643', N'84174436177', N'Hybrid', 1500, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (56, N'ZW 5186 GQ', N'Toyota', N'Innova', 2023, N'Kuning', N'463362236827', N'40225006903', N'Bensin', 1500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (57, N'KA 675 MH', N'Toyota', N'Innova', 2023, N'Silver', N'608820869696', N'77630788871', N'Bensin', 2000, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (58, N'B 1151 XQ', N'Toyota', N'Innova', 2023, N'Kuning', N'243515107268', N'83355711292', N'Bensin', 2500, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (59, N'IQ 3354 JKN', N'Toyota', N'Innova', 2024, N'Putih', N'154753344438', N'39930005853', N'Hybrid', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (60, N'U 517 UT', N'Toyota', N'Innova', 2024, N'Abu-abu', N'805261845769', N'80971128192', N'Bensin', 1500, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (61, N'Z 5238 II', N'Toyota', N'Yaris', 2024, N'Abu-abu', N'609592883202', N'24078055820', N'Bensin', 1000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (62, N'PX 6123 YXW', N'Toyota', N'Yaris', 2024, N'Abu-abu', N'977551272830', N'45805255076', N'Listrik', 2000, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (63, N'K 662 CKT', N'Toyota', N'Yaris', 2024, N'Silver', N'795423271055', N'46883545709', N'Listrik', 2000, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (64, N'QA 1950 ALH', N'Toyota', N'Yaris', 2022, N'Abu-abu', N'326456632389', N'17582385991', N'Listrik', 3000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (65, N'LU 1155 VH', N'Toyota', N'Yaris', 2022, N'Kuning', N'543141336950', N'78606544409', N'Listrik', 1500, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (66, N'L 530 EMK', N'Toyota', N'Yaris', 2022, N'Kuning', N'567811824379', N'80257845523', N'Listrik', 2000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (67, N'UE 207 RK', N'Toyota', N'Yaris', 2021, N'Biru', N'125721189588', N'52554342113', N'Hybrid', 1000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (68, N'V 964 NU', N'Toyota', N'Yaris', 2021, N'Silver', N'398405259647', N'79227535144', N'Listrik', 1500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (69, N'HT 772 FIO', N'Toyota', N'Yaris', 2022, N'Kuning', N'158715389937', N'10678291447', N'Hybrid', 1000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (70, N'BX 668 EZ', N'Toyota', N'Yaris', 2023, N'Hitam', N'495935533443', N'37936246770', N'Diesel', 3000, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (71, N'U 6210 EU', N'Toyota', N'Yaris', 2022, N'Abu-abu', N'923379558245', N'45851188467', N'Hybrid', 2000, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (72, N'E 0743 XW', N'Toyota', N'Yaris', 2024, N'Putih', N'691925532158', N'90061491740', N'Diesel', 2000, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (73, N'A 507 CUO', N'Toyota', N'Yaris', 2024, N'Kuning', N'209053968496', N'22877131293', N'Listrik', 2500, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (74, N'W 279 VR', N'Toyota', N'Yaris', 2022, N'Silver', N'439713828888', N'54006748539', N'Hybrid', 1000, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (75, N'XI 9172 YS', N'Toyota', N'Yaris', 2024, N'Silver', N'857245262301', N'96631906083', N'Hybrid', 1000, 33)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (76, N'Q 317 JZ', N'Toyota', N'Yaris', 2023, N'Hitam', N'810043397855', N'11839306042', N'Hybrid', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (77, N'V 672 JT', N'Toyota', N'Yaris', 2022, N'Kuning', N'598219101633', N'77864028392', N'Diesel', 1000, 60)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (78, N'QS 4765 FDF', N'Toyota', N'Yaris', 2023, N'Putih', N'111417548830', N'69318913172', N'Diesel', 2000, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (79, N'W 691 IR', N'Toyota', N'Yaris', 2023, N'Hitam', N'495291633304', N'23951466961', N'Hybrid', 1500, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (80, N'CF 292 IW', N'Toyota', N'Yaris', 2022, N'Kuning', N'346592408688', N'13601157384', N'Bensin', 2500, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (81, N'M 619 MZ', N'Toyota', N'Agya', 2021, N'Putih', N'517951333104', N'32568982525', N'Bensin', 1500, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (82, N'N 074 MZ', N'Toyota', N'Agya', 2022, N'Hitam', N'178554885307', N'97053689032', N'Bensin', 2500, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (83, N'X 865 JP', N'Toyota', N'Agya', 2024, N'Silver', N'616023193883', N'58684889777', N'Hybrid', 1000, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (84, N'H 7133 GZZ', N'Toyota', N'Agya', 2023, N'Kuning', N'784363728897', N'25937528662', N'Bensin', 2500, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (85, N'MK 555 DPC', N'Toyota', N'Agya', 2021, N'Merah', N'951567648739', N'30401305015', N'Hybrid', 1000, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (86, N'W 546 IM', N'Toyota', N'Agya', 2024, N'Kuning', N'429392823862', N'30117301912', N'Listrik', 1500, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (87, N'OP 7706 JWS', N'Toyota', N'Agya', 2023, N'Merah', N'941496894202', N'37193417238', N'Hybrid', 2000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (88, N'IK 781 NYB', N'Toyota', N'Agya', 2024, N'Hitam', N'989356331659', N'83019909511', N'Bensin', 1000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (89, N'B 447 BOQ', N'Toyota', N'Agya', 2023, N'Abu-abu', N'178540241327', N'65796567968', N'Bensin', 3000, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (90, N'YP 4250 YGW', N'Toyota', N'Agya', 2021, N'Kuning', N'169872312961', N'33076182057', N'Hybrid', 2500, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (91, N'WI 7628 XM', N'Toyota', N'Agya', 2022, N'Biru', N'293704133256', N'18439354412', N'Bensin', 3000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (92, N'JJ 113 PO', N'Toyota', N'Agya', 2021, N'Biru', N'732571359054', N'46095198039', N'Listrik', 1000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (93, N'HW 754 VNO', N'Toyota', N'Agya', 2024, N'Biru', N'414099852670', N'97056418673', N'Hybrid', 3000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (94, N'D 2230 IBX', N'Toyota', N'Agya', 2022, N'Hitam', N'480562806572', N'61320607838', N'Diesel', 1500, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (95, N'KA 304 JY', N'Toyota', N'Agya', 2021, N'Kuning', N'810707515649', N'10755238402', N'Listrik', 1800, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (96, N'L 8566 MWR', N'Toyota', N'Agya', 2023, N'Biru', N'416111432779', N'31546597123', N'Bensin', 3000, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (97, N'DL 2848 BO', N'Toyota', N'Agya', 2023, N'Abu-abu', N'178731384674', N'64256909973', N'Listrik', 2500, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (98, N'N 0132 KRS', N'Toyota', N'Agya', 2024, N'Biru', N'314129405885', N'77169034050', N'Diesel', 2000, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (99, N'ZK 4026 SG', N'Toyota', N'Agya', 2023, N'Biru', N'160866983480', N'58621329638', N'Hybrid', 2500, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (100, N'ZX 8306 BZN', N'Toyota', N'Agya', 2021, N'Abu-abu', N'561540261075', N'34188004821', N'Diesel', 1000, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (101, N'M 1017 AH', N'Toyota', N'Vios', 2022, N'Hitam', N'881573453134', N'62602999141', N'Bensin', 2000, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (102, N'UL 1664 QO', N'Toyota', N'Vios', 2021, N'Kuning', N'689598669783', N'17989906188', N'Bensin', 3000, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (103, N'VO 5572 KJ', N'Toyota', N'Vios', 2021, N'Abu-abu', N'623892798961', N'27679387101', N'Listrik', 2500, 97)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (104, N'Z 615 GNT', N'Toyota', N'Vios', 2024, N'Putih', N'373172672105', N'23173451063', N'Diesel', 1800, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (105, N'EK 063 UYX', N'Toyota', N'Vios', 2023, N'Putih', N'397677684008', N'69324645672', N'Hybrid', 2000, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (106, N'HX 9505 RYJ', N'Toyota', N'Vios', 2024, N'Hitam', N'377391476936', N'57940161627', N'Diesel', 3000, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (107, N'MN 512 DN', N'Toyota', N'Vios', 2022, N'Kuning', N'662118850418', N'70725088784', N'Bensin', 1800, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (108, N'IY 1382 DE', N'Toyota', N'Vios', 2021, N'Putih', N'177766441972', N'46245747873', N'Hybrid', 1000, 64)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (109, N'B 7675 DK', N'Toyota', N'Vios', 2023, N'Kuning', N'482350114334', N'48891762351', N'Listrik', 2000, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (110, N'GZ 9267 LF', N'Toyota', N'Vios', 2024, N'Kuning', N'361562820860', N'38785874387', N'Hybrid', 1800, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (111, N'F 595 DJI', N'Toyota', N'Vios', 2022, N'Hitam', N'732420111457', N'50114841120', N'Diesel', 1800, 14)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (112, N'EX 2797 AZW', N'Toyota', N'Vios', 2024, N'Abu-abu', N'254786193121', N'52154978323', N'Hybrid', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (113, N'P 6676 UCY', N'Toyota', N'Vios', 2021, N'Putih', N'254768621284', N'67300815801', N'Diesel', 1500, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (114, N'IQ 177 XUH', N'Toyota', N'Vios', 2024, N'Biru', N'229469273454', N'11917859019', N'Diesel', 3000, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (115, N'H 8077 NP', N'Toyota', N'Vios', 2024, N'Biru', N'871528614343', N'95206515586', N'Hybrid', 2500, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (116, N'ME 568 HR', N'Toyota', N'Vios', 2023, N'Kuning', N'691915447794', N'49597625570', N'Bensin', 2500, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (117, N'H 813 IPP', N'Toyota', N'Vios', 2022, N'Merah', N'828337617692', N'75021056563', N'Bensin', 1000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (118, N'H 1011 EK', N'Toyota', N'Vios', 2022, N'Putih', N'417518118492', N'61136329626', N'Hybrid', 2500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (119, N'C 9301 SAW', N'Toyota', N'Vios', 2024, N'Silver', N'492318743540', N'85211489612', N'Diesel', 1800, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (120, N'PP 6898 NJ', N'Toyota', N'Vios', 2024, N'Silver', N'479771700013', N'65972101665', N'Hybrid', 1500, 64)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (121, N'B 3281 QKC', N'Toyota', N'Corolla', 2023, N'Abu-abu', N'639006282149', N'16409663148', N'Diesel', 2000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (122, N'PZ 5446 IOM', N'Toyota', N'Corolla', 2024, N'Silver', N'109791795197', N'49211817393', N'Hybrid', 1800, 56)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (123, N'DO 163 ICQ', N'Toyota', N'Corolla', 2022, N'Kuning', N'399995680638', N'34882194432', N'Listrik', 2500, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (124, N'ZJ 9484 XS', N'Toyota', N'Corolla', 2021, N'Silver', N'672278774944', N'69533385171', N'Hybrid', 3000, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (125, N'WO 2791 BZ', N'Toyota', N'Corolla', 2022, N'Biru', N'212929169539', N'47463906476', N'Bensin', 2000, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (126, N'O 3456 ISD', N'Toyota', N'Corolla', 2021, N'Kuning', N'874935273715', N'76082513172', N'Hybrid', 1500, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (127, N'XW 6403 CO', N'Toyota', N'Corolla', 2022, N'Biru', N'163973719311', N'17207367252', N'Bensin', 1500, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (128, N'LU 3088 KU', N'Toyota', N'Corolla', 2023, N'Putih', N'953383839864', N'28976413524', N'Diesel', 1000, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (129, N'QC 1491 GY', N'Toyota', N'Corolla', 2024, N'Kuning', N'766949634178', N'49062166054', N'Hybrid', 1000, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (130, N'Y 7165 JNW', N'Toyota', N'Corolla', 2022, N'Merah', N'221092763203', N'61156941969', N'Diesel', 1000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (131, N'ZG 9540 YWV', N'Toyota', N'Corolla', 2022, N'Putih', N'446295218077', N'27939114934', N'Listrik', 2500, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (132, N'JX 960 FHL', N'Toyota', N'Corolla', 2023, N'Silver', N'747871609878', N'11398029483', N'Hybrid', 1500, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (133, N'Z 2688 JMP', N'Toyota', N'Corolla', 2024, N'Merah', N'718106218759', N'41224742600', N'Bensin', 1500, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (134, N'R 3441 PDB', N'Toyota', N'Corolla', 2022, N'Kuning', N'856509424330', N'88402734093', N'Listrik', 1500, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (135, N'T 9622 VZN', N'Toyota', N'Corolla', 2024, N'Hitam', N'468052649635', N'64738107035', N'Diesel', 2500, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (136, N'DY 433 DFV', N'Toyota', N'Corolla', 2022, N'Putih', N'914951557340', N'88538932874', N'Hybrid', 1000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (137, N'WV 6258 IE', N'Toyota', N'Corolla', 2022, N'Biru', N'305989914439', N'32043734605', N'Diesel', 1800, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (138, N'O 769 IE', N'Toyota', N'Corolla', 2023, N'Kuning', N'467842294973', N'70885899874', N'Bensin', 2500, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (139, N'H 094 WCG', N'Toyota', N'Corolla', 2023, N'Hitam', N'960290788275', N'60970638392', N'Hybrid', 1500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (140, N'IZ 3114 QL', N'Toyota', N'Corolla', 2021, N'Silver', N'229725808240', N'69513414440', N'Bensin', 1800, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (141, N'I 6066 QWW', N'Toyota', N'Camry', 2022, N'Hitam', N'129865164055', N'68023498468', N'Diesel', 2500, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (142, N'F 2370 IL', N'Toyota', N'Camry', 2022, N'Kuning', N'180246340497', N'21496271429', N'Diesel', 1500, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (143, N'U 8234 MX', N'Toyota', N'Camry', 2024, N'Putih', N'335390782516', N'17686862892', N'Hybrid', 2000, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (144, N'CY 6663 IW', N'Toyota', N'Camry', 2021, N'Merah', N'202730483113', N'45165152069', N'Listrik', 1500, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (145, N'T 8556 ZT', N'Toyota', N'Camry', 2024, N'Hitam', N'909013435689', N'36635141536', N'Hybrid', 1000, 59)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (146, N'C 992 KGD', N'Toyota', N'Camry', 2024, N'Biru', N'169576348725', N'55397762774', N'Hybrid', 2000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (147, N'NV 7481 YB', N'Toyota', N'Camry', 2022, N'Abu-abu', N'180347306860', N'97293962899', N'Diesel', 1500, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (148, N'Z 753 XB', N'Toyota', N'Camry', 2022, N'Silver', N'172374618475', N'95370618902', N'Hybrid', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (149, N'NG 2196 FB', N'Toyota', N'Camry', 2024, N'Putih', N'580491873146', N'94976724550', N'Bensin', 1500, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (150, N'YJ 0919 FH', N'Toyota', N'Camry', 2023, N'Putih', N'312673696429', N'42834029223', N'Bensin', 3000, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (151, N'M 406 ER', N'Toyota', N'Camry', 2021, N'Abu-abu', N'900067894724', N'76230446671', N'Bensin', 1000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (152, N'M 9007 YT', N'Toyota', N'Camry', 2022, N'Putih', N'613219798863', N'61440752895', N'Listrik', 2500, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (153, N'IB 9568 BN', N'Toyota', N'Camry', 2022, N'Hitam', N'384728383761', N'83600754430', N'Listrik', 2500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (154, N'F 904 PXJ', N'Toyota', N'Camry', 2024, N'Merah', N'580454594778', N'93427447457', N'Hybrid', 1000, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (155, N'UA 0774 ES', N'Toyota', N'Camry', 2024, N'Hitam', N'173483356341', N'51507157753', N'Bensin', 2000, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (156, N'Q 728 WX', N'Toyota', N'Camry', 2022, N'Abu-abu', N'145629727330', N'34770913967', N'Diesel', 1500, 33)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (157, N'R 8224 WIZ', N'Toyota', N'Camry', 2024, N'Kuning', N'602183989340', N'15563978489', N'Bensin', 2500, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (158, N'QE 078 IF', N'Toyota', N'Camry', 2023, N'Putih', N'534262102423', N'63912783732', N'Hybrid', 1000, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (159, N'B 682 HAI', N'Toyota', N'Camry', 2023, N'Hitam', N'788940227532', N'71735582930', N'Hybrid', 2500, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (160, N'B 965 ZIV', N'Toyota', N'Camry', 2021, N'Kuning', N'212369345096', N'21762982553', N'Bensin', 2500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (161, N'YJ 6813 OXB', N'Toyota', N'Hilux', 2022, N'Biru', N'503383591587', N'82289648977', N'Diesel', 3000, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (162, N'JB 4351 UTA', N'Toyota', N'Hilux', 2022, N'Biru', N'649243502707', N'63969937158', N'Bensin', 1800, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (163, N'Q 551 FSM', N'Toyota', N'Hilux', 2022, N'Kuning', N'548694578810', N'39194149782', N'Hybrid', 1500, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (164, N'V 5711 EGP', N'Toyota', N'Hilux', 2024, N'Merah', N'636832869768', N'56679643410', N'Hybrid', 2000, 91)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (165, N'DQ 9962 LMS', N'Toyota', N'Hilux', 2024, N'Biru', N'261362214671', N'67718213604', N'Bensin', 1800, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (166, N'QJ 334 JOS', N'Toyota', N'Hilux', 2022, N'Abu-abu', N'668555286869', N'84509606509', N'Diesel', 2500, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (167, N'K 5518 XRX', N'Toyota', N'Hilux', 2023, N'Biru', N'192941858494', N'81341787210', N'Diesel', 3000, 15)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (168, N'UI 6099 GO', N'Toyota', N'Hilux', 2021, N'Abu-abu', N'964362227232', N'41537825641', N'Diesel', 2500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (169, N'GK 909 QC', N'Toyota', N'Hilux', 2023, N'Silver', N'900685881303', N'23821227266', N'Diesel', 1800, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (170, N'N 267 NO', N'Toyota', N'Hilux', 2024, N'Abu-abu', N'282847903872', N'86649947940', N'Listrik', 2000, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (171, N'N 494 GS', N'Toyota', N'Hilux', 2021, N'Merah', N'926010432620', N'84612031463', N'Listrik', 1800, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (172, N'VU 1194 ZLS', N'Toyota', N'Hilux', 2024, N'Kuning', N'363215769219', N'21456497131', N'Diesel', 1500, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (173, N'HP 369 GL', N'Toyota', N'Hilux', 2021, N'Biru', N'871285720922', N'66139284935', N'Diesel', 1000, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (174, N'SM 9353 GJ', N'Toyota', N'Hilux', 2022, N'Kuning', N'834178815387', N'66580625411', N'Listrik', 2000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (175, N'T 7196 AWX', N'Toyota', N'Hilux', 2022, N'Abu-abu', N'751022199454', N'88518101110', N'Hybrid', 2000, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (176, N'YF 123 OQV', N'Toyota', N'Hilux', 2021, N'Putih', N'336130339841', N'82470329499', N'Listrik', 1000, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (177, N'A 724 NW', N'Toyota', N'Hilux', 2024, N'Abu-abu', N'646767417490', N'33796273179', N'Hybrid', 3000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (178, N'RO 610 MB', N'Toyota', N'Hilux', 2022, N'Putih', N'107612465815', N'46108764010', N'Hybrid', 2500, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (179, N'NV 8224 LGG', N'Toyota', N'Hilux', 2022, N'Hitam', N'232417177482', N'60747499982', N'Bensin', 2500, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (180, N'WE 192 CE', N'Toyota', N'Hilux', 2021, N'Biru', N'512834846012', N'26463107413', N'Diesel', 1500, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (181, N'QD 685 FKH', N'Toyota', N'Rav4', 2024, N'Silver', N'570016314435', N'48316117523', N'Bensin', 1500, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (182, N'NW 629 YV', N'Toyota', N'Rav4', 2024, N'Kuning', N'154727745378', N'49585964463', N'Hybrid', 1500, 33)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (183, N'D 5430 YNL', N'Toyota', N'Rav4', 2021, N'Hitam', N'184980554185', N'96153857009', N'Diesel', 1000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (184, N'HL 349 SYD', N'Toyota', N'Rav4', 2023, N'Hitam', N'326255726122', N'95506627312', N'Diesel', 1500, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (185, N'IC 3632 IFA', N'Toyota', N'Rav4', 2022, N'Silver', N'769849244691', N'68780854702', N'Diesel', 2000, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (186, N'O 128 CDQ', N'Toyota', N'Rav4', 2024, N'Merah', N'963174764915', N'90545469692', N'Diesel', 2500, 60)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (187, N'RE 1915 WZI', N'Toyota', N'Rav4', 2024, N'Abu-abu', N'934395859742', N'26878575585', N'Listrik', 1500, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (188, N'E 2836 VN', N'Toyota', N'Rav4', 2024, N'Silver', N'401791418177', N'47804135071', N'Listrik', 1500, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (189, N'TK 6385 MDE', N'Toyota', N'Rav4', 2021, N'Hitam', N'214257918668', N'99640193476', N'Diesel', 3000, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (190, N'VM 566 WM', N'Toyota', N'Rav4', 2022, N'Abu-abu', N'450158780050', N'80322655102', N'Listrik', 2500, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (191, N'KF 5412 CF', N'Toyota', N'Rav4', 2023, N'Biru', N'363126604602', N'38944092495', N'Listrik', 3000, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (192, N'HO 4730 YRV', N'Toyota', N'Rav4', 2024, N'Biru', N'486463436247', N'61623485136', N'Diesel', 2500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (193, N'S 290 VC', N'Toyota', N'Rav4', 2021, N'Kuning', N'659716519069', N'46142513422', N'Diesel', 3000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (194, N'BM 084 JJT', N'Toyota', N'Rav4', 2024, N'Abu-abu', N'644305409529', N'48517081497', N'Diesel', 3000, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (195, N'XQ 0320 CEU', N'Toyota', N'Rav4', 2021, N'Putih', N'717388303272', N'25198793762', N'Diesel', 1800, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (196, N'W 209 AHU', N'Toyota', N'Rav4', 2022, N'Abu-abu', N'984876336480', N'19276761293', N'Listrik', 1000, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (197, N'O 4916 LAW', N'Toyota', N'Rav4', 2021, N'Abu-abu', N'722899956220', N'51398625136', N'Listrik', 1000, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (198, N'GM 421 TMN', N'Toyota', N'Rav4', 2023, N'Merah', N'237436174556', N'91250217863', N'Diesel', 2500, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (199, N'J 7804 BHM', N'Toyota', N'Rav4', 2023, N'Merah', N'903484778139', N'86936394492', N'Hybrid', 1500, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (200, N'CW 373 EI', N'Toyota', N'Rav4', 2023, N'Biru', N'222476257510', N'65258882026', N'Hybrid', 2000, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (201, N'OV 640 DJ', N'Toyota', N'Land Cruiser', 2021, N'Abu-abu', N'827739464190', N'12597135879', N'Bensin', 2000, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (202, N'GZ 500 SZ', N'Toyota', N'Land Cruiser', 2021, N'Silver', N'508291577009', N'55846825126', N'Hybrid', 2500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (203, N'K 693 MU', N'Toyota', N'Land Cruiser', 2024, N'Merah', N'210301358921', N'21151931801', N'Listrik', 1000, 92)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (204, N'H 339 QAX', N'Toyota', N'Land Cruiser', 2021, N'Kuning', N'600036966546', N'22466143660', N'Diesel', 1500, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (205, N'CM 1206 WO', N'Toyota', N'Land Cruiser', 2021, N'Silver', N'675422929755', N'63994192022', N'Listrik', 2000, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (206, N'F 3040 JTU', N'Toyota', N'Land Cruiser', 2023, N'Merah', N'289064979121', N'81825647113', N'Hybrid', 2000, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (207, N'T 530 PSQ', N'Toyota', N'Land Cruiser', 2021, N'Merah', N'180506439373', N'92231726703', N'Listrik', 1500, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (208, N'M 5913 FL', N'Toyota', N'Land Cruiser', 2022, N'Biru', N'999458789314', N'17600777215', N'Hybrid', 2500, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (209, N'BJ 800 WZ', N'Toyota', N'Land Cruiser', 2023, N'Biru', N'377162588289', N'40159083511', N'Hybrid', 1000, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (210, N'C 2299 RX', N'Toyota', N'Land Cruiser', 2021, N'Silver', N'607848333801', N'91636745204', N'Bensin', 1800, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (211, N'T 4974 BZC', N'Toyota', N'Land Cruiser', 2024, N'Kuning', N'305109713072', N'60008578536', N'Bensin', 1000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (212, N'LF 3822 VD', N'Toyota', N'Land Cruiser', 2022, N'Silver', N'182707936723', N'29048156604', N'Listrik', 1800, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (213, N'RH 186 RU', N'Toyota', N'Land Cruiser', 2024, N'Abu-abu', N'431110409371', N'27406698275', N'Bensin', 1000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (214, N'DN 0948 OT', N'Toyota', N'Land Cruiser', 2024, N'Hitam', N'370648996253', N'69821153626', N'Listrik', 3000, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (215, N'X 6540 BLM', N'Toyota', N'Land Cruiser', 2024, N'Kuning', N'117097403597', N'24241847422', N'Hybrid', 3000, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (216, N'TZ 833 XLR', N'Toyota', N'Land Cruiser', 2023, N'Hitam', N'415941513426', N'54394285316', N'Bensin', 2500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (217, N'R 2980 VHD', N'Toyota', N'Land Cruiser', 2023, N'Abu-abu', N'988650213352', N'82567664470', N'Listrik', 1500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (218, N'ES 9846 NA', N'Toyota', N'Land Cruiser', 2022, N'Abu-abu', N'866174129659', N'59570641376', N'Diesel', 2000, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (219, N'RH 904 OHO', N'Toyota', N'Land Cruiser', 2021, N'Abu-abu', N'503216700877', N'91326484196', N'Hybrid', 1500, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (220, N'RZ 063 OGH', N'Toyota', N'Land Cruiser', 2024, N'Kuning', N'264674725030', N'27536617514', N'Bensin', 3000, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (221, N'V 4204 MG', N'Toyota', N'Hiace', 2023, N'Abu-abu', N'873494131557', N'39504926214', N'Hybrid', 2000, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (222, N'NW 1075 BX', N'Toyota', N'Hiace', 2023, N'Abu-abu', N'654958358556', N'26705623852', N'Listrik', 1800, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (223, N'MV 757 YKS', N'Toyota', N'Hiace', 2021, N'Abu-abu', N'493978897795', N'54711924670', N'Hybrid', 3000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (224, N'S 1176 KM', N'Toyota', N'Hiace', 2023, N'Abu-abu', N'798108110516', N'26632529366', N'Listrik', 2000, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (225, N'FZ 122 QA', N'Toyota', N'Hiace', 2024, N'Biru', N'216485339679', N'75988415352', N'Hybrid', 1500, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (226, N'N 159 VGJ', N'Toyota', N'Hiace', 2021, N'Putih', N'607107548880', N'41426669451', N'Hybrid', 1500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (227, N'X 584 OW', N'Toyota', N'Hiace', 2023, N'Hitam', N'882342155423', N'26984919162', N'Hybrid', 3000, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (228, N'A 081 CP', N'Toyota', N'Hiace', 2022, N'Merah', N'293270865931', N'80184258117', N'Diesel', 1500, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (229, N'D 3721 IU', N'Toyota', N'Hiace', 2022, N'Merah', N'711044315641', N'70376912788', N'Bensin', 1800, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (230, N'OI 0396 JMG', N'Toyota', N'Hiace', 2023, N'Putih', N'959561307802', N'53557618908', N'Hybrid', 1000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (231, N'P 622 XG', N'Toyota', N'Hiace', 2022, N'Hitam', N'665649568035', N'83245633548', N'Hybrid', 3000, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (232, N'N 8570 UI', N'Toyota', N'Hiace', 2022, N'Merah', N'634984423053', N'72037829401', N'Hybrid', 2500, 56)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (233, N'U 1318 LQO', N'Toyota', N'Hiace', 2022, N'Putih', N'621281696330', N'10826484307', N'Hybrid', 1500, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (234, N'E 3082 YB', N'Toyota', N'Hiace', 2024, N'Biru', N'121829649205', N'24681382623', N'Bensin', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (235, N'UH 359 ZYK', N'Toyota', N'Hiace', 2023, N'Merah', N'163187190084', N'80039096206', N'Listrik', 1500, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (236, N'P 325 KPT', N'Toyota', N'Hiace', 2022, N'Putih', N'641924512251', N'85693794971', N'Hybrid', 1800, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (237, N'W 411 BL', N'Toyota', N'Hiace', 2021, N'Silver', N'159043154086', N'71781572674', N'Hybrid', 1500, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (238, N'OF 459 ETR', N'Toyota', N'Hiace', 2024, N'Biru', N'996267598227', N'20903177881', N'Diesel', 2500, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (239, N'N 1348 XH', N'Toyota', N'Hiace', 2022, N'Merah', N'475529185311', N'56280442205', N'Listrik', 1800, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (240, N'C 4049 RQP', N'Toyota', N'Hiace', 2023, N'Silver', N'131894799914', N'99885935585', N'Hybrid', 3000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (241, N'R 8516 LLJ', N'Toyota', N'Rush', 2022, N'Silver', N'124998496590', N'42851398781', N'Hybrid', 1500, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (242, N'TQ 975 KVN', N'Toyota', N'Rush', 2024, N'Silver', N'678833301234', N'68357454550', N'Bensin', 1500, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (243, N'B 451 WBI', N'Toyota', N'Rush', 2021, N'Putih', N'850606681177', N'83773705555', N'Diesel', 1800, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (244, N'LI 060 MNL', N'Toyota', N'Rush', 2021, N'Merah', N'337005106193', N'75517221048', N'Hybrid', 1800, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (245, N'NA 2441 YS', N'Toyota', N'Rush', 2023, N'Abu-abu', N'993773492032', N'23886478886', N'Hybrid', 1000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (246, N'S 3304 XV', N'Toyota', N'Rush', 2024, N'Abu-abu', N'687691764064', N'23885224522', N'Listrik', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (247, N'HI 834 KHT', N'Toyota', N'Rush', 2023, N'Biru', N'358644293592', N'91306455867', N'Hybrid', 2500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (248, N'B 416 ZUQ', N'Toyota', N'Rush', 2023, N'Abu-abu', N'563868211235', N'70425988211', N'Diesel', 2500, 55)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (249, N'PB 312 GL', N'Toyota', N'Rush', 2023, N'Biru', N'762408710987', N'45257217747', N'Bensin', 3000, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (250, N'ZK 2985 RY', N'Toyota', N'Rush', 2023, N'Abu-abu', N'717791771890', N'16428898242', N'Bensin', 2500, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (251, N'SM 8544 TYC', N'Toyota', N'Rush', 2021, N'Putih', N'647382976058', N'97240465302', N'Listrik', 1000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (252, N'N 6776 ON', N'Toyota', N'Rush', 2022, N'Biru', N'277611111117', N'54614576856', N'Diesel', 1800, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (253, N'QF 1523 AOR', N'Toyota', N'Rush', 2024, N'Biru', N'463626877624', N'27705166601', N'Hybrid', 3000, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (254, N'EP 3241 GCJ', N'Toyota', N'Rush', 2022, N'Hitam', N'233205810572', N'28942355158', N'Diesel', 2000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (255, N'FG 4098 XFO', N'Toyota', N'Rush', 2021, N'Silver', N'225105134189', N'49230605710', N'Listrik', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (256, N'H 739 OGY', N'Toyota', N'Rush', 2024, N'Hitam', N'829014193109', N'43067287938', N'Listrik', 1500, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (257, N'K 778 PSJ', N'Toyota', N'Rush', 2023, N'Silver', N'486009792525', N'81135662763', N'Diesel', 1800, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (258, N'ZE 6646 ETC', N'Toyota', N'Rush', 2024, N'Silver', N'932520884730', N'76795182224', N'Listrik', 2000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (259, N'W 022 QO', N'Toyota', N'Rush', 2024, N'Hitam', N'316499830096', N'54381989727', N'Bensin', 2500, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (260, N'S 3197 KE', N'Toyota', N'Rush', 2023, N'Putih', N'776068669351', N'16520558521', N'Listrik', 1000, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (261, N'P 468 PS', N'Toyota', N'Raize', 2021, N'Kuning', N'415156332685', N'69902979342', N'Hybrid', 1500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (262, N'GW 802 DKY', N'Toyota', N'Raize', 2021, N'Silver', N'579507325419', N'65096025253', N'Listrik', 1800, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (263, N'HS 813 XO', N'Toyota', N'Raize', 2023, N'Silver', N'898856107639', N'88277361953', N'Listrik', 3000, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (264, N'W 271 LS', N'Toyota', N'Raize', 2021, N'Merah', N'955709337507', N'22028461332', N'Diesel', 2500, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (265, N'CB 616 SOH', N'Toyota', N'Raize', 2022, N'Kuning', N'201056346849', N'19700674108', N'Diesel', 1000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (266, N'N 2160 AN', N'Toyota', N'Raize', 2024, N'Merah', N'582386728816', N'32707868223', N'Bensin', 2500, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (267, N'PY 429 OR', N'Toyota', N'Raize', 2024, N'Abu-abu', N'218957872911', N'82686017973', N'Diesel', 2500, 55)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (268, N'J 3735 MN', N'Toyota', N'Raize', 2022, N'Hitam', N'393700817786', N'29786448210', N'Hybrid', 1000, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (269, N'GJ 415 NRX', N'Toyota', N'Raize', 2021, N'Hitam', N'441862936754', N'24703858041', N'Bensin', 2000, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (270, N'T 8480 JP', N'Toyota', N'Raize', 2023, N'Kuning', N'802257575429', N'89594242341', N'Bensin', 2000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (271, N'X 489 HQ', N'Toyota', N'Raize', 2023, N'Merah', N'296678852366', N'13853386986', N'Bensin', 1500, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (272, N'GD 525 QX', N'Toyota', N'Raize', 2021, N'Putih', N'691031883767', N'18539944647', N'Diesel', 3000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (273, N'HK 457 QFJ', N'Toyota', N'Raize', 2021, N'Hitam', N'686609605856', N'41648287710', N'Diesel', 3000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (274, N'Y 2003 UAU', N'Toyota', N'Raize', 2023, N'Silver', N'912465143579', N'91903986902', N'Listrik', 1800, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (275, N'AX 4161 JVB', N'Toyota', N'Raize', 2022, N'Biru', N'586763499430', N'88587428681', N'Bensin', 2000, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (276, N'L 1233 HV', N'Toyota', N'Raize', 2021, N'Silver', N'320797325767', N'78046847540', N'Listrik', 2000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (277, N'GY 6353 CS', N'Toyota', N'Raize', 2022, N'Putih', N'768229955301', N'21381795311', N'Bensin', 2000, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (278, N'F 9936 RTX', N'Toyota', N'Raize', 2022, N'Merah', N'441658923316', N'55062094321', N'Listrik', 3000, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (279, N'FZ 839 LQ', N'Toyota', N'Raize', 2023, N'Putih', N'369897997644', N'54050479429', N'Hybrid', 3000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (280, N'KJ 619 OZ', N'Toyota', N'Raize', 2024, N'Hitam', N'498644420798', N'30482719427', N'Hybrid', 3000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (281, N'OI 563 VE', N'Toyota', N'Sienta', 2023, N'Merah', N'364024796216', N'38982081251', N'Bensin', 1000, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (282, N'G 1383 MUH', N'Toyota', N'Sienta', 2023, N'Putih', N'650464439805', N'41919909093', N'Diesel', 2500, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (283, N'MT 9258 EDX', N'Toyota', N'Sienta', 2022, N'Silver', N'293019232345', N'36545501823', N'Bensin', 2500, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (284, N'J 5082 EC', N'Toyota', N'Sienta', 2022, N'Silver', N'756484417417', N'89165608593', N'Listrik', 1500, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (285, N'L 361 IPE', N'Toyota', N'Sienta', 2022, N'Putih', N'601470340031', N'97754089793', N'Hybrid', 1800, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (286, N'D 988 PN', N'Toyota', N'Sienta', 2023, N'Abu-abu', N'897508540461', N'56047981832', N'Bensin', 3000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (287, N'XA 428 JX', N'Toyota', N'Sienta', 2023, N'Hitam', N'460179686243', N'27636652199', N'Hybrid', 2500, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (288, N'H 392 NN', N'Toyota', N'Sienta', 2022, N'Abu-abu', N'255265833142', N'16052231256', N'Listrik', 2000, 64)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (289, N'N 0104 UJL', N'Toyota', N'Sienta', 2023, N'Abu-abu', N'464183403703', N'80047415270', N'Diesel', 2000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (290, N'RM 582 QPJ', N'Toyota', N'Sienta', 2023, N'Merah', N'722517217393', N'41998764256', N'Diesel', 1000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (291, N'HW 856 LL', N'Toyota', N'Sienta', 2024, N'Abu-abu', N'254668154517', N'76267975102', N'Diesel', 1000, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (292, N'JV 0149 RP', N'Toyota', N'Sienta', 2021, N'Biru', N'645654591254', N'95249672527', N'Diesel', 1000, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (293, N'TO 531 QO', N'Toyota', N'Sienta', 2023, N'Kuning', N'382107354586', N'50138442341', N'Hybrid', 3000, 33)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (294, N'M 8215 QF', N'Toyota', N'Sienta', 2024, N'Abu-abu', N'209433412111', N'12209527056', N'Listrik', 2000, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (295, N'XP 137 SMX', N'Toyota', N'Sienta', 2024, N'Putih', N'623984268412', N'27173292577', N'Bensin', 3000, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (296, N'E 593 GTB', N'Toyota', N'Sienta', 2022, N'Hitam', N'668794940887', N'31839727698', N'Listrik', 1800, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (297, N'C 195 OL', N'Toyota', N'Sienta', 2024, N'Silver', N'137790481051', N'47589201547', N'Diesel', 1500, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (298, N'KW 237 AL', N'Toyota', N'Sienta', 2023, N'Putih', N'377455652148', N'72137432553', N'Diesel', 1500, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (299, N'XB 240 OT', N'Toyota', N'Sienta', 2022, N'Kuning', N'641231399302', N'93725892815', N'Hybrid', 2000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (300, N'ZS 5223 DDA', N'Toyota', N'Sienta', 2022, N'Silver', N'433709682883', N'42552113212', N'Diesel', 1000, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (301, N'A 405 VXC', N'Toyota', N'C-HR', 2021, N'Abu-abu', N'368054307154', N'60377416195', N'Listrik', 1000, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (302, N'D 485 QR', N'Toyota', N'C-HR', 2024, N'Kuning', N'779795257030', N'56695406462', N'Bensin', 1500, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (303, N'HF 0016 FX', N'Toyota', N'C-HR', 2021, N'Kuning', N'815571717187', N'85169439330', N'Diesel', 1500, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (304, N'BT 457 II', N'Toyota', N'C-HR', 2024, N'Hitam', N'837901363614', N'90159329812', N'Listrik', 1500, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (305, N'E 772 VOS', N'Toyota', N'C-HR', 2021, N'Silver', N'614611121746', N'14961427448', N'Diesel', 2500, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (306, N'PK 3108 NNH', N'Toyota', N'C-HR', 2023, N'Silver', N'176652156978', N'27057315898', N'Diesel', 2000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (307, N'TI 0518 EO', N'Toyota', N'C-HR', 2024, N'Merah', N'127024244681', N'64283568043', N'Diesel', 2000, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (308, N'K 3823 TS', N'Toyota', N'C-HR', 2021, N'Hitam', N'336671908356', N'75356253237', N'Hybrid', 2000, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (309, N'WF 6142 HQV', N'Toyota', N'C-HR', 2023, N'Putih', N'639824863142', N'86072309122', N'Hybrid', 1800, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (310, N'N 1544 WBO', N'Toyota', N'C-HR', 2023, N'Kuning', N'114476258959', N'86352882001', N'Bensin', 1000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (311, N'MO 696 JB', N'Toyota', N'C-HR', 2024, N'Merah', N'800025173127', N'75392272908', N'Hybrid', 1800, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (312, N'K 599 NFY', N'Toyota', N'C-HR', 2023, N'Biru', N'962136919128', N'40686695124', N'Hybrid', 2500, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (313, N'L 0537 TZ', N'Toyota', N'C-HR', 2021, N'Merah', N'268314627653', N'65446851973', N'Diesel', 1500, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (314, N'F 9969 IO', N'Toyota', N'C-HR', 2021, N'Merah', N'461409493951', N'74002199207', N'Hybrid', 2000, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (315, N'VG 733 CX', N'Toyota', N'C-HR', 2024, N'Silver', N'794076523491', N'16221914213', N'Diesel', 1000, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (316, N'JV 787 RG', N'Toyota', N'C-HR', 2024, N'Putih', N'972712469261', N'25910888401', N'Hybrid', 2000, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (317, N'PH 414 YQ', N'Toyota', N'C-HR', 2022, N'Hitam', N'393224896563', N'14414198157', N'Hybrid', 2500, 78)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (318, N'GW 4636 UV', N'Toyota', N'C-HR', 2024, N'Putih', N'215188619896', N'39841159849', N'Listrik', 3000, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (319, N'E 2289 GIA', N'Toyota', N'C-HR', 2021, N'Hitam', N'394425423183', N'14637955993', N'Hybrid', 1500, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (320, N'F 2267 IL', N'Toyota', N'C-HR', 2024, N'Putih', N'727211808397', N'88932853957', N'Diesel', 1000, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (321, N'MA 583 QTM', N'Toyota', N'Supra', 2024, N'Hitam', N'182767161528', N'19960408043', N'Listrik', 1500, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (322, N'W 0380 RZ', N'Toyota', N'Supra', 2024, N'Kuning', N'193886339003', N'66845433733', N'Listrik', 2500, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (323, N'D 7948 FF', N'Toyota', N'Supra', 2022, N'Merah', N'985742738608', N'45151111876', N'Hybrid', 1500, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (324, N'Z 648 MZ', N'Toyota', N'Supra', 2024, N'Putih', N'709721405617', N'55153868157', N'Diesel', 2000, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (325, N'T 116 MZ', N'Toyota', N'Supra', 2024, N'Silver', N'771565235932', N'36744242181', N'Diesel', 1500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (326, N'YP 1296 ADA', N'Toyota', N'Supra', 2022, N'Putih', N'839118110642', N'50195106729', N'Bensin', 1800, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (327, N'TE 0483 NM', N'Toyota', N'Supra', 2022, N'Hitam', N'308033993651', N'68437562058', N'Hybrid', 2000, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (328, N'Q 2368 VCW', N'Toyota', N'Supra', 2024, N'Biru', N'859408280987', N'22613291292', N'Diesel', 1800, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (329, N'Y 6682 GXD', N'Toyota', N'Supra', 2023, N'Silver', N'854809762652', N'63675592827', N'Diesel', 1800, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (330, N'JJ 011 OH', N'Toyota', N'Supra', 2023, N'Putih', N'579701800129', N'86525834573', N'Hybrid', 2000, 60)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (331, N'C 8057 PK', N'Toyota', N'Supra', 2023, N'Putih', N'160900681514', N'30962387238', N'Bensin', 1500, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (332, N'Y 4757 ZRT', N'Toyota', N'Supra', 2021, N'Kuning', N'290653821007', N'19678058446', N'Listrik', 2000, 68)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (333, N'GY 1669 IC', N'Toyota', N'Supra', 2021, N'Abu-abu', N'730916576773', N'43284794287', N'Listrik', 1000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (334, N'YX 841 IX', N'Toyota', N'Supra', 2021, N'Putih', N'974676253308', N'68604374569', N'Hybrid', 1500, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (335, N'DU 7532 WIV', N'Toyota', N'Supra', 2021, N'Hitam', N'215395988723', N'94247283258', N'Listrik', 2500, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (336, N'E 1081 MD', N'Toyota', N'Supra', 2024, N'Biru', N'671722131402', N'38123052328', N'Hybrid', 2000, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (337, N'S 376 SIJ', N'Toyota', N'Supra', 2024, N'Kuning', N'934960631296', N'81524856902', N'Listrik', 1500, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (338, N'BD 931 TH', N'Toyota', N'Supra', 2024, N'Silver', N'893388211480', N'28888126262', N'Bensin', 3000, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (339, N'X 821 LHW', N'Toyota', N'Supra', 2023, N'Silver', N'432823540994', N'26692017998', N'Listrik', 2500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (340, N'T 8893 CW', N'Toyota', N'Supra', 2022, N'Biru', N'456170335793', N'58224134864', N'Hybrid', 1000, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (341, N'YI 861 IB', N'Toyota', N'Alphard', 2022, N'Silver', N'881025246192', N'92116868421', N'Listrik', 2500, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (342, N'QG 3764 UTU', N'Toyota', N'Alphard', 2024, N'Kuning', N'999646491855', N'93771102772', N'Bensin', 1800, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (343, N'NO 391 HWQ', N'Toyota', N'Alphard', 2022, N'Silver', N'215350109884', N'87180495352', N'Listrik', 3000, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (344, N'R 4164 ZER', N'Toyota', N'Alphard', 2024, N'Silver', N'668180438682', N'13503648101', N'Hybrid', 3000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (345, N'DL 2758 ZRR', N'Toyota', N'Alphard', 2023, N'Abu-abu', N'462902653999', N'79766435392', N'Diesel', 1800, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (346, N'WX 2890 HZ', N'Toyota', N'Alphard', 2021, N'Abu-abu', N'338773460891', N'89342436388', N'Hybrid', 1500, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (347, N'I 197 CSI', N'Toyota', N'Alphard', 2023, N'Kuning', N'774612716628', N'41547999937', N'Listrik', 3000, 59)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (348, N'O 3007 NJ', N'Toyota', N'Alphard', 2022, N'Kuning', N'732713284577', N'83171584019', N'Diesel', 2000, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (349, N'BK 2055 KOL', N'Toyota', N'Alphard', 2023, N'Silver', N'709546150418', N'65969197234', N'Hybrid', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (350, N'W 090 HBG', N'Toyota', N'Alphard', 2023, N'Kuning', N'482553671074', N'65109948545', N'Diesel', 1800, 59)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (351, N'R 7861 KMH', N'Toyota', N'Alphard', 2024, N'Hitam', N'353846297603', N'35999022276', N'Hybrid', 1800, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (352, N'CQ 6162 PH', N'Toyota', N'Alphard', 2021, N'Merah', N'154278401085', N'18316561281', N'Bensin', 1800, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (353, N'L 883 KA', N'Toyota', N'Alphard', 2023, N'Merah', N'427615562415', N'96148257840', N'Listrik', 1000, 35)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (354, N'BV 191 QA', N'Toyota', N'Alphard', 2022, N'Abu-abu', N'808304848211', N'94861275267', N'Diesel', 1000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (355, N'I 0817 SI', N'Toyota', N'Alphard', 2021, N'Putih', N'758872894034', N'13080935481', N'Listrik', 2500, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (356, N'VK 1390 KMJ', N'Toyota', N'Alphard', 2024, N'Putih', N'614744320993', N'39162579292', N'Listrik', 3000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (357, N'LJ 033 NE', N'Toyota', N'Alphard', 2021, N'Abu-abu', N'314445101414', N'31014826185', N'Hybrid', 1500, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (358, N'E 5463 GW', N'Toyota', N'Alphard', 2022, N'Kuning', N'869957252322', N'75699569376', N'Hybrid', 1000, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (359, N'Y 811 GS', N'Toyota', N'Alphard', 2022, N'Merah', N'417445760846', N'86802257366', N'Hybrid', 2000, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (360, N'G 699 HMV', N'Toyota', N'Alphard', 2024, N'Kuning', N'229857803573', N'16804891326', N'Listrik', 2000, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (361, N'K 790 XP', N'Toyota', N'Vellfire', 2024, N'Silver', N'928999675344', N'69062974884', N'Listrik', 3000, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (362, N'VC 239 FVU', N'Toyota', N'Vellfire', 2024, N'Kuning', N'721379684725', N'52795251036', N'Hybrid', 1500, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (363, N'EW 7484 ZAJ', N'Toyota', N'Vellfire', 2022, N'Biru', N'749726239330', N'94794917972', N'Bensin', 2000, 91)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (364, N'A 484 IGE', N'Toyota', N'Vellfire', 2021, N'Abu-abu', N'191148668962', N'25626196931', N'Hybrid', 1800, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (365, N'S 451 FC', N'Toyota', N'Vellfire', 2024, N'Abu-abu', N'212279754475', N'56250492647', N'Hybrid', 2000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (366, N'IB 360 ASS', N'Toyota', N'Vellfire', 2022, N'Hitam', N'529452123395', N'89351493869', N'Diesel', 1000, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (367, N'XU 7119 XR', N'Toyota', N'Vellfire', 2024, N'Abu-abu', N'849575763040', N'36970162630', N'Bensin', 1000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (368, N'NI 4899 XD', N'Toyota', N'Vellfire', 2024, N'Merah', N'158722903886', N'72581378688', N'Listrik', 2000, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (369, N'AV 3908 HVE', N'Toyota', N'Vellfire', 2021, N'Merah', N'871741704725', N'97899496901', N'Bensin', 1800, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (370, N'E 1190 EKH', N'Toyota', N'Vellfire', 2022, N'Kuning', N'807779366293', N'32370644179', N'Listrik', 2000, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (371, N'QH 480 QCQ', N'Toyota', N'Vellfire', 2022, N'Silver', N'255527647938', N'10632611143', N'Hybrid', 3000, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (372, N'N 751 LJ', N'Toyota', N'Vellfire', 2021, N'Kuning', N'942285204409', N'53800714509', N'Listrik', 2500, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (373, N'NU 2591 XE', N'Toyota', N'Vellfire', 2023, N'Hitam', N'865452883559', N'21835974288', N'Listrik', 1500, 64)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (374, N'U 1863 XY', N'Toyota', N'Vellfire', 2024, N'Hitam', N'978903451323', N'33334664362', N'Hybrid', 1500, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (375, N'QL 978 UA', N'Toyota', N'Vellfire', 2021, N'Kuning', N'563651682822', N'50924159961', N'Bensin', 2500, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (376, N'GY 1245 OD', N'Toyota', N'Vellfire', 2022, N'Biru', N'891805269596', N'99731437738', N'Bensin', 2000, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (377, N'V 933 DP', N'Toyota', N'Vellfire', 2023, N'Abu-abu', N'566244592873', N'22145414126', N'Diesel', 1800, 15)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (378, N'S 619 SLG', N'Toyota', N'Vellfire', 2021, N'Silver', N'201757567172', N'53665343833', N'Listrik', 1800, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (379, N'O 276 CHZ', N'Toyota', N'Vellfire', 2024, N'Kuning', N'606020618415', N'83447169510', N'Hybrid', 2500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (380, N'UD 8828 ZUO', N'Toyota', N'Vellfire', 2024, N'Abu-abu', N'998586976837', N'85354125249', N'Diesel', 3000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (381, N'Y 5584 SYX', N'Toyota', N'Etios', 2022, N'Putih', N'819568714462', N'32746423475', N'Hybrid', 1000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (382, N'ZC 2430 WX', N'Toyota', N'Etios', 2022, N'Biru', N'463961602137', N'45128396629', N'Hybrid', 1000, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (383, N'U 6378 PS', N'Toyota', N'Etios', 2021, N'Silver', N'616816936997', N'98194975402', N'Bensin', 3000, 92)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (384, N'E 767 EKC', N'Toyota', N'Etios', 2023, N'Putih', N'815598670513', N'17723953280', N'Bensin', 1000, 35)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (385, N'YE 817 XRK', N'Toyota', N'Etios', 2023, N'Silver', N'371629325627', N'93702554415', N'Diesel', 2500, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (386, N'L 495 HO', N'Toyota', N'Etios', 2024, N'Hitam', N'752193809238', N'64475547042', N'Diesel', 2500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (387, N'SY 003 AAH', N'Toyota', N'Etios', 2022, N'Kuning', N'386048201543', N'20967244243', N'Hybrid', 1800, 78)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (388, N'Z 3020 GTL', N'Toyota', N'Etios', 2024, N'Putih', N'303564125736', N'52962943107', N'Hybrid', 3000, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (389, N'RX 8564 BXU', N'Toyota', N'Etios', 2023, N'Abu-abu', N'633607963124', N'12703954226', N'Bensin', 3000, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (390, N'Z 296 VE', N'Toyota', N'Etios', 2023, N'Silver', N'940260772635', N'46525615224', N'Hybrid', 1500, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (391, N'H 0434 EV', N'Toyota', N'Etios', 2022, N'Hitam', N'648518188925', N'13373981295', N'Diesel', 1800, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (392, N'Z 7601 BE', N'Toyota', N'Etios', 2023, N'Silver', N'286329542958', N'94553308369', N'Listrik', 2500, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (393, N'E 1960 YJ', N'Toyota', N'Etios', 2023, N'Merah', N'225462321528', N'88794916008', N'Listrik', 2000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (394, N'X 4171 CUU', N'Toyota', N'Etios', 2022, N'Biru', N'124156330747', N'39784103154', N'Diesel', 2000, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (395, N'D 400 TD', N'Toyota', N'Etios', 2023, N'Kuning', N'260357667508', N'43021352880', N'Hybrid', 1500, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (396, N'KG 8306 PE', N'Toyota', N'Etios', 2024, N'Kuning', N'710970243944', N'44153541473', N'Hybrid', 1800, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (397, N'F 8722 XW', N'Toyota', N'Etios', 2023, N'Silver', N'666857946710', N'54952155895', N'Listrik', 1800, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (398, N'Z 502 UGI', N'Toyota', N'Etios', 2022, N'Biru', N'871122230281', N'93182732979', N'Hybrid', 1800, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (399, N'O 2167 EFM', N'Toyota', N'Etios', 2022, N'Kuning', N'522889548449', N'22624626635', N'Listrik', 1500, 15)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (400, N'H 3902 OL', N'Toyota', N'Etios', 2024, N'Silver', N'600217614160', N'92322785829', N'Hybrid', 1500, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (401, N'LA 7384 XCP', N'Honda', N'Brio', 2021, N'Biru', N'291534800912', N'80065404212', N'Diesel', 1000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (402, N'LT 6452 UON', N'Honda', N'Brio', 2023, N'Abu-abu', N'678431292101', N'15641923257', N'Hybrid', 2000, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (403, N'HU 6437 XV', N'Honda', N'Brio', 2024, N'Hitam', N'464102415219', N'29160545894', N'Diesel', 1500, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (404, N'Z 702 HNM', N'Honda', N'Brio', 2023, N'Merah', N'183154916832', N'64798836852', N'Bensin', 1500, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (405, N'HF 3652 FZH', N'Honda', N'Brio', 2023, N'Kuning', N'941919890196', N'63147178969', N'Bensin', 3000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (406, N'RD 2340 CZ', N'Honda', N'Brio', 2024, N'Hitam', N'592835256858', N'24961425328', N'Listrik', 2500, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (407, N'X 2493 LKT', N'Honda', N'Brio', 2021, N'Putih', N'183000610473', N'71787306909', N'Hybrid', 2000, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (408, N'NX 5021 NW', N'Honda', N'Brio', 2023, N'Merah', N'974354833414', N'87271479784', N'Hybrid', 1800, 91)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (409, N'VH 8443 IF', N'Honda', N'Brio', 2021, N'Merah', N'121938910671', N'49522449943', N'Hybrid', 3000, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (410, N'V 0487 JIV', N'Honda', N'Brio', 2021, N'Biru', N'532164443593', N'61604399207', N'Bensin', 1000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (411, N'RP 2952 WBD', N'Honda', N'Brio', 2023, N'Putih', N'255331220697', N'93200994816', N'Bensin', 1500, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (412, N'GP 0676 MGP', N'Honda', N'Brio', 2023, N'Putih', N'980600184154', N'54184935480', N'Diesel', 1500, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (413, N'OY 8105 AEI', N'Honda', N'Brio', 2023, N'Putih', N'883299146139', N'14400042443', N'Hybrid', 3000, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (414, N'M 9308 VN', N'Honda', N'Brio', 2022, N'Hitam', N'683894938899', N'97798838420', N'Listrik', 2500, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (415, N'EH 3921 YL', N'Honda', N'Brio', 2021, N'Merah', N'640858908829', N'30405202062', N'Hybrid', 1800, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (416, N'GL 3564 UF', N'Honda', N'Brio', 2023, N'Putih', N'513858816262', N'61811002077', N'Listrik', 1500, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (417, N'LJ 110 WBT', N'Honda', N'Brio', 2023, N'Silver', N'675431308688', N'31330467469', N'Diesel', 2000, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (418, N'B 295 QX', N'Honda', N'Brio', 2022, N'Biru', N'893033364610', N'58148036613', N'Listrik', 1800, 60)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (419, N'B 5356 AI', N'Honda', N'Brio', 2023, N'Silver', N'145770617442', N'24770128517', N'Listrik', 3000, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (420, N'S 762 YZU', N'Honda', N'Brio', 2023, N'Abu-abu', N'995246445792', N'60433556960', N'Hybrid', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (421, N'Q 6673 VLY', N'Honda', N'Jazz', 2021, N'Kuning', N'728692446841', N'47631993200', N'Bensin', 1500, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (422, N'HS 351 MAU', N'Honda', N'Jazz', 2023, N'Biru', N'136985826699', N'37189679699', N'Bensin', 1000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (423, N'FK 6699 CW', N'Honda', N'Jazz', 2023, N'Kuning', N'111609699049', N'15436909504', N'Hybrid', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (424, N'U 400 AVF', N'Honda', N'Jazz', 2024, N'Hitam', N'541766232627', N'63504686012', N'Listrik', 2500, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (425, N'OY 412 OD', N'Honda', N'Jazz', 2021, N'Kuning', N'238748684042', N'47483626185', N'Hybrid', 1500, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (426, N'BX 133 SD', N'Honda', N'Jazz', 2023, N'Putih', N'680358756486', N'25658121216', N'Hybrid', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (427, N'Y 2474 SF', N'Honda', N'Jazz', 2021, N'Kuning', N'528932168200', N'19414559381', N'Bensin', 2000, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (428, N'OO 5027 YRQ', N'Honda', N'Jazz', 2021, N'Silver', N'923439732218', N'45810062140', N'Diesel', 2000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (429, N'W 071 ZDB', N'Honda', N'Jazz', 2023, N'Abu-abu', N'534343215520', N'21718592775', N'Listrik', 2500, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (430, N'AP 4768 FJK', N'Honda', N'Jazz', 2023, N'Silver', N'729900367688', N'46473352801', N'Hybrid', 2500, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (431, N'J 2263 YL', N'Honda', N'Jazz', 2024, N'Putih', N'419716513510', N'84147985305', N'Diesel', 2500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (432, N'V 0111 UJ', N'Honda', N'Jazz', 2024, N'Abu-abu', N'863388990769', N'77602768360', N'Hybrid', 3000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (433, N'EC 511 UWJ', N'Honda', N'Jazz', 2021, N'Silver', N'518539447144', N'96876901913', N'Listrik', 1500, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (434, N'B 6026 VE', N'Honda', N'Jazz', 2024, N'Hitam', N'101810327787', N'47643525055', N'Listrik', 1000, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (435, N'KD 3240 GG', N'Honda', N'Jazz', 2022, N'Putih', N'598428672594', N'41663507958', N'Hybrid', 3000, 12)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (436, N'UO 269 GU', N'Honda', N'Jazz', 2023, N'Merah', N'413640831975', N'50439727336', N'Diesel', 1000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (437, N'MH 0443 EJ', N'Honda', N'Jazz', 2024, N'Hitam', N'387668208862', N'55293417133', N'Diesel', 1500, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (438, N'P 3752 OGO', N'Honda', N'Jazz', 2023, N'Putih', N'733629988784', N'71401731419', N'Listrik', 3000, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (439, N'X 405 OH', N'Honda', N'Jazz', 2023, N'Kuning', N'538923265212', N'63450689616', N'Bensin', 1800, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (440, N'W 8795 AI', N'Honda', N'Jazz', 2021, N'Kuning', N'986630949499', N'55355237410', N'Listrik', 1500, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (441, N'BJ 538 ETJ', N'Honda', N'Civic', 2024, N'Kuning', N'355011406795', N'60246757921', N'Diesel', 3000, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (442, N'F 758 XP', N'Honda', N'Civic', 2021, N'Hitam', N'907392879540', N'61579872600', N'Diesel', 3000, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (443, N'YL 443 OFF', N'Honda', N'Civic', 2023, N'Abu-abu', N'618844197797', N'21082933388', N'Listrik', 2000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (444, N'RU 3115 ZR', N'Honda', N'Civic', 2021, N'Abu-abu', N'554925896150', N'23214147474', N'Listrik', 2000, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (445, N'NV 7913 GKN', N'Honda', N'Civic', 2023, N'Merah', N'569127113856', N'42006518852', N'Diesel', 3000, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (446, N'JU 6617 PP', N'Honda', N'Civic', 2023, N'Biru', N'215642248218', N'93835517086', N'Diesel', 3000, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (447, N'T 718 BRS', N'Honda', N'Civic', 2023, N'Abu-abu', N'887473873748', N'36657995312', N'Bensin', 1800, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (448, N'Q 659 OH', N'Honda', N'Civic', 2023, N'Kuning', N'720258649114', N'78435475819', N'Bensin', 2000, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (449, N'BH 200 WLQ', N'Honda', N'Civic', 2021, N'Abu-abu', N'634341590497', N'33864353937', N'Hybrid', 2000, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (450, N'H 4568 KFI', N'Honda', N'Civic', 2023, N'Silver', N'460767979901', N'16699996319', N'Diesel', 1500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (451, N'E 6920 LKS', N'Honda', N'Civic', 2023, N'Kuning', N'835580863956', N'49749921506', N'Diesel', 1000, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (452, N'FL 2114 UVA', N'Honda', N'Civic', 2022, N'Kuning', N'273846447326', N'35803502548', N'Hybrid', 1000, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (453, N'YI 800 BQX', N'Honda', N'Civic', 2024, N'Putih', N'829058268196', N'84668027759', N'Bensin', 2000, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (454, N'JL 792 BQB', N'Honda', N'Civic', 2022, N'Biru', N'809355378198', N'95077158480', N'Hybrid', 1500, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (455, N'AK 9281 BW', N'Honda', N'Civic', 2023, N'Hitam', N'542340952120', N'40742254126', N'Hybrid', 3000, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (456, N'W 4139 LYI', N'Honda', N'Civic', 2023, N'Putih', N'203647880878', N'69323771624', N'Listrik', 2000, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (457, N'R 278 KZ', N'Honda', N'Civic', 2021, N'Biru', N'262129448987', N'25562161812', N'Diesel', 1800, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (458, N'PH 595 SK', N'Honda', N'Civic', 2021, N'Biru', N'736631182295', N'41527643511', N'Listrik', 1500, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (459, N'Y 246 FKT', N'Honda', N'Civic', 2024, N'Merah', N'161354683061', N'15209915603', N'Listrik', 2500, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (460, N'ES 822 FX', N'Honda', N'Civic', 2022, N'Merah', N'892611128267', N'26713098483', N'Listrik', 1800, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (461, N'P 250 CY', N'Honda', N'CR-V', 2024, N'Silver', N'746014843325', N'24058628899', N'Bensin', 3000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (462, N'K 2301 XUG', N'Honda', N'CR-V', 2021, N'Abu-abu', N'859528755087', N'19489169484', N'Diesel', 1500, 2)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (463, N'FG 219 HL', N'Honda', N'CR-V', 2023, N'Silver', N'360074584167', N'63908222441', N'Diesel', 1500, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (464, N'Q 4790 LYO', N'Honda', N'CR-V', 2023, N'Biru', N'709632827589', N'70934054451', N'Diesel', 3000, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (465, N'T 9790 SL', N'Honda', N'CR-V', 2022, N'Biru', N'514851195684', N'33584344709', N'Diesel', 2500, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (466, N'WU 424 YRY', N'Honda', N'CR-V', 2023, N'Silver', N'128851189779', N'26830933571', N'Listrik', 3000, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (467, N'L 142 PG', N'Honda', N'CR-V', 2021, N'Kuning', N'910252907350', N'71394589569', N'Listrik', 2500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (468, N'SB 8808 CEU', N'Honda', N'CR-V', 2022, N'Hitam', N'988991514765', N'25623966025', N'Hybrid', 1500, 78)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (469, N'K 954 FJ', N'Honda', N'CR-V', 2024, N'Putih', N'968934299046', N'47185829342', N'Bensin', 2000, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (470, N'MC 0632 RM', N'Honda', N'CR-V', 2023, N'Hitam', N'303669284382', N'11663624534', N'Listrik', 1800, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (471, N'FX 872 LLD', N'Honda', N'CR-V', 2021, N'Merah', N'174952385090', N'25232639477', N'Bensin', 3000, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (472, N'ZO 100 TTX', N'Honda', N'CR-V', 2021, N'Abu-abu', N'608775440644', N'30175954196', N'Listrik', 2500, 21)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (473, N'Z 628 FY', N'Honda', N'CR-V', 2023, N'Merah', N'331970441353', N'68616975922', N'Listrik', 1800, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (474, N'V 021 WSU', N'Honda', N'CR-V', 2023, N'Silver', N'557131351841', N'22681393852', N'Listrik', 2500, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (475, N'O 3016 IS', N'Honda', N'CR-V', 2021, N'Kuning', N'387983203155', N'31797593843', N'Hybrid', 2500, 18)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (476, N'WN 820 YOM', N'Honda', N'CR-V', 2022, N'Silver', N'777658743607', N'25508052028', N'Listrik', 3000, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (477, N'UI 813 VZ', N'Honda', N'CR-V', 2021, N'Putih', N'533119797737', N'90759198537', N'Hybrid', 1500, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (478, N'CI 262 JZ', N'Honda', N'CR-V', 2021, N'Abu-abu', N'276919701964', N'93371711585', N'Bensin', 3000, 21)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (479, N'EK 3750 SAH', N'Honda', N'CR-V', 2021, N'Hitam', N'592853467181', N'70447131435', N'Bensin', 2000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (480, N'Q 471 SKJ', N'Honda', N'CR-V', 2023, N'Biru', N'791955120782', N'26210231443', N'Bensin', 2000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (481, N'VC 085 LV', N'Honda', N'HR-V', 2022, N'Biru', N'398741979096', N'54806569737', N'Listrik', 1800, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (482, N'V 3168 QLR', N'Honda', N'HR-V', 2021, N'Biru', N'717919570367', N'32095912202', N'Hybrid', 1000, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (483, N'O 5851 QLZ', N'Honda', N'HR-V', 2021, N'Kuning', N'954912525166', N'13541659396', N'Hybrid', 1500, 61)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (484, N'B 2261 XM', N'Honda', N'HR-V', 2022, N'Putih', N'298701839028', N'10139446311', N'Hybrid', 2500, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (485, N'C 9025 LZ', N'Honda', N'HR-V', 2023, N'Kuning', N'283360236147', N'63503368005', N'Diesel', 1000, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (486, N'YU 247 KX', N'Honda', N'HR-V', 2024, N'Abu-abu', N'580153542788', N'24432648584', N'Listrik', 1500, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (487, N'CC 263 THG', N'Honda', N'HR-V', 2021, N'Abu-abu', N'313901196096', N'79473912327', N'Bensin', 2000, 33)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (488, N'HQ 9749 VCU', N'Honda', N'HR-V', 2023, N'Abu-abu', N'940150693127', N'80439422773', N'Bensin', 3000, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (489, N'UK 0119 ABH', N'Honda', N'HR-V', 2023, N'Silver', N'530989944492', N'29743129977', N'Bensin', 2500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (490, N'ZC 4932 LL', N'Honda', N'HR-V', 2024, N'Abu-abu', N'272916984606', N'74003788716', N'Bensin', 1800, 2)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (491, N'QT 013 RU', N'Honda', N'HR-V', 2021, N'Putih', N'136472653549', N'28504737686', N'Listrik', 2500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (492, N'I 410 YDW', N'Honda', N'HR-V', 2023, N'Kuning', N'530211955205', N'77037017541', N'Diesel', 2500, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (493, N'MQ 919 TVH', N'Honda', N'HR-V', 2022, N'Biru', N'975881284222', N'64239713917', N'Diesel', 2500, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (494, N'I 996 CGK', N'Honda', N'HR-V', 2022, N'Putih', N'833130450501', N'44034287937', N'Bensin', 1500, 73)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (495, N'RX 685 RHD', N'Honda', N'HR-V', 2024, N'Abu-abu', N'294421654135', N'53590519870', N'Listrik', 1000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (496, N'AN 354 QL', N'Honda', N'HR-V', 2023, N'Silver', N'307060179155', N'87789043456', N'Listrik', 2000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (497, N'X 607 NAU', N'Honda', N'HR-V', 2024, N'Merah', N'227588298195', N'48520827614', N'Listrik', 1500, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (498, N'XQ 729 UJA', N'Honda', N'HR-V', 2021, N'Putih', N'418041688419', N'45274465338', N'Bensin', 1500, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (499, N'UP 881 XHG', N'Honda', N'HR-V', 2023, N'Silver', N'360585530316', N'43934055849', N'Listrik', 2500, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (500, N'DP 010 XZ', N'Honda', N'HR-V', 2024, N'Abu-abu', N'483680800385', N'78002194168', N'Diesel', 1000, 21)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (501, N'B 1950 KXU', N'Honda', N'Mobilio', 2022, N'Silver', N'184656690193', N'62177783928', N'Hybrid', 1000, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (502, N'Z 4990 KSR', N'Honda', N'Mobilio', 2021, N'Silver', N'716158711211', N'36671016298', N'Listrik', 3000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (503, N'OU 100 IJ', N'Honda', N'Mobilio', 2021, N'Putih', N'576176197102', N'11682619229', N'Listrik', 1800, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (504, N'D 815 WA', N'Honda', N'Mobilio', 2023, N'Putih', N'248256351204', N'42468751145', N'Listrik', 2500, 97)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (505, N'YF 5481 WBH', N'Honda', N'Mobilio', 2023, N'Silver', N'262749654246', N'30395862800', N'Bensin', 2000, 59)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (506, N'UH 8254 RA', N'Honda', N'Mobilio', 2023, N'Biru', N'339334777700', N'66776694819', N'Listrik', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (507, N'BM 448 OT', N'Honda', N'Mobilio', 2024, N'Abu-abu', N'434853290127', N'55315456092', N'Bensin', 2500, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (508, N'BI 801 MW', N'Honda', N'Mobilio', 2024, N'Merah', N'212794792757', N'50227355732', N'Hybrid', 1800, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (509, N'H 8796 JWZ', N'Honda', N'Mobilio', 2024, N'Putih', N'881845665635', N'25670855754', N'Listrik', 1000, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (510, N'O 577 DV', N'Honda', N'Mobilio', 2024, N'Kuning', N'423196300274', N'40221146033', N'Listrik', 1500, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (511, N'CX 749 XF', N'Honda', N'Mobilio', 2021, N'Silver', N'496901310367', N'80628839679', N'Diesel', 2500, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (512, N'DG 100 UHV', N'Honda', N'Mobilio', 2023, N'Merah', N'908632334769', N'42141201405', N'Diesel', 1000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (513, N'I 6315 WKZ', N'Honda', N'Mobilio', 2021, N'Putih', N'251590833066', N'92778877896', N'Listrik', 3000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (514, N'WA 021 GG', N'Honda', N'Mobilio', 2021, N'Biru', N'400736750859', N'59653839825', N'Diesel', 2500, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (515, N'O 8205 GZR', N'Honda', N'Mobilio', 2023, N'Hitam', N'905368195483', N'30515914740', N'Bensin', 1500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (516, N'L 918 UD', N'Honda', N'Mobilio', 2021, N'Biru', N'364347194966', N'48208205313', N'Hybrid', 2500, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (517, N'HD 231 RQ', N'Honda', N'Mobilio', 2023, N'Silver', N'809790861969', N'23730664227', N'Listrik', 1000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (518, N'HJ 348 KK', N'Honda', N'Mobilio', 2022, N'Putih', N'158967623267', N'83203615523', N'Bensin', 1500, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (519, N'SH 407 TV', N'Honda', N'Mobilio', 2023, N'Biru', N'701254287561', N'90450808744', N'Listrik', 1500, 21)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (520, N'MS 4466 LN', N'Honda', N'Mobilio', 2021, N'Abu-abu', N'997955625513', N'11655674974', N'Hybrid', 1500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (521, N'X 597 WK', N'Honda', N'Freed', 2023, N'Merah', N'164359585422', N'21119644733', N'Listrik', 2500, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (522, N'UP 8510 QD', N'Honda', N'Freed', 2023, N'Biru', N'590185956859', N'63429699332', N'Listrik', 1500, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (523, N'E 0250 OHO', N'Honda', N'Freed', 2022, N'Hitam', N'951265173467', N'12784904107', N'Hybrid', 1500, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (524, N'F 9995 EGY', N'Honda', N'Freed', 2022, N'Kuning', N'170171703016', N'50957667555', N'Diesel', 1800, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (525, N'R 0113 SRL', N'Honda', N'Freed', 2022, N'Kuning', N'572826183348', N'87922952956', N'Diesel', 1500, 88)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (526, N'YI 961 YW', N'Honda', N'Freed', 2023, N'Kuning', N'292918343369', N'82969503053', N'Diesel', 2500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (527, N'JY 6832 CW', N'Honda', N'Freed', 2024, N'Kuning', N'134102400571', N'59211051503', N'Hybrid', 2500, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (528, N'O 6280 CK', N'Honda', N'Freed', 2022, N'Abu-abu', N'187361138424', N'89106767788', N'Diesel', 3000, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (529, N'HP 620 UY', N'Honda', N'Freed', 2024, N'Merah', N'634605469644', N'43374471478', N'Diesel', 2000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (530, N'ZY 992 SC', N'Honda', N'Freed', 2022, N'Silver', N'365885312926', N'41669783401', N'Bensin', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (531, N'U 1868 CF', N'Honda', N'Freed', 2022, N'Abu-abu', N'433560806292', N'28975482531', N'Hybrid', 1000, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (532, N'T 332 AHA', N'Honda', N'Freed', 2022, N'Hitam', N'112712545467', N'38517247162', N'Hybrid', 3000, 55)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (533, N'Y 0132 MUO', N'Honda', N'Freed', 2023, N'Putih', N'476439611672', N'31386577287', N'Bensin', 1800, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (534, N'J 0496 JH', N'Honda', N'Freed', 2023, N'Silver', N'179450262762', N'66094111889', N'Diesel', 2000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (535, N'W 856 UF', N'Honda', N'Freed', 2021, N'Hitam', N'293841292835', N'21857655156', N'Bensin', 2000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (536, N'T 521 ZUM', N'Honda', N'Freed', 2024, N'Putih', N'266663198529', N'46534785951', N'Listrik', 1500, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (537, N'XE 283 PTR', N'Honda', N'Freed', 2021, N'Biru', N'441410754180', N'56594396487', N'Hybrid', 1500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (538, N'UT 981 JV', N'Honda', N'Freed', 2022, N'Putih', N'274255732975', N'97332982819', N'Hybrid', 1000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (539, N'AW 9351 QCJ', N'Honda', N'Freed', 2021, N'Putih', N'848675463770', N'71319444857', N'Diesel', 1800, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (540, N'NJ 064 IB', N'Honda', N'Freed', 2022, N'Abu-abu', N'853791793353', N'67048935672', N'Diesel', 1500, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (541, N'K 121 EDF', N'Honda', N'Accord', 2024, N'Biru', N'248497791577', N'13002421142', N'Diesel', 1000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (542, N'DP 867 DX', N'Honda', N'Accord', 2023, N'Kuning', N'458280242853', N'66147466526', N'Bensin', 1800, 56)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (543, N'JV 4761 DW', N'Honda', N'Accord', 2022, N'Kuning', N'269007999501', N'55887088111', N'Listrik', 1800, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (544, N'WG 2404 XI', N'Honda', N'Accord', 2024, N'Silver', N'903725140667', N'42256924805', N'Diesel', 3000, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (545, N'Y 2695 EN', N'Honda', N'Accord', 2021, N'Putih', N'804909664124', N'40641984331', N'Bensin', 2500, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (546, N'XA 977 KD', N'Honda', N'Accord', 2024, N'Biru', N'548699139822', N'38175997327', N'Hybrid', 1500, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (547, N'X 8765 KE', N'Honda', N'Accord', 2024, N'Abu-abu', N'153081708363', N'15605626430', N'Hybrid', 2500, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (548, N'A 448 CD', N'Honda', N'Accord', 2022, N'Silver', N'981692665217', N'66104464260', N'Listrik', 2500, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (549, N'QV 888 AV', N'Honda', N'Accord', 2024, N'Merah', N'955062756891', N'46270531966', N'Diesel', 1800, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (550, N'LQ 2794 ID', N'Honda', N'Accord', 2021, N'Abu-abu', N'514927234620', N'34008653454', N'Diesel', 2500, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (551, N'ZO 5386 JA', N'Honda', N'Accord', 2021, N'Silver', N'772601305028', N'57552703689', N'Hybrid', 3000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (552, N'MM 155 LP', N'Honda', N'Accord', 2024, N'Merah', N'470652104739', N'59157154126', N'Diesel', 1000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (553, N'A 670 RHE', N'Honda', N'Accord', 2021, N'Biru', N'636194145984', N'82307523401', N'Hybrid', 2500, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (554, N'WQ 9506 NS', N'Honda', N'Accord', 2023, N'Merah', N'740605120412', N'36743771462', N'Listrik', 1000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (555, N'JW 4350 MA', N'Honda', N'Accord', 2023, N'Merah', N'109639453031', N'52601546099', N'Listrik', 2000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (556, N'A 255 XRU', N'Honda', N'Accord', 2021, N'Kuning', N'469902485462', N'71536089606', N'Hybrid', 2500, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (557, N'W 3005 EG', N'Honda', N'Accord', 2021, N'Abu-abu', N'483106507827', N'14768133803', N'Listrik', 2000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (558, N'AG 065 DNZ', N'Honda', N'Accord', 2021, N'Abu-abu', N'903006376658', N'71141181756', N'Listrik', 2500, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (559, N'VM 5467 AN', N'Honda', N'Accord', 2021, N'Kuning', N'269653550069', N'49209543189', N'Listrik', 2000, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (560, N'T 762 LGC', N'Honda', N'Accord', 2023, N'Silver', N'769481797956', N'95313102853', N'Hybrid', 1500, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (561, N'E 4990 ZB', N'Honda', N'City', 2022, N'Silver', N'452750125896', N'44572735686', N'Bensin', 1800, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (562, N'JN 8617 RP', N'Honda', N'City', 2023, N'Putih', N'469459855266', N'62140525926', N'Listrik', 1800, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (563, N'H 191 YH', N'Honda', N'City', 2021, N'Hitam', N'125869568058', N'95178619369', N'Listrik', 2500, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (564, N'YH 1514 XV', N'Honda', N'City', 2023, N'Silver', N'654743648253', N'10420654950', N'Listrik', 1500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (565, N'M 953 SA', N'Honda', N'City', 2022, N'Kuning', N'157603851709', N'92868833803', N'Bensin', 3000, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (566, N'A 681 QJU', N'Honda', N'City', 2023, N'Hitam', N'965284433841', N'13631815490', N'Diesel', 2000, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (567, N'UE 660 RU', N'Honda', N'City', 2022, N'Merah', N'247762587000', N'50889757225', N'Hybrid', 2000, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (568, N'T 117 ZI', N'Honda', N'City', 2021, N'Kuning', N'421287797028', N'80880319205', N'Listrik', 1800, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (569, N'RT 1627 NZ', N'Honda', N'City', 2023, N'Merah', N'821311276923', N'24278979820', N'Diesel', 2000, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (570, N'TO 8059 GY', N'Honda', N'City', 2021, N'Biru', N'958453858366', N'70202479779', N'Bensin', 2500, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (571, N'V 757 CQ', N'Honda', N'City', 2023, N'Silver', N'713402754568', N'87328624148', N'Diesel', 3000, 29)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (572, N'A 1100 HIH', N'Honda', N'City', 2022, N'Hitam', N'255423980581', N'30848844732', N'Hybrid', 3000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (573, N'B 116 VHT', N'Honda', N'City', 2022, N'Putih', N'624799383875', N'84691623289', N'Listrik', 1000, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (574, N'E 9063 JDY', N'Honda', N'City', 2022, N'Kuning', N'412176672191', N'11776977022', N'Diesel', 2500, 35)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (575, N'N 355 EA', N'Honda', N'City', 2023, N'Kuning', N'671297828136', N'89449102837', N'Hybrid', 1500, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (576, N'UO 040 GBV', N'Honda', N'City', 2021, N'Silver', N'328917342447', N'49530695131', N'Listrik', 1800, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (577, N'H 861 HCW', N'Honda', N'City', 2024, N'Silver', N'466470779157', N'59889402966', N'Bensin', 1500, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (578, N'V 082 MPS', N'Honda', N'City', 2024, N'Biru', N'323319639220', N'68603116965', N'Bensin', 2500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (579, N'F 5031 GX', N'Honda', N'City', 2024, N'Silver', N'765382726175', N'34006843519', N'Bensin', 2500, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (580, N'K 3871 VSA', N'Honda', N'City', 2023, N'Merah', N'442369895989', N'91074885511', N'Diesel', 1800, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (581, N'HT 9733 KJA', N'Honda', N'WR-V', 2024, N'Kuning', N'397875588501', N'68359882787', N'Bensin', 1000, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (582, N'T 9072 UD', N'Honda', N'WR-V', 2021, N'Silver', N'510843970563', N'99447079699', N'Listrik', 2500, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (583, N'TB 421 OFI', N'Honda', N'WR-V', 2022, N'Hitam', N'749473346457', N'17935593816', N'Bensin', 2500, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (584, N'UQ 749 DB', N'Honda', N'WR-V', 2022, N'Putih', N'235510210678', N'24604363913', N'Hybrid', 1800, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (585, N'G 011 XP', N'Honda', N'WR-V', 2023, N'Biru', N'304766434012', N'40915548183', N'Diesel', 1800, 48)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (586, N'UW 7050 JFM', N'Honda', N'WR-V', 2021, N'Kuning', N'237501789301', N'46037148938', N'Listrik', 2000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (587, N'AA 539 AWJ', N'Honda', N'WR-V', 2024, N'Biru', N'994933830818', N'72239156936', N'Hybrid', 1000, 28)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (588, N'KE 9392 HGH', N'Honda', N'WR-V', 2021, N'Biru', N'117957991745', N'54097932431', N'Hybrid', 1000, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (589, N'F 635 ID', N'Honda', N'WR-V', 2022, N'Putih', N'245431573523', N'17181635365', N'Hybrid', 3000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (590, N'H 955 WSM', N'Honda', N'WR-V', 2024, N'Biru', N'418319473849', N'59289038399', N'Bensin', 1000, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (591, N'R 734 HGB', N'Honda', N'WR-V', 2021, N'Silver', N'645339346625', N'21267197849', N'Diesel', 2000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (592, N'C 7687 UZV', N'Honda', N'WR-V', 2024, N'Biru', N'891719807526', N'35205824420', N'Diesel', 1500, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (593, N'KG 905 YI', N'Honda', N'WR-V', 2021, N'Merah', N'225739436795', N'36955289430', N'Diesel', 1800, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (594, N'JF 609 QDF', N'Honda', N'WR-V', 2023, N'Biru', N'604385525563', N'42081838022', N'Diesel', 2000, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (595, N'ND 818 JCV', N'Honda', N'WR-V', 2023, N'Biru', N'885373523421', N'42307597560', N'Diesel', 3000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (596, N'G 7205 OPZ', N'Honda', N'WR-V', 2022, N'Abu-abu', N'362222965455', N'69796078299', N'Diesel', 2000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (597, N'MX 7676 EPC', N'Honda', N'WR-V', 2023, N'Putih', N'812713496395', N'74253516320', N'Listrik', 2500, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (598, N'Q 7602 NN', N'Honda', N'WR-V', 2021, N'Putih', N'845548271088', N'38599367814', N'Bensin', 1000, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (599, N'RZ 704 UJM', N'Honda', N'WR-V', 2022, N'Biru', N'716677638456', N'76508531022', N'Diesel', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (600, N'L 315 AV', N'Honda', N'WR-V', 2022, N'Putih', N'747149818275', N'12540728295', N'Diesel', 1000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (601, N'L 1200 HLB', N'Honda', N'BR-V', 2021, N'Kuning', N'369865423215', N'48504577330', N'Hybrid', 2500, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (602, N'PS 078 YX', N'Honda', N'BR-V', 2021, N'Kuning', N'284697133437', N'56915193627', N'Listrik', 1800, 24)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (603, N'QN 5447 EC', N'Honda', N'BR-V', 2023, N'Kuning', N'711557396572', N'55510015096', N'Bensin', 3000, 9)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (604, N'RR 5963 QKK', N'Honda', N'BR-V', 2024, N'Hitam', N'782727343616', N'74167985107', N'Hybrid', 3000, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (605, N'RX 6521 CMG', N'Honda', N'BR-V', 2021, N'Hitam', N'100615971396', N'94337566526', N'Listrik', 1500, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (606, N'YV 210 JW', N'Honda', N'BR-V', 2024, N'Hitam', N'783567363665', N'11358299259', N'Listrik', 2500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (607, N'H 970 ZTO', N'Honda', N'BR-V', 2023, N'Abu-abu', N'987305718944', N'43987301385', N'Bensin', 1800, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (608, N'DS 763 NXL', N'Honda', N'BR-V', 2021, N'Kuning', N'372577444967', N'31821741602', N'Diesel', 2500, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (609, N'TQ 4227 HJ', N'Honda', N'BR-V', 2021, N'Hitam', N'702189861146', N'36635354579', N'Listrik', 3000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (610, N'J 0454 VC', N'Honda', N'BR-V', 2023, N'Hitam', N'342102940694', N'47168186551', N'Listrik', 3000, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (611, N'RT 0227 FUJ', N'Honda', N'BR-V', 2021, N'Putih', N'229793834896', N'62300465053', N'Hybrid', 1800, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (612, N'AQ 8140 WJ', N'Honda', N'BR-V', 2022, N'Silver', N'888942287897', N'63521943590', N'Listrik', 1500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (613, N'J 8270 PZ', N'Honda', N'BR-V', 2023, N'Abu-abu', N'128366284360', N'55340316003', N'Diesel', 2000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (614, N'UE 860 YUP', N'Honda', N'BR-V', 2023, N'Merah', N'128563187746', N'34162577375', N'Diesel', 1000, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (615, N'QR 627 OJR', N'Honda', N'BR-V', 2024, N'Merah', N'264770209710', N'80530719153', N'Diesel', 3000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (616, N'QP 144 XE', N'Honda', N'BR-V', 2021, N'Putih', N'897405188002', N'60275824919', N'Bensin', 2000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (617, N'M 865 OV', N'Honda', N'BR-V', 2023, N'Merah', N'102601862690', N'42029818058', N'Hybrid', 1500, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (618, N'U 8476 ZBA', N'Honda', N'BR-V', 2024, N'Merah', N'737284386617', N'76661988449', N'Hybrid', 2500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (619, N'A 947 SAY', N'Honda', N'BR-V', 2023, N'Abu-abu', N'678632753509', N'41591218885', N'Hybrid', 1000, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (620, N'PB 736 QT', N'Honda', N'BR-V', 2021, N'Merah', N'137597452528', N'55778345492', N'Listrik', 1800, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (621, N'OR 3750 YKB', N'Honda', N'Odyssey', 2021, N'Abu-abu', N'751180694036', N'49195457078', N'Hybrid', 3000, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (622, N'H 711 CJU', N'Honda', N'Odyssey', 2021, N'Kuning', N'842259338377', N'73953554409', N'Bensin', 3000, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (623, N'DZ 0150 XXC', N'Honda', N'Odyssey', 2023, N'Hitam', N'905042358506', N'51870006398', N'Listrik', 2000, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (624, N'Z 4891 YQD', N'Honda', N'Odyssey', 2023, N'Merah', N'563338790911', N'56174182088', N'Hybrid', 3000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (625, N'R 627 GID', N'Honda', N'Odyssey', 2023, N'Silver', N'406814669152', N'55304597896', N'Listrik', 2000, 35)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (626, N'RO 493 IVV', N'Honda', N'Odyssey', 2021, N'Hitam', N'358265614627', N'86055269089', N'Hybrid', 3000, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (627, N'T 748 NNI', N'Honda', N'Odyssey', 2021, N'Merah', N'255460965980', N'15275249675', N'Bensin', 1800, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (628, N'CO 455 LQ', N'Honda', N'Odyssey', 2023, N'Silver', N'561061383061', N'81135421291', N'Bensin', 3000, 42)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (629, N'T 8986 BIG', N'Honda', N'Odyssey', 2022, N'Putih', N'369600944286', N'26241817790', N'Bensin', 1000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (630, N'B 5747 MY', N'Honda', N'Odyssey', 2023, N'Kuning', N'180412512258', N'87316578197', N'Hybrid', 2000, 10)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (631, N'JY 995 AA', N'Honda', N'Odyssey', 2021, N'Hitam', N'200374242104', N'39815536693', N'Bensin', 1800, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (632, N'GB 4724 RF', N'Honda', N'Odyssey', 2024, N'Putih', N'497983356821', N'65842513098', N'Diesel', 2500, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (633, N'K 722 RG', N'Honda', N'Odyssey', 2022, N'Putih', N'891371347768', N'83110488001', N'Diesel', 1500, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (634, N'I 334 URD', N'Honda', N'Odyssey', 2021, N'Hitam', N'900349841412', N'62142947268', N'Hybrid', 1000, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (635, N'I 2801 FN', N'Honda', N'Odyssey', 2021, N'Kuning', N'644662870147', N'77190126770', N'Bensin', 3000, 14)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (636, N'WK 4469 JGP', N'Honda', N'Odyssey', 2023, N'Putih', N'242231616019', N'45792729724', N'Bensin', 1500, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (637, N'WX 2210 CMG', N'Honda', N'Odyssey', 2021, N'Abu-abu', N'110228622939', N'50894868058', N'Diesel', 1000, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (638, N'AE 748 BH', N'Honda', N'Odyssey', 2022, N'Putih', N'456715231430', N'76653498165', N'Bensin', 3000, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (639, N'DG 9410 FA', N'Honda', N'Odyssey', 2023, N'Silver', N'990522480810', N'26532765320', N'Diesel', 3000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (640, N'UD 501 DO', N'Honda', N'Odyssey', 2022, N'Hitam', N'927197139107', N'50175776651', N'Listrik', 1800, 18)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (641, N'AT 3952 YA', N'Honda', N'Pilot', 2021, N'Putih', N'602911876897', N'97135302746', N'Hybrid', 2500, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (642, N'DV 170 OUV', N'Honda', N'Pilot', 2024, N'Hitam', N'469962152984', N'81665648981', N'Listrik', 1800, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (643, N'G 7563 MS', N'Honda', N'Pilot', 2023, N'Abu-abu', N'947305616078', N'79114764761', N'Listrik', 2500, 45)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (644, N'K 0015 RLS', N'Honda', N'Pilot', 2021, N'Kuning', N'840312485717', N'68079418022', N'Diesel', 2500, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (645, N'PZ 177 AID', N'Honda', N'Pilot', 2023, N'Biru', N'396082942362', N'81054374392', N'Hybrid', 1500, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (646, N'L 1408 SAU', N'Honda', N'Pilot', 2023, N'Abu-abu', N'505037890028', N'74195792781', N'Listrik', 1500, 78)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (647, N'C 732 LG', N'Honda', N'Pilot', 2024, N'Biru', N'864486174110', N'26245093169', N'Diesel', 2000, 92)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (648, N'J 2597 CG', N'Honda', N'Pilot', 2024, N'Biru', N'493885663098', N'73495993633', N'Hybrid', 3000, 14)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (649, N'DF 351 FI', N'Honda', N'Pilot', 2022, N'Merah', N'445400159656', N'18999818915', N'Hybrid', 1000, 37)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (650, N'FU 191 DXW', N'Honda', N'Pilot', 2023, N'Biru', N'411165570116', N'82946174012', N'Diesel', 1500, 7)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (651, N'Q 060 XMS', N'Honda', N'Pilot', 2022, N'Merah', N'152468634495', N'49871422597', N'Hybrid', 1500, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (652, N'Z 2639 MXW', N'Honda', N'Pilot', 2022, N'Kuning', N'247396397976', N'36690584299', N'Diesel', 1800, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (653, N'XP 0824 SUO', N'Honda', N'Pilot', 2023, N'Putih', N'211816258679', N'85796597076', N'Diesel', 2500, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (654, N'UE 594 BY', N'Honda', N'Pilot', 2024, N'Kuning', N'593661759891', N'80953579181', N'Bensin', 1500, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (655, N'W 229 FJZ', N'Honda', N'Pilot', 2022, N'Biru', N'302192234682', N'68248993402', N'Bensin', 2500, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (656, N'J 4379 RZS', N'Honda', N'Pilot', 2024, N'Abu-abu', N'294590674413', N'59773182878', N'Listrik', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (657, N'XV 816 HEJ', N'Honda', N'Pilot', 2023, N'Hitam', N'166799262922', N'12633575829', N'Bensin', 1800, 23)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (658, N'EV 685 OBC', N'Honda', N'Pilot', 2023, N'Putih', N'102157560194', N'35585292473', N'Diesel', 2500, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (659, N'K 107 LV', N'Honda', N'Pilot', 2022, N'Abu-abu', N'477536900362', N'53693426035', N'Diesel', 1800, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (660, N'V 5776 KGJ', N'Honda', N'Pilot', 2021, N'Putih', N'159171216142', N'78255826698', N'Diesel', 3000, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (661, N'XE 3190 WU', N'Honda', N'Amaze', 2022, N'Kuning', N'150306125495', N'83384909920', N'Hybrid', 1800, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (662, N'LS 706 MKT', N'Honda', N'Amaze', 2021, N'Putih', N'700651382701', N'55971313480', N'Hybrid', 2500, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (663, N'BQ 171 CU', N'Honda', N'Amaze', 2023, N'Merah', N'527490979819', N'77489362940', N'Diesel', 1800, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (664, N'DZ 1581 UA', N'Honda', N'Amaze', 2022, N'Abu-abu', N'644273603391', N'81649823147', N'Hybrid', 1800, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (665, N'B 6997 NP', N'Honda', N'Amaze', 2023, N'Merah', N'218815935271', N'30200316212', N'Bensin', 3000, 67)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (666, N'E 688 MZ', N'Honda', N'Amaze', 2021, N'Kuning', N'228956918515', N'33295125631', N'Listrik', 1000, 95)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (667, N'PK 793 YR', N'Honda', N'Amaze', 2021, N'Kuning', N'414808952706', N'55057659097', N'Diesel', 1000, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (668, N'NQ 493 PI', N'Honda', N'Amaze', 2022, N'Merah', N'810346122373', N'97807676627', N'Hybrid', 2500, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (669, N'RC 583 ONZ', N'Honda', N'Amaze', 2021, N'Kuning', N'301253542420', N'84489653783', N'Hybrid', 1800, 89)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (670, N'F 7795 PR', N'Honda', N'Amaze', 2024, N'Putih', N'751234710641', N'55717856847', N'Diesel', 2500, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (671, N'AH 171 OG', N'Honda', N'Amaze', 2024, N'Kuning', N'539019460604', N'38941497683', N'Diesel', 2500, 2)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (672, N'T 594 JQ', N'Honda', N'Amaze', 2021, N'Hitam', N'122158398259', N'59260234851', N'Bensin', 2500, 100)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (673, N'RZ 8107 PV', N'Honda', N'Amaze', 2022, N'Abu-abu', N'435385753605', N'50250731825', N'Hybrid', 1000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (674, N'H 698 CVB', N'Honda', N'Amaze', 2023, N'Putih', N'419704611775', N'21937256805', N'Diesel', 3000, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (675, N'LS 086 WFG', N'Honda', N'Amaze', 2024, N'Hitam', N'775555601243', N'81745377384', N'Bensin', 1500, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (676, N'RD 2705 CTI', N'Honda', N'Amaze', 2023, N'Putih', N'479663240245', N'96852069879', N'Bensin', 3000, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (677, N'M 936 HG', N'Honda', N'Amaze', 2024, N'Hitam', N'800527968201', N'15995684667', N'Hybrid', 1800, 8)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (678, N'Z 215 PJD', N'Honda', N'Amaze', 2022, N'Biru', N'362197101766', N'21855235814', N'Hybrid', 2000, 54)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (679, N'B 4735 ZL', N'Honda', N'Amaze', 2021, N'Kuning', N'202847484550', N'38791801368', N'Bensin', 1800, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (680, N'JM 256 TOH', N'Honda', N'Amaze', 2022, N'Merah', N'218319130810', N'46675226054', N'Diesel', 1000, 81)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (681, N'E 2030 RDV', N'Honda', N'Elysion', 2021, N'Kuning', N'713733988617', N'31035284999', N'Listrik', 1000, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (682, N'OI 781 JU', N'Honda', N'Elysion', 2023, N'Merah', N'977355761188', N'65713796025', N'Listrik', 1800, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (683, N'F 6965 ITF', N'Honda', N'Elysion', 2022, N'Merah', N'695496333800', N'75992541810', N'Bensin', 2500, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (684, N'IL 402 ZQU', N'Honda', N'Elysion', 2023, N'Kuning', N'245043622755', N'16955979286', N'Bensin', 3000, 99)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (685, N'D 2596 EA', N'Honda', N'Elysion', 2021, N'Biru', N'894675931279', N'10070159185', N'Hybrid', 1800, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (686, N'U 626 PWR', N'Honda', N'Elysion', 2022, N'Silver', N'292582305350', N'92118098676', N'Bensin', 1500, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (687, N'FF 939 ZNV', N'Honda', N'Elysion', 2024, N'Silver', N'951215272351', N'40978655893', N'Hybrid', 1500, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (688, N'XF 3334 OA', N'Honda', N'Elysion', 2023, N'Abu-abu', N'352656196389', N'42499758939', N'Listrik', 3000, 60)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (689, N'XB 513 ZMN', N'Honda', N'Elysion', 2023, N'Hitam', N'894032420826', N'39278724760', N'Diesel', 1800, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (690, N'LV 8211 VS', N'Honda', N'Elysion', 2022, N'Merah', N'376460559451', N'96930014698', N'Diesel', 2500, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (691, N'WL 6449 CY', N'Honda', N'Elysion', 2023, N'Hitam', N'315238824117', N'49126738945', N'Diesel', 1800, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (692, N'XX 0947 AR', N'Honda', N'Elysion', 2023, N'Abu-abu', N'280486454659', N'53150372056', N'Hybrid', 1000, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (693, N'F 231 FDS', N'Honda', N'Elysion', 2024, N'Merah', N'392728549412', N'26949643470', N'Listrik', 2000, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (694, N'Z 014 TE', N'Honda', N'Elysion', 2024, N'Hitam', N'816581376665', N'81115098550', N'Listrik', 2000, 1)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (695, N'DA 430 NG', N'Honda', N'Elysion', 2022, N'Merah', N'746480594203', N'51167799264', N'Diesel', 2500, 57)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (696, N'MN 2346 FR', N'Honda', N'Elysion', 2022, N'Biru', N'338962527458', N'43151391780', N'Hybrid', 1500, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (697, N'NJ 013 UJX', N'Honda', N'Elysion', 2023, N'Biru', N'613030782585', N'76333421674', N'Bensin', 1800, 62)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (698, N'SK 678 LGW', N'Honda', N'Elysion', 2021, N'Kuning', N'312973722495', N'20426121314', N'Hybrid', 3000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (699, N'LH 3498 WZ', N'Honda', N'Elysion', 2021, N'Merah', N'141040583538', N'78055435544', N'Diesel', 2000, 27)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (700, N'R 7519 JO', N'Honda', N'Elysion', 2023, N'Silver', N'982227837899', N'24930467510', N'Bensin', 3000, 93)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (701, N'H 838 EIF', N'Honda', N'Insight', 2022, N'Merah', N'614552652051', N'25780952742', N'Bensin', 1800, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (702, N'G 5184 AN', N'Honda', N'Insight', 2024, N'Hitam', N'689497200880', N'99288732524', N'Diesel', 3000, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (703, N'G 500 PWF', N'Honda', N'Insight', 2023, N'Hitam', N'845106367970', N'41993427650', N'Bensin', 2000, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (704, N'XZ 957 KBJ', N'Honda', N'Insight', 2021, N'Biru', N'478272189881', N'48408208614', N'Hybrid', 2500, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (705, N'CU 337 CJ', N'Honda', N'Insight', 2024, N'Abu-abu', N'295735468704', N'23231635925', N'Hybrid', 1000, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (706, N'U 5354 XR', N'Honda', N'Insight', 2024, N'Putih', N'193202842900', N'99082702156', N'Hybrid', 1000, 56)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (707, N'GD 7313 UP', N'Honda', N'Insight', 2022, N'Silver', N'176306966267', N'83428011629', N'Bensin', 1800, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (708, N'P 720 HR', N'Honda', N'Insight', 2024, N'Hitam', N'466998315229', N'65011487341', N'Diesel', 2000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (709, N'F 7680 JH', N'Honda', N'Insight', 2021, N'Abu-abu', N'751780549343', N'44395978127', N'Diesel', 1500, 96)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (710, N'TD 5307 JHT', N'Honda', N'Insight', 2023, N'Biru', N'991101734611', N'35689127041', N'Hybrid', 1500, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (711, N'A 8779 OVM', N'Honda', N'Insight', 2023, N'Merah', N'314423595824', N'90952107867', N'Bensin', 1500, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (712, N'DC 7359 DP', N'Honda', N'Insight', 2024, N'Abu-abu', N'247968930096', N'60338146770', N'Diesel', 1000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (713, N'X 0478 ZW', N'Honda', N'Insight', 2021, N'Merah', N'897916737228', N'96220352371', N'Listrik', 1800, 14)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (714, N'N 388 OM', N'Honda', N'Insight', 2024, N'Putih', N'211647496717', N'63606583870', N'Hybrid', 3000, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (715, N'T 714 MSH', N'Honda', N'Insight', 2021, N'Putih', N'806806373945', N'13664124310', N'Bensin', 1500, 19)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (716, N'Y 5275 KEK', N'Honda', N'Insight', 2021, N'Silver', N'454345153208', N'63145483517', N'Bensin', 2500, 44)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (717, N'PM 0334 BN', N'Honda', N'Insight', 2023, N'Abu-abu', N'368893215193', N'96589949474', N'Bensin', 1000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (718, N'Z 803 EF', N'Honda', N'Insight', 2021, N'Hitam', N'202093118194', N'73988483619', N'Diesel', 1500, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (719, N'R 2453 OGN', N'Honda', N'Insight', 2021, N'Merah', N'848815108302', N'20496604139', N'Diesel', 3000, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (720, N'V 3288 QM', N'Honda', N'Insight', 2024, N'Biru', N'159785782683', N'59848702659', N'Diesel', 1500, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (721, N'Q 710 LX', N'Honda', N'Legend', 2024, N'Abu-abu', N'292174812830', N'68272627532', N'Diesel', 3000, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (722, N'HY 0175 UJL', N'Honda', N'Legend', 2022, N'Hitam', N'761411401060', N'65778203710', N'Listrik', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (723, N'Y 7386 NP', N'Honda', N'Legend', 2021, N'Hitam', N'637830251709', N'87752892622', N'Bensin', 1500, 41)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (724, N'L 500 GV', N'Honda', N'Legend', 2021, N'Putih', N'252054655334', N'59957887288', N'Listrik', 3000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (725, N'U 326 FSW', N'Honda', N'Legend', 2024, N'Abu-abu', N'403409555159', N'67405808915', N'Listrik', 3000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (726, N'M 063 JCJ', N'Honda', N'Legend', 2024, N'Biru', N'808787832279', N'31963973784', N'Hybrid', 1500, 84)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (727, N'YD 780 MJP', N'Honda', N'Legend', 2022, N'Hitam', N'421087101801', N'18204838303', N'Hybrid', 2500, 32)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (728, N'P 0306 YCV', N'Honda', N'Legend', 2021, N'Silver', N'931090447522', N'73930919663', N'Listrik', 1800, 80)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (729, N'UL 4892 TH', N'Honda', N'Legend', 2021, N'Putih', N'951581896041', N'16551162851', N'Hybrid', 1500, 5)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (730, N'JY 556 CM', N'Honda', N'Legend', 2021, N'Hitam', N'776971456545', N'66856937338', N'Hybrid', 1800, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (731, N'Z 321 BI', N'Honda', N'Legend', 2024, N'Putih', N'823711609283', N'95570241277', N'Bensin', 2000, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (732, N'C 8259 MUP', N'Honda', N'Legend', 2022, N'Silver', N'706751601705', N'43033045079', N'Diesel', 2000, 86)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (733, N'X 8138 GR', N'Honda', N'Legend', 2024, N'Kuning', N'875064342582', N'13883976455', N'Bensin', 1000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (734, N'H 717 SJJ', N'Honda', N'Legend', 2022, N'Hitam', N'561908914305', N'51908217265', N'Hybrid', 3000, 85)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (735, N'J 3323 OR', N'Honda', N'Legend', 2022, N'Merah', N'666618304865', N'81747957716', N'Hybrid', 1800, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (736, N'B 259 IH', N'Honda', N'Legend', 2024, N'Kuning', N'908976120349', N'61391321276', N'Diesel', 1000, 17)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (737, N'B 947 XX', N'Honda', N'Legend', 2022, N'Putih', N'601781911267', N'67442048440', N'Hybrid', 3000, 51)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (738, N'KF 4219 LE', N'Honda', N'Legend', 2022, N'Kuning', N'472868637072', N'99753229026', N'Listrik', 2500, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (739, N'L 2536 PMV', N'Honda', N'Legend', 2022, N'Abu-abu', N'101514138819', N'40122585955', N'Bensin', 3000, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (740, N'L 2482 UG', N'Honda', N'Legend', 2021, N'Merah', N'556703972873', N'42538166521', N'Listrik', 2000, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (741, N'PW 306 UUS', N'Honda', N'NSX', 2023, N'Abu-abu', N'657652506166', N'93208919506', N'Bensin', 2000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (742, N'U 4332 AOI', N'Honda', N'NSX', 2024, N'Silver', N'499854655447', N'67057598711', N'Diesel', 2000, 4)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (743, N'P 0484 LM', N'Honda', N'NSX', 2021, N'Hitam', N'980346842393', N'93065058544', N'Hybrid', 1000, 92)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (744, N'V 3827 IX', N'Honda', N'NSX', 2024, N'Silver', N'465697540049', N'92594419672', N'Bensin', 2500, 16)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (745, N'X 4627 XY', N'Honda', N'NSX', 2023, N'Biru', N'755061150907', N'82065787111', N'Bensin', 1800, 92)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (746, N'E 2938 GA', N'Honda', N'NSX', 2022, N'Merah', N'695357715744', N'49654753908', N'Bensin', 3000, 11)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (747, N'ZF 8063 AN', N'Honda', N'NSX', 2023, N'Biru', N'169817452899', N'16312676867', N'Hybrid', 1500, 2)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (748, N'C 5523 VWB', N'Honda', N'NSX', 2022, N'Merah', N'773935779984', N'57109702984', N'Bensin', 2000, 3)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (749, N'P 355 MA', N'Honda', N'NSX', 2024, N'Kuning', N'953388912978', N'38549057453', N'Listrik', 1500, 98)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (750, N'G 864 TI', N'Honda', N'NSX', 2024, N'Hitam', N'466408597440', N'34155628950', N'Hybrid', 3000, 75)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (751, N'D 8005 KRM', N'Honda', N'NSX', 2024, N'Hitam', N'247889655659', N'38006193296', N'Listrik', 2000, 83)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (752, N'RH 5413 WW', N'Honda', N'NSX', 2024, N'Abu-abu', N'148223498930', N'30078432396', N'Diesel', 3000, 22)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (753, N'CZ 8688 LPD', N'Honda', N'NSX', 2021, N'Biru', N'444275147941', N'35347035250', N'Listrik', 3000, 77)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (754, N'P 394 FU', N'Honda', N'NSX', 2021, N'Biru', N'977419172919', N'25830045008', N'Hybrid', 1800, 34)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (755, N'O 2741 HO', N'Honda', N'NSX', 2021, N'Putih', N'623670293907', N'64555094022', N'Diesel', 3000, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (756, N'N 767 WJV', N'Honda', N'NSX', 2023, N'Merah', N'494101294417', N'33236492043', N'Diesel', 3000, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (757, N'RV 2995 UQ', N'Honda', N'NSX', 2021, N'Hitam', N'895599895925', N'63454419755', N'Diesel', 1500, 47)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (758, N'B 545 EH', N'Honda', N'NSX', 2023, N'Merah', N'156111969598', N'54773666889', N'Diesel', 2000, 76)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (759, N'CZ 939 HFE', N'Honda', N'NSX', 2022, N'Silver', N'645089619771', N'97450689745', N'Hybrid', 3000, 71)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (760, N'VW 422 HK', N'Honda', N'NSX', 2023, N'Silver', N'693485872053', N'52881122836', N'Diesel', 1500, 6)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (761, N'AS 634 DKM', N'Honda', N'Shuttle', 2021, N'Hitam', N'401192405490', N'94975514948', N'Listrik', 2500, 72)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (762, N'FG 5896 UR', N'Honda', N'Shuttle', 2022, N'Hitam', N'799531728537', N'52687005105', N'Listrik', 2500, 63)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (763, N'RF 204 AX', N'Honda', N'Shuttle', 2022, N'Biru', N'513211101848', N'83686208555', N'Hybrid', 2000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (764, N'VF 9055 AY', N'Honda', N'Shuttle', 2021, N'Hitam', N'312846322017', N'64020542738', N'Diesel', 2500, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (765, N'O 134 ZW', N'Honda', N'Shuttle', 2021, N'Kuning', N'794473213949', N'48162699665', N'Listrik', 2000, 50)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (766, N'CW 9320 WCD', N'Honda', N'Shuttle', 2023, N'Hitam', N'372033747330', N'45187689074', N'Listrik', 2000, 53)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (767, N'N 3172 VPZ', N'Honda', N'Shuttle', 2022, N'Putih', N'674385863600', N'80797251399', N'Bensin', 1500, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (768, N'C 676 XYH', N'Honda', N'Shuttle', 2023, N'Kuning', N'775917483385', N'29068858356', N'Hybrid', 1800, 90)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (769, N'B 3639 XCN', N'Honda', N'Shuttle', 2023, N'Biru', N'804127652167', N'69311758582', N'Diesel', 2500, 97)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (770, N'L 755 ZOQ', N'Honda', N'Shuttle', 2022, N'Hitam', N'219891638954', N'50230291016', N'Listrik', 2000, 39)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (771, N'RM 723 TYF', N'Honda', N'Shuttle', 2023, N'Abu-abu', N'672781607638', N'62203246317', N'Hybrid', 2000, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (772, N'TT 316 INZ', N'Honda', N'Shuttle', 2023, N'Abu-abu', N'353168471776', N'65700943300', N'Bensin', 1000, 79)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (773, N'I 9736 VD', N'Honda', N'Shuttle', 2021, N'Hitam', N'877078801427', N'39688427485', N'Hybrid', 1500, 30)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (774, N'QY 4541 XDR', N'Honda', N'Shuttle', 2022, N'Silver', N'988024972492', N'59347501488', N'Diesel', 3000, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (775, N'XP 3689 PF', N'Honda', N'Shuttle', 2022, N'Hitam', N'692971892672', N'38759824647', N'Bensin', 2500, 58)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (776, N'KH 2997 YKO', N'Honda', N'Shuttle', 2021, N'Silver', N'250451602181', N'89456499048', N'Listrik', 1000, 26)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (777, N'U 7134 USM', N'Honda', N'Shuttle', 2022, N'Biru', N'124605748513', N'80059851231', N'Hybrid', 2000, 74)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (778, N'Q 8331 MP', N'Honda', N'Shuttle', 2023, N'Silver', N'812601694599', N'41339067928', N'Bensin', 1800, 49)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (779, N'HF 375 BGB', N'Honda', N'Shuttle', 2024, N'Merah', N'836997678440', N'73497136731', N'Diesel', 2000, 70)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (780, N'GO 2620 WG', N'Honda', N'Shuttle', 2023, N'Merah', N'991373353766', N'35342433826', N'Hybrid', 2500, 46)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (781, N'DS 215 TR', N'Honda', N'Zest', 2024, N'Merah', N'290585833955', N'21398561387', N'Hybrid', 1500, 36)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (782, N'C 6495 BYS', N'Honda', N'Zest', 2024, N'Putih', N'559047976342', N'15840084530', N'Diesel', 2500, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (783, N'Q 855 RL', N'Honda', N'Zest', 2023, N'Merah', N'186522111089', N'61598409489', N'Hybrid', 2000, 52)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (784, N'UV 0055 UYF', N'Honda', N'Zest', 2024, N'Silver', N'740608225064', N'85675157875', N'Bensin', 1800, 94)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (785, N'G 518 PD', N'Honda', N'Zest', 2023, N'Abu-abu', N'670711751030', N'58712935626', N'Diesel', 1500, 66)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (786, N'NH 706 GBQ', N'Honda', N'Zest', 2021, N'Merah', N'426943595130', N'22768762187', N'Bensin', 1000, 65)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (787, N'PF 121 AJM', N'Honda', N'Zest', 2021, N'Merah', N'591948139317', N'20605485200', N'Bensin', 1500, 69)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (788, N'W 6518 PM', N'Honda', N'Zest', 2023, N'Merah', N'300799957393', N'78891353607', N'Listrik', 3000, 43)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (789, N'R 740 FK', N'Honda', N'Zest', 2024, N'Abu-abu', N'370334533558', N'19838838093', N'Hybrid', 1000, 20)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (790, N'U 597 FQ', N'Honda', N'Zest', 2021, N'Abu-abu', N'818969342908', N'90733516436', N'Listrik', 2000, 15)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (791, N'C 3060 ECE', N'Honda', N'Zest', 2022, N'Biru', N'510531404398', N'84188771357', N'Bensin', 1500, 38)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (792, N'U 7302 CA', N'Honda', N'Zest', 2024, N'Biru', N'727263642259', N'93957224193', N'Diesel', 2000, 13)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (793, N'A 1166 AFG', N'Honda', N'Zest', 2023, N'Putih', N'867476693212', N'40217301997', N'Hybrid', 3000, 31)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (794, N'C 6770 SJH', N'Honda', N'Zest', 2024, N'Silver', N'731877346658', N'47829307026', N'Diesel', 3000, 87)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (795, N'K 780 UPS', N'Honda', N'Zest', 2022, N'Merah', N'336505607173', N'15867917340', N'Listrik', 2000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (796, N'J 085 ZQB', N'Honda', N'Zest', 2022, N'Merah', N'153304120028', N'50982467928', N'Hybrid', 1000, 40)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (797, N'O 0565 HX', N'Honda', N'Zest', 2024, N'Hitam', N'915692773700', N'23906897685', N'Diesel', 1800, 64)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (798, N'Q 549 TZ', N'Honda', N'Zest', 2021, N'Silver', N'999543821412', N'15006779086', N'Listrik', 1800, 59)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (799, N'T 800 GS', N'Honda', N'Zest', 2021, N'Merah', N'810209959323', N'91635224728', N'Listrik', 2000, 25)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (800, N'O 0022 TUH', N'Honda', N'Zest', 2021, N'Abu-abu', N'267737426609', N'15938088012', N'Bensin', 3000, 82)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (801, N'B 2676 BIB', N'TOYOTA', N'Innova', 2023, N'Hitam', N'267737426609', N'15938088012', N'Bensin', 2000, 101)
GO
INSERT [dbo].[MasterVehicles] ([mv_vehicle_id], [mv_license_plate], [mv_brand], [mv_model], [mv_year], [mv_color], [mv_chassis_number], [mv_engine_number], [mv_fuel_type], [mv_engine_capacity], [mv_mo_owner_id]) VALUES (802, N'A 1206 YV', N'Toyota', N'Avanza', 2019, N'Biru', N'222476257510', N'65258882026', N'Bensin', 2019, 50)
GO
SET IDENTITY_INSERT [dbo].[MasterVehicles] OFF
GO
INSERT [dbo].[TransBlackList] ([tbl_license_number], [tbl_payment_date], [tbl_lastpayment_date], [tbl_tenur], [tbl_created_datetime], [tbl_status], [tbl_detection_datetime], [tbl_mld_location_id]) VALUES (N'B 2676 BIB', CAST(N'2023-03-01' AS Date), CAST(N'2024-07-05' AS Date), 36, CAST(N'2024-11-27T22:33:32.503' AS DateTime), N'Active', CAST(N'2025-01-08T00:17:49.860' AS DateTime), 1)
GO
INSERT [dbo].[TransBlackList] ([tbl_license_number], [tbl_payment_date], [tbl_lastpayment_date], [tbl_tenur], [tbl_created_datetime], [tbl_status], [tbl_detection_datetime], [tbl_mld_location_id]) VALUES (N'A 1206 YV', CAST(N'2025-01-05' AS Date), CAST(N'2024-11-03' AS Date), 60, CAST(N'2025-06-24T00:21:12.660' AS DateTime), N'Active', CAST(N'2025-06-24T00:54:08.820' AS DateTime), 2)
GO
INSERT [dbo].[TransBlackList] ([tbl_license_number], [tbl_payment_date], [tbl_lastpayment_date], [tbl_tenur], [tbl_created_datetime], [tbl_status], [tbl_detection_datetime], [tbl_mld_location_id]) VALUES (N'NULLA 1206 YV', NULL, NULL, NULL, CAST(N'2025-06-24T00:40:38.277' AS DateTime), N'Active', CAST(N'2025-06-24T00:54:08.820' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[TransBlackListIdentification] ON 
GO
INSERT [dbo].[TransBlackListIdentification] ([tbli_id], [tbli_license_number], [tbli_mld_location_id], [tbli_detection_datetime]) VALUES (1, N'B 2676 BIB', 1, CAST(N'2024-11-28T01:00:25.603' AS DateTime))
GO
INSERT [dbo].[TransBlackListIdentification] ([tbli_id], [tbli_license_number], [tbli_mld_location_id], [tbli_detection_datetime]) VALUES (2, N'B 2676 BIB', 1, CAST(N'2024-11-28T01:00:25.607' AS DateTime))
GO
INSERT [dbo].[TransBlackListIdentification] ([tbli_id], [tbli_license_number], [tbli_mld_location_id], [tbli_detection_datetime]) VALUES (3, N'B 2676 BIB', 1, CAST(N'2025-01-08T00:17:01.330' AS DateTime))
GO
INSERT [dbo].[TransBlackListIdentification] ([tbli_id], [tbli_license_number], [tbli_mld_location_id], [tbli_detection_datetime]) VALUES (4, N'B 2676 BIB', 1, CAST(N'2025-01-08T00:17:01.343' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TransBlackListIdentification] OFF
GO
SET IDENTITY_INSERT [dbo].[TransVehiceLicense] ON 
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.56885 AS Numeric(18, 5)), N'21810', CAST(N'2025-02-19T00:18:41.917' AS DateTime), N'21810', N'0.56885', N'0', N'0', N'Karakter 21810 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (2, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.87099 AS Numeric(18, 5)), N'2418T17', CAST(N'2025-02-19T00:18:42.590' AS DateTime), N'2418T17', N'0.870988', N'0', N'0', N'Karakter 2418T17 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (3, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.91422 AS Numeric(18, 5)), N'2418TYT', CAST(N'2025-02-19T00:18:43.477' AS DateTime), N'2418TYT', N'0.914217', N'0', N'0', N'Karakter 2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (4, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.84813 AS Numeric(18, 5)), N'2419TYT', CAST(N'2025-02-19T00:18:44.977' AS DateTime), N'2419TYT', N'0.848132', N'0', N'0', N'Karakter 2419TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (5, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.92865 AS Numeric(18, 5)), N'82418TYT', CAST(N'2025-02-19T00:18:45.457' AS DateTime), N'82418TYT', N'0.928652', N'0', N'0', N'Karakter 82418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (11, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96702 AS Numeric(18, 5)), N'82418TYT', CAST(N'2025-02-19T00:19:37.570' AS DateTime), N'82418TYT', N'0.967017', N'0', N'0', N'Karakter 82418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (12, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.94806 AS Numeric(18, 5)), N'B2418TYT', CAST(N'2025-02-19T00:19:39.393' AS DateTime), N'B2418TYT', N'0.94806', N'0', N'0', N'Karakter B2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (13, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97934 AS Numeric(18, 5)), N'B2418TYT', CAST(N'2025-02-19T00:19:39.857' AS DateTime), N'B2418TYT', N'0.979343', N'0', N'0', N'Karakter B2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (14, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96960 AS Numeric(18, 5)), N'B2418', CAST(N'2025-02-19T00:19:40.813' AS DateTime), N'B2418', N'0.969598', N'0', N'0', N'Karakter B2418 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (15, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96960 AS Numeric(18, 5)), N'B2418', CAST(N'2025-02-19T00:19:40.817' AS DateTime), N'B2418', N'0.94539', N'0', N'0', N'Karakter TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (16, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.83296 AS Numeric(18, 5)), N'8', CAST(N'2025-02-19T00:19:41.307' AS DateTime), N'8', N'0.832961', N'0', N'0', N'Karakter 8 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (17, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.83296 AS Numeric(18, 5)), N'8', CAST(N'2025-02-19T00:19:41.310' AS DateTime), N'8', N'0.905644', N'0', N'0', N'Karakter 82418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (18, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98775 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:50.320' AS DateTime), N'KURSUS STIR MOBIL', N'0.987748', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (19, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98775 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:50.323' AS DateTime), N'KURSUS STIR MOBIL', N'0.964155', N'0', N'0', N'Karakter KUSUMA MANDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (20, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98775 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:50.327' AS DateTime), N'KURSUS STIR MOBIL', N'0.997706', N'0', N'0', N'Karakter 081315060850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (21, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98915 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:52.160' AS DateTime), N'KURSUS STIR MOBIL', N'0.989152', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (22, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98915 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:52.163' AS DateTime), N'KURSUS STIR MOBIL', N'0.890383', N'0', N'0', N'Karakter KUSUMA MAHDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (23, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98915 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:52.163' AS DateTime), N'KURSUS STIR MOBIL', N'0.997324', N'0', N'0', N'Karakter 081315060850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (24, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97908 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:53.440' AS DateTime), N'KURSUS STIR MOBIL', N'0.979077', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (25, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97908 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:53.447' AS DateTime), N'KURSUS STIR MOBIL', N'0.944543', N'0', N'0', N'Karakter KUSUMA MANDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (26, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97908 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:53.457' AS DateTime), N'KURSUS STIR MOBIL', N'0.997343', N'0', N'0', N'Karakter 081315060850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (27, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98436 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:55.723' AS DateTime), N'KURSUS STIR MOBIL', N'0.984356', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (28, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98436 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:55.727' AS DateTime), N'KURSUS STIR MOBIL', N'0.954291', N'0', N'0', N'Karakter KUSUMA MAHDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (29, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98436 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:55.727' AS DateTime), N'KURSUS STIR MOBIL', N'0.996755', N'0', N'0', N'Karakter 081315060850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (30, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.88509 AS Numeric(18, 5)), N'82418', CAST(N'2025-02-19T00:19:56.097' AS DateTime), N'82418', N'0.885086', N'0', N'0', N'Karakter 82418 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (31, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.88509 AS Numeric(18, 5)), N'82418', CAST(N'2025-02-19T00:19:56.097' AS DateTime), N'82418', N'0.849078', N'0', N'0', N'Karakter 07-24 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (32, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96840 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:57.233' AS DateTime), N'KURSUS STIR MOBIL', N'0.968403', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (33, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96840 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:57.240' AS DateTime), N'KURSUS STIR MOBIL', N'0.953995', N'0', N'0', N'Karakter KUSUMA MANDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (34, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.96840 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:57.243' AS DateTime), N'KURSUS STIR MOBIL', N'0.965998', N'0', N'0', N'Karakter 08131506 0850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (35, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.94307 AS Numeric(18, 5)), N'32418', CAST(N'2025-02-19T00:19:57.367' AS DateTime), N'32418', N'0.943069', N'0', N'0', N'Karakter 32418 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (36, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.94307 AS Numeric(18, 5)), N'32418', CAST(N'2025-02-19T00:19:57.370' AS DateTime), N'32418', N'0.837687', N'0', N'0', N'Karakter 07.24 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (37, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98627 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:59.977' AS DateTime), N'KURSUS STIR MOBIL', N'0.986267', N'0', N'0', N'Karakter KURSUS STIR MOBIL bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (38, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98627 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:59.980' AS DateTime), N'KURSUS STIR MOBIL', N'0.949627', N'0', N'0', N'Karakter KUSUMA MANDIRI bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (39, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98627 AS Numeric(18, 5)), N'KURSUSSTIRMOBIL', CAST(N'2025-02-19T00:19:59.987' AS DateTime), N'KURSUS STIR MOBIL', N'0.966767', N'0', N'0', N'Karakter 08131506 0850 bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (40, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:13.910' AS DateTime), N'', N'0.674782395362854', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (41, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:14.983' AS DateTime), N'', N'0.6545041799545288', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (42, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:15.633' AS DateTime), N'', N'0.8046857714653015', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (43, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'84398SMC', CAST(N'2025-06-21T23:20:16.207' AS DateTime), N'', N'0.6273181438446045', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (44, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SC', CAST(N'2025-06-21T23:20:16.740' AS DateTime), N'', N'0.8229289650917053', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (45, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:17.650' AS DateTime), N'', N'0.3475503921508789', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (46, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:18.813' AS DateTime), N'', N'0.8324832916259766', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (47, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:20:19.310' AS DateTime), N'', N'0.5085293054580688', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (48, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-21T23:20:20.063' AS DateTime), N'', N'0.5575091242790222', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (51, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:18.287' AS DateTime), N'', N'0.8046857714653015', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (52, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'84398SMC', CAST(N'2025-06-21T23:22:18.850' AS DateTime), N'', N'0.6273181438446045', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (6, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.93209 AS Numeric(18, 5)), N'82418TYT', CAST(N'2025-02-19T00:18:45.920' AS DateTime), N'82418TYT', N'0.932089', N'0', N'0', N'Karakter 82418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (7, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97455 AS Numeric(18, 5)), N'82418TYT', CAST(N'2025-02-19T00:18:46.377' AS DateTime), N'82418TYT', N'0.97455', N'0', N'0', N'Karakter 82418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (8, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.92938 AS Numeric(18, 5)), N'B2418TYT', CAST(N'2025-02-19T00:18:46.860' AS DateTime), N'B2418TYT', N'0.929379', N'0', N'0', N'Karakter B2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (9, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.97205 AS Numeric(18, 5)), N'B2418TYT', CAST(N'2025-02-19T00:18:47.350' AS DateTime), N'B2418TYT', N'0.97205', N'0', N'0', N'Karakter B2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (10, 0, 0, N'DataVideo/videoplayback_3.mp4', CAST(0.98692 AS Numeric(18, 5)), N'B2418TYT', CAST(N'2025-02-19T00:18:47.813' AS DateTime), N'B2418TYT', N'0.986925', N'0', N'0', N'Karakter B2418TYT bukan termasuk plat nomor')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (49, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:16.520' AS DateTime), N'', N'0.674782395362854', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (50, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:17.637' AS DateTime), N'', N'0.6545041799545288', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (61, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-22T01:23:42.090' AS DateTime), N'', N'0.377601683139801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (63, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3205', CAST(N'2025-06-22T01:23:42.980' AS DateTime), N'', N'0.4049185514450073', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (64, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-22T01:23:43.347' AS DateTime), N'', N'0.4007769823074341', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (65, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-22T01:23:43.700' AS DateTime), N'', N'0.39809417724609375', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (66, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0206V', CAST(N'2025-06-22T01:23:44.060' AS DateTime), N'', N'0.4081784188747406', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (67, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0206', CAST(N'2025-06-22T01:23:44.423' AS DateTime), N'', N'0.43779629468917847', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (68, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-22T01:23:44.807' AS DateTime), N'', N'0.39228355884552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (69, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'Ad206V', CAST(N'2025-06-22T01:23:45.203' AS DateTime), N'', N'0.45796164870262146', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (70, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-22T01:23:45.633' AS DateTime), N'', N'0.5366728901863098', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (71, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-22T01:23:46.043' AS DateTime), N'', N'0.506294310092926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (74, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-22T01:23:47.087' AS DateTime), N'', N'0.7981863617897034', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (75, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-22T01:23:47.703' AS DateTime), N'', N'0.8225283622741699', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (76, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-22T01:23:48.127' AS DateTime), N'', N'0.8113285303115845', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (77, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-22T01:23:48.587' AS DateTime), N'', N'0.838451623916626', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (78, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-22T01:23:49.057' AS DateTime), N'', N'0.867374062538147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (79, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206V', CAST(N'2025-06-22T01:23:49.523' AS DateTime), N'', N'0.8421905040740967', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (80, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A9206', CAST(N'2025-06-22T01:23:50.027' AS DateTime), N'', N'0.6372096538543701', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (81, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:56.460' AS DateTime), N'', N'0.8025338053703308', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (82, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:56.943' AS DateTime), N'', N'0.7432790994644165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (83, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:57.263' AS DateTime), N'', N'0.6945037841796875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (84, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:57.557' AS DateTime), N'', N'0.7788625359535217', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (85, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:57.843' AS DateTime), N'', N'0.7233321070671082', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (88, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:58.843' AS DateTime), N'', N'0.7393093705177307', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (89, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:59.130' AS DateTime), N'', N'0.635199248790741', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (90, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:59.417' AS DateTime), N'', N'0.6236852407455444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (92, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AFD', CAST(N'2025-06-22T01:25:00.470' AS DateTime), N'', N'0.8621112704277039', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (93, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AFD', CAST(N'2025-06-22T01:25:00.987' AS DateTime), N'', N'0.8372465968132019', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (94, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'D1127AFO', CAST(N'2025-06-22T01:25:01.530' AS DateTime), N'', N'0.7187379598617554', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (95, 0, 0, N'DataVideo\A3759ZAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T05:50:37.747' AS DateTime), N'', N'0.377601683139801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (97, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:41.600' AS DateTime), N'', N'0.8979732990264893', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (98, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:42.430' AS DateTime), N'', N'0.8731057643890381', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (99, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:42.853' AS DateTime), N'', N'0.7432637810707092', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (100, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:43.120' AS DateTime), N'', N'0.8186980485916138', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (101, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:43.373' AS DateTime), N'', N'0.770619809627533', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (102, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:43.627' AS DateTime), N'', N'0.8244931697845459', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (103, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:43.870' AS DateTime), N'', N'0.8087143301963806', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (104, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:44.170' AS DateTime), N'', N'0.8561556339263916', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (105, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:44.420' AS DateTime), N'', N'0.8674397468566895', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (106, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:44.720' AS DateTime), N'', N'0.39818355441093445', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (107, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:44.923' AS DateTime), N'', N'0.9009150862693787', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (108, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:45.330' AS DateTime), N'', N'0.8988772034645081', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (109, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A574WAD', CAST(N'2025-06-23T05:50:45.680' AS DateTime), N'', N'0.7408551573753357', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (110, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:45.973' AS DateTime), N'', N'0.8491960167884827', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (111, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A57WAD', CAST(N'2025-06-23T05:50:46.213' AS DateTime), N'', N'0.8260059952735901', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (112, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T05:50:46.747' AS DateTime), N'', N'0.8263718485832214', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (113, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T05:50:47.103' AS DateTime), N'', N'0.8275896310806274', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (114, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4574WAD', CAST(N'2025-06-23T05:50:47.553' AS DateTime), N'', N'0.7437801361083984', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (115, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A457', CAST(N'2025-06-23T05:50:47.893' AS DateTime), N'', N'0.8239277005195618', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (116, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4576WAD', CAST(N'2025-06-23T05:50:48.300' AS DateTime), N'', N'0.7977825999259949', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (117, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'MAD', CAST(N'2025-06-23T05:50:48.653' AS DateTime), N'', N'0.8289791941642761', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (118, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4574WAD', CAST(N'2025-06-23T05:50:49.017' AS DateTime), N'', N'0.7627241015434265', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (119, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A574HAD', CAST(N'2025-06-23T05:50:49.483' AS DateTime), N'', N'0.7644785642623901', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (120, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A', CAST(N'2025-06-23T05:50:49.757' AS DateTime), N'', N'0.736802875995636', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (121, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4574WAD', CAST(N'2025-06-23T05:50:50.283' AS DateTime), N'', N'0.8682016134262085', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (122, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6574WAD', CAST(N'2025-06-23T05:50:50.807' AS DateTime), N'', N'0.684945821762085', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (123, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A6574WAD', CAST(N'2025-06-23T05:50:51.317' AS DateTime), N'', N'0.8682605624198914', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (53, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SC', CAST(N'2025-06-21T23:22:19.363' AS DateTime), N'', N'0.8229289650917053', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (54, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:20.273' AS DateTime), N'', N'0.3475503921508789', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (55, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:21.420' AS DateTime), N'', N'0.8324832916259766', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (56, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:21.947' AS DateTime), N'', N'0.30981260538101196', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (57, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:22.170' AS DateTime), N'', N'0.2546934485435486', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (58, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4398SMC', CAST(N'2025-06-21T23:22:22.740' AS DateTime), N'', N'0.47651660442352295', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (59, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-21T23:22:23.150' AS DateTime), N'', N'0.2772215008735657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (60, 0, 0, N'DataVideo/UNPAM_PARKIR_248202502221348.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-21T23:22:24.160' AS DateTime), N'', N'0.7365913987159729', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (127, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T05:50:53.470' AS DateTime), N'', N'0.8593502044677734', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (128, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JV', CAST(N'2025-06-23T05:50:54.723' AS DateTime), N'', N'0.7552756667137146', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (132, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JV', CAST(N'2025-06-23T05:50:56.807' AS DateTime), N'', N'0.8372527956962585', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (133, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:57.457' AS DateTime), N'', N'0.8025336265563965', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (134, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:57.880' AS DateTime), N'', N'0.6945037841796875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (135, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:58.290' AS DateTime), N'', N'0.7788625359535217', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (136, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:58.700' AS DateTime), N'', N'0.7233321070671082', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (137, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:59.073' AS DateTime), N'', N'0.7100898623466492', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (138, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:59.507' AS DateTime), N'', N'0.6997124552726746', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (139, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:59.923' AS DateTime), N'', N'0.7393093705177307', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (140, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:00.263' AS DateTime), N'', N'0.635199248790741', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (141, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:00.663' AS DateTime), N'', N'0.6236852407455444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (142, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:01.030' AS DateTime), N'', N'0.6380605101585388', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (143, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:01.373' AS DateTime), N'', N'0.4886767864227295', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (144, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AF0', CAST(N'2025-06-23T05:51:02.930' AS DateTime), N'', N'0.7830723524093628', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (145, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:03.157' AS DateTime), N'', N'0.9148799180984497', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (146, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'D1127AFD', CAST(N'2025-06-23T05:51:03.653' AS DateTime), N'', N'0.8669524788856506', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (147, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:04.353' AS DateTime), N'', N'0.845642626285553', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (148, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AFD', CAST(N'2025-06-23T05:51:04.897' AS DateTime), N'', N'0.8399947285652161', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (152, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:08.203' AS DateTime), N'', N'0.8080199956893921', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (160, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:10.727' AS DateTime), N'', N'0.9079294204711914', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (161, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:11.147' AS DateTime), N'', N'0.7875494360923767', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (162, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:11.270' AS DateTime), N'', N'0.4092467427253723', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (163, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:11.687' AS DateTime), N'', N'0.8669942617416382', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (164, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:12.120' AS DateTime), N'', N'0.865458607673645', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (165, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:12.563' AS DateTime), N'', N'0.8411948084831238', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (166, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:12.697' AS DateTime), N'', N'0.35579419136047363', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (184, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607', CAST(N'2025-06-23T05:51:36.087' AS DateTime), N'', N'0.8219707012176514', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (186, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'81607WCO', CAST(N'2025-06-23T05:51:37.260' AS DateTime), N'', N'0.8662458658218384', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (199, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:45.293' AS DateTime), N'', N'0.4250849187374115', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (208, 0, 0, N'DataVideo\B3083BWS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2962SI', CAST(N'2025-06-23T05:51:53.817' AS DateTime), N'', N'0.8755568861961365', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (209, 0, 0, N'DataVideo\B3083BWS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:55.537' AS DateTime), N'', N'0.9038321375846863', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (210, 0, 0, N'DataVideo\B3083BWS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:56.943' AS DateTime), N'', N'0.9349079132080078', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (211, 0, 0, N'DataVideo\B3083BWS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:57.593' AS DateTime), N'', N'0.929768979549408', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (212, 0, 0, N'DataVideo\B3083BWS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:58.247' AS DateTime), N'', N'0.28660959005355835', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (213, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3083BWS', CAST(N'2025-06-23T05:51:59.780' AS DateTime), N'', N'0.7320227026939392', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (214, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:01.450' AS DateTime), N'', N'0.9003523588180542', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (215, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:01.607' AS DateTime), N'', N'0.8599354028701782', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (216, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:02.143' AS DateTime), N'', N'0.6355293393135071', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (217, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:02.447' AS DateTime), N'', N'0.3982223570346832', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (218, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:02.943' AS DateTime), N'', N'0.5936234593391418', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (219, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83134VFE', CAST(N'2025-06-23T05:52:05.510' AS DateTime), N'', N'0.2736790180206299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (220, 0, 0, N'DataVideo\B3134VFE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B313VFE', CAST(N'2025-06-23T05:52:06.500' AS DateTime), N'', N'0.3882337808609009', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (221, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B313VFE', CAST(N'2025-06-23T05:52:07.117' AS DateTime), N'', N'0.30905741453170776', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (222, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:07.723' AS DateTime), N'', N'0.42867401242256165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (223, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:08.153' AS DateTime), N'', N'0.9411323070526123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (224, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:08.390' AS DateTime), N'', N'0.5040067434310913', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (225, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:08.720' AS DateTime), N'', N'0.9357075691223145', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (226, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:09.220' AS DateTime), N'', N'0.9471837878227234', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (227, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:09.930' AS DateTime), N'', N'0.9554386734962463', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (228, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:10.270' AS DateTime), N'', N'0.9548012614250183', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (229, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:10.950' AS DateTime), N'', N'0.8580842018127441', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (231, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:12.030' AS DateTime), N'', N'0.8076353669166565', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (232, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:12.567' AS DateTime), N'', N'0.41374802589416504', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (233, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:12.590' AS DateTime), N'', N'0.3785211145877838', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (234, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:13.090' AS DateTime), N'', N'0.7897118330001831', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (62, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-22T01:23:42.543' AS DateTime), N'', N'0.3872471749782562', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (73, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YU', CAST(N'2025-06-22T01:23:46.757' AS DateTime), N'', N'0.75831139087677', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (125, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T05:50:52.350' AS DateTime), N'', N'0.6124704480171204', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (126, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T05:50:52.843' AS DateTime), N'', N'0.32734471559524536', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (129, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694JV', CAST(N'2025-06-23T05:50:55.200' AS DateTime), N'', N'0.5752229690551758', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (130, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JV', CAST(N'2025-06-23T05:50:55.737' AS DateTime), N'', N'0.8514525890350342', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (131, 0, 0, N'DataVideo\A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JV', CAST(N'2025-06-23T05:50:56.257' AS DateTime), N'', N'0.8627170920372009', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (150, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:07.617' AS DateTime), N'', N'0.41232094168663025', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (151, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:07.757' AS DateTime), N'', N'0.3242488205432892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (168, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:23.353' AS DateTime), N'', N'0.406451553106308', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (169, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:25.140' AS DateTime), N'', N'0.2926998734474182', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (170, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'196', CAST(N'2025-06-23T05:51:26.117' AS DateTime), N'', N'0.4551364481449127', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (171, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'H1196KR', CAST(N'2025-06-23T05:51:26.647' AS DateTime), N'', N'0.7510379552841187', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (172, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'H', CAST(N'2025-06-23T05:51:27.400' AS DateTime), N'', N'0.8280603289604187', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (173, 0, 0, N'DataVideo\B1196KR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1196', CAST(N'2025-06-23T05:51:28.263' AS DateTime), N'', N'0.3490064740180969', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (174, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'160WC', CAST(N'2025-06-23T05:51:31.810' AS DateTime), N'', N'0.5635388493537903', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (175, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607', CAST(N'2025-06-23T05:51:32.457' AS DateTime), N'', N'0.7045426964759827', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (176, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'03091', CAST(N'2025-06-23T05:51:32.863' AS DateTime), N'', N'0.44023409485816956', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (177, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607', CAST(N'2025-06-23T05:51:33.307' AS DateTime), N'', N'0.6689403057098389', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (178, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607CO', CAST(N'2025-06-23T05:51:33.750' AS DateTime), N'', N'0.38728398084640503', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (180, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:34.170' AS DateTime), N'', N'0.6677913665771484', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (182, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1607', CAST(N'2025-06-23T05:51:35.033' AS DateTime), N'', N'0.790736973285675', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (183, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607', CAST(N'2025-06-23T05:51:35.487' AS DateTime), N'', N'0.7855343222618103', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (185, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'8', CAST(N'2025-06-23T05:51:36.723' AS DateTime), N'', N'0.8463318943977356', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (187, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1607WCO', CAST(N'2025-06-23T05:51:37.863' AS DateTime), N'', N'0.6434783339500427', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (188, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1607WCO', CAST(N'2025-06-23T05:51:38.420' AS DateTime), N'', N'0.47018924355506897', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (197, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809WGY', CAST(N'2025-06-23T05:51:44.687' AS DateTime), N'', N'0.8110672235488892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (198, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:45.290' AS DateTime), N'', N'0.5710916519165039', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (200, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:46.913' AS DateTime), N'', N'0.6191689372062683', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (201, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:47.170' AS DateTime), N'', N'0.9146758913993835', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (202, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:47.503' AS DateTime), N'', N'0.6835335493087769', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (203, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:48.207' AS DateTime), N'', N'0.4074869155883789', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (204, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:50.460' AS DateTime), N'', N'0.6380926370620728', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (205, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:52.667' AS DateTime), N'', N'0.4561383128166199', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (206, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:52.693' AS DateTime), N'', N'0.3055919408798218', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (207, 0, 0, N'DataVideo\B2962SII.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:52.950' AS DateTime), N'', N'0.8787277340888977', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (236, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:14.767' AS DateTime), N'', N'0.878301203250885', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (238, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:36.953' AS DateTime), N'', N'0.27077701687812805', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (239, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:37.423' AS DateTime), N'', N'0.29857945442199707', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (242, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:40.840' AS DateTime), N'', N'0.7147015333175659', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (243, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:41.227' AS DateTime), N'', N'0.8215665817260742', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (244, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:41.623' AS DateTime), N'', N'0.509956955909729', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (245, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:42.660' AS DateTime), N'', N'0.674771249294281', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (246, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:43.180' AS DateTime), N'', N'0.5225524306297302', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (248, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3288UKU', CAST(N'2025-06-23T05:52:44.583' AS DateTime), N'', N'0.36786770820617676', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (249, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:45.227' AS DateTime), N'', N'0.6697079539299011', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (250, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:45.990' AS DateTime), N'', N'0.49152156710624695', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (251, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:46.227' AS DateTime), N'', N'0.3250370919704437', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (255, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:52.010' AS DateTime), N'', N'0.29945269227027893', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (256, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:52.343' AS DateTime), N'', N'0.49490171670913696', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (258, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3386EYB', CAST(N'2025-06-23T05:52:54.630' AS DateTime), N'', N'0.8467249870300293', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (259, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3386EYB', CAST(N'2025-06-23T05:52:55.503' AS DateTime), N'', N'0.8338565230369568', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (261, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:55.950' AS DateTime), N'', N'0.8864449858665466', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (262, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:56.643' AS DateTime), N'', N'0.9473917484283447', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (263, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:56.970' AS DateTime), N'', N'0.956955075263977', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (264, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:57.320' AS DateTime), N'', N'0.9552990198135376', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (265, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:58.230' AS DateTime), N'', N'0.9573308825492859', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (266, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:58.557' AS DateTime), N'', N'0.932758629322052', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (267, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B341PME', CAST(N'2025-06-23T05:52:59.747' AS DateTime), N'', N'0.8539289832115173', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (269, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B341PME', CAST(N'2025-06-23T05:53:00.980' AS DateTime), N'', N'0.45681607723236084', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (270, 0, 0, N'DataVideo\B3480EYJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B31PME', CAST(N'2025-06-23T05:53:01.690' AS DateTime), N'', N'0.726994514465332', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (271, 0, 0, N'DataVideo\B3480EYJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:02.123' AS DateTime), N'', N'0.8413704633712769', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (273, 0, 0, N'DataVideo\B3480EYJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B380EYJ', CAST(N'2025-06-23T05:53:05.283' AS DateTime), N'', N'0.6358407735824585', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (274, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:10.097' AS DateTime), N'', N'0.7093067169189453', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (275, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:10.867' AS DateTime), N'', N'0.4915322959423065', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (72, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A200YV', CAST(N'2025-06-22T01:23:46.403' AS DateTime), N'', N'0.5018830895423889', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (86, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:58.130' AS DateTime), N'', N'0.7100898623466492', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (87, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:58.500' AS DateTime), N'', N'0.6997124552726746', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (91, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-22T01:24:59.717' AS DateTime), N'', N'0.6380605101585388', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (96, 0, 0, N'DataVideo\A3759ZAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:50:38.303' AS DateTime), N'', N'0.7146722078323364', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (124, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T05:50:51.737' AS DateTime), N'', N'0.8295497894287109', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (149, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:07.077' AS DateTime), N'', N'0.6919757127761841', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (153, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:08.657' AS DateTime), N'', N'0.4302273094654083', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (154, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:08.790' AS DateTime), N'', N'0.30364081263542175', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (155, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:09.207' AS DateTime), N'', N'0.8089651465415955', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (156, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:09.640' AS DateTime), N'', N'0.7457317113876343', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (157, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:09.763' AS DateTime), N'', N'0.29060816764831543', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (158, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:10.183' AS DateTime), N'', N'0.7543731331825256', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (159, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:10.310' AS DateTime), N'', N'0.5381270051002502', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (167, 0, 0, N'DataVideo\B1170CKZ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B1170CKZ', CAST(N'2025-06-23T05:51:13.283' AS DateTime), N'', N'0.8795890212059021', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (179, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'O30910', CAST(N'2025-06-23T05:51:33.870' AS DateTime), N'', N'0.25553831458091736', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (181, 0, 0, N'DataVideo\B1607WCO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1150', CAST(N'2025-06-23T05:51:34.607' AS DateTime), N'', N'0.7239759564399719', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (189, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809HGY', CAST(N'2025-06-23T05:51:40.030' AS DateTime), N'', N'0.786640465259552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (190, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809NGY', CAST(N'2025-06-23T05:51:41.483' AS DateTime), N'', N'0.7874888777732849', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (191, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809GY', CAST(N'2025-06-23T05:51:41.970' AS DateTime), N'', N'0.48949527740478516', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (192, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809HGY', CAST(N'2025-06-23T05:51:42.473' AS DateTime), N'', N'0.787291944026947', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (193, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809HGY', CAST(N'2025-06-23T05:51:42.980' AS DateTime), N'', N'0.8479852676391602', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (194, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809HGY', CAST(N'2025-06-23T05:51:43.487' AS DateTime), N'', N'0.8146467208862305', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (195, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:51:43.577' AS DateTime), N'', N'0.2549934685230255', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (196, 0, 0, N'DataVideo\B2809WGY.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B2809WGY', CAST(N'2025-06-23T05:51:44.010' AS DateTime), N'', N'0.8374544382095337', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (230, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:11.460' AS DateTime), N'', N'0.9187432527542114', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (240, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:39.890' AS DateTime), N'', N'0.5043905377388', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (241, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:40.370' AS DateTime), N'', N'0.7597694396972656', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (247, 0, 0, N'DataVideo\B3288UKU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3288UKU', CAST(N'2025-06-23T05:52:43.857' AS DateTime), N'', N'0.7029560208320618', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (252, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:51.083' AS DateTime), N'', N'0.9498348236083984', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (253, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:51.400' AS DateTime), N'', N'0.817119836807251', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (254, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:51.910' AS DateTime), N'', N'0.8937677145004272', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (257, 0, 0, N'DataVideo\B3386EYB.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:52.840' AS DateTime), N'', N'0.3662024736404419', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (268, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3414PME', CAST(N'2025-06-23T05:53:00.227' AS DateTime), N'', N'0.688828706741333', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (308, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:24.283' AS DateTime), N'', N'0.8909313082695007', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (315, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:27.010' AS DateTime), N'', N'0.7954422235488892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (318, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:27.873' AS DateTime), N'', N'0.8969132304191589', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (319, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83492BTX', CAST(N'2025-06-23T05:53:28.377' AS DateTime), N'', N'0.7534219026565552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (329, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:32.040' AS DateTime), N'', N'0.8732593655586243', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (332, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:33.343' AS DateTime), N'', N'0.8945847749710083', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (345, 0, 0, N'DataVideo\B3508WEJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83492BTX', CAST(N'2025-06-23T05:53:38.737' AS DateTime), N'', N'0.6125612258911133', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (346, 0, 0, N'DataVideo\B3508WEJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:38.967' AS DateTime), N'', N'0.859463632106781', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (347, 0, 0, N'DataVideo\B3508WEJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:39.400' AS DateTime), N'', N'0.9074533581733704', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (348, 0, 0, N'DataVideo\B3508WEJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:40.783' AS DateTime), N'', N'0.9444311261177063', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (350, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:44.040' AS DateTime), N'', N'0.26788318157196045', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (355, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83531EA', CAST(N'2025-06-23T05:53:47.150' AS DateTime), N'', N'0.7766481637954712', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (358, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EYA', CAST(N'2025-06-23T05:53:48.730' AS DateTime), N'', N'0.6993255019187927', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (367, 0, 0, N'DataVideo\B3564NZC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3531EVA', CAST(N'2025-06-23T05:53:53.623' AS DateTime), N'', N'0.7148343324661255', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (369, 0, 0, N'DataVideo\B3564NZC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:56.300' AS DateTime), N'', N'0.9359301328659058', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (371, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:57.273' AS DateTime), N'', N'0.2692320644855499', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (372, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:57.723' AS DateTime), N'', N'0.3110353648662567', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (376, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3670CNH', CAST(N'2025-06-23T05:54:05.277' AS DateTime), N'', N'0.26147717237472534', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (377, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3670CNH', CAST(N'2025-06-23T05:54:06.380' AS DateTime), N'', N'0.27998781204223633', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (379, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3836XH', CAST(N'2025-06-23T05:54:14.277' AS DateTime), N'', N'0.6130960583686829', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (380, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3836XH', CAST(N'2025-06-23T05:54:15.277' AS DateTime), N'', N'0.6451050639152527', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (387, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:22.100' AS DateTime), N'', N'0.6220753788948059', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (388, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:22.953' AS DateTime), N'', N'0.5368735194206238', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (389, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:24.030' AS DateTime), N'', N'0.6986060738563538', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (390, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3836XH', CAST(N'2025-06-23T05:54:24.887' AS DateTime), N'', N'0.6506425738334656', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (391, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:25.750' AS DateTime), N'', N'0.39021357893943787', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (392, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:26.813' AS DateTime), N'', N'0.7652307152748108', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (393, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:28.367' AS DateTime), N'', N'0.27180343866348267', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (394, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:29.237' AS DateTime), N'', N'0.8128949999809265', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (395, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:30.633' AS DateTime), N'', N'0.6045199632644653', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (396, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:31.530' AS DateTime), N'', N'0.7671719789505005', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (235, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:13.663' AS DateTime), N'', N'0.9105200171470642', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (237, 0, 0, N'DataVideo\B3242EEV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:15.783' AS DateTime), N'', N'0.9127885699272156', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (260, 0, 0, N'DataVideo\B3414PME.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:52:55.950' AS DateTime), N'', N'0.922581136226654', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (272, 0, 0, N'DataVideo\B3480EYJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:02.793' AS DateTime), N'', N'0.8126925826072693', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (316, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:27.187' AS DateTime), N'', N'0.8852969408035278', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (349, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:44.033' AS DateTime), N'', N'0.9114360809326172', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (351, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:45.173' AS DateTime), N'', N'0.5910531282424927', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (352, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:45.410' AS DateTime), N'', N'0.8797594308853149', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (353, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'93531E', CAST(N'2025-06-23T05:53:45.997' AS DateTime), N'', N'0.7462129592895508', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (354, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83531E', CAST(N'2025-06-23T05:53:46.667' AS DateTime), N'', N'0.7795630097389221', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (356, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'83531EVA', CAST(N'2025-06-23T05:53:47.637' AS DateTime), N'', N'0.3849475383758545', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (357, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3531EA', CAST(N'2025-06-23T05:53:48.243' AS DateTime), N'', N'0.7563357353210449', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (359, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EA', CAST(N'2025-06-23T05:53:49.410' AS DateTime), N'', N'0.7584555745124817', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (360, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EA', CAST(N'2025-06-23T05:53:49.870' AS DateTime), N'', N'0.4672694504261017', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (361, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EA', CAST(N'2025-06-23T05:53:50.357' AS DateTime), N'', N'0.6683394312858582', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (362, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EYA', CAST(N'2025-06-23T05:53:50.847' AS DateTime), N'', N'0.8157373666763306', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (363, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B', CAST(N'2025-06-23T05:53:51.140' AS DateTime), N'', N'0.2587733864784241', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (364, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B', CAST(N'2025-06-23T05:53:51.830' AS DateTime), N'', N'0.8194067478179932', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (365, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'353TEVA', CAST(N'2025-06-23T05:53:52.417' AS DateTime), N'', N'0.8656250834465027', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (366, 0, 0, N'DataVideo\B3531EYA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3531EA', CAST(N'2025-06-23T05:53:52.873' AS DateTime), N'', N'0.8756259679794312', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (368, 0, 0, N'DataVideo\B3564NZC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:56.017' AS DateTime), N'', N'0.6635828018188477', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (398, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:33.637' AS DateTime), N'', N'0.7937309145927429', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (401, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:36.547' AS DateTime), N'', N'0.5692921280860901', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (405, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:40.973' AS DateTime), N'', N'0.41866132616996765', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (406, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:41.617' AS DateTime), N'', N'0.41663461923599243', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (407, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:43.220' AS DateTime), N'', N'0.9294294118881226', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (408, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:43.667' AS DateTime), N'', N'0.9081759452819824', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (409, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:45.980' AS DateTime), N'', N'0.9240886569023132', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (411, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:50.597' AS DateTime), N'', N'0.910585343837738', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (414, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:54.547' AS DateTime), N'', N'0.31881871819496155', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (418, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:58.003' AS DateTime), N'', N'0.25807803869247437', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (420, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:00.573' AS DateTime), N'', N'0.45824041962623596', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (423, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:02.387' AS DateTime), N'', N'0.9226052165031433', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (424, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:03.243' AS DateTime), N'', N'0.9228979349136353', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (425, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:04.307' AS DateTime), N'', N'0.9228512644767761', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (427, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:06.433' AS DateTime), N'', N'0.8770759701728821', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (429, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EY', CAST(N'2025-06-23T05:55:12.253' AS DateTime), N'', N'0.5240772366523743', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (430, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EY', CAST(N'2025-06-23T05:55:13.447' AS DateTime), N'', N'0.4639956057071686', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (431, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EY', CAST(N'2025-06-23T05:55:14.073' AS DateTime), N'', N'0.4322701096534729', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (434, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:17.580' AS DateTime), N'', N'0.7581748962402344', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (436, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:19.710' AS DateTime), N'', N'0.8532607555389404', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (437, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:20.667' AS DateTime), N'', N'0.8647348880767822', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (439, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:22.727' AS DateTime), N'', N'0.8602569103240967', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (440, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:23.760' AS DateTime), N'', N'0.7685627937316895', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (441, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:24.823' AS DateTime), N'', N'0.8529682159423828', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (442, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:25.850' AS DateTime), N'', N'0.801516056060791', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (444, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:28.323' AS DateTime), N'', N'0.7777572870254517', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (446, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:30.430' AS DateTime), N'', N'0.8201017379760742', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (451, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:34.337' AS DateTime), N'', N'0.9339998960494995', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (453, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:35.747' AS DateTime), N'', N'0.8631312847137451', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (454, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:36.117' AS DateTime), N'', N'0.8658326864242554', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (456, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:37.127' AS DateTime), N'', N'0.8671446442604065', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (457, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:37.677' AS DateTime), N'', N'0.7104287147521973', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (458, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:38.060' AS DateTime), N'', N'0.95125812292099', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (459, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:38.687' AS DateTime), N'', N'0.9127070307731628', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (463, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:40.450' AS DateTime), N'', N'0.8850407004356384', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (464, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:40.817' AS DateTime), N'', N'0.9331820011138916', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (465, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:41.460' AS DateTime), N'', N'0.9308400750160217', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (472, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B41878LT', CAST(N'2025-06-23T05:55:51.550' AS DateTime), N'', N'0.27864137291908264', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (477, 0, 0, N'DataVideo\B4232NDX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B41878L', CAST(N'2025-06-23T05:56:01.220' AS DateTime), N'', N'0.35102808475494385', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (482, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'225070', CAST(N'2025-06-23T05:56:20.647' AS DateTime), N'', N'0.7638515830039978', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (484, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'02250780', CAST(N'2025-06-23T05:56:22.120' AS DateTime), N'', N'0.7123305797576904', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (485, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:23.300' AS DateTime), N'', N'0.9290302395820618', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (487, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:24.897' AS DateTime), N'', N'0.9665864109992981', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (490, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:28.153' AS DateTime), N'', N'0.8677059412002563', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (276, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:11.463' AS DateTime), N'', N'0.807179868221283', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (277, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:12.040' AS DateTime), N'', N'0.802984356880188', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (278, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:12.603' AS DateTime), N'', N'0.6045287847518921', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (279, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:13.080' AS DateTime), N'', N'0.8202500939369202', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (280, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:13.610' AS DateTime), N'', N'0.9152786731719971', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (281, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:14.147' AS DateTime), N'', N'0.7825998663902283', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (282, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:14.387' AS DateTime), N'', N'0.8826243877410889', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (283, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:14.957' AS DateTime), N'', N'0.7927796840667725', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (284, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:15.150' AS DateTime), N'', N'0.8929257392883301', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (285, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'834928TX', CAST(N'2025-06-23T05:53:15.697' AS DateTime), N'', N'0.7878207564353943', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (286, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:15.867' AS DateTime), N'', N'0.8883678317070007', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (287, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:16.380' AS DateTime), N'', N'0.6205121278762817', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (288, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:16.560' AS DateTime), N'', N'0.8641470670700073', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (289, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:17.087' AS DateTime), N'', N'0.6375622749328613', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (290, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:17.253' AS DateTime), N'', N'0.8683796525001526', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (291, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:17.810' AS DateTime), N'', N'0.5943256616592407', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (292, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:17.983' AS DateTime), N'', N'0.8452979922294617', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (293, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:18.580' AS DateTime), N'', N'0.8456635475158691', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (294, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:18.747' AS DateTime), N'', N'0.8813662528991699', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (295, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:19.307' AS DateTime), N'', N'0.8708226084709167', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (296, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:19.473' AS DateTime), N'', N'0.8959745168685913', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (297, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:19.983' AS DateTime), N'', N'0.7868998646736145', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (298, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:20.167' AS DateTime), N'', N'0.8922879695892334', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (299, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:20.787' AS DateTime), N'', N'0.7581665515899658', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (300, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:21.007' AS DateTime), N'', N'0.8936354517936707', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (301, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:21.530' AS DateTime), N'', N'0.34486818313598633', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (302, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:21.797' AS DateTime), N'', N'0.3128642141819', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (303, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:21.950' AS DateTime), N'', N'0.8751819729804993', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (304, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:22.470' AS DateTime), N'', N'0.7880322337150574', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (305, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:22.640' AS DateTime), N'', N'0.9253038167953491', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (306, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:23.230' AS DateTime), N'', N'0.7615267634391785', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (307, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:24.043' AS DateTime), N'', N'0.5564373731613159', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (309, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:24.867' AS DateTime), N'', N'0.7886947393417358', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (310, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:25.040' AS DateTime), N'', N'0.8221272826194763', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (311, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'834928TX', CAST(N'2025-06-23T05:53:25.583' AS DateTime), N'', N'0.6961026787757874', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (312, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:25.760' AS DateTime), N'', N'0.8534985780715942', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (313, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:26.333' AS DateTime), N'', N'0.8163092136383057', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (314, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:26.513' AS DateTime), N'', N'0.8502713441848755', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (317, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'834928TX', CAST(N'2025-06-23T05:53:27.703' AS DateTime), N'', N'0.38689324259757996', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (320, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:28.550' AS DateTime), N'', N'0.8511921167373657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (321, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:29.100' AS DateTime), N'', N'0.4935625493526459', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (322, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:29.273' AS DateTime), N'', N'0.8709902167320251', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (323, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:29.747' AS DateTime), N'', N'0.8668475151062012', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (324, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3928TX', CAST(N'2025-06-23T05:53:30.353' AS DateTime), N'', N'0.38505011796951294', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (325, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:30.520' AS DateTime), N'', N'0.8655970096588135', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (326, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:31.067' AS DateTime), N'', N'0.5294357538223267', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (327, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:31.237' AS DateTime), N'', N'0.8883510828018188', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (328, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:31.880' AS DateTime), N'', N'0.71800297498703', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (330, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:32.630' AS DateTime), N'', N'0.7072266936302185', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (331, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:32.820' AS DateTime), N'', N'0.8622475266456604', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (333, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:33.917' AS DateTime), N'', N'0.479915052652359', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (334, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:34.107' AS DateTime), N'', N'0.9034790396690369', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (335, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B34928TX', CAST(N'2025-06-23T05:53:34.740' AS DateTime), N'', N'0.7520756721496582', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (336, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:34.930' AS DateTime), N'', N'0.8957403302192688', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (337, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:35.477' AS DateTime), N'', N'0.5150598287582397', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (338, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:35.673' AS DateTime), N'', N'0.8814391493797302', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (339, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:36.280' AS DateTime), N'', N'0.6821205019950867', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (340, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:36.483' AS DateTime), N'', N'0.9081975817680359', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (341, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B392BTX', CAST(N'2025-06-23T05:53:37.147' AS DateTime), N'', N'0.6693626642227173', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (342, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:37.333' AS DateTime), N'', N'0.8649109601974487', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (343, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3492BTX', CAST(N'2025-06-23T05:53:37.950' AS DateTime), N'', N'0.6668919920921326', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (344, 0, 0, N'DataVideo\B3492BTX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:38.113' AS DateTime), N'', N'0.8781870007514954', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (370, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:53:56.643' AS DateTime), N'', N'0.8817547559738159', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (373, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3670CN', CAST(N'2025-06-23T05:54:00.873' AS DateTime), N'', N'0.385720431804657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (374, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3670CN', CAST(N'2025-06-23T05:54:01.400' AS DateTime), N'', N'0.2914678454399109', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (375, 0, 0, N'DataVideo\B3670CNH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3670CNH', CAST(N'2025-06-23T05:54:02.613' AS DateTime), N'', N'0.25736135244369507', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (378, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:10.713' AS DateTime), N'', N'0.9263260960578918', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (381, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:16.603' AS DateTime), N'', N'0.8061584830284119', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (382, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:17.697' AS DateTime), N'', N'0.690346896648407', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (383, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:18.470' AS DateTime), N'', N'0.6870774030685425', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (384, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:19.483' AS DateTime), N'', N'0.6718082427978516', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (385, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:20.300' AS DateTime), N'', N'0.7824071049690247', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (386, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:21.157' AS DateTime), N'', N'0.7058588862419128', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (413, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:53.690' AS DateTime), N'', N'0.6542452573776245', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (415, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:55.110' AS DateTime), N'', N'0.5945586562156677', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (416, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:56.603' AS DateTime), N'', N'0.8667848110198975', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (417, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:57.753' AS DateTime), N'', N'0.3760012686252594', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (419, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3896COP', CAST(N'2025-06-23T05:54:59.463' AS DateTime), N'', N'0.8574284315109253', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (421, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:01.027' AS DateTime), N'', N'0.9225682020187378', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (422, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3896CQP', CAST(N'2025-06-23T05:55:02.037' AS DateTime), N'', N'0.7774984240531921', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (432, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:15.317' AS DateTime), N'', N'0.834450900554657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (433, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:16.523' AS DateTime), N'', N'0.8523723483085632', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (445, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:29.387' AS DateTime), N'', N'0.7783123850822449', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (447, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:32.113' AS DateTime), N'', N'0.7326436042785645', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (448, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:32.663' AS DateTime), N'', N'0.9219505786895752', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (449, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:33.253' AS DateTime), N'', N'0.915131151676178', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (450, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:33.803' AS DateTime), N'', N'0.9455773234367371', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (460, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:39.073' AS DateTime), N'', N'0.9508069157600403', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (467, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:42.270' AS DateTime), N'', N'0.94688880443573', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (471, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:48.583' AS DateTime), N'', N'0.9153301119804382', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (473, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B41878T', CAST(N'2025-06-23T05:55:53.347' AS DateTime), N'', N'0.38016965985298157', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (474, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B41878LT', CAST(N'2025-06-23T05:55:54.810' AS DateTime), N'', N'0.48587214946746826', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (475, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4187BL', CAST(N'2025-06-23T05:55:56.627' AS DateTime), N'', N'0.3688652217388153', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (478, 0, 0, N'DataVideo\B4232NDX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:04.883' AS DateTime), N'', N'0.461525022983551', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (480, 0, 0, N'DataVideo\B4235SXK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'232NDX', CAST(N'2025-06-23T05:56:09.877' AS DateTime), N'', N'0.6408970952033997', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (481, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:18.347' AS DateTime), N'', N'0.8649510145187378', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (488, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'84250780', CAST(N'2025-06-23T05:56:25.977' AS DateTime), N'', N'0.5738391876220703', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (489, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:26.470' AS DateTime), N'', N'0.8910160660743713', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (492, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:29.923' AS DateTime), N'', N'0.8581915497779846', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (496, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:33.230' AS DateTime), N'', N'0.8657370209693909', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (498, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:34.200' AS DateTime), N'', N'0.2760833203792572', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (499, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:43.017' AS DateTime), N'', N'0.5397089719772339', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (500, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:44.100' AS DateTime), N'', N'0.4953109920024872', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (501, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:45.007' AS DateTime), N'', N'0.5812889933586121', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (504, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:48.243' AS DateTime), N'', N'0.29204288125038147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (505, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:49.630' AS DateTime), N'', N'0.2991628050804138', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (507, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:52.317' AS DateTime), N'', N'0.46595457196235657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (508, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:53.677' AS DateTime), N'', N'0.3289731740951538', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (509, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B357EB0', CAST(N'2025-06-23T05:56:59.037' AS DateTime), N'', N'0.5738351345062256', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (510, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B357EBU', CAST(N'2025-06-23T05:57:00.553' AS DateTime), N'', N'0.5051904320716858', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (512, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4357EBU', CAST(N'2025-06-23T05:57:07.463' AS DateTime), N'', N'0.5302746295928955', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (513, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B357EBU', CAST(N'2025-06-23T05:57:08.440' AS DateTime), N'', N'0.5302707552909851', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (514, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4357EBU', CAST(N'2025-06-23T05:57:09.577' AS DateTime), N'', N'0.5612035989761353', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (517, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:13.747' AS DateTime), N'', N'0.9681292772293091', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (519, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:15.027' AS DateTime), N'', N'0.9616713523864746', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (521, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:16.330' AS DateTime), N'', N'0.9655985236167908', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (522, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:17.783' AS DateTime), N'', N'0.961285412311554', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (524, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'BZ396S0E', CAST(N'2025-06-23T05:57:20.123' AS DateTime), N'', N'0.8861042261123657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (526, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4396S0E', CAST(N'2025-06-23T05:57:22.850' AS DateTime), N'', N'0.8760426044464111', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (527, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4396S0E', CAST(N'2025-06-23T05:57:23.773' AS DateTime), N'', N'0.8891555070877075', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (533, 0, 0, N'DataVideo\B4508NMO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B508NMQ', CAST(N'2025-06-23T05:57:34.493' AS DateTime), N'', N'0.6497966051101685', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (535, 0, 0, N'DataVideo\B4577EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:39.523' AS DateTime), N'', N'0.7696699500083923', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (537, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKH', CAST(N'2025-06-23T05:57:51.750' AS DateTime), N'', N'0.7390246391296387', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (538, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:52.813' AS DateTime), N'', N'0.8078894019126892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (539, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:54.440' AS DateTime), N'', N'0.8236818909645081', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (540, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:55.903' AS DateTime), N'', N'0.8728941679000854', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (543, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:59.070' AS DateTime), N'', N'0.7787106037139893', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (544, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:00.317' AS DateTime), N'', N'0.5742136240005493', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (546, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:03.617' AS DateTime), N'', N'0.6265215277671814', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (547, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:04.770' AS DateTime), N'', N'0.9065642952919006', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (397, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:32.590' AS DateTime), N'', N'0.5772641897201538', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (399, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:34.637' AS DateTime), N'', N'0.7035419344902039', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (400, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:35.493' AS DateTime), N'', N'0.7572994232177734', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (402, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:37.680' AS DateTime), N'', N'0.5770069360733032', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (403, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:38.123' AS DateTime), N'', N'0.4009191691875458', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (404, 0, 0, N'DataVideo\B3836XH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3836XH', CAST(N'2025-06-23T05:54:39.153' AS DateTime), N'', N'0.6638928055763245', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (410, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:46.513' AS DateTime), N'', N'0.9326470494270325', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (412, 0, 0, N'DataVideo\B3896COP.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:54:51.810' AS DateTime), N'', N'0.33478716015815735', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (426, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:05.793' AS DateTime), N'', N'0.8973237872123718', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (428, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:07.053' AS DateTime), N'', N'0.8880088925361633', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (435, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:18.667' AS DateTime), N'', N'0.7989968657493591', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (438, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:21.703' AS DateTime), N'', N'0.8362079858779907', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (443, 0, 0, N'DataVideo\B3989EYT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B3989EYT', CAST(N'2025-06-23T05:55:27.293' AS DateTime), N'', N'0.8073921203613281', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (452, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:34.883' AS DateTime), N'', N'0.9371708631515503', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (455, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:36.507' AS DateTime), N'', N'0.9414432048797607', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (461, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:39.450' AS DateTime), N'', N'0.9371268153190613', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (462, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:40.073' AS DateTime), N'', N'0.8353880643844604', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (466, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:41.847' AS DateTime), N'', N'0.8896301984786987', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (468, 0, 0, N'DataVideo\B4008TTJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:42.627' AS DateTime), N'', N'0.8351508378982544', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (469, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:43.290' AS DateTime), N'', N'0.8901864290237427', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (470, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:55:47.117' AS DateTime), N'', N'0.3786868453025818', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (476, 0, 0, N'DataVideo\B4187BLT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4187BL', CAST(N'2025-06-23T05:55:58.170' AS DateTime), N'', N'0.4386807978153229', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (479, 0, 0, N'DataVideo\B4232NDX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:08.560' AS DateTime), N'', N'0.25692859292030334', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (483, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:21.173' AS DateTime), N'', N'0.9634881019592285', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (486, 0, 0, N'DataVideo\B4258TBO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'04250700', CAST(N'2025-06-23T05:56:23.910' AS DateTime), N'', N'0.7239301204681396', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (491, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:28.880' AS DateTime), N'', N'0.8814672231674194', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (493, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:30.403' AS DateTime), N'', N'0.3803098201751709', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (494, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:31.347' AS DateTime), N'', N'0.9053333401679993', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (497, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:33.837' AS DateTime), N'', N'0.8538874387741089', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (502, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:46.007' AS DateTime), N'', N'0.510886549949646', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (503, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:46.960' AS DateTime), N'', N'0.46921399235725403', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (506, 0, 0, N'DataVideo\B4330NLD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:51.017' AS DateTime), N'', N'0.44966360926628113', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (511, 0, 0, N'DataVideo\B4357EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4357', CAST(N'2025-06-23T05:57:06.373' AS DateTime), N'', N'0.7101799249649048', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (516, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:12.807' AS DateTime), N'', N'0.8476005792617798', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (518, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:14.383' AS DateTime), N'', N'0.9622668027877808', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (523, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4396S', CAST(N'2025-06-23T05:57:19.020' AS DateTime), N'', N'0.8347979784011841', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (525, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:21.387' AS DateTime), N'', N'0.8633087277412415', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (529, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:25.900' AS DateTime), N'', N'0.8953344821929932', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (531, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:28.010' AS DateTime), N'', N'0.8625791668891907', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (536, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:50.893' AS DateTime), N'', N'0.7240654230117798', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (548, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:06.150' AS DateTime), N'', N'0.7879775166511536', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (549, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:07.433' AS DateTime), N'', N'0.8640838265419006', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (550, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:08.750' AS DateTime), N'', N'0.842750608921051', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (551, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:09.693' AS DateTime), N'', N'0.836591362953186', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (552, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:10.677' AS DateTime), N'', N'0.7374173998832703', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (553, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:11.577' AS DateTime), N'', N'0.6260212063789368', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (554, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:12.580' AS DateTime), N'', N'0.6388655304908752', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (555, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B46878', CAST(N'2025-06-23T05:58:18.100' AS DateTime), N'', N'0.566228985786438', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (558, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:22.420' AS DateTime), N'', N'0.45273280143737793', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (561, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:26.490' AS DateTime), N'', N'0.7627849578857422', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (564, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:31.123' AS DateTime), N'', N'0.6890314817428589', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (565, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:32.333' AS DateTime), N'', N'0.7726985812187195', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (566, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:33.900' AS DateTime), N'', N'0.6515981554985046', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (567, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:35.213' AS DateTime), N'', N'0.7888921499252319', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (568, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:36.690' AS DateTime), N'', N'0.7873705625534058', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (569, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:38.170' AS DateTime), N'', N'0.6359656453132629', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (570, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:58:38.720' AS DateTime), N'', N'0.9045606851577759', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (571, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:40.027' AS DateTime), N'', N'0.6337745785713196', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (572, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:41.160' AS DateTime), N'', N'0.5993189811706543', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (575, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:45.650' AS DateTime), N'', N'0.6067395210266113', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (577, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:49.737' AS DateTime), N'', N'0.7782875895500183', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (579, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:52.600' AS DateTime), N'', N'0.7957406640052795', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (580, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:54.363' AS DateTime), N'', N'0.7802647948265076', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (581, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:55.993' AS DateTime), N'', N'0.6707279682159424', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (582, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:57.803' AS DateTime), N'', N'0.7306938171386719', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (495, 0, 0, N'DataVideo\B4274UAL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:56:32.293' AS DateTime), N'', N'0.8900109529495239', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (515, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:11.863' AS DateTime), N'', N'0.9358224868774414', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (520, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:15.680' AS DateTime), N'', N'0.9546438455581665', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (528, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:24.823' AS DateTime), N'', N'0.8935257196426392', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (530, 0, 0, N'DataVideo\B4396SOE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:26.963' AS DateTime), N'', N'0.8955487012863159', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (532, 0, 0, N'DataVideo\B4508NMO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4386S0E', CAST(N'2025-06-23T05:57:29.260' AS DateTime), N'', N'0.8709641695022583', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (534, 0, 0, N'DataVideo\B4577EBU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:38.880' AS DateTime), N'', N'0.8012632131576538', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (541, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:57:57.340' AS DateTime), N'', N'0.738165020942688', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (542, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:57:57.973' AS DateTime), N'', N'0.8434110283851624', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (545, 0, 0, N'DataVideo\B4672NKW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4672NKW', CAST(N'2025-06-23T05:58:01.650' AS DateTime), N'', N'0.7486164569854736', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (556, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:19.367' AS DateTime), N'', N'0.7178006768226624', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (557, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:20.647' AS DateTime), N'', N'0.7971993088722229', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (559, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B46878WX', CAST(N'2025-06-23T05:58:23.877' AS DateTime), N'', N'0.7823632955551147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (560, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:25.100' AS DateTime), N'', N'0.6609508991241455', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (562, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:27.657' AS DateTime), N'', N'0.7574555277824402', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (563, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:29.497' AS DateTime), N'', N'0.5966622233390808', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (573, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:42.830' AS DateTime), N'', N'0.8252965807914734', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (574, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:44.203' AS DateTime), N'', N'0.785987377166748', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (576, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B687BWX', CAST(N'2025-06-23T05:58:48.250' AS DateTime), N'', N'0.693419337272644', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (578, 0, 0, N'DataVideo\B4687BWX.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4687BWX', CAST(N'2025-06-23T05:58:51.187' AS DateTime), N'', N'0.5396758913993835', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (583, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:00.213' AS DateTime), N'', N'0.7708350419998169', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (584, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:01.103' AS DateTime), N'', N'0.8694037199020386', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (586, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:02.270' AS DateTime), N'', N'0.9143484234809875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (587, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:02.933' AS DateTime), N'', N'0.8534982800483704', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (588, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:03.550' AS DateTime), N'', N'0.8113558888435364', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (589, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:04.100' AS DateTime), N'', N'0.6363263726234436', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (590, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:04.923' AS DateTime), N'', N'0.6897101402282715', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (591, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:06.027' AS DateTime), N'', N'0.8745110034942627', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (592, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:06.397' AS DateTime), N'', N'0.9324306845664978', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (593, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:07.763' AS DateTime), N'', N'0.9053734540939331', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (595, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4737', CAST(N'2025-06-23T05:59:12.780' AS DateTime), N'', N'0.6718498468399048', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (596, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'P', CAST(N'2025-06-23T05:59:14.173' AS DateTime), N'', N'0.7061158418655396', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (597, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'73790L', CAST(N'2025-06-23T05:59:15.550' AS DateTime), N'', N'0.6566264629364014', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (598, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'8', CAST(N'2025-06-23T05:59:16.920' AS DateTime), N'', N'0.4999324083328247', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (599, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4737BUL', CAST(N'2025-06-23T05:59:20.997' AS DateTime), N'', N'0.6279966235160828', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (600, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4737BUL', CAST(N'2025-06-23T05:59:21.373' AS DateTime), N'', N'0.35613828897476196', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (602, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:23.520' AS DateTime), N'', N'0.8877992033958435', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (603, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:24.807' AS DateTime), N'', N'0.6262586712837219', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (604, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:25.967' AS DateTime), N'', N'0.5831136107444763', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (605, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:26.367' AS DateTime), N'', N'0.894594669342041', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (606, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:27.303' AS DateTime), N'', N'0.5630967020988464', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (607, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:27.677' AS DateTime), N'', N'0.91513991355896', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (608, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:28.297' AS DateTime), N'', N'0.5411986112594604', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (609, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:28.673' AS DateTime), N'', N'0.9190613031387329', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (610, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:29.750' AS DateTime), N'', N'0.9020770192146301', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (612, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4775TS1', CAST(N'2025-06-23T05:59:35.813' AS DateTime), N'', N'0.7642102837562561', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (613, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0927', CAST(N'2025-06-23T05:59:36.920' AS DateTime), N'', N'0.7175622582435608', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (615, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0927', CAST(N'2025-06-23T05:59:39.930' AS DateTime), N'', N'0.6362341046333313', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (616, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'092', CAST(N'2025-06-23T05:59:40.237' AS DateTime), N'', N'0.2746071517467499', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (618, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4775TS1', CAST(N'2025-06-23T05:59:42.907' AS DateTime), N'', N'0.7154542207717896', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (619, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:43.510' AS DateTime), N'', N'0.5441057682037354', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (620, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:43.963' AS DateTime), N'', N'0.8943122029304504', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (621, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:44.320' AS DateTime), N'', N'0.3707803189754486', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (622, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:46.250' AS DateTime), N'', N'0.8931041955947876', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (623, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:47.630' AS DateTime), N'', N'0.6631277203559875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (624, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:49.067' AS DateTime), N'', N'0.8062240481376648', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (625, 0, 0, N'DataVideo\B4787SDH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:50.457' AS DateTime), N'', N'0.7834815979003906', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (626, 0, 0, N'DataVideo\B4812NKK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:51.960' AS DateTime), N'', N'0.871853232383728', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (627, 0, 0, N'DataVideo\B4812NKK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:54.313' AS DateTime), N'', N'0.3939914107322693', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (628, 0, 0, N'DataVideo\B4812NKK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:55.203' AS DateTime), N'', N'0.5136542916297913', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (631, 0, 0, N'DataVideo\B4957SSD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:02.220' AS DateTime), N'', N'0.8623494505882263', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (633, 0, 0, N'DataVideo\B4957SSD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:07.120' AS DateTime), N'', N'0.9168201088905334', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (635, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:15.783' AS DateTime), N'', N'0.7957718372344971', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (636, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:18.097' AS DateTime), N'', N'0.4879242777824402', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (637, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:19.293' AS DateTime), N'', N'0.5391252040863037', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (638, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NM', CAST(N'2025-06-23T06:00:20.703' AS DateTime), N'', N'0.5358051061630249', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (585, 0, 0, N'DataVideo\B4687BWX_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:01.873' AS DateTime), N'', N'0.839698314666748', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (594, 0, 0, N'DataVideo\B4737BUL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'47370L', CAST(N'2025-06-23T05:59:11.050' AS DateTime), N'', N'0.5469955205917358', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (601, 0, 0, N'DataVideo\B4738SHV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4737BUL', CAST(N'2025-06-23T05:59:23.160' AS DateTime), N'', N'0.6491600871086121', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (611, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:30.950' AS DateTime), N'', N'0.4490322172641754', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (614, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4775TSI', CAST(N'2025-06-23T05:59:38.790' AS DateTime), N'', N'0.7850102186203003', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (617, 0, 0, N'DataVideo\B4775TSI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4775TSI', CAST(N'2025-06-23T05:59:41.460' AS DateTime), N'', N'0.7332963347434998', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (629, 0, 0, N'DataVideo\B4812NKK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:58.540' AS DateTime), N'', N'0.28174152970314026', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (630, 0, 0, N'DataVideo\B4812NKK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T05:59:59.443' AS DateTime), N'', N'0.3561095595359802', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (632, 0, 0, N'DataVideo\B4957SSD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:04.080' AS DateTime), N'', N'0.8572353720664978', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (634, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:15.297' AS DateTime), N'', N'0.7184484004974365', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (641, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:24.740' AS DateTime), N'', N'0.5771484375', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (642, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:26.260' AS DateTime), N'', N'0.6249138116836548', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (643, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:27.580' AS DateTime), N'', N'0.5850717425346375', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (646, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:30.933' AS DateTime), N'', N'0.6699090600013733', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (647, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'BL967NMJ', CAST(N'2025-06-23T06:00:31.963' AS DateTime), N'', N'0.3692920506000519', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (648, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:32.447' AS DateTime), N'', N'0.27166488766670227', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (649, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4967NMJ', CAST(N'2025-06-23T06:00:33.593' AS DateTime), N'', N'0.6594008803367615', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (651, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:35.863' AS DateTime), N'', N'0.6220385432243347', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (656, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:41.620' AS DateTime), N'', N'0.8037535548210144', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (657, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:42.980' AS DateTime), N'', N'0.4934491515159607', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (659, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4967NMJ', CAST(N'2025-06-23T06:00:45.547' AS DateTime), N'', N'0.7494975328445435', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (660, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:47.087' AS DateTime), N'', N'0.5532193183898926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (661, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:48.170' AS DateTime), N'', N'0.669581949710846', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (662, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:49.217' AS DateTime), N'', N'0.3369087278842926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (664, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:51.403' AS DateTime), N'', N'0.634925127029419', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (666, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:52.887' AS DateTime), N'', N'0.2545623481273651', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (667, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:53.960' AS DateTime), N'', N'0.7891542911529541', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (668, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:55.000' AS DateTime), N'', N'0.5334768891334534', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (669, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:56.050' AS DateTime), N'', N'0.6785160303115845', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (670, 0, 0, N'DataVideo\B5045BBW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:57.140' AS DateTime), N'', N'0.7302485704421997', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (672, 0, 0, N'DataVideo\B5045BBW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:01.757' AS DateTime), N'', N'0.4982845187187195', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (676, 0, 0, N'DataVideo\B5716BJA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B5716BJA', CAST(N'2025-06-23T06:01:08.700' AS DateTime), N'', N'0.844601571559906', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (677, 0, 0, N'DataVideo\B5716BJA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B57168JA', CAST(N'2025-06-23T06:01:09.987' AS DateTime), N'', N'0.8227909803390503', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (680, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:13.430' AS DateTime), N'', N'0.8930332660675049', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (682, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:15.190' AS DateTime), N'', N'0.8977174758911133', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (684, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:16.173' AS DateTime), N'', N'0.9264194965362549', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (686, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:17.717' AS DateTime), N'', N'0.9250203371047974', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (687, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:18.097' AS DateTime), N'', N'0.9118556380271912', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (688, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:19.437' AS DateTime), N'', N'0.8955228328704834', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (689, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:20.250' AS DateTime), N'', N'0.930871307849884', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (692, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:25.533' AS DateTime), N'', N'0.42908167839050293', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (698, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:39.917' AS DateTime), N'', N'0.386376291513443', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (699, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:40.333' AS DateTime), N'', N'0.8801906108856201', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (700, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:41.230' AS DateTime), N'', N'0.2927210330963135', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (701, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:41.737' AS DateTime), N'', N'0.8557640314102173', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (705, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:43.790' AS DateTime), N'', N'0.8395656943321228', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (706, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:44.167' AS DateTime), N'', N'0.8620755672454834', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (708, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:45.190' AS DateTime), N'', N'0.8370180130004883', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (710, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:45.960' AS DateTime), N'', N'0.5822840929031372', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (714, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:47.963' AS DateTime), N'', N'0.8637189865112305', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (715, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:48.367' AS DateTime), N'', N'0.2936846613883972', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (716, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:49.237' AS DateTime), N'', N'0.8367661833763123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (720, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:52.167' AS DateTime), N'', N'0.9351742267608643', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (721, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:52.790' AS DateTime), N'', N'0.951317548751831', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (722, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:53.743' AS DateTime), N'', N'0.9206405878067017', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (723, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:54.760' AS DateTime), N'', N'0.9225079417228699', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (725, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:57.437' AS DateTime), N'', N'0.92264723777771', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (727, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:00.137' AS DateTime), N'', N'0.935309648513794', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (728, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:01.487' AS DateTime), N'', N'0.9154120683670044', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (732, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372HLU', CAST(N'2025-06-23T06:02:10.117' AS DateTime), N'', N'0.5981786847114563', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (734, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372WLU', CAST(N'2025-06-23T06:02:12.420' AS DateTime), N'', N'0.5028135180473328', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (737, 0, 0, N'DataVideo\B6395VMH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372WLU', CAST(N'2025-06-23T06:02:15.507' AS DateTime), N'', N'0.409601092338562', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (738, 0, 0, N'DataVideo\B6395VMH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:16.453' AS DateTime), N'', N'0.9536358118057251', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (739, 0, 0, N'DataVideo\B6395VMH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:17.217' AS DateTime), N'', N'0.9569357633590698', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (741, 0, 0, N'DataVideo\B6395VMH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6395VMH', CAST(N'2025-06-23T06:02:23.153' AS DateTime), N'', N'0.828285276889801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (639, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4967NMJ', CAST(N'2025-06-23T06:00:22.117' AS DateTime), N'', N'0.4834030866622925', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (640, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:23.407' AS DateTime), N'', N'0.6363930702209473', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (644, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:28.670' AS DateTime), N'', N'0.600353479385376', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (645, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:29.830' AS DateTime), N'', N'0.650183379650116', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (652, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:36.970' AS DateTime), N'', N'0.6448671817779541', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (654, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:39.210' AS DateTime), N'', N'0.5397206544876099', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (655, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:40.320' AS DateTime), N'', N'0.685834527015686', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (663, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:50.250' AS DateTime), N'', N'0.7429739236831665', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (671, 0, 0, N'DataVideo\B5045BBW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:00:58.303' AS DateTime), N'', N'0.5608911514282227', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (673, 0, 0, N'DataVideo\B5716BJA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:02.577' AS DateTime), N'', N'0.5407319068908691', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (675, 0, 0, N'DataVideo\B5716BJA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B57168JA', CAST(N'2025-06-23T06:01:07.850' AS DateTime), N'', N'0.8524139523506165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (679, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:12.257' AS DateTime), N'', N'0.9137859344482422', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (681, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:14.207' AS DateTime), N'', N'0.8978100419044495', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (683, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:15.763' AS DateTime), N'', N'0.9240267872810364', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (685, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:17.290' AS DateTime), N'', N'0.8937587738037109', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (691, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:24.357' AS DateTime), N'', N'0.4980025589466095', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (694, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6231JNM', CAST(N'2025-06-23T06:01:30.500' AS DateTime), N'', N'0.5511612296104431', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (695, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:31.060' AS DateTime), N'', N'0.9409728050231934', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (697, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:39.020' AS DateTime), N'', N'0.8393967747688293', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (702, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:42.397' AS DateTime), N'', N'0.8488656878471375', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (703, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:42.763' AS DateTime), N'', N'0.8582820296287537', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (704, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:43.160' AS DateTime), N'', N'0.4827406704425812', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (707, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:44.563' AS DateTime), N'', N'0.47855502367019653', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (709, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:45.570' AS DateTime), N'', N'0.8632851839065552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (717, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:49.897' AS DateTime), N'', N'0.8593825101852417', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (719, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:51.520' AS DateTime), N'', N'0.9158756732940674', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (724, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:56.427' AS DateTime), N'', N'0.9300088286399841', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (726, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'PM', CAST(N'2025-06-23T06:01:58.780' AS DateTime), N'', N'0.25992852449417114', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (731, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'86372', CAST(N'2025-06-23T06:02:08.083' AS DateTime), N'', N'0.41289639472961426', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (735, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372HLU', CAST(N'2025-06-23T06:02:13.747' AS DateTime), N'', N'0.27612316608428955', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (736, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372HLU', CAST(N'2025-06-23T06:02:14.450' AS DateTime), N'', N'0.25452104210853577', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (740, 0, 0, N'DataVideo\B6395VMH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6395VMH', CAST(N'2025-06-23T06:02:21.477' AS DateTime), N'', N'0.7958597540855408', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (742, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:23.820' AS DateTime), N'', N'0.9128799438476562', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (743, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6395VMH', CAST(N'2025-06-23T06:02:24.880' AS DateTime), N'', N'0.8855079412460327', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (744, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:25.340' AS DateTime), N'', N'0.9457294344902039', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (746, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:26.683' AS DateTime), N'', N'0.9290839433670044', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (748, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:28.193' AS DateTime), N'', N'0.9449926614761353', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (750, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:29.517' AS DateTime), N'', N'0.9333422780036926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (753, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:31.773' AS DateTime), N'', N'0.899275004863739', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (754, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:32.477' AS DateTime), N'', N'0.4124507009983063', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (756, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:34.440' AS DateTime), N'', N'0.7300766706466675', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (759, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:36.800' AS DateTime), N'', N'0.8087790608406067', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (763, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:41.867' AS DateTime), N'', N'0.9232993721961975', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (764, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:42.800' AS DateTime), N'', N'0.8808873891830444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (767, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3706798', CAST(N'2025-06-23T06:02:48.107' AS DateTime), N'', N'0.8744873404502869', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (768, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'JA06798', CAST(N'2025-06-23T06:02:49.300' AS DateTime), N'', N'0.6929545998573303', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (769, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'906798', CAST(N'2025-06-23T06:02:50.500' AS DateTime), N'', N'0.3557831346988678', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (771, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6490VLF', CAST(N'2025-06-23T06:02:52.587' AS DateTime), N'', N'0.8044703602790833', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (772, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6490VLF', CAST(N'2025-06-23T06:02:54.100' AS DateTime), N'', N'0.8270282745361328', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (774, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6490VLF', CAST(N'2025-06-23T06:02:56.200' AS DateTime), N'', N'0.7980703711509705', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (775, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:57.027' AS DateTime), N'', N'0.6526748538017273', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (776, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:58.063' AS DateTime), N'', N'0.9531821012496948', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (777, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:58.580' AS DateTime), N'', N'0.7342257499694824', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (778, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:59.217' AS DateTime), N'', N'0.9596133828163147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (780, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:01.047' AS DateTime), N'', N'0.5650601983070374', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (781, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:01.430' AS DateTime), N'', N'0.9581955075263977', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (782, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:01.893' AS DateTime), N'', N'0.6619787812232971', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (787, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:04.433' AS DateTime), N'', N'0.8637130260467529', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (792, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:06.790' AS DateTime), N'', N'0.5422524213790894', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (793, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:07.503' AS DateTime), N'', N'0.7589645981788635', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (795, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:08.800' AS DateTime), N'', N'0.5565862655639648', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (797, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:10.173' AS DateTime), N'', N'0.9590030908584595', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (798, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:11.513' AS DateTime), N'', N'0.9553142786026001', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (799, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:12.070' AS DateTime), N'', N'0.8722220063209534', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (800, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:12.757' AS DateTime), N'', N'0.4005001187324524', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (801, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:13.133' AS DateTime), N'', N'0.950984537601471', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (650, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'BL967NMJ', CAST(N'2025-06-23T06:00:34.733' AS DateTime), N'', N'0.6771716475486755', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (653, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:38.063' AS DateTime), N'', N'0.5059744715690613', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (658, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B967NMJ', CAST(N'2025-06-23T06:00:44.003' AS DateTime), N'', N'0.7280617952346802', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (665, 0, 0, N'DataVideo\B4987NMJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B4967NMJ', CAST(N'2025-06-23T06:00:52.453' AS DateTime), N'', N'0.5302985906600952', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (674, 0, 0, N'DataVideo\B5716BJA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B5716BJA', CAST(N'2025-06-23T06:01:07.023' AS DateTime), N'', N'0.7911681532859802', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (678, 0, 0, N'DataVideo\B6130WSR.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B5716BJA', CAST(N'2025-06-23T06:01:11.377' AS DateTime), N'', N'0.8434880971908569', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (690, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:23.697' AS DateTime), N'', N'0.4998004138469696', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (693, 0, 0, N'DataVideo\B6231JNM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'86231JNM', CAST(N'2025-06-23T06:01:28.757' AS DateTime), N'', N'0.5005066990852356', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (696, 0, 0, N'DataVideo\B6283WYM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6231JNM', CAST(N'2025-06-23T06:01:32.570' AS DateTime), N'', N'0.3842799663543701', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (711, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:46.583' AS DateTime), N'', N'0.7949951887130737', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (712, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:46.957' AS DateTime), N'', N'0.8657902479171753', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (713, 0, 0, N'DataVideo\B6334JPH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:47.577' AS DateTime), N'', N'0.848832368850708', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (718, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:01:50.520' AS DateTime), N'', N'0.9125673174858093', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (729, 0, 0, N'DataVideo\B6372WLU_IN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372WLU', CAST(N'2025-06-23T06:02:02.933' AS DateTime), N'', N'0.6448798179626465', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (730, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372HLU', CAST(N'2025-06-23T06:02:04.230' AS DateTime), N'', N'0.31567463278770447', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (733, 0, 0, N'DataVideo\B6372WLU_OUT.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6372HLU', CAST(N'2025-06-23T06:02:11.143' AS DateTime), N'', N'0.6079376935958862', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (749, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:28.867' AS DateTime), N'', N'0.9358113408088684', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (752, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:30.807' AS DateTime), N'', N'0.5799070000648499', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (757, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:35.723' AS DateTime), N'', N'0.8297393918037415', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (760, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:37.213' AS DateTime), N'', N'0.8776024580001831', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (766, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:44.017' AS DateTime), N'', N'0.412880539894104', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (796, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:09.187' AS DateTime), N'', N'0.9583540558815002', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (803, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:14.343' AS DateTime), N'', N'0.46470868587493896', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (804, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6533HZH', CAST(N'2025-06-23T06:03:16.197' AS DateTime), N'', N'0.8716801404953003', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (806, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6533ZH', CAST(N'2025-06-23T06:03:19.670' AS DateTime), N'', N'0.862708330154419', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (807, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6533ZH', CAST(N'2025-06-23T06:03:20.853' AS DateTime), N'', N'0.9005944132804871', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (808, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:21.397' AS DateTime), N'', N'0.9202190041542053', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (810, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6', CAST(N'2025-06-23T06:03:24.517' AS DateTime), N'', N'0.673721969127655', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (812, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:25.540' AS DateTime), N'', N'0.8782163262367249', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (813, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:27.957' AS DateTime), N'', N'0.7349985837936401', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (815, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'96535WTN', CAST(N'2025-06-23T06:03:31.260' AS DateTime), N'', N'0.8101158142089844', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (816, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:32.567' AS DateTime), N'', N'0.7361136078834534', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (818, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:33.883' AS DateTime), N'', N'0.4271169602870941', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (819, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:34.820' AS DateTime), N'', N'0.9145655035972595', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (821, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6535', CAST(N'2025-06-23T06:03:38.117' AS DateTime), N'', N'0.7958576679229736', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (823, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:41.587' AS DateTime), N'', N'0.945301353931427', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (824, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:42.503' AS DateTime), N'', N'0.535597562789917', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (825, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:42.540' AS DateTime), N'', N'0.5101056694984436', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (826, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:42.950' AS DateTime), N'', N'0.9462626576423645', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (827, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:43.573' AS DateTime), N'', N'0.9459902048110962', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (828, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:44.200' AS DateTime), N'', N'0.8642008304595947', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (829, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:44.813' AS DateTime), N'', N'0.9072336554527283', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (830, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:45.433' AS DateTime), N'', N'0.9023054838180542', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (832, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:47.220' AS DateTime), N'', N'0.9227765202522278', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (834, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6531', CAST(N'2025-06-23T06:03:50.077' AS DateTime), N'', N'0.8235871195793152', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (835, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6631NUA', CAST(N'2025-06-23T06:03:51.400' AS DateTime), N'', N'0.8218124508857727', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (836, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B663HUA', CAST(N'2025-06-23T06:03:52.963' AS DateTime), N'', N'0.8304922580718994', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (837, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:54.070' AS DateTime), N'', N'0.9197589159011841', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (838, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B663HUA', CAST(N'2025-06-23T06:03:54.997' AS DateTime), N'', N'0.8707774877548218', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (839, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6631HUA', CAST(N'2025-06-23T06:03:56.523' AS DateTime), N'', N'0.872076690196991', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (840, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:57.530' AS DateTime), N'', N'0.9092528820037842', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (841, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:57.920' AS DateTime), N'', N'0.9241681694984436', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (842, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:58.560' AS DateTime), N'', N'0.3277628719806671', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (843, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:59.183' AS DateTime), N'', N'0.9284870028495789', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (845, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:00.713' AS DateTime), N'', N'0.9358415007591248', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (847, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:02.280' AS DateTime), N'', N'0.851420521736145', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (848, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6631NUA', CAST(N'2025-06-23T06:04:03.203' AS DateTime), N'', N'0.7908729314804077', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (849, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:03.843' AS DateTime), N'', N'0.9081935882568359', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (850, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6631HUA', CAST(N'2025-06-23T06:04:04.933' AS DateTime), N'', N'0.8741968870162964', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (852, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A', CAST(N'2025-06-23T06:04:06.463' AS DateTime), N'', N'0.7956085205078125', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (853, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:07.100' AS DateTime), N'', N'0.8897468447685242', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (854, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'86631UA', CAST(N'2025-06-23T06:04:08.130' AS DateTime), N'', N'0.8214028477668762', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (855, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6631NUA', CAST(N'2025-06-23T06:04:09.843' AS DateTime), N'', N'0.7930904626846313', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (856, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:13.787' AS DateTime), N'', N'0.3285239338874817', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (858, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:15.637' AS DateTime), N'', N'0.5946978330612183', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (859, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZI', CAST(N'2025-06-23T06:04:16.970' AS DateTime), N'', N'0.6388649344444275', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (745, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:25.817' AS DateTime), N'', N'0.9400758743286133', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (747, 0, 0, N'DataVideo\B6419WIM.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:27.310' AS DateTime), N'', N'0.9377866983413696', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (751, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:30.120' AS DateTime), N'', N'0.942321240901947', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (755, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:33.150' AS DateTime), N'', N'0.27013692259788513', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (758, 0, 0, N'DataVideo\B6433ZUK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:36.140' AS DateTime), N'', N'0.8873233795166016', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (761, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:37.970' AS DateTime), N'', N'0.9009572863578796', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (762, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:38.440' AS DateTime), N'', N'0.8094038963317871', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (765, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:02:43.310' AS DateTime), N'', N'0.8425991535186768', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (770, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6490VEF', CAST(N'2025-06-23T06:02:51.043' AS DateTime), N'', N'0.35008078813552856', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (773, 0, 0, N'DataVideo\B6490VLF.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6490VLF', CAST(N'2025-06-23T06:02:55.127' AS DateTime), N'', N'0.8314679861068726', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (779, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:00.127' AS DateTime), N'', N'0.8677850365638733', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (783, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:02.283' AS DateTime), N'', N'0.31804752349853516', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (784, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:02.990' AS DateTime), N'', N'0.3321349024772644', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (785, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:03.363' AS DateTime), N'', N'0.9528704285621643', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (786, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:03.757' AS DateTime), N'', N'0.8916551470756531', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (788, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:04.883' AS DateTime), N'', N'0.9562860131263733', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (789, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:05.553' AS DateTime), N'', N'0.5914413332939148', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (790, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:05.947' AS DateTime), N'', N'0.9633594155311584', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (791, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:06.340' AS DateTime), N'', N'0.6007643938064575', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (794, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:07.880' AS DateTime), N'', N'0.904360830783844', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (802, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:13.670' AS DateTime), N'', N'0.9129180908203125', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (805, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B', CAST(N'2025-06-23T06:03:18.490' AS DateTime), N'', N'0.9062574505805969', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (809, 0, 0, N'DataVideo\B6533WZH.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6533HZH', CAST(N'2025-06-23T06:03:23.130' AS DateTime), N'', N'0.8791093230247498', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (811, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6', CAST(N'2025-06-23T06:03:25.107' AS DateTime), N'', N'0.3211562931537628', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (814, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:29.227' AS DateTime), N'', N'0.7773661017417908', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (817, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6535WTN', CAST(N'2025-06-23T06:03:33.653' AS DateTime), N'', N'0.7834790349006653', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (820, 0, 0, N'DataVideo\B6535WTN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:36.360' AS DateTime), N'', N'0.9214014410972595', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (822, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B', CAST(N'2025-06-23T06:03:39.573' AS DateTime), N'', N'0.8993520140647888', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (831, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:46.060' AS DateTime), N'', N'0.9030071496963501', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (833, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:03:48.570' AS DateTime), N'', N'0.768803596496582', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (844, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:00.060' AS DateTime), N'', N'0.5799373388290405', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (846, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B663NUA', CAST(N'2025-06-23T06:04:01.660' AS DateTime), N'', N'0.8706502318382263', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (851, 0, 0, N'DataVideo\B6631HUA.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:04:05.543' AS DateTime), N'', N'0.9112711548805237', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (857, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:14.453' AS DateTime), N'', N'0.3021586835384369', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (861, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:19.610' AS DateTime), N'', N'0.7793024778366089', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (862, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:21.077' AS DateTime), N'', N'0.5979968905448914', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (864, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:23.507' AS DateTime), N'', N'0.6456238627433777', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (865, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'86725VZK', CAST(N'2025-06-23T06:04:24.997' AS DateTime), N'', N'0.5555176138877869', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (867, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:27.937' AS DateTime), N'', N'0.570981502532959', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (868, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:29.357' AS DateTime), N'', N'0.34204575419425964', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (869, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:31.027' AS DateTime), N'', N'0.37649911642074585', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (870, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:32.167' AS DateTime), N'', N'0.4192175269126892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (871, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'50', CAST(N'2025-06-23T06:04:33.917' AS DateTime), N'', N'0.47338396310806274', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (873, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:36.210' AS DateTime), N'', N'0.6271329522132874', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (874, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:38.873' AS DateTime), N'', N'0.36016735434532166', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (876, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:43.610' AS DateTime), N'', N'0.2564685046672821', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (877, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:47.297' AS DateTime), N'', N'0.30279409885406494', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (878, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:48.690' AS DateTime), N'', N'0.3412492573261261', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (881, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'86725VZ', CAST(N'2025-06-23T06:04:54.350' AS DateTime), N'', N'0.37821775674819946', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (882, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:55.427' AS DateTime), N'', N'0.6050268411636353', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (883, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:04:56.930' AS DateTime), N'', N'0.7110967636108398', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (884, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:04:58.247' AS DateTime), N'', N'0.6613559126853943', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (885, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:04:59.367' AS DateTime), N'', N'0.7034865617752075', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (886, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:00.810' AS DateTime), N'', N'0.672554075717926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (887, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:02.067' AS DateTime), N'', N'0.493172287940979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (888, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:02.570' AS DateTime), N'', N'0.3851066827774048', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (889, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:03.750' AS DateTime), N'', N'0.8052294254302979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (890, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:04.920' AS DateTime), N'', N'0.7273959517478943', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (892, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:07.443' AS DateTime), N'', N'0.6001836061477661', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (893, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:08.727' AS DateTime), N'', N'0.7379878759384155', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (894, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:09.860' AS DateTime), N'', N'0.8355370163917542', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (895, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:11.123' AS DateTime), N'', N'0.6220728754997253', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (896, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:12.607' AS DateTime), N'', N'0.7182371616363525', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (898, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:15.240' AS DateTime), N'', N'0.7670126557350159', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (899, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:16.290' AS DateTime), N'', N'0.6989057660102844', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (860, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:18.470' AS DateTime), N'', N'0.6683024764060974', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (863, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZ', CAST(N'2025-06-23T06:04:22.323' AS DateTime), N'', N'0.6479628682136536', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (866, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:26.257' AS DateTime), N'', N'0.6945506930351257', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (872, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:35.160' AS DateTime), N'', N'0.5765198469161987', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (875, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:42.023' AS DateTime), N'', N'0.3383311927318573', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (879, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:51.753' AS DateTime), N'', N'0.5941353440284729', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (880, 0, 0, N'DataVideo\B6725VZK.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6725VZK', CAST(N'2025-06-23T06:04:53.027' AS DateTime), N'', N'0.6243172287940979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (891, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:06.217' AS DateTime), N'', N'0.6405836343765259', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (897, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:13.943' AS DateTime), N'', N'0.4593137502670288', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (901, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:19.060' AS DateTime), N'', N'0.7205560803413391', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (908, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:28.690' AS DateTime), N'', N'0.40461450815200806', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (909, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:29.980' AS DateTime), N'', N'0.3992215692996979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (912, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:33.937' AS DateTime), N'', N'0.3840237259864807', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (915, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:38.783' AS DateTime), N'', N'0.6869133114814758', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (919, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:42.667' AS DateTime), N'', N'0.8204439878463745', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (921, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:44.697' AS DateTime), N'', N'0.9495112299919128', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (922, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:45.333' AS DateTime), N'', N'0.9597216248512268', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (924, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:46.520' AS DateTime), N'', N'0.9543343782424927', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (925, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:47.167' AS DateTime), N'', N'0.9206973314285278', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (927, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZRR', CAST(N'2025-06-23T06:05:56.380' AS DateTime), N'', N'0.3427886366844177', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (928, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZRA', CAST(N'2025-06-23T06:05:57.563' AS DateTime), N'', N'0.3833669126033783', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (931, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZR', CAST(N'2025-06-23T06:06:04.657' AS DateTime), N'', N'0.4347912669181824', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (935, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6787ZRA', CAST(N'2025-06-23T06:06:20.283' AS DateTime), N'', N'0.325818806886673', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (937, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:27.997' AS DateTime), N'', N'0.8725187182426453', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (938, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:28.823' AS DateTime), N'', N'0.8823058009147644', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (940, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:30.330' AS DateTime), N'', N'0.7784847021102905', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (942, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:31.617' AS DateTime), N'', N'0.8560295104980469', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (943, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:32.250' AS DateTime), N'', N'0.8040044903755188', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (945, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:35.603' AS DateTime), N'', N'0.5522537231445312', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (947, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6873HUI', CAST(N'2025-06-23T06:06:38.030' AS DateTime), N'', N'0.2539084255695343', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (948, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:42.230' AS DateTime), N'', N'0.31817418336868286', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (951, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:48.020' AS DateTime), N'', N'0.4797380864620209', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (953, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:49.677' AS DateTime), N'', N'0.7525641322135925', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (954, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:50.877' AS DateTime), N'', N'0.7918168306350708', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (955, 0, 0, N'DataVideo\B6954VYE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:52.050' AS DateTime), N'', N'0.6373264789581299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (956, 0, 0, N'DataVideo\B6954VYE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:52.513' AS DateTime), N'', N'0.3129529654979706', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (958, 0, 0, N'DataVideo\B6954VYE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:03.147' AS DateTime), N'', N'0.9328594207763672', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (963, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:15.990' AS DateTime), N'', N'0.9464049339294434', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (964, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:16.610' AS DateTime), N'', N'0.948371410369873', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (965, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:18.823' AS DateTime), N'', N'0.7709988951683044', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (966, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F', CAST(N'2025-06-23T06:07:21.660' AS DateTime), N'', N'0.2636047601699829', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (968, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F', CAST(N'2025-06-23T06:07:25.920' AS DateTime), N'', N'0.47680187225341797', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (970, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6', CAST(N'2025-06-23T06:07:29.157' AS DateTime), N'', N'0.29696130752563477', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (971, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'2951', CAST(N'2025-06-23T06:07:30.497' AS DateTime), N'', N'0.4961417615413666', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (974, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F', CAST(N'2025-06-23T06:07:36.633' AS DateTime), N'', N'0.5838350653648376', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (975, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:37.017' AS DateTime), N'', N'0.9291269779205322', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (978, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:41.370' AS DateTime), N'', N'0.9032056927680969', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (980, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3076', CAST(N'2025-06-23T06:07:43.437' AS DateTime), N'', N'0.5603689551353455', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (982, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3078', CAST(N'2025-06-23T06:07:47.213' AS DateTime), N'', N'0.6852647662162781', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (984, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:07:49.357' AS DateTime), N'', N'0.8056294918060303', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (985, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:07:50.317' AS DateTime), N'', N'0.7702187299728394', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (986, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'8J', CAST(N'2025-06-23T06:07:51.800' AS DateTime), N'', N'0.7161539793014526', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (988, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'Fo3078SJ', CAST(N'2025-06-23T06:07:53.797' AS DateTime), N'', N'0.43099725246429443', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (989, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'J', CAST(N'2025-06-23T06:07:55.080' AS DateTime), N'', N'0.6172798871994019', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (990, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'8SJ', CAST(N'2025-06-23T06:07:56.207' AS DateTime), N'', N'0.6991013288497925', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (993, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078J', CAST(N'2025-06-23T06:07:59.270' AS DateTime), N'', N'0.5705891847610474', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (994, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:00.347' AS DateTime), N'', N'0.7329903244972229', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (995, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:01.410' AS DateTime), N'', N'0.49143409729003906', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (997, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:03.510' AS DateTime), N'', N'0.5251600742340088', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (999, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:05.703' AS DateTime), N'', N'0.5568747520446777', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1000, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:06.653' AS DateTime), N'', N'0.7808769941329956', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1003, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:09.610' AS DateTime), N'', N'0.5824468731880188', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1004, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:10.047' AS DateTime), N'', N'0.2588440179824829', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1008, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:14.177' AS DateTime), N'', N'0.6898128986358643', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1009, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:15.147' AS DateTime), N'', N'0.7749407291412354', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (900, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:17.507' AS DateTime), N'', N'0.6142538189888', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (903, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:20.930' AS DateTime), N'', N'0.3080531358718872', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (904, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:22.240' AS DateTime), N'', N'0.8619234561920166', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (905, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:24.157' AS DateTime), N'', N'0.30882614850997925', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (906, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:26.083' AS DateTime), N'', N'0.36956968903541565', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (907, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:27.413' AS DateTime), N'', N'0.4107377231121063', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (911, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:32.920' AS DateTime), N'', N'0.37386980652809143', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (913, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:36.390' AS DateTime), N'', N'0.7497633099555969', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (914, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:37.470' AS DateTime), N'', N'0.5803083777427673', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (917, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:40.997' AS DateTime), N'', N'0.8359165191650391', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (918, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:42.177' AS DateTime), N'', N'0.3090663254261017', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (923, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:45.880' AS DateTime), N'', N'0.8433074951171875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (926, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:48.840' AS DateTime), N'', N'0.9200186729431152', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (929, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZRR', CAST(N'2025-06-23T06:06:00.940' AS DateTime), N'', N'0.41599446535110474', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (930, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZR', CAST(N'2025-06-23T06:06:03.523' AS DateTime), N'', N'0.3933878242969513', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (932, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6787ZRR', CAST(N'2025-06-23T06:06:06.067' AS DateTime), N'', N'0.2864108383655548', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (933, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6787ZRA', CAST(N'2025-06-23T06:06:07.533' AS DateTime), N'', N'0.3638167977333069', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (936, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6787ZR', CAST(N'2025-06-23T06:06:22.057' AS DateTime), N'', N'0.3467266857624054', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (939, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:29.680' AS DateTime), N'', N'0.7794292569160461', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (944, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:33.573' AS DateTime), N'', N'0.48480668663978577', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (949, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:45.517' AS DateTime), N'', N'0.7061622738838196', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (950, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:46.980' AS DateTime), N'', N'0.5668646097183228', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (957, 0, 0, N'DataVideo\B6954VYE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:56.363' AS DateTime), N'', N'0.5447893142700195', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (960, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:13.930' AS DateTime), N'', N'0.9394603967666626', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (961, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:14.743' AS DateTime), N'', N'0.9372084736824036', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (967, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F29510J', CAST(N'2025-06-23T06:07:23.317' AS DateTime), N'', N'0.34201598167419434', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (969, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'29510J', CAST(N'2025-06-23T06:07:27.407' AS DateTime), N'', N'0.2925824522972107', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (976, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'29510J', CAST(N'2025-06-23T06:07:38.310' AS DateTime), N'', N'0.3754328787326813', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (977, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'29510J', CAST(N'2025-06-23T06:07:40.817' AS DateTime), N'', N'0.7517670392990112', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (979, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:42.347' AS DateTime), N'', N'0.5324868559837341', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (983, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:07:48.237' AS DateTime), N'', N'0.26828959584236145', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (991, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F03078J', CAST(N'2025-06-23T06:07:57.257' AS DateTime), N'', N'0.6901427507400513', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (992, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:07:58.223' AS DateTime), N'', N'0.39646148681640625', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (998, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:04.683' AS DateTime), N'', N'0.6101375818252563', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1002, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:08.610' AS DateTime), N'', N'0.5093514323234558', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1005, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:11.027' AS DateTime), N'', N'0.2773534059524536', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1007, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F03078', CAST(N'2025-06-23T06:08:13.177' AS DateTime), N'', N'0.734955370426178', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1010, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078', CAST(N'2025-06-23T06:08:16.307' AS DateTime), N'', N'0.7649156451225281', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1011, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078CJ', CAST(N'2025-06-23T06:08:17.303' AS DateTime), N'', N'0.5945976376533508', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1012, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078', CAST(N'2025-06-23T06:08:18.470' AS DateTime), N'', N'0.7345279455184937', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1016, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:21.890' AS DateTime), N'', N'0.3656408190727234', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1018, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'SJ', CAST(N'2025-06-23T06:08:23.657' AS DateTime), N'', N'0.37132376432418823', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1019, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'SJ', CAST(N'2025-06-23T06:08:24.720' AS DateTime), N'', N'0.3190931975841522', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1023, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:28.210' AS DateTime), N'', N'0.29450032114982605', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1025, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:29.713' AS DateTime), N'', N'0.4745066165924072', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1026, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:30.160' AS DateTime), N'', N'0.3577392101287842', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1027, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:31.233' AS DateTime), N'', N'0.36775362491607666', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1029, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078J', CAST(N'2025-06-23T06:08:32.787' AS DateTime), N'', N'0.4491635859012604', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1030, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:33.840' AS DateTime), N'', N'0.3825241029262543', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1033, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F03078', CAST(N'2025-06-23T06:08:37.783' AS DateTime), N'', N'0.48466557264328003', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1034, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:38.890' AS DateTime), N'', N'0.30649182200431824', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1035, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F32600U', CAST(N'2025-06-23T06:08:45.063' AS DateTime), N'', N'0.40646612644195557', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1036, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F326001', CAST(N'2025-06-23T06:08:46.197' AS DateTime), N'', N'0.6904264092445374', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1037, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F326000', CAST(N'2025-06-23T06:08:47.383' AS DateTime), N'', N'0.5496363043785095', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1038, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F326000', CAST(N'2025-06-23T06:08:48.460' AS DateTime), N'', N'0.3596877157688141', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1039, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F32600U', CAST(N'2025-06-23T06:08:50.757' AS DateTime), N'', N'0.39802539348602295', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1040, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F32600U', CAST(N'2025-06-23T06:08:51.910' AS DateTime), N'', N'0.2577761113643646', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1042, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F32600U', CAST(N'2025-06-23T06:08:54.223' AS DateTime), N'', N'0.31093281507492065', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1043, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:55.367' AS DateTime), N'', N'0.9315718412399292', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1045, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:56.927' AS DateTime), N'', N'0.9241736531257629', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1047, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:58.303' AS DateTime), N'', N'0.9246379733085632', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1048, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:59.133' AS DateTime), N'', N'0.9437267780303955', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1049, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:59.803' AS DateTime), N'', N'0.9384434223175049', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1055, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FCG', CAST(N'2025-06-23T06:09:04.997' AS DateTime), N'', N'0.8693844676017761', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (902, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:20.347' AS DateTime), N'', N'0.6075488328933716', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (910, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:31.637' AS DateTime), N'', N'0.47921332716941833', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (916, 0, 0, N'DataVideo\B6730JMN.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6730JMN', CAST(N'2025-06-23T06:05:39.950' AS DateTime), N'', N'0.7160111665725708', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (920, 0, 0, N'DataVideo\B6783WPV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:05:43.730' AS DateTime), N'', N'0.9615581035614014', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (934, 0, 0, N'DataVideo\B6787ZRW.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6187ZRR', CAST(N'2025-06-23T06:06:10.467' AS DateTime), N'', N'0.28517845273017883', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (941, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:30.983' AS DateTime), N'', N'0.7354248762130737', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (946, 0, 0, N'DataVideo\B6873WUI.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:06:36.587' AS DateTime), N'', N'0.6350434422492981', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (952, 0, 0, N'DataVideo\B6876WHL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'B6876WHL', CAST(N'2025-06-23T06:06:48.620' AS DateTime), N'', N'0.4435316324234009', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (959, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:13.357' AS DateTime), N'', N'0.8919712901115417', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (962, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:15.343' AS DateTime), N'', N'0.9240404367446899', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (972, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'29510J', CAST(N'2025-06-23T06:07:32.130' AS DateTime), N'', N'0.7811141014099121', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (973, 0, 0, N'DataVideo\F2951OJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'2951', CAST(N'2025-06-23T06:07:33.430' AS DateTime), N'', N'0.8328320980072021', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (981, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:07:45.233' AS DateTime), N'', N'0.7014830708503723', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (987, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F03078SJ', CAST(N'2025-06-23T06:07:52.803' AS DateTime), N'', N'0.7660229206085205', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (996, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:02.460' AS DateTime), N'', N'0.508280336856842', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1001, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:07.670' AS DateTime), N'', N'0.6778023838996887', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1006, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:12.057' AS DateTime), N'', N'0.5847722291946411', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1015, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078J', CAST(N'2025-06-23T06:08:20.867' AS DateTime), N'', N'0.3395962715148926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1041, 0, 0, N'DataVideo\F3260OU.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F32600U', CAST(N'2025-06-23T06:08:53.000' AS DateTime), N'', N'0.25794875621795654', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1044, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:56.270' AS DateTime), N'', N'0.9202616214752197', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1046, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:08:57.617' AS DateTime), N'', N'0.9251882433891296', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1050, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:00.530' AS DateTime), N'', N'0.9249886274337769', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1054, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:03.717' AS DateTime), N'', N'0.4388720691204071', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1056, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FCG', CAST(N'2025-06-23T06:09:06.737' AS DateTime), N'', N'0.863008439540863', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1057, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGG', CAST(N'2025-06-23T06:09:08.100' AS DateTime), N'', N'0.8663383722305298', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1059, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGG', CAST(N'2025-06-23T06:09:10.660' AS DateTime), N'', N'0.8848196864128113', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1060, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGG', CAST(N'2025-06-23T06:09:12.180' AS DateTime), N'', N'0.7825629115104675', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1061, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3776FGG', CAST(N'2025-06-23T06:09:13.490' AS DateTime), N'', N'0.9011877775192261', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1062, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGC', CAST(N'2025-06-23T06:09:14.740' AS DateTime), N'', N'0.8484522700309753', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1063, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FCG', CAST(N'2025-06-23T06:09:15.967' AS DateTime), N'', N'0.9205929636955261', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1064, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGC', CAST(N'2025-06-23T06:09:17.277' AS DateTime), N'', N'0.9227293133735657', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1065, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:18.290' AS DateTime), N'', N'0.3540332317352295', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1066, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:19.080' AS DateTime), N'', N'0.27419689297676086', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1067, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:19.790' AS DateTime), N'', N'0.5269608497619629', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1068, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:20.420' AS DateTime), N'', N'0.43224868178367615', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1069, 0, 0, N'DataVideo\F3809UBL.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:21.210' AS DateTime), N'', N'0.47010213136672974', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1070, 0, 0, N'DataVideo\F3931FHG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:21.890' AS DateTime), N'', N'0.9276778697967529', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1071, 0, 0, N'DataVideo\F3931FHG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:23.153' AS DateTime), N'', N'0.4035415053367615', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1072, 0, 0, N'DataVideo\F3931FHG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:25.640' AS DateTime), N'', N'0.6069979071617126', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1074, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3931FHG', CAST(N'2025-06-23T06:09:30.083' AS DateTime), N'', N'0.6826089024543762', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1075, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:31.817' AS DateTime), N'', N'0.7879583239555359', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1076, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:33.230' AS DateTime), N'', N'0.451051265001297', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1077, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:33.830' AS DateTime), N'', N'0.386229932308197', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1079, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:36.220' AS DateTime), N'', N'0.8313592672348022', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1083, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:41.673' AS DateTime), N'', N'0.7983422875404358', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1084, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:42.867' AS DateTime), N'', N'0.7259962558746338', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1085, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:44.077' AS DateTime), N'', N'0.5083948969841003', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1086, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:45.300' AS DateTime), N'', N'0.7085806131362915', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1087, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:47.273' AS DateTime), N'', N'0.7344918847084045', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1088, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:48.537' AS DateTime), N'', N'0.8173038363456726', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1089, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:49.213' AS DateTime), N'', N'0.8873757719993591', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1090, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:50.143' AS DateTime), N'', N'0.9145349860191345', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1091, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:52.447' AS DateTime), N'', N'0.8755776286125183', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1094, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:09:59.890' AS DateTime), N'', N'0.6503282785415649', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1096, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:10:02.260' AS DateTime), N'', N'0.795835554599762', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1097, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:10:03.457' AS DateTime), N'', N'0.8450499176979065', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1099, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:10:06.350' AS DateTime), N'', N'0.8315550088882446', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1100, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:08.500' AS DateTime), N'', N'0.8960696458816528', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1101, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:10.570' AS DateTime), N'', N'0.9408296942710876', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1102, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:13.013' AS DateTime), N'', N'0.9638645648956299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1103, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:15.560' AS DateTime), N'', N'0.9448456764221191', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1104, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:17.480' AS DateTime), N'', N'0.3682900667190552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1105, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:18.550' AS DateTime), N'', N'0.31823042035102844', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1107, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:23.203' AS DateTime), N'', N'0.6484079360961914', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1108, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:24.040' AS DateTime), N'', N'0.5505337119102478', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1013, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:19.457' AS DateTime), N'', N'0.36981621384620667', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1014, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:19.910' AS DateTime), N'', N'0.2595444321632385', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1017, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078', CAST(N'2025-06-23T06:08:22.477' AS DateTime), N'', N'0.3012640178203583', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1020, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:25.670' AS DateTime), N'', N'0.44824790954589844', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1021, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:26.100' AS DateTime), N'', N'0.37913045287132263', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1022, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:27.143' AS DateTime), N'', N'0.7411546111106873', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1024, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:28.670' AS DateTime), N'', N'0.26405391097068787', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1028, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:31.753' AS DateTime), N'', N'0.2900756597518921', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1031, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078J', CAST(N'2025-06-23T06:08:34.853' AS DateTime), N'', N'0.7519708871841431', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1032, 0, 0, N'DataVideo\F3078GJ.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3078SJ', CAST(N'2025-06-23T06:08:36.500' AS DateTime), N'', N'0.354538232088089', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1051, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:01.213' AS DateTime), N'', N'0.932016909122467', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1052, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:01.843' AS DateTime), N'', N'0.9330796599388123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1053, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:02.683' AS DateTime), N'', N'0.9559758901596069', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1058, 0, 0, N'DataVideo\F3776FCG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F3776FGC', CAST(N'2025-06-23T06:09:09.363' AS DateTime), N'', N'0.5036160349845886', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1073, 0, 0, N'DataVideo\F3931FHG.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F393FHG', CAST(N'2025-06-23T06:09:28.570' AS DateTime), N'', N'0.7744846343994141', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1078, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:35.030' AS DateTime), N'', N'0.8265283107757568', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1080, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:37.407' AS DateTime), N'', N'0.5074300169944763', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1081, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:38.767' AS DateTime), N'', N'0.8265234231948853', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1082, 0, 0, N'DataVideo\F4519FJS.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F4519FJS', CAST(N'2025-06-23T06:09:40.280' AS DateTime), N'', N'0.6843959093093872', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1092, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:09:54.360' AS DateTime), N'', N'0.9173668622970581', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1093, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:09:58.293' AS DateTime), N'', N'0.5064325928688049', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1095, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:10:01.093' AS DateTime), N'', N'0.7355093955993652', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1098, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F5864AA0', CAST(N'2025-06-23T06:10:04.800' AS DateTime), N'', N'0.8478781580924988', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1106, 0, 0, N'DataVideo\F5864AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:19.787' AS DateTime), N'', N'0.4975673258304596', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1110, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:26.810' AS DateTime), N'', N'0.3371938169002533', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1111, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:33.103' AS DateTime), N'', N'0.458185613155365', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1113, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:35.313' AS DateTime), N'', N'0.5101292729377747', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1114, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F6109IAAB', CAST(N'2025-06-23T06:10:36.413' AS DateTime), N'', N'0.3301066756248474', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1115, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:37.600' AS DateTime), N'', N'0.5070757865905762', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1116, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'E61091AA8', CAST(N'2025-06-23T06:10:37.900' AS DateTime), N'', N'0.2798866927623749', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1117, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:42.310' AS DateTime), N'', N'0.43918779492378235', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1118, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F6109LAAS', CAST(N'2025-06-23T06:10:43.937' AS DateTime), N'', N'0.32385140657424927', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1119, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'E6109IAAS', CAST(N'2025-06-23T06:10:45.577' AS DateTime), N'', N'0.3193582594394684', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1120, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:48.897' AS DateTime), N'', N'0.4279186725616455', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1121, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F6109LAA8', CAST(N'2025-06-23T06:10:50.210' AS DateTime), N'', N'0.3339405953884125', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1123, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'E6109AA8', CAST(N'2025-06-23T06:10:52.553' AS DateTime), N'', N'0.46129265427589417', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1124, 0, 0, N'DataVideo\T2670SE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:54.437' AS DateTime), N'', N'0.5996878147125244', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1125, 0, 0, N'DataVideo\T2670SE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'2670', CAST(N'2025-06-23T06:11:00.027' AS DateTime), N'', N'0.5946986079216003', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1126, 0, 0, N'DataVideo\T2670SE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'T2670', CAST(N'2025-06-23T06:11:02.053' AS DateTime), N'', N'0.30360147356987', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1128, 0, 0, N'DataVideo\T2670SE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'SE', CAST(N'2025-06-23T06:11:06.413' AS DateTime), N'', N'0.2529643774032593', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1129, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:19.957' AS DateTime), N'', N'0.8025338053703308', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1138, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:22.533' AS DateTime), N'', N'0.6236852407455444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1139, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:22.793' AS DateTime), N'', N'0.6380605101585388', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1140, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AFD', CAST(N'2025-06-23T06:38:23.280' AS DateTime), N'', N'0.808351993560791', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1141, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:23.467' AS DateTime), N'', N'0.9063278436660767', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1144, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:07.447' AS DateTime), N'', N'0.6719940304756165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1145, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694CJV', CAST(N'2025-06-23T07:14:07.987' AS DateTime), N'', N'0.8027893304824829', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1146, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JY', CAST(N'2025-06-23T07:14:08.573' AS DateTime), N'', N'0.842041552066803', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1147, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6944JV', CAST(N'2025-06-23T07:14:09.157' AS DateTime), N'', N'0.7603492736816406', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1148, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:09.713' AS DateTime), N'', N'0.8041476607322693', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1149, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6944JV', CAST(N'2025-06-23T07:14:10.283' AS DateTime), N'', N'0.8509796857833862', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1150, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:10.850' AS DateTime), N'', N'0.9293071031570435', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1151, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694JV', CAST(N'2025-06-23T07:14:11.410' AS DateTime), N'', N'0.9367643594741821', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1152, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694JV', CAST(N'2025-06-23T07:14:11.993' AS DateTime), N'', N'0.7937146425247192', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1153, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JY', CAST(N'2025-06-23T07:14:12.550' AS DateTime), N'', N'0.670095682144165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1154, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:13.167' AS DateTime), N'', N'0.5537101626396179', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1155, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:13.723' AS DateTime), N'', N'0.7194036841392517', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1156, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:14.283' AS DateTime), N'', N'0.7865053415298462', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1157, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AC7769', CAST(N'2025-06-23T07:14:14.837' AS DateTime), N'', N'0.778926432132721', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1158, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6944JY', CAST(N'2025-06-23T07:14:15.397' AS DateTime), N'', N'0.7927534580230713', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1159, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6946JY', CAST(N'2025-06-23T07:14:15.950' AS DateTime), N'', N'0.7830285429954529', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1160, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694J', CAST(N'2025-06-23T07:14:16.507' AS DateTime), N'', N'0.8285253047943115', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1161, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AP7769', CAST(N'2025-06-23T07:14:17.090' AS DateTime), N'', N'0.8033679723739624', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1162, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A694J', CAST(N'2025-06-23T07:14:17.680' AS DateTime), N'', N'0.8287580609321594', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1109, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:10:25.617' AS DateTime), N'', N'0.6434968113899231', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1112, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F61091AA8', CAST(N'2025-06-23T06:10:34.160' AS DateTime), N'', N'0.7259392738342285', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1122, 0, 0, N'DataVideo\F6109AAO.mp4', CAST(0.00000 AS Numeric(18, 5)), N'F6109LAA8', CAST(N'2025-06-23T06:10:50.950' AS DateTime), N'', N'0.27984946966171265', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1127, 0, 0, N'DataVideo\T2670SE.mp4', CAST(0.00000 AS Numeric(18, 5)), N'T2670', CAST(N'2025-06-23T06:11:03.653' AS DateTime), N'', N'0.3754156529903412', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1130, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:20.303' AS DateTime), N'', N'0.7432790994644165', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1131, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:20.580' AS DateTime), N'', N'0.6945037841796875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1132, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:20.847' AS DateTime), N'', N'0.7788625359535217', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1133, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:21.113' AS DateTime), N'', N'0.7233321070671082', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1134, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:21.377' AS DateTime), N'', N'0.7100898623466492', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1135, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:21.690' AS DateTime), N'', N'0.6997124552726746', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1136, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:22.007' AS DateTime), N'', N'0.7393093705177307', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1137, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T06:38:22.277' AS DateTime), N'', N'0.635199248790741', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1142, 0, 0, N'DataVideo\D1127AFD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1127AFD', CAST(N'2025-06-23T06:38:24.157' AS DateTime), N'', N'0.8835253119468689', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1143, 0, 0, N'DataVideo/A6944JV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'694JV', CAST(N'2025-06-23T07:14:06.663' AS DateTime), N'', N'0.5752233862876892', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1166, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A2067V', CAST(N'2025-06-23T23:18:38.273' AS DateTime), N'', N'0.5884076952934265', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1167, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A205', CAST(N'2025-06-23T23:18:38.623' AS DateTime), N'', N'0.5895765423774719', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1172, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:18:40.720' AS DateTime), N'', N'0.5897374153137207', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1173, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YV', CAST(N'2025-06-23T23:18:41.027' AS DateTime), N'', N'0.5962368845939636', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1174, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206y', CAST(N'2025-06-23T23:18:41.357' AS DateTime), N'', N'0.6200375556945801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1181, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206', CAST(N'2025-06-23T23:18:44.087' AS DateTime), N'', N'0.6366400122642517', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1182, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206Yy', CAST(N'2025-06-23T23:18:44.480' AS DateTime), N'', N'0.642013430595398', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1183, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:18:44.887' AS DateTime), N'', N'0.5789496898651123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1194, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YU', CAST(N'2025-06-23T23:18:49.957' AS DateTime), N'', N'0.8140703439712524', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1195, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:50.297' AS DateTime), N'', N'0.8225283622741699', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1196, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:50.793' AS DateTime), N'', N'0.791066586971283', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1197, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:51.117' AS DateTime), N'', N'0.8147187232971191', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1198, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:51.457' AS DateTime), N'', N'0.8113285303115845', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1199, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:51.903' AS DateTime), N'', N'0.7950465083122253', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1200, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:52.247' AS DateTime), N'', N'0.8528769016265869', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1201, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:52.687' AS DateTime), N'', N'0.838451623916626', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1203, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1206YV', CAST(N'2025-06-23T23:18:53.697' AS DateTime), N'', N'0.5865934491157532', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1204, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:54.117' AS DateTime), N'', N'0.867374062538147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1206, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:55.047' AS DateTime), N'', N'0.6121245622634888', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1209, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:56.710' AS DateTime), N'', N'0.7581120133399963', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1211, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:25:47.487' AS DateTime), N'', N'0.3872471749782562', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1220, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:25:50.280' AS DateTime), N'', N'0.506294310092926', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1222, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:25:50.903' AS DateTime), N'', N'0.5789496898651123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1223, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:25:51.220' AS DateTime), N'', N'0.6284113526344299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1225, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:25:51.857' AS DateTime), N'', N'0.7337029576301575', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1228, 0, 0, N'DataVideo\A3759XAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:53.283' AS DateTime), N'', N'0.7146722078323364', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1234, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:59.673' AS DateTime), N'', N'0.8186980485916138', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1235, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:59.933' AS DateTime), N'', N'0.770619809627533', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1236, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:00.197' AS DateTime), N'', N'0.8244931697845459', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1237, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:00.460' AS DateTime), N'', N'0.8087143301963806', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1238, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:00.737' AS DateTime), N'', N'0.8561556339263916', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1239, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:01.007' AS DateTime), N'', N'0.8776394724845886', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1240, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:01.280' AS DateTime), N'', N'0.8906024098396301', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1241, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:01.680' AS DateTime), N'', N'0.9073330760002136', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1260, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:52:44.997' AS DateTime), N'', N'0.5366728901863098', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1261, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:52:45.493' AS DateTime), N'', N'0.5028685927391052', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1262, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206', CAST(N'2025-06-23T23:52:45.977' AS DateTime), N'', N'0.5661158561706543', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1263, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A2067V', CAST(N'2025-06-23T23:52:46.427' AS DateTime), N'', N'0.5884076952934265', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1264, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A205', CAST(N'2025-06-23T23:52:46.887' AS DateTime), N'', N'0.5895765423774719', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1265, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A3206', CAST(N'2025-06-23T23:52:47.303' AS DateTime), N'', N'0.5757122039794922', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1266, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206', CAST(N'2025-06-23T23:52:47.607' AS DateTime), N'', N'0.5674179196357727', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1270, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YV', CAST(N'2025-06-23T23:52:49.250' AS DateTime), N'', N'0.5962368845939636', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1271, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206y', CAST(N'2025-06-23T23:52:49.643' AS DateTime), N'', N'0.6200375556945801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1272, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'G206V', CAST(N'2025-06-23T23:52:50.047' AS DateTime), N'', N'0.6051480770111084', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1273, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206YV', CAST(N'2025-06-23T23:52:50.440' AS DateTime), N'', N'0.5777907967567444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1274, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206YU', CAST(N'2025-06-23T23:52:50.830' AS DateTime), N'', N'0.5948283076286316', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1275, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A0200', CAST(N'2025-06-23T23:52:51.267' AS DateTime), N'', N'0.608053982257843', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1276, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A0206', CAST(N'2025-06-23T23:52:51.657' AS DateTime), N'', N'0.6047601699829102', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1277, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206', CAST(N'2025-06-23T23:52:52.047' AS DateTime), N'', N'0.6194295287132263', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1278, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206', CAST(N'2025-06-23T23:52:52.457' AS DateTime), N'', N'0.6366400122642517', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1279, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206Yy', CAST(N'2025-06-23T23:52:52.840' AS DateTime), N'', N'0.642013430595398', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1280, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:52:53.233' AS DateTime), N'', N'0.5789496898651123', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1163, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:18:37.313' AS DateTime), N'', N'0.5366724133491516', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1164, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:18:37.650' AS DateTime), N'', N'0.5028685927391052', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1165, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206', CAST(N'2025-06-23T23:18:37.960' AS DateTime), N'', N'0.5661158561706543', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1168, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A3206', CAST(N'2025-06-23T23:18:38.940' AS DateTime), N'', N'0.5757122039794922', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1169, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206', CAST(N'2025-06-23T23:18:39.450' AS DateTime), N'', N'0.5674179196357727', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1170, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206V', CAST(N'2025-06-23T23:18:39.913' AS DateTime), N'', N'0.571850597858429', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1171, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206V', CAST(N'2025-06-23T23:18:40.313' AS DateTime), N'', N'0.530885636806488', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1175, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'G206V', CAST(N'2025-06-23T23:18:41.783' AS DateTime), N'', N'0.6051480770111084', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1176, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206YV', CAST(N'2025-06-23T23:18:42.187' AS DateTime), N'', N'0.5777907967567444', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1177, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206YU', CAST(N'2025-06-23T23:18:42.597' AS DateTime), N'', N'0.5948283076286316', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1178, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A0200', CAST(N'2025-06-23T23:18:42.980' AS DateTime), N'', N'0.608053982257843', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1179, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A0206', CAST(N'2025-06-23T23:18:43.373' AS DateTime), N'', N'0.6047601699829102', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1180, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206', CAST(N'2025-06-23T23:18:43.780' AS DateTime), N'', N'0.6194295287132263', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1184, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:18:45.293' AS DateTime), N'', N'0.6053191423416138', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1185, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:18:45.687' AS DateTime), N'', N'0.54305100440979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1186, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:18:46.080' AS DateTime), N'', N'0.6284113526344299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1187, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1266YV', CAST(N'2025-06-23T23:18:46.720' AS DateTime), N'', N'0.5405417084693909', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1188, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:47.127' AS DateTime), N'', N'0.6279130578041077', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1189, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:47.530' AS DateTime), N'', N'0.6681588292121887', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1190, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:47.940' AS DateTime), N'', N'0.6147459745407104', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1191, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:48.360' AS DateTime), N'', N'0.6715190410614014', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1192, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:48.907' AS DateTime), N'', N'0.7781179547309875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1193, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A', CAST(N'2025-06-23T23:18:49.387' AS DateTime), N'', N'0.8176259994506836', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1202, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:53.120' AS DateTime), N'', N'0.8515276908874512', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1205, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:18:54.607' AS DateTime), N'', N'0.9228821396827698', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1207, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'C130', CAST(N'2025-06-23T23:18:55.530' AS DateTime), N'', N'0.8501138687133789', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1208, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4', CAST(N'2025-06-23T23:18:55.993' AS DateTime), N'', N'0.5673883557319641', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1210, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:25:47.110' AS DateTime), N'', N'0.377601683139801', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1212, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'3205', CAST(N'2025-06-23T23:25:47.807' AS DateTime), N'', N'0.4049185514450073', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1213, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:25:48.130' AS DateTime), N'', N'0.4007769823074341', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1214, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:25:48.437' AS DateTime), N'', N'0.39809417724609375', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1215, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0206V', CAST(N'2025-06-23T23:25:48.740' AS DateTime), N'', N'0.4081784188747406', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1216, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'0206', CAST(N'2025-06-23T23:25:49.047' AS DateTime), N'', N'0.43779629468917847', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1217, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:25:49.353' AS DateTime), N'', N'0.39228355884552', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1218, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'Ad206V', CAST(N'2025-06-23T23:25:49.667' AS DateTime), N'', N'0.45796164870262146', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1219, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:25:49.970' AS DateTime), N'', N'0.5366728901863098', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1221, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AG206', CAST(N'2025-06-23T23:25:50.587' AS DateTime), N'', N'0.6232050657272339', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1224, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:25:51.537' AS DateTime), N'', N'0.6279130578041077', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1226, 0, 0, N'DataVideo\A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:25:52.167' AS DateTime), N'', N'0.7981863617897034', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1227, 0, 0, N'DataVideo\A3759XAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:25:52.797' AS DateTime), N'', N'0.8231285214424133', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1229, 0, 0, N'DataVideo\A3759XAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:55.900' AS DateTime), N'', N'0.9706271290779114', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1230, 0, 0, N'DataVideo\A3759XAC.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:56.340' AS DateTime), N'', N'0.7335143685340881', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1231, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:58.517' AS DateTime), N'', N'0.8979732990264893', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1232, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:59.160' AS DateTime), N'', N'0.7608724236488342', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1233, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:25:59.423' AS DateTime), N'', N'0.7432637810707092', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1242, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574MAD', CAST(N'2025-06-23T23:26:02.213' AS DateTime), N'', N'0.7813910245895386', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1243, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'AZ574WAD', CAST(N'2025-06-23T23:26:02.550' AS DateTime), N'', N'0.43312641978263855', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1244, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:02.810' AS DateTime), N'', N'0.6955977082252502', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1245, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'457WAD', CAST(N'2025-06-23T23:26:03.127' AS DateTime), N'', N'0.2738582193851471', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1246, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'', CAST(N'2025-06-23T23:26:03.273' AS DateTime), N'', N'0.8974357843399048', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1247, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4576WAD', CAST(N'2025-06-23T23:26:03.627' AS DateTime), N'', N'0.7415115833282471', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1248, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T23:26:03.990' AS DateTime), N'', N'0.7527688145637512', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1249, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T23:26:04.347' AS DateTime), N'', N'0.5802159905433655', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1250, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4574WAD', CAST(N'2025-06-23T23:26:04.687' AS DateTime), N'', N'0.6717871427536011', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1251, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T23:26:05.047' AS DateTime), N'', N'0.7705011367797852', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1252, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4575WAD', CAST(N'2025-06-23T23:26:05.407' AS DateTime), N'', N'0.8467731475830078', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1253, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4575WAD', CAST(N'2025-06-23T23:26:05.707' AS DateTime), N'', N'0.8116990923881531', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1254, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T23:26:06.160' AS DateTime), N'', N'0.7727401852607727', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1255, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574WAD', CAST(N'2025-06-23T23:26:06.490' AS DateTime), N'', N'0.6917500495910645', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1256, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A4574AD', CAST(N'2025-06-23T23:26:07.217' AS DateTime), N'', N'0.8152087926864624', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1257, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'4574HAD', CAST(N'2025-06-23T23:26:07.610' AS DateTime), N'', N'0.729203462600708', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1258, 0, 0, N'DataVideo\A4574WAD.mp4', CAST(0.00000 AS Numeric(18, 5)), N'6574WAD', CAST(N'2025-06-23T23:26:08.150' AS DateTime), N'', N'0.838007390499115', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1259, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'206', CAST(N'2025-06-23T23:52:44.440' AS DateTime), N'', N'0.3980938494205475', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1267, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206V', CAST(N'2025-06-23T23:52:48.080' AS DateTime), N'', N'0.571850597858429', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1268, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206V', CAST(N'2025-06-23T23:52:48.470' AS DateTime), N'', N'0.530885636806488', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1269, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206', CAST(N'2025-06-23T23:52:48.860' AS DateTime), N'', N'0.5897374153137207', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1283, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:52:54.433' AS DateTime), N'', N'0.6284113526344299', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1284, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A2G6U', CAST(N'2025-06-23T23:52:54.753' AS DateTime), N'', N'0.48354169726371765', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1285, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1266YV', CAST(N'2025-06-23T23:52:55.133' AS DateTime), N'', N'0.5405417084693909', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1286, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:55.547' AS DateTime), N'', N'0.6279130578041077', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1287, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:55.857' AS DateTime), N'', N'0.6681588292121887', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1288, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:56.280' AS DateTime), N'', N'0.6147459745407104', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1290, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:57.260' AS DateTime), N'', N'0.7781179547309875', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1291, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A', CAST(N'2025-06-23T23:52:57.753' AS DateTime), N'', N'0.8176259994506836', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1292, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YU', CAST(N'2025-06-23T23:52:58.320' AS DateTime), N'', N'0.8140703439712524', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1293, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:58.790' AS DateTime), N'', N'0.8225283622741699', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1296, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:00.147' AS DateTime), N'', N'0.8113285303115845', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1297, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:00.640' AS DateTime), N'', N'0.7950465083122253', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1298, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:01.093' AS DateTime), N'', N'0.8528769016265869', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1299, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:01.547' AS DateTime), N'', N'0.838451623916626', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1300, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:01.983' AS DateTime), N'', N'0.8515276908874512', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1301, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'1206YV', CAST(N'2025-06-23T23:53:02.617' AS DateTime), N'', N'0.5865934491157532', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1302, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A', CAST(N'2025-06-23T23:53:02.727' AS DateTime), N'', N'0.2720085680484772', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1303, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:03.170' AS DateTime), N'', N'0.867374062538147', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1304, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:04.990' AS DateTime), N'', N'0.9228821396827698', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1305, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:53:05.440' AS DateTime), N'', N'0.6121245622634888', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1281, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:52:53.640' AS DateTime), N'', N'0.6053191423416138', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1282, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A206YU', CAST(N'2025-06-23T23:52:54.030' AS DateTime), N'', N'0.54305100440979', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1289, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:56.703' AS DateTime), N'', N'0.6715190410614014', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1294, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:59.260' AS DateTime), N'', N'0.791066586971283', N'0', N'0', N'')
GO
INSERT [dbo].[TransVehiceLicense] ([tvl_id], [tvl_device_id], [tvl_location_id], [tvl_file_name], [tvl_predict_pct], [tvl_license_number], [tvl_capture_datetime], [tvl_label], [tvl_confidence], [tvl_latitude], [tvl_longitude], [tvl_remark]) VALUES (1295, 0, 0, N'DataVideo/A1206YV.mp4', CAST(0.00000 AS Numeric(18, 5)), N'A1206YV', CAST(N'2025-06-23T23:52:59.703' AS DateTime), N'', N'0.8147187232971191', N'0', N'0', N'')
GO
SET IDENTITY_INSERT [dbo].[TransVehiceLicense] OFF
GO
ALTER TABLE [dbo].[TransBlackList] ADD  DEFAULT (getdate()) FOR [tbl_created_datetime]
GO
ALTER TABLE [dbo].[TransBlackList] ADD  DEFAULT ('Active') FOR [tbl_status]
GO
ALTER TABLE [dbo].[TransBlackListIdentification] ADD  DEFAULT (getdate()) FOR [tbli_detection_datetime]
GO
ALTER TABLE [dbo].[TransVehiceLicense] ADD  DEFAULT ((0)) FOR [tvl_device_id]
GO
ALTER TABLE [dbo].[TransVehiceLicense] ADD  DEFAULT ((0)) FOR [tvl_location_id]
GO
ALTER TABLE [dbo].[TransVehiceLicense] ADD  DEFAULT (getdate()) FOR [tvl_capture_datetime]
GO
ALTER TABLE [dbo].[TransVehiceLicense] ADD  DEFAULT ('') FOR [tvl_remark]
GO
