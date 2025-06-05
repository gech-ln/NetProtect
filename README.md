|Dieser README-Text hilft den Benutzern, das **NetGuardUtility** effizient zu nutzen und bietet eine klare Anleitung für die verfügbaren Funktionen.|
|---|

|SystemGuard - Prozessüberwachung und Firewall-Schutz|
|---|

| ![NetProtect](https://github.com/user-attachments/assets/adbe3901-9b1f-4d02-ba62-130b161c817a)|
|---|

> SystemGuard ist eine leistungsstarke Anwendung, die Prozesse auf einem Windows-System überwacht, analysiert und bei Bedarf automatisch beendet. <p>
> Sie kann mit der Windows-Firewall interagieren, um Regeln hinzuzufügen, zu löschen und Ports zu blockieren oder freizugeben. Dies hilft, unerwünschte Prozesse zu verhindern und das System vor potenziellen Bedrohungen zu schützen.

<br><br>

### Funktionen
- Prozessüberwachung:
  - Überwacht laufende Prozesse und beendet automatisch unerwünschte Prozesse.
- Windows-Firewall-Management:
  - Fügt Firewall-Regeln hinzu, löscht bestehende Regeln und blockiert oder gibt Ports frei.
- Echtzeitüberwachung:
  - Überprüft regelmäßig laufende Prozesse und meldet Änderungen.
- Einfache Konfiguration:
  - Die Anwendung kann leicht angepasst werden, um mit unterschiedlichen Prozessen und Firewall-Regeln zu arbeiten.

<br><br>
 
### Technische Anforderungen
- Node.js: Version 14.x oder höher <p>
  - Betriebssystem: Windows 10 oder höher


<br><br>

### Installation
- Node.js installieren <p>
  - Stelle sicher, dass du Node.js auf deinem System installiert hast. Du kannst dies überprüfen, indem du im Terminal den folgenden Befehl ausführst:

```yarn
node -v
```
|Falls Node.js nicht installiert ist, lade es von der offiziellen Website herunter und folge den Installationsanweisungen.|
|---|

### Projekt-Repository klonen
- Klonen des Repository auf dem Computer:

```yarn
git clone https://github.com/deinBenutzername/SystemGuard.git
cd SystemGuard
```

### Abhängigkeiten installieren
- Installiere die benötigten Node.js-Module mit npm:

```yarn
npm install
``` 

<br><br>

|Verwendung|
|---|
- Prozessüberwachung starten
  - Um die Anwendung zu starten, führe den folgenden Befehl aus:

 ```yarn
node app.js
```

> Die Anwendung beginnt, Prozesse zu überwachen.
> Alle 10 Sekunden wird sie die laufenden Prozesse auf deinem System überprüfen.
> Falls ein unerwünschter Prozess (z.B. notepad.exe) erkannt wird, wird er automatisch beendet.
- Firewall-Regeln hinzufügen oder entfernen
  - Die Anwendung verwaltet die Windows-Firewall, um spezifische Ports zu blockieren oder freizugeben.
    - Du kannst Ports blockieren, indem du eine Regel hinzufügst:

```yarn
blockPort(8080);
```

> Oder du kannst eine Regel entfernen:

```yarn
unblockPort(8080);
```

|Die Anwendung kann mehrere Firewall-Regeln zur Verwaltung von Netzwerkzugriffen verwenden.|
|---|

<br><br>

### Konfiguration
- Die Anwendung kann leicht angepasst werden, um mit verschiedenen Prozessen und Firewall-Regeln zu arbeiten. 
  - Öffne die Datei config.json und passe die Einstellungen an:
 
```yarn
{
  "processesToWatch": ["notepad.exe", "calculator.exe"],
  "firewallRules": {
    "blockPorts": [8080, 9090]
  }
}
```

|Beispiele für Konfigurationen|
|---|
- processesToWatch:
  - Eine Liste von Prozessen, die überwacht werden sollen.
    - Wenn einer dieser Prozesse erkannt wird, wird er automatisch beendet.

- firewallRules.blockPorts:
  - Eine Liste von Ports, die blockiert werden sollen.
 
<br><br>

```yarn
SystemGuard/
│
├── app.js                 # Hauptanwendungsdatei
├── config.json            # Konfigurationsdatei für Prozesse und Firewall-Regeln
├── node_modules/          # Installierte Node.js-Module
├── package.json           # NPM-Paketdatei
├── README.md              # Diese Datei
└── .gitignore             # Git Ignore-Datei
```

<br><br>

### Fehlerbehebung
- Falls beim Ausführen der Anwendung Fehler auftreten, überprüfe folgende Punkte:
  - Stelle sicher, dass Node.js korrekt installiert ist.

- Überprüfe, ob alle notwendigen Module installiert wurden (npm install).
  - Falls ein Fehler bei der Kommunikation mit der Windows-Firewall auftritt, stelle sicher, dass du Administratorrechte hast.
 
<br><br>

|Mitwirken|
|---|

> Beiträge zum Projekt sind jederzeit willkommen! <p>
> Wenn du Fehler entdeckst oder neue Funktionen hinzufügen möchtest, öffne einfach einen Pull-Request. <p>
> Stelle sicher, dass du alle Tests durchführst, bevor du eine Änderung vorschlägst.

---
