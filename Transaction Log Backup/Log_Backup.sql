/*
--------------------------------------------------------------------------------
-- 🇹🇷 Bu script, 'Uretim' veritabanının Transaction Log (log yedeğini) alır.
-- 📄 Tarih formatı: YYYYMMDD (örn. 20250710).
-- 💡 Yedek dosyası C:\Yedek klasörüne, günlük tarih eklenerek kaydedilir.
-- ⚠️ Transaction Log Backup alabilmek için veritabanının recovery modeli FULL veya BULK_LOGGED olmalıdır.
--
-- 🇬🇧 This script takes the Transaction Log backup of the 'Uretim' database.
-- 📄 Date format: YYYYMMDD (e.g., 20250710).
-- 💡 The backup file will be saved to C:\Yedek folder with daily date suffix.
-- ⚠️ To take Transaction Log backups, the database recovery model must be FULL or BULK_LOGGED.
--------------------------------------------------------------------------------
*/

DECLARE @DosyaAdi NVARCHAR(150)
DECLARE @Tarih NVARCHAR(20)

SET @Tarih = CONVERT(NVARCHAR(8), GETDATE(), 112)
SET @DosyaAdi = N'C:\Yedek\UretimLog_' + @Tarih + '.trn'

BACKUP LOG Uretim 
TO DISK = @DosyaAdi
