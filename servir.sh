#!/data/data/com.termux/files/usr/bin/bash
# Script para servir HTML publicamente usando nmap ncat

cd ~/tienda-colchones
echo "[*] Sirviendo tienda en puerto 8080..."
echo "[*] Busca tu IP local con: ip addr show wlan0 | grep inet"
echo "[*] Desde tu iPhone conectate a: http://$(ip addr show wlan0 2>/dev/null | grep 'inet ' | awk '{print $2}' | cut -d/ -f1):8080"
echo ""

# Iniciar servidor
python3 -m http.server 8080
