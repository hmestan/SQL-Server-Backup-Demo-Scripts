/*
------------------------------------------------------------------------------------
-- 🌟 SQL Server Full Backup Script (Uretim database) 🌟
-- 
-- 📂 Önce C sürücüsünde "Backup" isimli bir klasör oluşturun.
-- 💡 Bu script her çalıştırıldığında, var olan backup dosyasına yeni bir backup set ekler (append).
--
-- 📂 First, create a folder named "Backup" on your C: drive.
-- 💡 This backup will append to the existing backup file each time it runs.
------------------------------------------------------------------------------------
*/

BACKUP DATABASE Uretim
TO DISK = 'C:\Backup\Uretim.bak'
WITH NOINIT, NAME = N'Uretim Full Backup'
