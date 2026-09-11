#!/bin/bash
echo "=== ANALIZADOR DE ATAQUES ==="
echo "Total de intentos fallidos: $(grep -c "Failed" auth.log)"
echo ""
echo "Top atacantes: "
grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" auth.log | sort | uniq -c | sort -nr
echo ""
echo "Detalle guardado en reporte.txt"
grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" auth.log | sort | uniq -c | sort -nr | tee reporte.txt
