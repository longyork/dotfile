#!/bin/sh
mime=$(file --mime-type -Lb -- "$1")

[[ -d $HOME/.cache/lf ]] || mkdir -p "$HOME/.cache/lf"

show_img(){
    #if [[ -n $FZF_LEVEL || -n $NVIM ]]; then
        /bin/chafa -f sixel \
            -s "$2x$3" \
            --animate off \
            --polite on \
            -t 1 \
            --bg '#111111' \
            $1
    #fi
}

case "$mime" in
    image/*xcf|image/heic|image/x-xpixmap)
                CACHE="$HOME/.cache/lf/$(stat --printf '%s%n%Y' "$(readlink -f "$1")" \
                               | xxh3sum | cut -d' ' -f1)"
        [ -f "${CACHE}.jpg" ] || convert "$1" -flatten \
                                              -quality 50 "${CACHE}.jpg"
        show_img "${CACHE}.jpg" "$2" "$3"
        ;;
    image/*)
        show_img "$1" "$2" "$3"
        ;;
    # 文本用 bat 高亮
    text/*|application/json)
        bat --color=always --style=plain "$1"
        ;;
    *)
        file -- "$1"
        ;;
esac

