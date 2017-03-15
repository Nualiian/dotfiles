# ask for the password on command prompt login
sudo -v

# Setup PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add custom stuff to PATH
export PATH=$PATH:/usr/local/mysql/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/Risko/.oh-my-zsh

# Theme
ZSH_THEME="junkfood" # my favs: agnoster, junkfood, miloshadzic, smt, jnrowe, crunch, bira, dogenpunk, frisk, gallois

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

# fUn aliases
# alias snow="ruby -e 'C=`stty size`.scan(/\d+/)[1].to_i;S=["2743".to_i(16)].pack("U*");a={};puts "\033[2J";loop{a[rand(C)]=0;a.each{|x,o|;a[x]+=1;print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"};$stdout.flush;sleep 0.1}'"

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
# OSX stuff
# --------------
# big save panel default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# fast key-repeat
defaults write NSGlobalDomain KeyRepeat -int 0

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
