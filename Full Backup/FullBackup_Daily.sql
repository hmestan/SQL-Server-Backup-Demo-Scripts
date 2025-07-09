/*
------------------------------------------------------------------------------------
-- 🌟 SQL Server Full Backup Script (Uretim database) 🌟
-- 
-- 📂 Önce C sürücüsünde "Backup" isimli bir klasör oluşturun.
-- 💡 Bu script her çalıştırıldığında, aynı günkü eski yedeği SİLER ve üzerine yazar (overwrite).
--
-- 📂 First, create a folder named "Backup" on your C: drive.
-- 💡 This backup will overwrite any existing backup file with the same date.
------------------------------------------------------------------------------------
*/

DECLARE @FileName NVARCHAR(200)
DECLARE @Date NVARCHAR(20)

-- 📅 YYYYMMDD formatında tarih al (ör: 20250708)
-- Get current date in YYYYMMDD format (e.g., 20250708)
SET @Date = CONVERT(VARCHAR(8), GETDATE(), 112)

-- 📄 Dosya adını oluştur
-- Create backup file name
SET @FileName = N'C:\Backup\Uretim_' + @Date + '.bak'

-- 💾 Full Backup al (varsa aynı tarihli dosyayı sıfırlar)
-- Take Full Backup (overwrites same date file if exists)
BACKUP DATABASE Uretim 
TO DISK = @FileName
WITH FORMAT, INIT, NAME = N'Uretim-Full Database Daily Backup'
