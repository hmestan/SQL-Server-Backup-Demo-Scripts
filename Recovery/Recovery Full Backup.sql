/*
--------------------------------------------------------------------------------
-- 🇹🇷 RECOVERY FROM FULL BACKUP
-- Bu script, 'Uretim' veritabanını yalnızca Full Backup dosyasından geri yükler.
-- 💡 WITH REPLACE: Mevcut (bozuk veya eksik) veritabanı dosyalarının üzerine yazar.
-- 💡 WITH RECOVERY: Restore işlemini tamamlar ve veritabanını online hale getirir.
--
-- 🇬🇧 RECOVERY FROM FULL BACKUP
-- This script restores the 'Uretim' database using only the Full Backup file.
-- 💡 WITH REPLACE: Overwrites any existing (corrupt or incomplete) database files.
-- 💡 WITH RECOVERY: Completes the restore process and brings the database online.
--------------------------------------------------------------------------------
*/

RESTORE DATABASE Uretim
FROM DISK = 'C:\Yedek\Uretim.bak'
WITH RECOVERY, REPLACE;
