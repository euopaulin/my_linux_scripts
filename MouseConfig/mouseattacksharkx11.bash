#!/bin/bash
# Define o Polling Rate de 1ms (1000Hz)
echo 1 | sudo tee /sys/module/usbhid/parameters/mousepoll > /dev/null
# Desativa a Aceleração do Dispositivo com ID 19
xinput set-prop 19 'libinput Accel Profile Enabled' 0, 1
