source ~/.zplug/init.zsh

zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "mafredri/zsh-async", on:sindresorhus/pure
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "sindresorhus/pure"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search", defer:2

zplug load

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls='ls -G'
alias la='ls -la'

alias g='git'
alias gs='git s'
alias gc='git c'
alias gl='git l'
alias gco='git co'

# rbenv init if available
if command -v rbenv >/dev/null; then
  eval "$(rbenv init - --no-rehash)"
fi

# cd options
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# history
setopt hist_ignore_all_dups # remove old entry if same is added again
setopt share_history        # incremental add and import from other sessions
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# zsh-history-substring-search bindings to up and down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# completion
autoload -U compinit
compinit
