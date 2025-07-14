/*
--------------------------------------------------------------------------------
-- 🇹🇷 RECOVERY FROM FULL BACKUP
-- Bu script, 'Uretim' veritabanını Full Backup dosyasından geri yükler.
-- 💡 WITH NORECOVERY: Veritabanını tamamlanmamış durumda bırakır, sonrasında Differential veya Log backup uygulanabilir.
-- 💡 WITH REPLACE: Mevcut (bozuk veya eksik) veritabanı dosyalarının üzerine yazar.
--
-- 🇬🇧 RECOVERY FROM FULL BACKUP
-- This script restores the 'Uretim' database from the Full Backup file.
-- 💡 WITH NORECOVERY: Leaves the database in a restoring state to allow Differential or Log backups.
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
-- 💡 WITH NORECOVERY: Differential sonrası Transaction Log Backup uygulamak için kullanılır.
--
-- 🇬🇧 RECOVERY FROM DIFFERENTIAL
-- This script applies the Differential Backup after the Full Backup restore.
-- 💡 WITH NORECOVERY: Used if a Transaction Log Backup will be applied afterwards.
--------------------------------------------------------------------------------
*/

RESTORE DATABASE Uretim
FROM DISK = 'C:\Yedek\UretimDifferential.bak'
WITH NORECOVERY;

/*
--------------------------------------------------------------------------------
-- 🇹🇷 RECOVERY FROM TRANSACTION LOG
-- Bu script, Transaction Log Backup'ı uygular ve istenirse STOPAT ile belirli bir zamana kadar geri döner.
-- 💡 STOPAT: Veritabanını belirli bir zamandaki haline döndürmek için kullanılır.
-- 💡 WITH NORECOVERY: Eğer başka log backup varsa devam etmek için kullanılır.
--
-- 🇬🇧 RECOVERY FROM TRANSACTION LOG
-- This script applies the Transaction Log Backup and optionally restores to a specific point in time using STOPAT.
-- 💡 STOPAT: Used to recover the database to a specific point in time.
-- 💡 WITH NORECOVERY: Used if more log backups will be applied afterwards.
--------------------------------------------------------------------------------
*/

RESTORE LOG Uretim
FROM DISK = 'C:\Yedek\UretimLog_20250712.trn'
WITH STOPAT = '2025-07-12 13:25:00', NORECOVERY;

/*
--------------------------------------------------------------------------------
-- 🇹🇷 FINAL RECOVERY STEP
-- Bu komut, tüm restore işlemlerini tamamlar ve veritabanını online hale getirir.
-- 💡 Eğer STOPAT kullanılmazsa, Transaction Log Backup tüm haliyle uygulanır.
--
-- 🇬🇧 FINAL RECOVERY STEP
-- This command completes all restore operations and brings the database online.
-- 💡 If STOPAT is not used, the Transaction Log Backup is fully applied to the latest point.
--------------------------------------------------------------------------------
*/

RESTORE DATABASE Uretim
WITH RECOVERY;
