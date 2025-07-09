/*
------------------------------------------------------------------------------------
-- 🌟 SQL Server Full Backup Script (Uretim database) 🌟
-- 
-- 📂 Önce C sürücüsünde "Backup" isimli bir klasör oluşturun.
-- 💡 Bu script her çalıştırıldığında mevcut backup dosyasını SİLER ve üzerine yazar (overwrite).
--
-- 📂 First, create a folder named "Backup" on your C: drive.
-- 💡 This backup will OVERWRITE the existing backup file every time it runs.
------------------------------------------------------------------------------------
*/

BACKUP DATABASE Uretim
TO DISK = 'C:\Backup\Uretim.bak'
WITH INIT, NAME = N'Uretim Full Overwrite Backup';
