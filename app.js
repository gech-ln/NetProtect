const psList = require('ps-list'); // Modul zur Prozessliste
const { exec } = require('child_process'); // Zum Ausführen von Shell-Befehlen (z.B. Windows-Firewall-Steuerung)
const fs = require('fs');

// Funktion, um alle Prozesse zu überwachen
async function monitorProcesses() {
    const processes = await psList();
    
    processes.forEach(process => {
        console.log(`Überwache Prozess: ${process.name} (PID: ${process.pid})`);
        
        // Beispiel: Einen bestimmten Prozess beenden (z.B. "notepad.exe")
        if (process.name === 'notepad.exe') {
            console.log(`Beende unerwünschten Prozess: ${process.name}`);
            process.kill(process.pid);
        }
    });
}

// Funktion, um die Windows-Firewall zu überwachen und Regeln hinzuzufügen
function manageFirewall(action, ruleName, ruleArgs) {
    const cmd = `netsh advfirewall firewall ${action} rule name="${ruleName}" dir=in ${ruleArgs}`;
    
    exec(cmd, (err, stdout, stderr) => {
        if (err) {
            console.error(`Fehler beim Ausführen des Firewall-Befehls: ${err}`);
            return;
        }
        if (stderr) {
            console.error(`Fehler: ${stderr}`);
            return;
        }
        console.log(`Firewall-Befehl erfolgreich ausgeführt: ${stdout}`);
    });
}

// Beispiel: Firewall-Regel hinzufügen (z.B. um einen Port zu blockieren)
function blockPort(port) {
    manageFirewall('add', 'BlockPortRule', `protocol=TCP localport=${port} action=block`);
}

// Beispiel: Firewall-Regel entfernen (z.B. um einen blockierten Port freizugeben)
function unblockPort(port) {
    manageFirewall('delete', 'BlockPortRule', `protocol=TCP localport=${port} action=block`);
}

// Anwendung starten: Prozesse überwachen und Firewall-Regeln verwalten
async function startApp() {
    // Überwache Prozesse alle 10 Sekunden
    setInterval(monitorProcesses, 10000);
    
    // Beispiel: Blockiere Port 8080
    blockPort(8080);
    
    // Beispiel: Entferne Regel für Port 8080 nach 60 Sekunden
    setTimeout(() => unblockPort(8080), 60000);
}

startApp();
