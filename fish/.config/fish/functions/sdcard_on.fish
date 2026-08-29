function sdcard_on --wraps='echo on | sudo tee /sys/bus/pci/devices/0000:02:00.0/power/control' --description 'alias sdcard_on=echo on | sudo tee /sys/bus/pci/devices/0000:02:00.0/power/control'
    echo on | sudo tee /sys/bus/pci/devices/0000:02:00.0/power/control $argv
end
