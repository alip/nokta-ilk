#!/usr/bin/env bash

VIMDIR=${NOKTA_VIMDIR:-${HOME}/.vim}

edo() {
    local r

    echo "+ $*" >&2
    [[ -n "$NOKTA_DRYRUN" ]] && return 0

    "$@"
    r=$?
    if [[ $r != 0 ]]; then
        echo "! $*" >&2
        exit $r
    fi
}

edo mkdir -p "$VIMDIR"

while read -d $'\0' srcdir; do
    destdir="${VIMDIR}/${srcdir##*/}"
    edo rsync -a --chmod="ugo+r,u+w,go-w" "$srcdir"/ "$destdir"/
done < <(find uzak/vim-* \
            -maxdepth 2 \
            -a -type d \
            -a '(' \
            -name after \
            -o -name autoload \
            -o -name colors \
            -o -name compiler \
            -o -name doc \
            -o -name indent \
            -o -name ftdetect \
            -o -name ftplugin \
            -o -name plugin \
            -o -name syntax \
            ')' -print0 )

edo vim -u NONE -U NONE -T xterm -X -n -f \
    '+set nobackup nomore' \
    "+helptags ${VIMDIR}/doc" \
    '+qa!' </dev/null &>/dev/null

true
