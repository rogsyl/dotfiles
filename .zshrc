autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
export PATH=/usr/local/bin:$PATH
alias ls='ls -GFh'



export PATH=$HOME/go/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:/Users/roger/code/flutter/bin:$PATH
source ~/.zsh/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

alias vim='nvim'
alias sunvim='sudo -E -s $(which nvim)'
#alias ls='colorls -lA --sd'
alias cd-goscore3='cd "/Users/roger/Google Drive/Min disk/GoProjects/src/goscore3"'
alias cd-notater='cd "/Users/roger/Library/CloudStorage/SynologyDrive-Roger/Notater"'

eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

