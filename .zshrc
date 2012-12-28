# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

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
plugins=(git git-flow debian ruby python rvm svn pip ssh-agent vagrant github gem command-not-found ant history-substring-search gnu-utils mvn knife)

source $ZSH/oh-my-zsh.sh

export DEBFULLNAME="Sebastian Otaegui"
export DEBEMAIL="feniix@gmail.com"

alias dos2unix="todos -d"
alias unix2dos="todos -u"
alias mtr="mtr --curses"


# history settings
setopt INC_APPEND_HISTORY AUTO_REMOVE_SLASH
setopt LIST_TYPES LONG_LIST_JOBS HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS HIST_IGNORE_SPACE
export EDITOR=vim
HISTSIZE=10000
SAVEHIST=10000

#AMAZON EC2
export EC2_KEYPAIR=LLZ7SYALAZRSWLZGO2DSWCCOHTXUIHWI
export EC2_URL=https://ec2.us-east-1.amazonaws.com
export EC2_PRIVATE_KEY=$HOME/.ec2/pk-LLZ7SYALAZRSWLZGO2DSWCCOHTXUIHWI.pem
export EC2_CERT=$HOME/.ec2/cert-LLZ7SYALAZRSWLZGO2DSWCCOHTXUIHWI.pem

alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

#for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export M2_HOME=${HOME}/dev/mvn3
export M2SH_HOME=${HOME}/dev/mvnsh
export GRAILS_HOME=${HOME}/dev/grails
export ANT_OPTS="-Xmx2024m -XX:MaxPermSize=256m"
export MAVEN_OPTS="-Xmx2024m -XX:MaxPermSize=256m"
export GRADLE_HOME=${HOME}/dev/gradle
export GRADLE_OPTS="-Xmx2024m -Xms1024m -XX:MaxPermSize=256m"
export GROOVY_HOME=${HOME}/dev/groovy
export ANDROIDOS_HOME=${HOME}/dev/android-sdk
export PATH=${JAVA_HOME}/bin:${HOME}/bin:$GRAILS_HOME/bin:${M2_HOME}/bin:${GRADLE_HOME}/bin:${GROOVY_HOME}/bin:$PATH
export PATH=${ANDROIDOS_HOME}/tools:${ANDROIDOS_HOME}/platform-tools:$PATH
export FORGE_HOME=$HOME/dev/forge
export CEYLON_HOME=$HOME/dev/ceylon
export PATH=$PATH:$CEYLON_HOME/bin
export PATH=$PATH:$FORGE_HOME/bin
export PATH=$PATH:$HOME/dev/sbt2 # Add sublime_text2 to the PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
