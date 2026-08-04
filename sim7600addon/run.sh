#!/usr/bin/with-contenv bashio

echo "======================================"
echo " Pokrećem SIM7600 Add-on"
echo "======================================"


# Čitanje konfiguracije iz Home Assistanta

PORT=$(bashio::config 'port')
BAUDRATE=$(bashio::config 'baudrate')


echo "SIM7600 port: $PORT"
echo "SIM7600 baudrate: $BAUDRATE"


# Prosljeđivanje u .NET konfiguraciju

export Sim7600__PortName="$PORT"
export Sim7600__BaudRate="$BAUDRATE"


exec dotnet /app/Sim7600Addon.dll
