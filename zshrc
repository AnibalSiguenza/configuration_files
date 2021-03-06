# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/anibal/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="frisk"

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
plugins=(git
    zsh-autosuggestions
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Anibals Configurations after this ##############################
#make automatic ls after cd
function cd {
        builtin cd "$@" && ls
}

#autocomplete with ctrl + space
bindkey '^ ' autosuggest-accept

#remove all swp recursively
alias rmswp='find . -type f -name ".*.swp" -exec rm -f {} \;'

#make zsh like a vim command
bindkey -v
export MODE_INDICATOR="%{$fg_bold[blue]%}[NORMAL]"

#make git shortcuts
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gp='git pull '
alias gpu='git push '
alias go='git checkout '
alias grh='git reset --hard '
alias glog='git log --oneline'

#TUM shortcuts
alias gotum='ssh -YC torres@lxhalle.informatik.tu-muenchen.de '
alias gothesis5='ssh -XY lxlogin5.lrz.de -l di52kur'
alias gothesis8='ssh -XY lxlogin8.lrz.de -l di52kur'

#update shortcuts
alias update1='sudo apt-get update        # Fetches the list of available updates'
alias update2='sudo apt-get upgrade       # Strictly upgrades the current packages'
alias update3='sudo apt-get dist-upgrade  # Installs updates (new ones)'

#deatach matlab
alias matlab='matlab &'

#PETSI configuration
export PETSC_DIR='/home/anibal/petsc-3.5.4'
export PETSC_ARCH='arch-linux2-c-debug'

#Thesis configuration
export HDF5_INC='-I/usr/include/hdf5/mpich/'
export HDF5_LIB='-L/usr/lib/x86_64-linux-gnu/hdf5/mpich -lhdf5_hl -lhdf5'
alias thesisTmux='~/git/configuration_files/tmuxThesis.sh'
alias thesisDATA='~/git/configuration_files/tmuxDataAnalysis.sh'
alias thesisTex='~/git/configuration_files/thesisTex.sh'
alias bibUpdate='cp ~/Documents/Bib/master_thesis.bib ~/git/thesis_tex/bibliography/literature.bib &&
  pdflatex -shell-escape -output-directory build main.tex &&
  bibtex build/main &&
  pdflatex -shell-escape -output-directory build main.tex'
