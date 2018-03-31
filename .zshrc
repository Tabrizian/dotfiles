# {{{ Exports

# PATH
export PATH=~/.local/bin:/usr/local/go/bin:/opt/rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/ghdl/bin:.:/opt/electron-linux:~/.yarn/bin # Reorder PATH so local bin is first

# Default Editor
export EDITOR="vim"

source ~/.fonts/*.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# }}}

# {{{ Oh My Zsh Config
# Path to your oh-my-zsh installation.
export ZSH=/home/iman/.oh-my-zsh

# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="amuse"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux sudo jsontools gitignore yarn docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# }}}

# {{{ TMUX
# Automatically Starts new TMUX session
ZSH_TMUX_AUTOSTART="true"

# Fix the problem of auto renaming tmux sessions
DISABLE_AUTO_TITLE="true"

# Makes creating a new tmux session (with a specific name) easier
function tmuxopen() {
  tmux attach -t $1
}

# Makes creating a new tmux session (with a specific name) easier
function tmuxnew() {
  tmux new -s $1
}

# Makes deleting a tmux session easier
function tmuxkill() {
  tmux kill-session -t $1
}

# }}}

# {{{ Colors
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# }}}

# {{{ CEIT BOT
function bot() {
  ~/Documents/Git/bot-remote/index.js $@
}
# }}}

# Docker {{{
docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}
# }}}


[ -f /home/iman/.travis/travis.sh ] && source /home/iman/.travis/travis.sh
