autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
export PATH=/usr/local/bin:$PATH
if uname | grep -q Linux; then
	export EDITOR=nvim
	export PATH=$HOME/go/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:/Users/roger/code/flutter/bin:$PATH
fi
if uname | grep -q Darwin; then
	export EDITOR=/opt/homebrew/bin/nvim
	export PATH=$HOME/go/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:/Users/roger/code/flutter/bin:$PATH
	export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:$DYLD_LIBRARY_PATH"
fi
alias ls='ls -GFh'
export LANG=nb_NO.UTF-8

alias vim='nvim'
alias v='nvim'
alias sunvim='sudo -E -s $(which nvim)'
#alias ls='colorls -lA --sd'
# TODO:  
alias cd-goscore3='cd "/Users/roger/Google Drive/Min disk/GoProjects/src/goscore3"'
# TODO:
alias cd-notater='cd "/Users/roger/Library/CloudStorage/SynologyDrive-Roger/Notater"'
alias ssh='TERM=xterm-256color ssh'
alias timg='timg -p k'

eval "$(starship init zsh)"

if uname | grep -q Darwin; then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

set -o vi

eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
if uname | grep -q Darwin; then
    fpath=(/Users/roger/.docker/completions $fpath)
    autoload -Uz compinit
    compinit
fi
# End of Docker CLI completions

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function t() {
  tmux ls > /dev/null 2>&1
  local exit_code=$?

  if [[ $exit_code -eq 0 ]]; then
    # If tmux is running, attach
    tmux a
  else
    # If tmux is not running, start a new session
    tmux new-session -s sjaddowland
  fi
}

function sesh-sessions() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

if uname | grep -q Linux; then
	# TODO:
	#zle     -N             sesh-sessions
	# bindkey -M emacs 'ß' sesh-sessions
	# bindkey -M vicmd 'ß' sesh-sessions
	# bindkey -M viins 'ß' sesh-sessions
fi

if uname | grep -q Darwin; then
# Bind the 'ß' key, which is the same as 'ALT+s' on Mac, to the sesh-sessions function
	zle     -N             sesh-sessions
	bindkey -M emacs 'ß' sesh-sessions
	bindkey -M vicmd 'ß' sesh-sessions
	bindkey -M viins 'ß' sesh-sessions
fi

sleep 0.25
fastfetch

