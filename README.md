# SOC Log Analyzer - SOC L1

Script en Bash para detección temprana de ataques de fuerza bruta y análisis de `auth.log`. Diseñado para tareas de SOC Analyst L1 / Blue Team.

### 🎯 ¿Qué resuelve?
Automatiza el triage inicial que hace un SOC: en lugar de leer miles de líneas de log a mano, el script identifica IPs maliciosas, usuarios atacados y genera un reporte listo para escalar.

### ⚙️ Funcionalidades
- Detecta intentos fallidos de SSH (`Failed password`)
- Extrae TOP 10 IPs atacantes con contador
- Identifica usuarios más atacados
- Genera reporte de salida para incident response
- Compatible con cualquier `auth.log` de Linux

### 🛠️ Tecnologías
Bash | Linux | Log Analysis | Regex (grep, awk, sort, uniq)

### 🚀 Uso
```bash
chmod +x soc-analyzer.sh
./soc-analyzer.sh /var/log/auth.log

📄 Ejemplo de salida
[ALERTA] IP Atacante: 45.33.12.8 - 157 intentos
[ALERTA] Usuario objetivo: root - 89 intentos

👮 Caso de uso SOCEste script simula una tarea real de SOC L1: monitoreo de autenticación, detección de IOCs y creación de artefactos para bloqueo en firewall/SIEM.Autor: Juan Gonzalez | Aspirante a SOC Analyst | Argentina
