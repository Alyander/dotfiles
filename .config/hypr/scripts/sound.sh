#!/bin/bash

SINK1="alsa_output.usb-3142_fifine_Headset-00.analog-stereo"
SINK2="alsa_output.pci-0000_01_00.1.hdmi-stereo"

CURRENT=$(pactl get-default-sink)

if [[ "$CURRENT" == "$SINK1" ]]; then
    pactl set-default-sink "$SINK2"
else
    pactl set-default-sink "$SINK1"
fi
