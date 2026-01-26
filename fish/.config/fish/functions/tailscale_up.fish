function tailscale_up --wraps='tailscale up --accept-routes --accept-dns' --wraps='tailscale up --accept-routes --accept-dns --exit-node ""' --description 'alias tailscale_up=tailscale up --accept-routes --accept-dns --exit-node ""'
    tailscale up --accept-routes --accept-dns --exit-node "" $argv
end
