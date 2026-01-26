function music-download --wraps='yt-dlp --remote-components ejs:github -f "ba[ext=m4a]" -x --audio-format m4a' --description 'alias music-download=yt-dlp --remote-components ejs:github -f "ba[ext=m4a]" -x --audio-format m4a'
    yt-dlp --remote-components ejs:github -f "ba[ext=m4a]" -x --audio-format m4a $argv
end
