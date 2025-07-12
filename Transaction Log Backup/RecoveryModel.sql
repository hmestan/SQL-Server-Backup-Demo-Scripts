/*
--------------------------------------------------------------------------------
-- 📄 Bu sorgu, 'Uretim' adlı veritabanının kurtarma modelini (recovery model) listeler.
-- 
-- Kurtarma modeli; FULL, SIMPLE veya BULK_LOGGED olabilir.
-- Özellikle Transaction Log Backup alabilmek için veritabanının FULL veya BULK_LOGGED
-- modunda olması gerekir.
--
-- Kullanım: Differential veya Log backup işlemlerine başlamadan önce kontrol amaçlı çalıştırılır.
--------------------------------------------------------------------------------
*/
/*
--------------------------------------------------------------------------------
-- 📄 This query lists the recovery model of the database named 'Uretim'.
--
-- The recovery model can be FULL, SIMPLE, or BULK_LOGGED.
-- To take Transaction Log Backups, the database must be in FULL or BULK_LOGGED mode.
--
-- Usage: Run this query to check the recovery model before starting differential or log backups.
--------------------------------------------------------------------------------
*/
SELECT name, recovery_model_desc
FROM sys.databases
WHERE name='Uretim'