#!/bin/bash
export DISPLAY=:0

# Avvia il server X
Xorg -noreset +extension GLX +extension RANDR +extension RENDER &

# Aspetta 5 secondi per sicurezza
sleep 5

# Avvia Xibo Player
/opt/xibo/xibo-player
