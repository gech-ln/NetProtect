# Windows Utility Batch Script

|![NetGuardUtility](https://github.com/user-attachments/assets/e8021ea7-3a72-427f-bb66-8cc2eb2b01b3)|
|---|

|Voraussetzungen|
|---|
- Windows Betriebssystem (alle Versionen ab Windows 7)
  - Administratorrechte, um bestimmte Funktionen wie das Blockieren von IP-Adressen oder das Deinstallieren von Programmen auszuführen.

<br><br>

Was diese **README.md** enthält:

1. **Projektübersicht**: Eine kurze Beschreibung des Skripts und seiner Funktionalität.
2. **Detailierte Funktionen**: Eine klare Auflistung der verfügbaren Funktionen, unterteilt in Kategorien.
3. **Verwendung**: Ein einfacher Leitfaden zur Nutzung des Skripts.
4. **Beispielausgabe**: Ein Beispiel, wie das Menü im Batch-Skript aussieht, damit der Benutzer weiß, was zu erwarten ist.
5. **Voraussetzungen**: Eine Liste der benötigten Voraussetzungen zur Ausführung des Skripts.
6. **Lizenz und Haftungsausschluss**: Die Lizenzinformationen und ein Haftungsausschluss, um die rechtlichen Aspekte zu klären.

<br><br>

Erklärung der NetGuard-Funktion:
> Überwache eingehende Verbindungen: 
  - Zeigt alle aktiven Verbindungen auf dem Computer an, die auf "LISTEN" warten. Dies hilft zu sehen, welche Programme Verbindungen akzeptieren. <p>
> Blockiere IP-Adresse: 
  - Ermöglicht es, eine spezifische IP-Adresse zu blockieren, sodass keine Verbindungen von dieser IP zugelassen werden. Du gibst einfach die IP-Adresse ein, und die Regel wird zur Windows-Firewall hinzugefügt. <p>
> Blockiere Port: 
  - Blockiert einen bestimmten Port für eingehende Verbindungen. Du kannst die Portnummer eingeben, und der Batch-Befehl fügt eine Firewall-Regel hinzu, um diesen Port zu blockieren.

<br><br>

## Übersicht
> Dieses Batch-Skript bietet eine Sammlung von nützlichen Systemverwaltungsfunktionen für Windows. <p>
> Das Skript enthält ein Menü zur Auswahl verschiedener Funktionen, wie die Überprüfung von Netzwerkinformationen, das Neustarten oder Herunterfahren des Computers, die Überwachung von Prozessen, das Blockieren von IP-Adressen und viele weitere nützliche Verwaltungsoptionen.

- Funktionen
  - Hauptfunktionen

1. **IP-Adresse anzeigen**  
   Zeigt die IPv4-Adresse des Computers an.

2. **Netzwerkverbindungen anzeigen**  
   Listet alle aktiven Netzwerkverbindungen auf.

3. **Festplattenstatus anzeigen**  
   Zeigt die Festplatteninformationen, einschließlich freiem Speicherplatz und Gesamtgröße.

4. **Computer neu starten**  
   Startet den Computer neu.

5. **Computer herunterfahren**  
   Fährt den Computer herunter.

6. **Prozesse anzeigen**  
   Listet alle aktuell laufenden Prozesse auf.

7. **Task-Manager starten**  
   Startet den Windows Task-Manager.

8. **Programm deinstallieren**  
   Ermöglicht die Deinstallation eines Programms über den Namen.

9. **Systeminformationen anzeigen**  
   Zeigt allgemeine Systeminformationen des Computers an.

10. **Ausloggen**  
    Loggt den aktuellen Benutzer aus.

<br><br>

### Weitere Funktionen

11. **Temporäre Dateien löschen**  
    Löscht alle temporären Dateien im `%temp%`-Verzeichnis.

12. **Firewall-Status prüfen**  
    Überprüft den Status der Windows-Firewall.

13. **Windows Update prüfen**  
    Zeigt verfügbare Windows-Updates an.

14. **Ereignisanzeige öffnen**  
    Öffnet die Windows-Ereignisanzeige.

15. **Benutzerkonto hinzufügen**  
    Fügt einen neuen Benutzer mit einem festgelegten Passwort hinzu.

16. **Dienste verwalten**  
    Öffnet das Windows-Dienstverwaltungsprogramm.

<br><br>

### NetGuard - Netzwerküberwachung

17. **NetGuard - Netzwerk überwachen und blockieren**  
    Überwacht Netzwerkverbindungen und blockiert spezifische IP-Adressen oder Ports.  
    - **Überwache eingehende Verbindungen**: Zeigt alle aktiven Verbindungen an.  
    - **Blockiere IP-Adresse**: Blockiert eingehende Verbindungen von einer bestimmten IP-Adresse.  
    - **Blockiere Port**: Blockiert einen spezifischen Port für eingehende Verbindungen.

<br><br>

## Verwendung

1. **Speichern des Skripts**  
   Speichere das Batch-Skript in einer Datei mit der Endung `.bat` (z. B. `windows_utilities.bat`).

2. **Ausführen des Skripts**  
   Stelle sicher, dass du das Skript mit **Administratorrechten** ausführst, da einige Funktionen (z. B. Firewall-Regeln und Benutzerkonten) erhöhte Berechtigungen erfordern.

3. **Menünavigation**  
   - Wähle eine der Optionen aus, indem du die entsprechende Zahl eingibst und die Eingabetaste drückst.
   - Jede Funktion hat eine kurze Beschreibung und eine entsprechende Aktion, die sie ausführt.
   - Um das Skript zu beenden, wähle die Option „Beenden“ (11).

<br><br>

## Beispielausgabe

```batch
========================
WELCOME TO THE WINDOWS UTILITY MENU
========================

[1]  IP-Adresse anzeigen        [2]  Netzwerkverbindungen anzeigen      [3]  Festplattenstatus anzeigen
[4]  Computer neu starten       [5]  Computer herunterfahren            [6]  Prozesse anzeigen
[7]  Task-Manager starten       [8]  Programm deinstallieren            [9]  Systeminformationen anzeigen
[10] Ausloggen                  [11] Beenden                         
-------------------------------
Weitere Funktionen:
[12] Temporäre Dateien löschen  [13] Firewall-Status prüfen           [14] Windows Update prüfen
[15] Ereignisanzeige öffnen     [16] Benutzerkonto hinzufügen         [17] Dienste verwalten
===============================
[18] NetGuard - Netzwerk überwachen und blockieren
===============================
Bitte waehlen Sie eine Option (1-18): 
