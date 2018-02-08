# Setup PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.composer/vendor/bin

# Add custom stuff to PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:/usr/local/bin/geckodriver"

# Path to your oh-my-zsh installation.
export ZSH=/Users/Risko/.oh-my-zsh

# Theme
ZSH_THEME="agnoster" # my favs: dotdot, bullet-train, agnoster, junkfood, miloshadzic, smt, crunch, bira, dogenpunk, frisk, gallois

# Loading plugins
plugins=(git)

# Path for the source
source $ZSH/oh-my-zsh.sh

# Preferred terminal editor
export EDITOR='nano'

# Custom aliases
alias profile="sublime ~/.zshrc"
alias i="ping google.com"
alias homesteadEdit="sublime ~/.homestead/Homestead.yaml"

# Git aliases
alias ga="git add ."
alias gcm="git commit -m"
alias gs="git status"
alias gp="git push"
alias spaceship="echo 🚀 🚀 🚀"

# Custom startup commands
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # terminal syntax highlighting

# Custom functions
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

# JAVA_HOME variable
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export PATH=${PATH}:${JAVA_HOME}

# ANDROID_HOME variable for React Native Android development
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# --------------
# macOS stuff
# --------------
# big save panel default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# immediate password require after waking from sleep
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# show all filename extensions in finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# group windows by app in mission control
defaults write com.apple.dock expose-group-by-app -bool true

# disable the stoopid automatic space rearranging based on recent use
defaults write com.apple.dock mru-spaces -bool false

# disable the Dock auto-hiding delay
defaults write com.apple.dock autohide-delay -float 0

# enable showing hidden files all the time
defaults write com.apple.finder AppleShowAllFiles YES
