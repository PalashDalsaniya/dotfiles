function tailscale_stop --wraps='tailscale down' --description 'alias tailscale_stop=tailscale down'
    tailscale down $argv
end
