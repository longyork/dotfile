#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'

# 裸仓库别名
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dotfilesk='GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME gitk'

PS1='[\u@\h \W]\$ '

# <C-r> 唤起命令历史记录
eval "$(fzf --bash)"

# 全局默认的编辑器
export EDITOR=nvim

export PATH="$PATH:$HOME/.local/bin:$HOME/.dotnet/tools"

# cliphist 批量删除（fzf多选预览）
cliphist-rm() {
    cliphist list | fzf -m \
        --preview 'cliphist-preview.sh {}' \
        --preview-window right:60%:wrap \
    | cliphist delete
}

cliphist-cp() {
    local sel
    sel=$(cliphist list | fzf \
        --preview 'cliphist-preview.sh {}' \
        --preview-window right:60%:wrap)
    [[ -n "$sel" ]] && cliphist decode <<< "$sel" | wl-copy
}

gshow() {
  local hash
  hash=$(git log --oneline --color=always |
    fzf --ansi --reverse --height 60% \
    --preview 'git show --color=always {1} | head -250' \
    --preview-window=right:55% | awk '{print $1}')
  [[ -z "$hash" ]] && return 0
  [[ -n "$hash" ]] && git show "$hash"
}

dotfiles-gshow() {
  local hash
  hash=$(dotfiles log --oneline --color=always |
    fzf --ansi --reverse --height 60% \
    --preview 'git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" show --color=always {1} | head -250' \
    --preview-window=right:55% | awk '{print $1}')
  [[ -z "$hash" ]] && return 0
  [[ -n "$hash" ]] && git show "$hash"
}

