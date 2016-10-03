source ~/.zplug/init.zsh

zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "mafredri/zsh-async", on:sindresorhus/pure
zplug "zsh-users/zsh-autosuggestions", nice:8
zplug "zsh-users/zsh-completions"
zplug "sindresorhus/pure", nice:9
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "zsh-users/zsh-history-substring-search", nice:11

zplug load

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls='ls -G'
alias la='ls -la'

alias g='git'
alias gs='git s'
alias gc='git c'
alias gl='git l'
alias gco='git co'
