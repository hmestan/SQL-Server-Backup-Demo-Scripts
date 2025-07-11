@echo off
REM -----------------------------------------------------------------------------
REM 🌟 SQL Server Backup Batch Script (Uretim database) 🌟
REM 
REM 📄 Bu batch dosyası, belirlenen .sql script dosyasını çalıştırarak backup alır.
REM 💡 Windows Authentication (Windows yetkisi) kullanır: -E parametresi
REM 💡 Eğer SQL Server Authentication kullanacaksanız, -U [kullanıcı_adı] -P [şifre] parametrelerini kullanabilirsiniz.
REM    Örnek: SQLCMD -S .\SQLExpress -U sa -P MyPassword -i "C:\Backup\FullBackup_Daily.sql"
REM
REM 📄 This batch file runs the specified .sql script to take a backup.
REM 💡 Uses Windows Authentication with -E parameter by default.
REM 💡 To use SQL Server Authentication, use -U [username] -P [password] parameters instead.
REM    Example: SQLCMD -S .\SQLExpress -U sa -P MyPassword -i "C:\Backup\FullBackup_Daily.sql"
REM
REM ⚙️ Bu batch dosyası, Windows Görev Zamanlayıcısına eklenerek
REM     otomatik yedekleme işlemi için kullanılabilir.
REM ⚙️ This batch file can be added to Windows Task Scheduler
REM     to automate the backup process.
REM -----------------------------------------------------------------------------

SQLCMD -S .\SQLExpress -E -i "C:\Backup\Full_Backup.sql"

echo Backup işlemi tamamlandı.
