# Import Notes

While most of the files included here will work as-is, there's a few things you need to install beforehand.

+ Zsh
+ [HomeBrew](https://brew.sh/), alongside the ["next steps" section](https://docs.brew.sh/Installation).
+ Node (Via nvm. apt is horrifically out of date for whatever reason.)
+ tmux
+ NeoVim
+ GNU Stow. Run `stow .` in /dotfiles/ in order to set up everything. `stow --adopt .` if there are duplicate files.

Also, navigate to the /etc/ directory, create a wsl.conf file, and add the following:

```conf
[terminal]
TERM=xterm-256color
```

This allows tmux to show true colour (a.k.a pretty nvim color schemes)
