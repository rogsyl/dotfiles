#!/usr/bin/env bash

#
# Install a brand new Mac
#
# (C) 2025 - Roger Sylte <rsylte@outlook.com> - MIT License
#
# 02.07.2025 - Initial version
#

# TODO:
# - Dry run

#BREW_INSTALL_DRY_RUN="echo "
#BREW_DRY_RUN="--dry-run"
#GO_DRY_RUN="echo "

BREW_INSTALL_DRY_RUN=
BREW_DRY_RUN=
GO_DRY_RUN=

# Previously installed by Brew, now installed by go
#delve \

#===============================================================================
# Install Brew

if ! which brew >/dev/null 2>&1; then
    ${BREW_INSTALL_DRY_RUN}/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo ""
    echo "Homebrew is already installed."
    echo ""
    echo "--------------------------------------------------------------------------------"
    echo ""
fi

#===============================================================================
# Install Brew packages
#
brew install $BREW_DRY_RUN automake \
                           bat \
                           btop \
                           clamav \
                           cmake \
                           composer \
                           exiftool \
                           fd \
                           felixkratz/formulae/borders \
                           fzf \
                           git \
                           golang \
                           homebank \
                           html-xml-utils \
                           html2text \
                           htop \
                           httpie \
                           hugo \
                           hunspell \
                           imagemagick \
                           jq \
                           luarocks \
                           marksman \
                           mupdf \
                           ncdu \
                           neovim \
                           nmap \
                           pandoc \
                           pkgconf \
                           prettier \
                           python@3.12 \
                           resvg \
                           ripgrep \
                           ruby \
                           sevenzip \
                           sqlite-utils \
                           starship \
                           svgo \
                           tealdeer \
                           timg \
                           tmux \
                           wget \
                           yazi \
                           zellij \
                           zoxide \
                           zsh-autosuggestions \
                           zsh-syntax-highlighting

echo ""
echo "--------------------------------------------------------------------------------"
echo ""

#===============================================================================
# Install Brew casks
#

#docker \
#  docker-desktop \

brew install $BREW_DRY_RUN --cask aerospace \
                                  alacritty \
                                  alt-tab \
                                  betterdisplay \
                                  font-symbols-only-nerd-font \
                                  freetube \
                                  ghostty \
                                  git-credential-manager \
                                  julia \
                                  julia-app \
                                  qlmarkdown \
                                  shortcat \
                                  syntax-highlight


echo ""
echo "--------------------------------------------------------------------------------"
echo ""

#===============================================================================
# Install Go apps
#
${GO_DRY_RUN}go install github.com/air-verse/air@latest
${GO_DRY_RUN}go install github.com/joshmedeski/sesh/v2@latest
${GO_DRY_RUN}go install github.com/go-delve/delve/cmd/dlv@latest

