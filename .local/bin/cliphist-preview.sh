#!/usr/bin/env bash
set -uo pipefail

#日志文件路径，可以改成你想要的位置
#LOGFILE="$HOME/.cache/cliphist-preview.log"

FZF_PREVIEW_COLUMNS=${FZF_PREVIEW_COLUMNS:-80}
FZF_PREVIEW_LINES=${FZF_PREVIEW_LINES:-30}

line="$1"
id=$(echo "$line" | awk '{print $1}')

# 第一次decode：仅喂给 file 判断类型，流直接消耗，不用于展示
mime=$(cliphist decode "$id" | file --mime-type -b -)

case "$mime" in
    image/*)
        # 第二次decode：输出完整二进制给 chafa
        cliphist decode "$id" | chafa -s "${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}"
        ;;
    *)
        # 文本，优先 bat，fallback cat
        cliphist decode "$id" | if command -v bat &>/dev/null; then
            bat --color=always --style=plain
        else
            cat
        fi
        ;;
esac
