export NNN_TERMINAL='foot -T preview-tui'
export NNN_BMS='c:~/.config/;o:~/.local/opt;l:~/.local/share;'
export NNN_PLUG='m:mtpmount;p:preview-tui;f:fzopen;M:nmount;S:suedit;u:getplugs;g:gpge;G:gpgd;i:-!|mediainfo "$nnn";l:-!less -iR "$nnn"*;x:!&gio launch "$nnn";v:-!&swayimg "$nnn";s:-!|du -hs "$nnn";w:-!&mpv "$nnn";a:autojump;'
export NNN_TRASH=1
BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
export NNN_FIFO='/tmp/nnn.fifo'