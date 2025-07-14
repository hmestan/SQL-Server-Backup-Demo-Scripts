/*
--------------------------------------------------------------------------------
-- 🇹🇷 RECOVERY FROM FULL BACKUP
-- Bu script, 'Uretim' veritabanını Full Backup dosyasından geri yükler.
-- 💡 WITH NORECOVERY: Veritabanını tamamlanmamış durumda bırakır, sonrasında Differential veya Log backup uygulanabilir.
-- 💡 WITH REPLACE: Mevcut (bozuk veya eksik) veritabanı dosyalarının üzerine yazar.
--
-- 🇬🇧 RECOVERY FROM FULL BACKUP
-- This script restores the 'Uretim' database from the Full Backup file.
-- 💡 WITH NORECOVERY: Leaves the database in a restoring state to allow further Differential or Log backups.
-- 💡 WITH REPLACE: Overwrites any existing (corrupt or incomplete) database files.
--------------------------------------------------------------------------------
*/

RESTORE DATABASE Uretim
FROM DISK = 'C:\Yedek\UretimFull_20250712.bak'
WITH NORECOVERY, REPLACE;

/*
--------------------------------------------------------------------------------
-- 🇹🇷 RECOVERY FROM DIFFERENTIAL
-- Bu script, Full Backup restore edildikten sonra Differential Backup'ı uygular.
-- 💡 WITH RECOVERY: Restore işlemini tamamlar ve veritabanını online hale getirir.
--
-- 🇬🇧 RECOVERY FROM DIFFERENTIAL
-- This script applies the Differential Backup after the Full Backup restore.
-- 💡 WITH RECOVERY: Completes the restore process and brings the database online.
--------------------------------------------------------------------------------
*/

RESTORE DATABASE Uretim
FROM DISK = 'C:\Yedek\UretimDifferential.bak'
WITH RECOVERY;
