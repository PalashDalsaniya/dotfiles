#!/bin/sh

echo "Pd@13072005" | sudo -S timedatectl set-ntp false
echo "Pd@13072005" | sudo -S date -s "2026-04-28 12:00:00"
