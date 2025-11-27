#!/bin/bash

# Configura o Monitor Secundário Acer ZeroFrame (DP-4)
# Configurado para 1080x1920 (modo pivotado/retrato) a 60Hz.
xrandr --output DP-4 --mode 1080x1920 --rate 60.00 --pos 0x0

# Configura o Monitor Principal Samsung Odyssey (HDMI-0)
# Configurado para 1920x1080 a 60Hz, posicionado à direita do DP-4.
xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 60.00 --pos 1080x420