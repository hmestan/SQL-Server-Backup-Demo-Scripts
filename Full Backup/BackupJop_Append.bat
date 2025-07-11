@echo off
REM -----------------------------------------------------------------------------
REM 🌟 SQL Server Backup Batch Script (Uretim database) 🌟
REM 
REM 📄 Bu batch dosyası, belirlenen .sql script dosyasını çalıştırarak backup alır.
REM 💡 Windows Authentication (Windows yetkisi) kullanır: -E parametresi
REM 💡 Eğer SQL Server Authentication kullanacaksanız, -U [kullanıcı_adı] -P [şifre] parametrelerini kullanabilirsiniz.
REM    Örnek: SQLCMD -S .\SQLExpress -U sa -P MyPassword -i "C:\Backup\FullBackup_Append.sql"
REM
REM 📄 This batch file runs the specified .sql script to take a backup.
REM 💡 Uses Windows Authentication with -E parameter by default.
REM 💡 To use SQL Server Authentication, use -U [username] -P [password] parameters instead.
REM    Example: SQLCMD -S .\SQLExpress -U sa -P MyPassword -i "C:\Backup\FullBackup_Append.sql"
REM -----------------------------------------------------------------------------

SQLCMD -S .\SQLExpress -E -i "C:\Backup\FullBackup_Append.sql"

echo Backup işlemi tamamlandı. 