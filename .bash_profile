#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#export XDG_CONFIG_HOME="$HOME/.config"
#export MOZ_ENABLE_WAYLAND=1

# 将 systemd environment.d 的变量桥接到当前登录会话
#if [ -d "$HOME/.config/environment.d" ]; then
#    eval "$(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)"
#fi
#clip-fzf() {
#  cliphist list | fzf \
#    --no-sort \
#    --preview '
#      tmp=$(mktemp)
#      cliphist decode {} > "$tmp" 2>/dev/null
#      if file --mime-type -b "$tmp" | grep -q "^image/"; then
#        chafa --format=symbols --size 60x30 "$tmp"
#      else
#        bat --style=plain --color=always --line-range=:200 "$tmp" 2>/dev/null || cat "$tmp"
#      fi
#      rm -f "$tmp"
#    ' \
#    --preview-window right:50%:wrap \
#  | cliphist decode | wl-copy
#}
