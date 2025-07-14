/*
------------------------------------------------------------------------------------
-- 🌟 SQL Server Offline Script (Uretim database) 🌟
-- 
-- 💡 Bu script her çalıştırıldığında, veri tabanını offline duruma alır
-- 💡 Böylece veri tabanı dosyalarını silmemize veri tabanını Recovery Pending (Kurtarma bekleniyor) durumuna getirebilirsiniz.
--
------------------------------------------------------------------------------------
*/
ALTER DATABASE Uretim SET OFFLINE WITH ROLLBACK IMMEDIATE;