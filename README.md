# dotfiles

## Replace config on new system

```bash
$ git clone --bare https://github.com/longyork/dotfile.git $HOME/.dotfiles
$ alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
$ dotfiles checkout
$ dotfiles config --local status.showUntrackedFiles no
```

## Links

- [Traking dotfiles directly with Git](https://wiki.archlinux.org/title/Dotfiles#Tracking_dotfiles_directly_with_Git)

