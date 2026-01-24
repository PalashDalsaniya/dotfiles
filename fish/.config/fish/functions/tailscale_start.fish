function tailscale_start --wraps='tailscale up --accept-routes --accept-dns' --wraps='tailscale up --accept-routes --accept-dns --exit-node ""' --description 'alias tailscale_start=tailscale up --accept-routes --accept-dns --exit-node ""'
    tailscale up --accept-routes --accept-dns --exit-node "" $argv
end
