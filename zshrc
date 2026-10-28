# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jbb"

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

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
plugins=(git)

# User configuration
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.rc/pathvars ]; then
    source ~/.rc/pathvars
fi

if [ -f ~/.rc/aliases ]; then
    source ~/.rc/aliases
fi
#
source /Users/Sheenroo/ForeFlight/duster/dust all
# aws-valt setup
export AWS_VAULT_KEYCHAIN_NAME=login  # make your life easier (fewer password prompts)
export AWS_VAULT_PROMPT=osascript     # optional, but gives you a nice dialog prompt to enter your multi-factor auth token
export GOOGLE_APPLICATION_CREDENTIALS="/Users/Sheenroo/Secrets/ferrous-pact-386214-26aaac90450b.json"
export PYTHONPATH=$HOME/foreflight/data-engineering/python
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/Applications/apache-maven-3.9.2
export PATH=${M2_HOME}/bin:${PATH} 
export PATH
export IMPORTDB_ENV="dev"
export FF_IMPORTDB_PASS="gofly123"
export FF_IMPORTDB_APOLLO_PASS="TdbBAoXbNu6jDOGZPjTd"
export AIRFLOWDB_ENV="dev"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
alias mvn="mvn -e"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Sheenroo/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/Sheenroo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Sheenroo/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/Sheenroo/google-cloud-sdk/completion.zsh.inc'; fi

