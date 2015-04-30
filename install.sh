#!/usr/bin/env bash
echo "vim"
cp vimrc ~/.vimrc
echo "tmux"
cp tmux.conf ~/.tmux.conf
echo "zsh"
chsh -s /bin/zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp zshrc ~/.zshrc
echo "autojump"
git clone https://github.com/joelthelion/autojump.git && cd autojump && ./install.py
