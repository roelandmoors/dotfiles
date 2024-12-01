# Dotfiles

## Installation

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git stow ripgrep fd fzf neovim mc lazygit gh nodejs npm 
cd ~
git clone https://github.com/roelandmoors/dotfiles.git
cd dotfiles
stow zsh vim mc
```

download and install FiraMono Nerd Font
https://www.nerdfonts.com/font-downloads

### iTerm2

Font: FiraMono Nerd Font Mono  
Colors: Import export/roeland.itermcolors

### Open in terminal

https://github.com/Ji4n1ng/OpenInTerminal/blob/master/Resources/README-Lite.md

```
brew install --cask openinterminal-lite
brew install --cask openineditor-lite
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal iterm
```

### Vim

vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

:PlugInstall

### Tmux 

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

ctrl-B I

## Settings

### Git config

```
git config --global user.name "Roeland"
git config --global user.email "Use your GitHub-provided no-reply email address"  
gh auth login
```
```
echo .DS_Store >> ~/.gitignore_global
echo "*.swp" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

### Set a blazingly fast keyboard repeat rate

```
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
```
