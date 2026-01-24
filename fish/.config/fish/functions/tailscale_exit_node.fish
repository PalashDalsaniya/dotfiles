function tailscale_exit_node --wraps='tailscale up --accept-routes --accept-dns --exit-node tv713' --description 'alias tailscale_exit_node=tailscale up --accept-routes --accept-dns --exit-node tv713'
    tailscale up --accept-routes --accept-dns --exit-node tv713 $argv
end
