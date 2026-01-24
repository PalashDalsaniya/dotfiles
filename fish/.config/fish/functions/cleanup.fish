function cleanup --wraps='sudo pacman -Rns (pacman -Qtdq)' --wraps='sudo pacman -Rns $(pacman -Qdtq)' --description 'alias cleanup=sudo pacman -Rns $(pacman -Qdtq)'
    sudo pacman -Rns $(pacman -Qdtq) $argv
end
