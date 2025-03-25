CREATE TABLE [dbo].[DKMH](
	[MalopHP] [varchar](10) NOT NULL,
	[MaSV] [varchar](10) NOT NULL,
	[DiemTP] [float] NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [float] NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[MalopHP] ASC,
	[MaSV] ASC
))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_LopHP] FOREIGN KEY([MalopHP])
REFERENCES [dbo].[LopHP] ([MalopHP])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_LopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([Masv])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO




