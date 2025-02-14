# Dotfiles for Linux and macOS

Managed dotfiles for UNIX and UNIX-like OSes by the use of Stow (https://www.gnu.org/software/stow/)

More information can be found here: https://alexpearce.me/2016/02/managing-dotfiles-with-stow/

## Install pre-requisites
1. Oh My Zsh 
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Stow
  `brew install stow`
3. Vundle
  `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  `vim +PluginInstall +qall`
4. Pure prompt
  `brew install pure`
5. Kitty
  `brew install kitty`
6. Tmux
  `brew install tmux`

## Create the dotfiles
1. Cd into the dotfiles dir
  `cd ~/dotfiles`
2. Install the config files for all utils needed
  `stow vim`
  `stow zsh`
  `stow kitty`
  `stow oh-my-zsh`
  `stow tmux`

NOTE: There is a chance that there will be dotfiles created upon install of some tools that need to be removed prior to running stow. If you run into this, backup the current dotfile, remove the original, and (re)run stow.

