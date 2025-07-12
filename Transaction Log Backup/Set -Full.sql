/*
--------------------------------------------------------------------------------
-- 📄 Bu komut, 'Uretim' adlı veritabanının kurtarma modelini FULL olarak ayarlar.
--
-- FULL recovery modeli, Transaction Log Backup alabilmek için gereklidir.
-- Ayrıca point-in-time (belirli zamana kadar) geri dönüş senaryolarında kullanılır.
--
-- Kullanım: Transaction Log Backup veya gelişmiş yedekleme stratejileri kullanmadan önce çalıştırılır.
--------------------------------------------------------------------------------
*/
/*
--------------------------------------------------------------------------------
-- 📄 This command sets the recovery model of the 'Uretim' database to FULL.
--
-- The FULL recovery model is required to take Transaction Log Backups.
-- It is also used for point-in-time recovery scenarios.
--
-- Usage: Run this before starting Transaction Log Backups or when implementing advanced backup strategies.
--------------------------------------------------------------------------------
*/
ALTER DATABASE Uretim SET RECOVERY FULL;