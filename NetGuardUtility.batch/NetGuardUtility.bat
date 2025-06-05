@echo off
Color C
cls
:MENU
echo ================================
echo WELCOME TO THE WINDOWS UTILITY MENU
echo ================================
echo.
echo -------------------------------
echo.
echo [1]  IP-Adresse anzeigen        [2]  Netzwerkverbindungen anzeigen      [3]  Festplattenstatus anzeigen
echo [4]  Computer neu starten       [5]  Computer herunterfahren            [6]  Prozesse anzeigen
echo [7]  Task-Manager starten       [8]  Programm deinstallieren            [9]  Systeminformationen anzeigen
echo [10] Ausloggen                  [11] Beenden                         
echo.
echo -------------------------------
echo.
echo Weitere Funktionen:
echo [12] Temporaere Dateien loeschen  [13] Firewall-Status prüfen           [14] Windows Update prüfen
echo [15] Ereignisanzeige öffnen     [16] Benutzerkonto hinzufügen         [17] Dienste verwalten
echo.
echo -------------------------------
echo [18] NetGuard - Netzwerk ueberwachen und blockieren
echo -------------------------------
echo.
echo ================================
set /p choice=Bitte waehlen Sie eine Option (1-18): 

if '%choice%'=='1' goto IP_ADDRESS
if '%choice%'=='2' goto NETWORK_CONNECTIONS
if '%choice%'=='3' goto DISK_STATUS
if '%choice%'=='4' goto RESTART
if '%choice%'=='5' goto SHUTDOWN
if '%choice%'=='6' goto PROCESSES
if '%choice%'=='7' goto TASK_MANAGER
if '%choice%'=='8' goto UNINSTALL_PROGRAM
if '%choice%'=='9' goto SYSTEM_INFO
if '%choice%'=='10' goto LOGOUT
if '%choice%'=='11' goto END
if '%choice%'=='12' goto DELETE_TEMP_FILES
if '%choice%'=='13' goto FIREWALL_STATUS
if '%choice%'=='14' goto WINDOWS_UPDATE
if '%choice%'=='15' goto EVENT_VIEWER
if '%choice%'=='16' goto ADD_USER
if '%choice%'=='17' goto SERVICES_MANAGER
if '%choice%'=='18' goto NETGUARD

:IP_ADDRESS
cls
echo IP-Adresse:
ipconfig | findstr /i "IPv4"
pause
goto MENU

:NETWORK_CONNECTIONS
cls
echo Netzwerkverbindungen:
netstat -an
pause
goto MENU

:DISK_STATUS
cls
echo Festplattenstatus:
wmic logicaldisk get name, description, freespace, size
pause
goto MENU

:RESTART
cls
echo Der Computer wird neu gestartet...
shutdown /r /f /t 0
goto END

:SHUTDOWN
cls
echo Der Computer wird heruntergefahren...
shutdown /s /f /t 0
goto END

:PROCESSES
cls
echo Laufende Prozesse:
tasklist
pause
goto MENU

:TASK_MANAGER
cls
echo Task-Manager wird gestartet...
start taskmgr
goto MENU

:UNINSTALL_PROGRAM
cls
echo Geben Sie den Namen des Programms ein, das Sie deinstallieren moechten:
set /p program_name=Programmname: 
echo Deinstalliere %program_name%...
wmic product where "name='%program_name%'" call uninstall
pause
goto MENU

:SYSTEM_INFO
cls
echo Systeminformationen:
systeminfo
pause
goto MENU

:LOGOUT
cls
echo Der Benutzer wird ausgeloggt...
shutdown /l
goto END

:DELETE_TEMP_FILES
cls
echo Temporäre Dateien werden gelöscht...
del /q /f /s %temp%\*
pause
goto MENU

:FIREWALL_STATUS
cls
echo Überprüfe Firewall-Status...
netsh advfirewall show allprofiles state
pause
goto MENU

:WINDOWS_UPDATE
cls
echo Windows Update wird überprüft...
powershell -command "Get-WindowsUpdate"
pause
goto MENU

:EVENT_VIEWER
cls
echo Ereignisanzeige wird geöffnet...
eventvwr.msc
goto MENU

:ADD_USER
cls
echo Neuer Benutzer wird hinzugefügt...
set /p username=Benutzername: 
set /p password=Passwort: 
net user %username% %password% /add
echo Benutzer %username% wurde hinzugefügt.
pause
goto MENU

:SERVICES_MANAGER
cls
echo Dienste verwalten...
services.msc
goto MENU

:NETGUARD
cls
echo ================================
echo NetGuard - Netzwerküberwachung
echo ================================
echo.
echo [1]  ueberwache eingehende Verbindungen
echo [2]  Blockiere IP-Adresse
echo [3]  Blockiere Port
echo [4]  Zurueck zum Hauptmenü
echo ================================
set /p netguard_choice=Bitte waehlen Sie eine Option (1-4): 

if '%netguard_choice%'=='1' goto MONITOR_CONNECTIONS
if '%netguard_choice%'=='2' goto BLOCK_IP
if '%netguard_choice%'=='3' goto BLOCK_PORT
if '%netguard_choice%'=='4' goto MENU

:MONITOR_CONNECTIONS
cls
echo Überwache eingehende Verbindungen...
netstat -ano | findstr "LISTEN"
pause
goto NETGUARD

:BLOCK_IP
cls
echo Geben Sie die IP-Adresse ein, die Sie blockieren möchten:
set /p ip_address=IP-Adresse: 
echo Blockiere IP-Adresse %ip_address%...
netsh advfirewall firewall add rule name="Block IP %ip_address%" dir=in action=block remoteip=%ip_address%
pause
goto NETGUARD

:BLOCK_PORT
cls
echo Geben Sie den Port ein, den Sie blockieren möchten:
set /p port_number=Portnummer: 
echo Blockiere Port %port_number%...
netsh advfirewall firewall add rule name="Block Port %port_number%" dir=in action=block protocol=TCP localport=%port_number%
pause
goto NETGUARD

:END
exit