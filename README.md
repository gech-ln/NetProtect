- SystemGuard ist eine leistungsstarke Anwendung, die Prozesse auf einem Windows-System überwacht, analysiert und bei Bedarf automatisch beendet.
  - Sie kann mit der Windows-Firewall interagieren, um Regeln hinzuzufügen, zu löschen und Ports zu blockieren oder freizugeben. Dies hilft, unerwünschte Prozesse zu verhindern und das System vor potenziellen Bedrohungen zu schützen.


### Funktionen
- Prozessüberwachung:,
  - Überwacht laufende Prozesse und beendet automatisch unerwünschte Prozesse. <p>
- Windows-Firewall-Management:
  - Fügt Firewall-Regeln hinzu, löscht bestehende Regeln und blockiert oder gibt Ports frei.
- Echtzeitüberwachung:
  - Überprüft regelmäßig laufende Prozesse und meldet Änderungen.
- Einfache Konfiguration:
  - Die Anwendung kann leicht angepasst werden, um mit unterschiedlichen Prozessen und Firewall-Regeln zu arbeiten.


### Technische Anforderungen
> Node.js: Version 14.x oder höher <p>
> Betriebssystem: Windows 10 oder höher

<br><br>

Installation
1. Node.js installieren
Stelle sicher, dass du Node.js auf deinem System installiert hast. Du kannst dies überprüfen, indem du im Terminal den folgenden Befehl ausführst:

```yarn
bash
Kopieren
node -v
```
Falls Node.js nicht installiert ist, lade es von der offiziellen Website herunter und folge den Installationsanweisungen.

<br><br>

2. Projekt-Repository klonen
Klonen Sie das Repository auf deinen Computer:

bash
Kopieren
git clone https://github.com/deinBenutzername/SystemGuard.git
cd SystemGuard
3. Abhängigkeiten installieren
Installiere die benötigten Node.js-Module mit npm:

bash
Kopieren
npm install
Verwendung
1. Prozessüberwachung starten
Um die Anwendung zu starten, führe den folgenden Befehl aus:

bash
Kopieren
node app.js
Die Anwendung beginnt, Prozesse zu überwachen. Alle 10 Sekunden wird sie die laufenden Prozesse auf deinem System überprüfen. Falls ein unerwünschter Prozess (z.B. notepad.exe) erkannt wird, wird er automatisch beendet.

2. Firewall-Regeln hinzufügen oder entfernen
Die Anwendung verwaltet die Windows-Firewall, um spezifische Ports zu blockieren oder freizugeben. Du kannst Ports blockieren, indem du eine Regel hinzufügst:

javascript
Kopieren
blockPort(8080);
Oder du kannst eine Regel entfernen:

javascript
Kopieren
unblockPort(8080);
Die Anwendung kann mehrere Firewall-Regeln zur Verwaltung von Netzwerkzugriffen verwenden.

Konfiguration
Die Anwendung kann leicht angepasst werden, um mit verschiedenen Prozessen und Firewall-Regeln zu arbeiten. Öffne die Datei config.json und passe die Einstellungen an:

json
Kopieren
{
  "processesToWatch": ["notepad.exe", "calculator.exe"],
  "firewallRules": {
    "blockPorts": [8080, 9090]
  }
}
Beispiele für Konfigurationen:
processesToWatch: Eine Liste von Prozessen, die überwacht werden sollen. Wenn einer dieser Prozesse erkannt wird, wird er automatisch beendet.

firewallRules.blockPorts: Eine Liste von Ports, die blockiert werden sollen.

Projektstruktur
bash
Kopieren
SystemGuard/
│
├── app.js                 # Hauptanwendungsdatei
├── config.json            # Konfigurationsdatei für Prozesse und Firewall-Regeln
├── node_modules/          # Installierte Node.js-Module
├── package.json           # NPM-Paketdatei
├── README.md              # Diese Datei
└── .gitignore             # Git Ignore-Datei
Fehlerbehebung
Falls beim Ausführen der Anwendung Fehler auftreten, überprüfe folgende Punkte:

Stelle sicher, dass Node.js korrekt installiert ist.

Überprüfe, ob alle notwendigen Module installiert wurden (npm install).

Falls ein Fehler bei der Kommunikation mit der Windows-Firewall auftritt, stelle sicher, dass du Administratorrechte hast.

Mitwirken
Beiträge zum Projekt sind jederzeit willkommen! Wenn du Fehler entdeckst oder neue Funktionen hinzufügen möchtest, öffne einfach einen Pull-Request. Stelle sicher, dass du alle Tests durchführst, bevor du eine Änderung vorschlägst.

Schritte zum Mitwirken:
Forke das Repository.

Erstelle einen neuen Branch (git checkout -b feature-xyz).

Führe deine Änderungen durch.

Committe deine Änderungen (git commit -am 'Hinzufügen von Feature xyz').

Pushe deinen Branch (git push origin feature-xyz).

Erstelle einen Pull-Request.
