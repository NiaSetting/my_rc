# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git z extract
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

# powerline
source $(pip3 show powerline-status | awk '/Location:/{print $2 "/powerline/bindings/zsh/powerline.zsh"}')
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.local/lib/python3.8/site-packages/scripts

# highlight
#source ~/.config/zsh/incr*.zsh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# texlive
PATH=$PATH:/home/lynx/fuck_mount/texlive/2020/bin/x86_64-linux

# matlab
PATH=$PATH:/home/lynx/fuck_mount/matlab2019b/bin

# oslab
# export STUID=0
# export STUNAME=0

# qiniu qshell
# export PATH=$PATH:~/bucket
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# oj
# PATH=$PATH:/home/lynx/问题求解/union_find/linux-x64/

# java
export JAVA_HOME=/home/lynx/fuck_mount/Android_Studio/jre
# export JAVA_HOME=/home/lynx/fuck_mount/java-se-8u40-ri
export CLASSPATH=.:$JAVA_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin

# opencv apache ant
# export ANT_DIR=/home/lynx/fuck_mount/ant/apache-ant-1.9.14
# export PATH=$PATH:$ANT_DIR/bin

# opencv android
# export ANDROID_SDK=/home/lynx/fuck_mount/Android_SDK
# export ANDROID_NDK=/home/lynx/fuck_mount/Android_SDK/ndk/20.1.5948944 # Opencv 4
# export ANDROID_NDK=/home/lynx/fuck_mount/android-ndk-r12b # Opencv 3
# export ANDROID_NDK=/home/lynx/fuck_mount/android-ndk-r10 # Opencv 3

# opencv ninja
# export PATH=$PATH:$ANDROID_SDK/cmake/3.10.2.4988404/bin

# opencv linux
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/lynx/fuck_mount/opencv/install_dir/3_4_5/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/lynx/fuck_mount/opencv/install_dir/4_1_0/lib/pkgconfig

# opencv NISwGSP
export OpenCV_DIR=$OpenCV_DIR:/home/lynx/fuck_mount/opencv/install_dir/3_4_5/share/OpenCV
