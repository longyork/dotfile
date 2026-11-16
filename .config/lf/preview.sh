#!/bin/sh
file="$1"
w="$2"
h="$3"

mime=$(file --mime-type -Lb "$file")

case "$mime" in
    image/*)
        # 优先尝试 sixel，失败回退通用字符模式
        chafa -f sixel -s "${w}x${h}" --align center "$file" 2>/dev/null ||
        chafa -s "${w}x${h}" --align center "$file"
        ;;
    # PDF 预览（需要 poppler）
    #application/pdf)
    #    pdftotext -f 1 -l 10 "$file" - 2>/dev/null
    #    ;;
    # 文本用 bat 高亮
    text/*|application/json)
        bat --color=always --style=plain "$file" 2>/dev/null
        ;;
    *)
        file -- "$file"
        ;;
esac

