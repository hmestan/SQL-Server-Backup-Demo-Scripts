/*
------------------------------------------------------------------------------------
-- 🌟 SQL Server Full Backup Script (Uretim database) 🌟
-- 
-- 📂 Önce C sürücüsünde "Backup" isimli bir klasör oluşturun.
-- 💡 Bu script her çalıştırıldığında, eski farkların yedeğini SİLER ve üzerine yazar (overwrite).
--
-- 📂 First, create a folder named "Backup" on your C: drive.
-- 💡 This backup will overwrite any existing differential backup file.
------------------------------------------------------------------------------------
*/
DECLARE @DosyaAdi NVARCHAR(150)
DECLARE @Tarih NVARCHAR(20)
DECLARE @YedekAdi NVARCHAR(150)

SET @Tarih = CONVERT(NVARCHAR(8),GETDATE(),112)
SET @DosyaAdi = N'C:\Yedek\UretimFull_'+@Tarih+'.bak'
SET @YedekAdi = N'Uretim Full ' + @Tarih + N' Tarih Yedek'

BACKUP DATABASE Uretim 
TO DISK = @DosyaAdi
WITH FORMAT, INIT, NAME =@YedekAdi