#!/usr/bin/env bash

#================================================================================
# Pacman
#
sudo pacman -Syu --noconfirm 7zip \
                             base-devel \
                             bat \
                             chafa \
                             cmake \
                             cups \
                             cups-pdf \
                             djvulibre \
                             fastfetch \
                             fd \
                             fzf \
                             git \
                             git-zsh-completion \
                             hugo \
                             imagemagick \
                             jq \
                             less \
                             libraw \
                             libultrahdr \
                             libwmf \
                             libzip \
                             lua-sec \
                             lua51 \
                             luarocks \
                             neovim \
                             openexr \
                             ripgrep \
                             sonnet \
                             starship \
                             system-config-printer \
                             tealdeer \
                             telegram-desktop \
                             tmux \
                             ttf-font-nerd \
                             ttf-jetbrains-mono-nerd \
                             ttf-noto-nerd \
                             wl-clipboard \
                             xorg-xwayland \
                             xwayland-satellite \
                             yazi \
                             zoxide \
                             zsh-autocomplete \
                             zsh-autosuggestions \
                             zsh-completions \
                             zsh-lovers \
                             zsh-syntax-highlighting

#================================================================================
# Install yay
#
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#================================================================================
# yay
#
yay -S brave-bin 1password

#================================================================================
# Go
#
go install github.com/joshmedeski/sesh/v2@latest

#================================================================================
# Config
#
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

echo "pause 0.25" >> .bashrc
echo "fastfetch" >> .bashrc

chsh -s $(which zsh)

git config --global user.email "rsylte@outlook.com"
git config --global user.name "Roger Sylte"

