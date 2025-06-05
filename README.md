|SystemGuard - Prozessüberwachung und Firewall-Schutz|
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
