export TERM="xterm-256color"
# The next line updates PATH for the Google Cloud SDK.
#source '/Users/chrisc/google-cloud-sdk/path.zsh.inc'
#
# The next line enables shell command completion for gcloud.
#autoload -U compinit compdef
#compinit
#source '/Users/chrisc/google-cloud-sdk/completion.zsh.inc'
#
# Path to your oh-my-zsh installation.
export ZSH=/Users/chrisc/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="chriscibo2"
#ZSH_THEME="avit-da2k"
#ZSH_THEME="avit"
#ZSH_THEME="bureau"
ZSH_THEME=""
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
#plugins=(git brew common-aliases docker gem git-extras pip redis-cli rvm vagrant)
plugins=(git brew docker gem git-extras pip rvm vagrant)

# User configuration

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin"
#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:/Users/chrisc/Development/dcos/dcos/bin"
#source '/Users/chrisc/google-cloud-sdk/path.zsh.inc'
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias his="history"
#autoload predict-on
#predict-on
#source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Ruby Setup 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
source "$HOME/.config/zsh/functions"

bindkey '^R' history-incremental-search-backward

# Forget the ZSH Theme, this is simple and elegant prompt installed with node
# https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure
# Additonal Env Variables
export AWS_PROFILE=nebulaworks
# Include the users homedir bin if present
# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/bin" ]]; then
  PATH="$HOME/bin:$PATH"
fi
