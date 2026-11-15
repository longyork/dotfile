#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'

# 裸仓库别名
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dotfilesk='GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME gitk'

PS1='[\u@\h \W]\$ '

# <C-r> 唤起命令历史记录
eval "$(fzf --bash)"

# 全局默认的编辑器
export EDITOR=nvim

export PATH="$PATH:$HOME/.local/bin"
