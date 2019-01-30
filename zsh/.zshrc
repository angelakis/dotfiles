# Path to oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump sudo systemadmin systemd archlinux bgnotify)

source $ZSH/oh-my-zsh.sh

# User configuration
# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# fzf configuration
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
alias getsize=du -hs

# Alias for kitty errors
alias ssh="kitty +kitten ssh"
compdef ssh='ssh'
setopt complete_aliases

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# virtualenvwrapper requisites
export WORKON_HOME="~/.virtualenvs"
source /usr/bin/virtualenvwrapper.sh -p $WORKON_HOME

export VISUAL=vim
export EDITOR=vim
