# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
ant 
aws
battery 
bundler 
capistrano 
coffee 
command-not-found 
colored-man
colorize
debian 
docker 
encode64
extract
fabric
git 
git-flow 
github 
gitignore
gem 
gnu-utils 
gpg-agent
gradle
grails
history-substring-search 
iwhois
jira
jruby
knife 
last-working-dir
mercurial
mvn 
node
npm
nvm
pip 
pj
pylint
python 
rbfu
rsync
ruby 
rvm 
screen
ssh-agent 
sublime 
sudo
svn 
systemadmin
urltools 
vagrant 
vundle 
zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

export DEBFULLNAME="Sebastian Otaegui"
export DEBEMAIL="feniix@gmail.com"

# history settings
setopt INC_APPEND_HISTORY AUTO_REMOVE_SLASH
setopt LIST_TYPES LONG_LIST_JOBS HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS HIST_IGNORE_SPACE
export EDITOR=vim
HISTSIZE=10000
SAVEHIST=10000

#AMAZON EC2
export EC2_HOME=~/dev/ec2-api-tools
export PATH=${EC2_HOME}/bin:$PATH
source ~/.aws/environment

alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=${JAVA_HOME}/bin:$PATH

export ANT_HOME=${HOME}/dev/ant
export PATH=${ANT_HOME}/bin:$PATH
export ANT_OPTS="-Xmx2024m -XX:MaxPermSize=256m"

export M2_HOME=${HOME}/dev/mvn3
export PATH=${M2_HOME}/bin:$PATH
export MAVEN_OPTS="-Xmx2024m -XX:MaxPermSize=256m"

export PACKER_PATH=${HOME}/apps/packer
export PATH=${PACKER_PATH}:$PATH

export GRADLE_OPTS="-Xmx2024m -Xms2024m -XX:MaxPermSize=256m"

export ANDROIDOS_HOME=${HOME}/dev/android-sdk
export PATH=${ANDROIDOS_HOME}/tools:${ANDROIDOS_HOME}/platform-tools:$PATH

#[ -s "/home/otaeguis/.nvm/nvm.sh" ] && . "/home/otaeguis/.nvm/nvm.sh" # This loads nvm

rm -rf ~/.freerdp/known_hosts

#config for the ssh-agent plugin
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa 

PROJECT_PATHS=(~/projects/src)


export PATH=${PATH}:/usr/local/bin

export GOROOT=${HOME}/dev/go
export PATH=${GOROOT}/bin:$PATH


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/otaeguis/.gvm/bin/gvm-init.sh" ]] && source "/home/otaeguis/.gvm/bin/gvm-init.sh"

PATH=$HOME/.rvm/bin:$PATH 
source $HOME/.rvm/scripts/rvm

PATH=$HOME/bin:$PATH

#--------- begin alias ---------#

alias veewee="BUNDLE_GEMFILE=~/projects/src/veewee/Gemfile bundle exec veewee"

alias dos2unix="todos -d"
alias unix2dos="todos -u"
alias mtr="mtr --curses"

# copy / move with progress bar
alias rsynccopy="rsync --partial --progress --append --rsh=ssh -r -h "
alias rsyncmove="rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files"

#-------------------------------#
